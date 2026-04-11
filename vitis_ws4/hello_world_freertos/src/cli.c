/******************************************************************************
* Copyright (C) 2026 Advanced Micro Devices, Inc. All Rights Reserved.
* SPDX-License-Identifier: MIT
******************************************************************************/

#include "cli.h"
#include "cli_common.h"
#include "UartMsgQ.h"

#include <string.h>

#include "FreeRTOS.h"
#include "queue.h"
#include "task.h"

typedef struct CliLineMessage
{
    char pcLine[ CLI_INPUT_BUFFER_SIZE ];
} CliLineMessage_t;

static QueueHandle_t xCliLineQueue;
static char cHistoryLines[ CLI_HISTORY_DEPTH ][ CLI_INPUT_BUFFER_SIZE ];
static size_t xHistoryCount;
static size_t xHistoryNextWrite;
static const char pcCliPrompt[] = ">> ";

static void prvHistoryStoreLine( const char *pcLine )
{
    if( ( pcLine == NULL ) || ( pcLine[ 0 ] == '\0' ) )
    {
        return;
    }

    ( void ) strncpy( cHistoryLines[ xHistoryNextWrite ],
                      pcLine,
                      CLI_INPUT_BUFFER_SIZE - 1U );
    cHistoryLines[ xHistoryNextWrite ][ CLI_INPUT_BUFFER_SIZE - 1U ] = '\0';
    xHistoryNextWrite = ( xHistoryNextWrite + 1U ) % CLI_HISTORY_DEPTH;

    if( xHistoryCount < CLI_HISTORY_DEPTH )
    {
        xHistoryCount++;
    }
}

static const char *prvHistoryGetLineByAge( size_t xAgeFromOldest )
{
    size_t xStart;
    size_t xIndex;

    if( xAgeFromOldest >= xHistoryCount )
    {
        return NULL;
    }

    xStart = ( xHistoryNextWrite + CLI_HISTORY_DEPTH - xHistoryCount ) %
             CLI_HISTORY_DEPTH;
    xIndex = ( xStart + xAgeFromOldest ) % CLI_HISTORY_DEPTH;
    return cHistoryLines[ xIndex ];
}

static void prvEchoBytes( const char *pcText )
{
    if( pcText != NULL )
    {
        Cli_Print( pcText );
    }
}

static void prvRedrawInputLine( const char *pcLine, size_t xPreviousLength )
{
    size_t xClearLength = xPreviousLength;
    size_t xIndex;

    if( pcLine != NULL )
    {
        const size_t xNewLength = strlen( pcLine );
        if( xNewLength > xClearLength )
        {
            xClearLength = xNewLength;
        }
    }

    prvEchoBytes( "\r" );
    prvEchoBytes( pcCliPrompt );
    for( xIndex = 0U; xIndex < xClearLength; xIndex++ )
    {
        prvEchoBytes( " " );
    }
    prvEchoBytes( "\r" );
    prvEchoBytes( pcCliPrompt );

    if( ( pcLine != NULL ) && ( pcLine[ 0 ] != '\0' ) )
    {
        prvEchoBytes( pcLine );
    }
}

static void prvHistorySelectRelative( int iDirection,
                                      int *piSelectedHistory,
                                      char pcLineBuffer[] )
{
    int iNewSelection = *piSelectedHistory;
    const char *pcHistoryLine;

    if( xHistoryCount == 0U )
    {
        return;
    }

    if( iDirection < 0 )
    {
        if( iNewSelection < 0 )
        {
            iNewSelection = ( int ) xHistoryCount - 1;
        }
        else if( iNewSelection > 0 )
        {
            iNewSelection--;
        }
    }
    else if( iDirection > 0 )
    {
        if( iNewSelection >= 0 )
        {
            if( ( size_t ) iNewSelection < ( xHistoryCount - 1U ) )
            {
                iNewSelection++;
            }
        }
    }

    *piSelectedHistory = iNewSelection;
    if( iNewSelection >= 0 )
    {
        pcHistoryLine = prvHistoryGetLineByAge( ( size_t ) iNewSelection );
        if( pcHistoryLine != NULL )
        {
            ( void ) strncpy( pcLineBuffer,
                              pcHistoryLine,
                              CLI_INPUT_BUFFER_SIZE - 1U );
            pcLineBuffer[ CLI_INPUT_BUFFER_SIZE - 1U ] = '\0';
        }
    }
}

static int prvTokenizeLine( char *pcLine, char *ppcArgv[], int iArgvMax )
{
    int iArgc = 0;
    char *pcToken = strtok( pcLine, " \t" );

    while( ( pcToken != NULL ) && ( iArgc < iArgvMax ) )
    {
        ppcArgv[ iArgc++ ] = pcToken;
        pcToken = strtok( NULL, " \t" );
    }

    return iArgc;
}

static void prvProcessLine( const char *pcLine )
{
    char pcScratch[ CLI_INPUT_BUFFER_SIZE ];
    char *ppcArgv[ CLI_MAX_TOKENS ];
    int iArgc;
    const CliHandler_t *pxHandler;

    if( ( pcLine == NULL ) || ( pcLine[ 0 ] == '\0' ) )
    {
        Cli_PrintPrompt();
        return;
    }

    ( void ) strncpy( pcScratch, pcLine, sizeof( pcScratch ) - 1U );
    pcScratch[ sizeof( pcScratch ) - 1U ] = '\0';

    iArgc = prvTokenizeLine( pcScratch, ppcArgv, CLI_MAX_TOKENS );
    if( iArgc <= 0 )
    {
        Cli_PrintPrompt();
        return;
    }

    for( pxHandler = xTopCliHandlerList; pxHandler->pcToken != NULL; pxHandler++ )
    {
        if( strcmp( ppcArgv[ 0 ], pxHandler->pcToken ) == 0 )
        {
            pxHandler->pxFunc( iArgc, ppcArgv );
            Cli_PrintPrompt();
            return;
        }
    }

    Cli_Print( "Unknown command\r\n" );
    Cli_PrintPrompt();
}

