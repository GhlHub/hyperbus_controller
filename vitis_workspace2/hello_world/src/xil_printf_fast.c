/******************************************************************************
* Copyright (C) 1995 - 2022 Xilinx, Inc.  All rights reserved.
* Copyright (C) 2023 - 2026 Advanced Micro Devices, Inc. All Rights Reserved.
* SPDX-License-Identifier: MIT
******************************************************************************/
/*---------------------------------------------------*/
/* Modified from :                                   */
/* Public Domain version of printf                   */
/* Rud Merriam, Compsult, Inc. Houston, Tx.          */
/* For Embedded Systems Programming, 1991            */
/*                                                   */
/* This local override keeps Xilinx xil_printf()     */
/* formatting behavior while emitting strings and    */
/* number buffers through the e_uart 32-bit TX path. */
/*---------------------------------------------------*/

#include "xil_printf.h"
#include "xil_types.h"
#include "xil_assert.h"
#include "bspconfig.h"
#include "xparameters.h"

#include <ctype.h>
#include <stdarg.h>
#include <stddef.h>
#include <string.h>

static void padding( const s32 l_flag, const struct params_s *par );
static void outs( const charptr lp, struct params_s *par );
static void outnum( const s32 n, const s32 base, struct params_s *par );
static s32 getnum( charptr *linep );
static void prvEmitBuffer( const char8 *pcBuffer, size_t xLength );
static void prvEmitChar( char8 c );
static void prvEmitRepeat( char8 c, size_t xLength );

typedef struct params_s
{
    s32 len;
    s32 num1;
    s32 num2;
    char8 pad_character;
    s32 do_padding;
    s32 left_flag;
    s32 unsigned_flag;
} params_t;

#if ( defined( __MICROBLAZE__ ) ) && ( !defined( __arch64__ ) )
    #define MICROBLAZE32
#endif

#if ( defined( __riscv ) && ( __riscv_xlen == 32 ) )
    #define RISCV32
#endif

#if ( !defined( MICROBLAZE32 ) ) && ( !defined( RISCV32 ) ) && \
    ( !defined( ZYNQMP_R5_FSBL_BSP ) ) && ( !defined( DISABLE_64BIT_PRINT ) )
    #define SUPPORT_64BIT_PRINT
#endif

extern void euart_console_write( const char *pcBuffer, size_t xLength );
extern void euart_console_write_repeat( char c, size_t xLength );

static void prvEmitBuffer( const char8 *pcBuffer, size_t xLength )
{
#if defined( XPAR_E_UART_0_BASEADDR )
    euart_console_write( ( const char * ) pcBuffer, xLength );
#elif defined( STDOUT_BASEADDRESS ) || defined( VERSAL_PLM ) || defined( SDT ) || defined( SPARTANUP_PLM ) || defined( ASUFW )
    size_t xIndex;

    for( xIndex = 0U; xIndex < xLength; xIndex++ )
    {
        outbyte( pcBuffer[ xIndex ] );
    }
#else
    ( void ) pcBuffer;
    ( void ) xLength;
#endif
}

static void prvEmitChar( char8 c )
{
#if defined( STDOUT_BASEADDRESS ) || defined( VERSAL_PLM ) || defined( SDT ) || defined( SPARTANUP_PLM ) || defined( ASUFW )
    prvEmitBuffer( &c, 1U );
#else
    ( void ) c;
#endif
}

static void prvEmitRepeat( char8 c, size_t xLength )
{
#if defined( XPAR_E_UART_0_BASEADDR )
    euart_console_write_repeat( c, xLength );
#elif defined( STDOUT_BASEADDRESS ) || defined( VERSAL_PLM ) || defined( SDT ) || defined( SPARTANUP_PLM ) || defined( ASUFW )
    while( xLength > 0U )
    {
        outbyte( c );
        xLength--;
    }
#else
    ( void ) c;
    ( void ) xLength;
#endif
}

static void padding( const s32 l_flag, const struct params_s *par )
{
    if( ( par->do_padding != 0 ) && ( l_flag != 0 ) && ( par->len < par->num1 ) )
    {
        prvEmitRepeat( par->pad_character, ( size_t ) ( par->num1 - par->len ) );
    }
}

static void outs( const charptr lp, struct params_s *par )
{
    size_t xLength;

    if( lp == NULL )
    {
        padding( par->left_flag, par );
        return;
    }

    xLength = strlen( lp );
    par->len = ( s32 ) xLength;
    padding( !( par->left_flag ), par );

    if( par->num2 < par->len )
    {
        xLength = ( size_t ) par->num2;
    }

    prvEmitBuffer( lp, xLength );
    padding( par->left_flag, par );
}

