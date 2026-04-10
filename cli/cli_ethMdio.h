#ifndef _CLI_ETHMDIO_H_
#define _CLI_ETHMDIO_H_

#ifdef COLOSSUS_V5
void Cli_parseEthMdioCmd(void);
void Cli_parseEthMdioRd(void);
void Cli_parseEthMdioWr(void);
void Cli_parseEthMdioHelp(void);

#ifdef _CLI_ETHMDIO_C_
CliHandler EthMdioCliHandlerList[] = {
	{"rd",		Cli_parseEthMdioRd},
	{"wr",		Cli_parseEthMdioWr},
	{"help",    Cli_parseEthMdioHelp},
  	{NULL,		NULL}
};
#else
extern CliHandler EthMdCliHandlerList[];
#endif

#endif

#endif /*CLI_ETHMDIO_H_*/
