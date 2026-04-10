/******************************************************************************
* Copyright (C) 2026 Advanced Micro Devices, Inc. All Rights Reserved.
* SPDX-License-Identifier: MIT
******************************************************************************/

#ifndef CLI_COMMON_H
#define CLI_COMMON_H

#include <stdint.h>

typedef void (*CliCommandFunc_t)( int argc, char *argv[] );

typedef struct CliHandler
{
    const char *pcToken;
    CliCommandFunc_t pxFunc;
    const char *pcHelp;
} CliHandler_t;

extern const CliHandler_t xTopCliHandlerList[];

void Cli_PrintPrompt( void );
void Cli_Print( const char *pcText );
void Cli_Printf( const char *pcFmt, ... );
void Cli_Flush( void );
void Cli_ParseHelp( int argc, char *argv[] );
int Cli_ParseU32( const char *pcText, uint32_t *pulValue );

#endif