static void outnum( const s32 n, const s32 base, struct params_s *par )
{
    s32 i;
    s32 negative;
    s32 xLength;
    char8 outbuf[ 32 ];
    const char8 digits[] = "0123456789ABCDEF";
    u32 num;

    if( ( par->unsigned_flag == 0 ) && ( base == 10 ) && ( n < 0L ) )
    {
        negative = 1;
        num = ( u32 ) ( -n );
    }
    else
    {
        negative = 0;
        num = ( u32 ) n;
    }

    i = 0;

    do
    {
        outbuf[ i ] = digits[ num % ( u32 ) base ];
        i++;
        num /= ( u32 ) base;
    } while( num > 0U );

    if( negative != 0 )
    {
        outbuf[ i ] = '-';
        i++;
    }

    xLength = i;

    if( xLength > 1 )
    {
        int xHead = 0;
        int xTail = xLength - 1;

        while( xHead < xTail )
        {
            char8 cTmp = outbuf[ xHead ];
            outbuf[ xHead ] = outbuf[ xTail ];
            outbuf[ xTail ] = cTmp;
            xHead++;
            xTail--;
        }
    }

    par->len = xLength;
    padding( !( par->left_flag ), par );
    prvEmitBuffer( outbuf, ( size_t ) xLength );
    padding( par->left_flag, par );
}

#if defined( SUPPORT_64BIT_PRINT )
static void outnum1( const s64 n, const s32 base, params_t *par )
{
    s32 i;
    s32 negative;
    s32 xLength;
    char8 outbuf[ 64 ];
    const char8 digits[] = "0123456789ABCDEF";
    u64 num;

    if( ( par->unsigned_flag == 0 ) && ( base == 10 ) && ( n < 0L ) )
    {
        negative = 1;
        num = ( u64 ) ( -n );
    }
    else
    {
        negative = 0;
        num = ( u64 ) n;
    }

    i = 0;

    do
    {
        outbuf[ i ] = digits[ num % ( u64 ) base ];
        i++;
        num /= ( u64 ) base;
    } while( num > 0U );

    if( negative != 0 )
    {
        outbuf[ i ] = '-';
        i++;
    }

    xLength = i;

    if( xLength > 1 )
    {
        int xHead = 0;
        int xTail = xLength - 1;

        while( xHead < xTail )
        {
            char8 cTmp = outbuf[ xHead ];
            outbuf[ xHead ] = outbuf[ xTail ];
            outbuf[ xTail ] = cTmp;
            xHead++;
            xTail--;
        }
    }

    par->len = xLength;
    padding( !( par->left_flag ), par );
    prvEmitBuffer( outbuf, ( size_t ) xLength );
    padding( par->left_flag, par );
}
#endif

static s32 getnum( charptr *linep )
{
    s32 n = 0;
    s32 ResultIsDigit = 0;
    charptr cptr = *linep;

    while( cptr != NULL )
    {
        ResultIsDigit = isdigit( ( ( u8 ) *cptr ) );

        if( ResultIsDigit == 0 )
        {
            break;
        }

        n = ( n * 10 ) + ( ( ( s32 ) *cptr ) - ( s32 ) '0' );
        cptr += 1;
    }

    *linep = ( charptr ) cptr;
    return n;
}

#if defined( __aarch64__ ) && HYP_GUEST && EL1_NONSECURE && XEN_USE_PV_CONSOLE
void xil_printf( const char8 *ctrl1, ... )
{
    XPVXenConsole_Printf( ctrl1 );
}
#else
void xil_printf( const char8 *ctrl1, ... )
{
    va_list argp;

    va_start( argp, ctrl1 );
    xil_vprintf( ctrl1, argp );
    va_end( argp );
}
#endif

