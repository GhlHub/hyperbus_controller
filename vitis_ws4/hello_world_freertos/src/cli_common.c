/******************************************************************************
* Copyright (C) 2026 Advanced Micro Devices, Inc. All Rights Reserved.
* SPDX-License-Identifier: MIT
******************************************************************************/

#include "cli.h"
#include "cli_common.h"
#include "cli_mem.h"
#include "UartMsgQ.h"

#include <stdarg.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

static const char pcUnknownCommand[] = "Unknown command\r\n";

const CliHandler_t xTopCliHandlerList[] =
{
    { "help", Cli_ParseHelp, "help                      - Show this menu" },
    { "mr",   Cli_ParseMemRead,  "mr <addr> [count]         - Read 32-bit words" },
    { "mw",   Cli_ParseMemWrite, "mw <addr> <value>         - Write a 32-bit word" },
    { NULL,   NULL,              NULL }
};

void Cli_PrintPrompt( void )
{
    Cli_Print( ">> " );
    Cli_Flush();
}

void Cli_Print( const char *pcText )
{
    if( ( pcText == NULL ) || ( UartTxMsgQ == NULL ) )
    {
        return;
    }

    while( *pcText != '\0' )
    {
        UartMsgQEntry_t xMessage;
        size_t xLength = strlen( pcText );

        if( xLength > UART_MSG_Q_ENTRY_BYTES )
        {
            xLength = UART_MSG_Q_ENTRY_BYTES;
        }

        ( void ) memcpy( xMessage.ucData, pcText, xLength );
        xMessage.xDataLength = xLength;

        ( void ) xQueueSend( UartTxMsgQ, &xMessage, portMAX_DELAY );
        pcText += xLength;
    }
}

void Cli_Printf( const char *pcFmt, ... )
{
    char pcBuffer[160];
    va_list xArgs;

    va_start( xArgs, pcFmt );
    ( void ) vsnprintf( pcBuffer, sizeof( pcBuffer ), pcFmt, xArgs );
    va_end( xArgs );

    Cli_Print( pcBuffer );
}

void Cli_Flush( void )
{
    /* CLI output is now queued through UartTxMsgQ. */
}

int Cli_ParseU32( const char *pcText, uint32_t *pulValue )
{
    char *pcEnd = NULL;
    unsigned long ulValue;

    if( ( pcText == NULL ) || ( pulValue == NULL ) )
    {
        return 0;
    }

    ulValue = strtoul( pcText, &pcEnd, 0 );
    if( ( pcEnd == pcText ) || ( *pcEnd != '\0' ) )
    {
        return 0;
    }

    *pulValue = ( uint32_t ) ulValue;
    return 1;
}

void Cli_ParseHelp( int argc, char *argv[] )
{
    const CliHandler_t *pxHandler = xTopCliHandlerList;

    ( void ) argc;
    ( void ) argv;

    Cli_Print( "\r\nCommands\r\n" );
    while( pxHandler->pcToken != NULL )
    {
        Cli_Printf( "  %s\r\n", pxHandler->pcHelp );
        pxHandler++;
    }
}

const char *Cli_GetUnknownCommandString( void )
{
    return pcUnknownCommand;
}
