#ifndef _CLI_ADC_H_
#define _CLI_ADC_H_

void Cli_parseAdcCmd(void);
void Cli_parseAdcDumpStatus(void);
void Cli_parseAdcDisable(void);
void Cli_parseAdcEnable(void);
void Cli_parseAdcSetSampleRate(void);

#ifdef _CLI_ADC_C_
CliHandler AdcCliHandlerList[] = {
	{"status",		Cli_parseAdcDumpStatus},
	{"disable",		Cli_parseAdcDisable},
	{"enable", 		Cli_parseAdcEnable},
	{"setsamplerate", Cli_parseAdcSetSampleRate},
  	{NULL,		NULL}
};
#endif

#endif /*CLI_ADC_H_*/
