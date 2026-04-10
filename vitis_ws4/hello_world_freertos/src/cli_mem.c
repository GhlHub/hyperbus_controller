/******************************************************************************
* Copyright (C) 2026 Advanced Micro Devices, Inc. All Rights Reserved.
* SPDX-License-Identifier: MIT
******************************************************************************/

#include "cli_common.h"
#include "cli_mem.h"

#include "xil_io.h"

void Cli_ParseMemRead( int argc, char *argv[] )
{
    uint32_t ulAddress;
    uint32_t ulCount = 1U;
    uint32_t ulIndex;

    if( ( argc < 2 ) || !Cli_ParseU32( argv[ 1 ], &ulAddress ) )
    {
        Cli_Print( "Usage: mr <addr> [count]\r\n" );
        return;
    }

    if( argc >= 3 )
    {
        if( !Cli_ParseU32( argv[ 2 ], &ulCount ) || ( ulCount == 0U ) )
        {
            Cli_Print( "Usage: mr <addr> [count]\r\n" );
            return;
        }
    }

    for( ulIndex = 0U; ulIndex < ulCount; ulIndex++ )
    {
        const uint32_t ulCurrentAddress = ulAddress + ( ulIndex * sizeof( uint32_t ) );
        const uint32_t ulValue = Xil_In32( ( UINTPTR ) ulCurrentAddress );

        Cli_Printf( "0x%08lx: 0x%08lx\r\n",
                    ( unsigned long ) ulCurrentAddress,
                    ( unsigned long ) ulValue );
    }
}

void Cli_ParseMemWrite( int argc, char *argv[] )
{
    uint32_t ulAddress;
    uint32_t ulValue;

    if( ( argc < 3 ) ||
        !Cli_ParseU32( argv[ 1 ], &ulAddress ) ||
        !Cli_ParseU32( argv[ 2 ], &ulValue ) )
    {
        Cli_Print( "Usage: mw <addr> <value>\r\n" );
        return;
    }

    Xil_Out32( ( UINTPTR ) ulAddress, ulValue );
    Cli_Printf( "Wrote 0x%08lx to 0x%08lx\r\n",
                ( unsigned long ) ulValue,
                ( unsigned long ) ulAddress );
}
