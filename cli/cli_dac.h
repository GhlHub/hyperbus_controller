#ifndef _CLI_DAC_H_
#define _CLI_DAC_H_

void Cli_parseDAC(void);
void Cli_parseDACSetCode(void);
void Cli_parseDACSetVoltage(void);
void Cli_parseDACStatus(void);

#ifdef _CLI_DAC_C_
CliHandler DacCliHandlerList[] = {
	{"setcode",		Cli_parseDACSetCode},
#ifndef OVERCAT_S3
	{"setvoltage",	Cli_parseDACSetVoltage},
	{"status", 		Cli_parseDACStatus},
#endif
  	{NULL,		NULL}
};
#endif

#endif /*CLI_DAC_H_*/