void xil_vprintf( const char8 *ctrl1, va_list argp )
{
    s32 Check = 0;
#if defined( SUPPORT_64BIT_PRINT )
    s32 long_flag;
#endif
    s32 dot_flag;
    u32 width;
    u32 index;
    params_t par;
    u8 ch;
    char8 *ctrl = ( char8 * ) ctrl1;
    const char *string;

    while( ( ctrl != NULL ) && ( *ctrl != ( char8 ) 0 ) )
    {
        if( *ctrl != '%' )
        {
            char8 *pcStart = ctrl;

            while( ( *ctrl != ( char8 ) 0 ) && ( *ctrl != '%' ) )
            {
                ctrl++;
            }

            prvEmitBuffer( pcStart, ( size_t ) ( ctrl - pcStart ) );
            continue;
        }

        dot_flag = 0;
#if defined( SUPPORT_64BIT_PRINT )
        long_flag = 0;
#endif
        par.unsigned_flag = 0;
        par.left_flag = 0;
        par.do_padding = 0;
        par.pad_character = ' ';
        par.num2 = 32767;
        par.num1 = 0;
        par.len = 0;

try_next:
        ctrl += 1;
        ch = ( u8 ) *ctrl;

        if( isdigit( ch ) != 0 )
        {
            if( dot_flag != 0 )
            {
                par.num2 = getnum( &ctrl );
            }
            else
            {
                if( ch == ( u8 ) '0' )
                {
                    par.pad_character = '0';
                }

                par.num1 = getnum( &ctrl );
                par.do_padding = 1;
            }

            ctrl -= 1;
            goto try_next;
        }

        switch( tolower( ch ) )
        {
            case '%':
                prvEmitChar( '%' );
                Check = 1;
                break;

            case '-':
                par.left_flag = 1;
                Check = 0;
                break;

            case '.':
                if( ( *( ctrl + 1 ) == '*' ) && ( *( ctrl + 2 ) == 's' ) )
                {
                    width = va_arg( argp, u32 );
                    string = va_arg( argp, const char * );

                    for( index = 0U; ( index < width ) && ( string[ index ] != '\0' ); index++ )
                    {
                    }

                    prvEmitBuffer( string, index );
                    ctrl += 2;
                    Check = 1;
                }
                else
                {
                    dot_flag = 1;
                    Check = 0;
                }

                break;

            case 'l':
#if defined( SUPPORT_64BIT_PRINT )
                #if defined( ARMR5 )
                    if( *( ctrl + 1 ) == 'l' )
                    {
                        long_flag = 1;
                        ctrl += 1;
                    }
                #else
                    long_flag = 1;
                #endif
#endif
                Check = 0;
                break;

            case 'u':
                par.unsigned_flag = 1;
                /* fall through */
            case 'i':
            case 'd':
#if defined( SUPPORT_64BIT_PRINT )
                if( long_flag != 0 )
                {
                    outnum1( ( s64 ) va_arg( argp, s64 ), 10L, &par );
                }
                else
                {
                    outnum( va_arg( argp, s32 ), 10L, &par );
                }
#else
                outnum( va_arg( argp, s32 ), 10L, &par );
#endif
                Check = 1;
                break;

            case 'p':
#if defined( __aarch64__ ) || defined( __arch64__ )
                par.unsigned_flag = 1;
                outnum1( ( s64 ) va_arg( argp, s64 ), 16L, &par );
                Check = 1;
                break;
#endif
            case 'X':
            case 'x':
                par.unsigned_flag = 1;
#if defined( SUPPORT_64BIT_PRINT )
                if( long_flag != 0 )
                {
                    outnum1( ( s64 ) va_arg( argp, s64 ), 16L, &par );
                }
                else
                {
                    outnum( ( s32 ) va_arg( argp, s32 ), 16L, &par );
                }
#else
                outnum( ( s32 ) va_arg( argp, s32 ), 16L, &par );
#endif
                Check = 1;
                break;

            case 's':
                outs( va_arg( argp, char * ), &par );
                Check = 1;
                break;

            case 'c':
                prvEmitChar( ( char8 ) va_arg( argp, s32 ) );
                Check = 1;
                break;

            case '\\':
                ctrl += 1;

                switch( *ctrl )
                {
                    case 'a':
                        prvEmitChar( ( char8 ) 0x07 );
                        break;

                    case 'h':
                        prvEmitChar( ( char8 ) 0x08 );
                        break;

                    case 'r':
                        prvEmitChar( ( char8 ) 0x0D );
                        break;

                    case 'n':
                        prvEmitBuffer( "\r\n", 2U );
                        break;

                    default:
                        prvEmitChar( *ctrl );
                        break;
                }

                Check = 0;
                break;

            default:
                Check = 1;
                break;
        }

        if( Check == 1 )
        {
            ctrl += 1;
            continue;
        }

        goto try_next;
    }
}

void print( const char8 *ptr )
{
#if defined( __aarch64__ ) && ( HYP_GUEST == 1 ) && ( EL1_NONSECURE == 1 ) && defined( XEN_USE_PV_CONSOLE )
    XPVXenConsole_Write( ptr );
#else
    if( ptr != NULL )
    {
        prvEmitBuffer( ptr, strlen( ptr ) );
    }
#endif
}