BaseType_t Cli_Init( void )
{
    if( xCliLineQueue == NULL )
    {
        xCliLineQueue = xQueueCreate( CLI_QUEUE_DEPTH, sizeof( CliLineMessage_t ) );
    }

    xHistoryCount = 0U;
    xHistoryNextWrite = 0U;

    return ( xCliLineQueue != NULL ) ? pdPASS : pdFAIL;
}

BaseType_t Cli_SubmitLine( const char *pcLine )
{
    CliLineMessage_t xMessage;

    if( ( xCliLineQueue == NULL ) || ( pcLine == NULL ) )
    {
        return pdFAIL;
    }

    ( void ) strncpy( xMessage.pcLine, pcLine, sizeof( xMessage.pcLine ) - 1U );
    xMessage.pcLine[ sizeof( xMessage.pcLine ) - 1U ] = '\0';

    return xQueueSend( xCliLineQueue, &xMessage, 0U );
}

void Cli_RxMsgQTask( void *pvParameters )
{
    UartMsgQEntry_t xRxMessage;
    char pcCurrentLine[ CLI_INPUT_BUFFER_SIZE ];
    size_t xCurrentLength = 0U;
    int iEscapeState = 0;
    int iSelectedHistory = -1;

    ( void ) pvParameters;
    pcCurrentLine[ 0 ] = '\0';

    for( ; ; )
    {
        if( xQueueReceive( UartRxMsgQ, &xRxMessage, portMAX_DELAY ) == pdPASS )
        {
            size_t xIndex;
            size_t xLength = xRxMessage.xDataLength;

            if( xLength > UART_MSG_Q_ENTRY_BYTES )
            {
                xLength = UART_MSG_Q_ENTRY_BYTES;
            }

            for( xIndex = 0U; xIndex < xLength; xIndex++ )
            {
                const unsigned char ucByte = xRxMessage.ucData[ xIndex ];

                if( iEscapeState == 1 )
                {
                    if( ucByte == '[' )
                    {
                        iEscapeState = 2;
                    }
                    else
                    {
                        iEscapeState = 0;
                    }
                    continue;
                }
                else if( iEscapeState == 2 )
                {
                    const size_t xPreviousLength = xCurrentLength;

                    if( ucByte == 'A' )
                    {
                        prvHistorySelectRelative( -1,
                                                  &iSelectedHistory,
                                                  pcCurrentLine );
                        xCurrentLength = strlen( pcCurrentLine );
                    }
                    else if( ucByte == 'B' )
                    {
                        prvHistorySelectRelative( 1,
                                                  &iSelectedHistory,
                                                  pcCurrentLine );
                        xCurrentLength = strlen( pcCurrentLine );
                    }

                    /* History navigation loads a working copy into the live
                     * edit buffer. Subsequent backspace/typing edits only this
                     * displayed copy; the stored history is updated later on
                     * carriage return via the normal submit path. */
                    prvRedrawInputLine( pcCurrentLine, xPreviousLength );
                    iEscapeState = 0;
                    continue;
                }

                if( ucByte == 0x1BU )
                {
                    iEscapeState = 1;
                    continue;
                }

                if( ucByte == '\n' )
                {
                    continue;
                }

                if( ucByte == '\r' )
                {
                    prvEchoBytes( "\r\n" );
                    pcCurrentLine[ xCurrentLength ] = '\0';
                    if( pcCurrentLine[ 0 ] != '\0' )
                    {
                        ( void ) Cli_SubmitLine( pcCurrentLine );
                        prvHistoryStoreLine( pcCurrentLine );
                    }
                    else
                    {
                        Cli_PrintPrompt();
                    }

                    pcCurrentLine[ 0 ] = '\0';
                    xCurrentLength = 0U;
                    iSelectedHistory = -1;
                    continue;
                }

                if( ( ucByte == '\b' ) || ( ucByte == 0x7FU ) )
                {
                    if( xCurrentLength != 0U )
                    {
                        xCurrentLength--;
                        pcCurrentLine[ xCurrentLength ] = '\0';
                        prvEchoBytes( "\b \b" );
                    }

                    iSelectedHistory = -1;
                    continue;
                }

                if( ( ucByte >= 0x20U ) && ( ucByte <= 0x7EU ) )
                {
                    if( xCurrentLength < ( CLI_INPUT_BUFFER_SIZE - 1U ) )
                    {
                        pcCurrentLine[ xCurrentLength ] = ( char ) ucByte;
                        xCurrentLength++;
                        pcCurrentLine[ xCurrentLength ] = '\0';
                        {
                            char pcEcho[ 2 ];
                            pcEcho[ 0 ] = ( char ) ucByte;
                            pcEcho[ 1 ] = '\0';
                            prvEchoBytes( pcEcho );
                        }
                    }

                    iSelectedHistory = -1;
                }
            }
        }
    }
}

void Cli_Task( void *pvParameters )
{
    CliLineMessage_t xMessage;

    ( void ) pvParameters;

    Cli_Print( "\r\nCLI ready. UART RX/TX message queues active.\r\n" );
    Cli_PrintPrompt();

    for( ; ; )
    {
        if( xQueueReceive( xCliLineQueue, &xMessage, portMAX_DELAY ) == pdPASS )
        {
            prvProcessLine( xMessage.pcLine );
        }
    }
}
