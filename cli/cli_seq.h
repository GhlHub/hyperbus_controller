#ifndef _CLI_SEQ_H_
#define _CLI_SEQ_H_

void Cli_parseSeqCmd(void);
void Cli_parseSeqSet(void);
void Cli_parseSeqRun(void);
void Cli_parseSeqStop(void);
void Cli_parseSeqOff(void);
void Cli_parseSeqDefault(void);
void Cli_parseSeqManual(void);
void Cli_parseSeqStatus(void);
void Cli_parseSeqShow(void);
void Cli_parseSeqReload(void);
void Cli_parseSeqHelp(void);

#ifdef _CLI_SEQ_C_
CliHandler SeqCliHandlerList[] = {
	{"set",		Cli_parseSeqSet},
	{"run", 	Cli_parseSeqRun},
	{"stop",	Cli_parseSeqStop},
	{"off",		Cli_parseSeqOff},
	{"default",	Cli_parseSeqDefault},
	{"manual",	Cli_parseSeqManual},
	{"show",	Cli_parseSeqShow},
	{"status",	Cli_parseSeqStatus},
	{"reload",	Cli_parseSeqReload},
	{"help",    Cli_parseSeqHelp},
  	{NULL,		NULL}
};

#endif
#endif /*CLI_SEQ_H_*/
