#ifndef _CLI_DEBUG_H_
#define _CLI_DEBUG_H_

void Cli_parseDbg(void);

void Cli_parseReadMem8(void);
void Cli_parseWriteMem8(void);

#ifdef CLI_MEM32_CMD_ENABLE
void Cli_parseReadMem32(void);
void Cli_parseWriteMem32(void);
#endif

#ifdef CLI_DUMP_CMD_ENABLE
void Cli_parseDumpMem8(void);
void Cli_parseDumpMem32(void);
#endif

u8 inline dbg_readMem8(u32 offset);
void inline dbg_writeMem8(u32 offset, u8 val);

#ifdef CLI_MEM32_CMD_ENABLE
u32 inline dbg_readMem32(u32 offset);
void inline dbg_writeMem32(u32 offset, u32 val);
#endif

#ifdef CLI_DUMP_CMD_ENABLE
void dbg_dumpMem8(u32 offset, u32 len);
void dbg_dumpMem32(u32 offset, u32 words);
#endif

#ifdef _CLI_DEBUG_C_
char readMem8Fmt[]  = "%08x: %02x\r\n";

CliHandler DbgCliHandlerList[] = {
#ifdef CLI_MEM32_CMD_ENABLE
	{"rdmem",	Cli_parseReadMem32},
	{"wrmem",	Cli_parseWriteMem32},
#else
	{"rdmem",	Cli_parseReadMem8},
	{"wrmem",	Cli_parseWriteMem8},
#endif
	{"rdmem8",	Cli_parseReadMem8},
	{"rdmem32",	Cli_parseReadMem32},
	{"wrmem8",	Cli_parseWriteMem8},
	{"wrmem32",	Cli_parseWriteMem32},
#ifdef CLI_DUMP_CMD_ENABLE
	{"dumpmem",		Cli_parseDumpMem8},
	{"dumpmem8",	Cli_parseDumpMem8},
	{"dumpmem32",	Cli_parseDumpMem32},
#endif
  	{NULL,		NULL}
};

#endif



#endif /*CLI_DEBUG_H_*/
