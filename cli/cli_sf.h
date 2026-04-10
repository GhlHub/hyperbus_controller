#ifndef _CLI_SF_H_
#define _CLI_SF_H_

void Cli_parseSfCmd(void);
void Cli_parseSfGetStatusInfo(void);
void Cli_parseSfSetCfg(void);
void Cli_parseSfShowCfg(void);
void Cli_parseSfEraseManuf(void);
void Cli_parseSetVrefCal(void);
void Cli_parseSfEraseVref(void);
void Cli_parseSfReadTimerCfg(void);
void Cli_parseSfSelectTimerCfg(void);
void Cli_parseSfWriteTimerCfg(void);

#ifdef _CLI_SF_C_
CliHandler SfCliHandlerList[] = {
	{"getStatusInfo",	Cli_parseSfGetStatusInfo},
	{"setCfg",			Cli_parseSfSetCfg},
	{"showCfg",			Cli_parseSfShowCfg},
	{"eraseCfg",		Cli_parseSfEraseManuf},
	{"eraseVref",		Cli_parseSfEraseVref},
	{"setVref",			Cli_parseSetVrefCal},
	{"getTimer",		Cli_parseSfReadTimerCfg},
	{"selectTimer",		Cli_parseSfSelectTimerCfg},
	{"setTimer",		Cli_parseSfWriteTimerCfg},
  	{NULL,		NULL}
};
#endif

#endif /*CLI_SF_H_*/
