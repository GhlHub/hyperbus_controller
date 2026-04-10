#ifndef _CLI_SPI_H_
#define _CLI_SPI_H_

void Cli_parseSpiCmd(void);
void Cli_parseSpiXfer(void);
void Cli_parseSpiEnable(void);
void Cli_parseSpiStatus(void);

#ifdef _CLI_SPI_C_
CliHandler SpiCliHandlerList[] = {
	{"enable",	Cli_parseSpiEnable},
	{"xfer",	Cli_parseSpiXfer},
	{"status",	Cli_parseSpiStatus},
	{NULL,NULL}
};
#endif

#endif /*CLI_SPI_H_*/
