#ifndef _CLI_FLASH_H_
#define _CLI_FLASH_H_

void Cli_parseFlashCmd(void);
void Cli_flashInit(void);
void Cli_flashErase(void);
void Cli_flashWrite(void);
void Cli_flashDownload(void);
#ifdef _CLI_FLASH_C_
CliHandler FlashCliHandlerList[] = {
	{"init",	Cli_flashInit},
	{"erase",	Cli_flashErase},
	{"write",	Cli_flashWrite},
	{"download",Cli_flashDownload},
  	{NULL,		NULL}
};
#endif

#endif
