#ifndef _CLI_COMMON_H_
#define _CLI_COMMON_H_

#define CLI_INPUT_BUFF_SIZE   64

#ifdef _CLI_COMMON_C_
char cliInputBuff[CLI_INPUT_BUFF_SIZE];
char cliInputBuff_p[CLI_INPUT_BUFF_SIZE];
unsigned char cliInputLen;
char *tokPtr;
char unknownCmdMsg[] 	= "Unknown command\n\r";
#else
extern char cliInputBuff[CLI_INPUT_BUFF_SIZE];
extern char cliInputBuff_p[CLI_INPUT_BUFF_SIZE];
extern unsigned char cliInputLen;
extern char *tokPtr;
extern char unknownCmdMsg[];
#endif

#define getNextToken() strtok_r(NULL," ",&tokPtr)
#define Cli_printPrompt() consolePrint(">> ")

#ifdef OVERCAT_S3
#define Cli_sscanf_floatint(_sptr, _pct)	usr_sscanf_floatint(_sptr, _pct)
#endif
#ifdef USE_KERNEL
#define Cli_sscanf_floatint(_sptr, _pct)	sscanf(_sptr,"%f%%",_pct)
#endif

void uart_usb_put_crlf(void);
int Cli_parseTime(u32 *Ticks);
void Cli_parseHelp(void);
int printErrorStatus(int status);
void Cli_parseShowIp(void);
void Cli_processHandlerList(PCliHandler hptr);
void consolePrint(char *ptr);

#ifdef _CLI_COMMON_C_
#ifdef UNDERDOG_S3
void showThreadStatus(void);
CliHandler TopCliHandlerList[] = {
	{"debug",	Cli_parseDbg},
	{"dbg",		Cli_parseDbg},
  	{"spi",		Cli_parseSpiCmd},
  	{"dac",		Cli_parseDAC},
  	{"adc",		Cli_parseAdcCmd},
  	{"volt",	Cli_parseVoltCmdNom1},
  	{"volt1",	Cli_parseVoltCmdNom1},
  	{"volt2",	Cli_parseVoltCmdNom2},
  	{"voltQ",	Cli_parseVoltQ},
  	{"voltCurrQ",Cli_parseVoltCurrQ},
  	{"voltlpm",	Cli_parseVoltCmdLpm},
  	{"currQ",	Cli_parseCurrQ},
  	{"currentMax", Cli_parseCurrentMax},
  	{"currMax", Cli_parseCurrentMax},
  	{"currentMaxReset", Cli_parseCurrentMaxReset},
  	{"currMaxReset", Cli_parseCurrentMaxReset},
  	{"seq",		Cli_parseSeqCmd},
  	{"ldoForce",Cli_parseLdoForce},
  	{"lpm",		Cli_parseLpmCmd},
  	{"resetpulse",	Cli_pulseReset},
  	{"reset",		Cli_nomReset},
  	{"sf",			Cli_parseSfCmd},
  	{"flash",	Cli_parseFlashCmd},
  	{"help",		Cli_parseHelp},
  	{"thread", showThreadStatus},
  	{NULL,		NULL}
};
#endif
#ifdef COLOSSUS_S3
void showThreadStatus(void);
CliHandler TopCliHandlerList[] = {
	{"debug",	Cli_parseDbg},
	{"dbg",		Cli_parseDbg},
  	{"spi",		Cli_parseSpiCmd},
  	{"dac",		Cli_parseDAC},
  	{"adc",		Cli_parseAdcCmd},
  	{"volt",	Cli_parseVoltCmdNom1},
  	{"volt1",	Cli_parseVoltCmdNom1},
  	{"volt2",	Cli_parseVoltCmdNom2},
  	{"voltQ",	Cli_parseVoltQ},
  	{"voltlpm",	Cli_parseVoltCmdLpm},
  	{"currQ",	Cli_parseCurrQ},
  	{"currentMax", Cli_parseCurrentMax},
  	{"currMax", Cli_parseCurrentMax},
  	{"currentMaxReset", Cli_parseCurrentMaxReset},
  	{"currMaxReset", Cli_parseCurrentMaxReset},
  	{"seq",		Cli_parseSeqCmd},
  	{"ldoForce",Cli_parseLdoForce},
  	{"lpm",		Cli_parseLpmCmd},
  	{"resetpulse",	Cli_pulseReset},
  	{"reset",		Cli_nomReset},
  	{"sf",		Cli_parseSfCmd},
  	{"flash",	Cli_parseFlashCmd},
  	{"help",		Cli_parseHelp},
  	{"thread", showThreadStatus},
  	{NULL,		NULL}
};
#endif

#ifdef OVERCAT_S3
void showThreadStatus(void);
CliHandler TopCliHandlerList[] = {
  	{"dac",		Cli_parseDAC},
  	{"volt",	Cli_parseVoltCmdNom1},
  	{"volt1",	Cli_parseVoltCmdNom1},
  	{"volt2",	Cli_parseVoltCmdNom2},
  	{"voltQ",	Cli_parseVoltQ},
  	{"voltlpm",	Cli_parseVoltCmdLpm},
  	{"seq",		Cli_parseSeqCmd},
//  	{"ldoForce",Cli_parseLdoForce},
  	{"lpm",		Cli_parseLpmCmd},
  	{"resetpulse",	Cli_pulseReset},
  	{"reset",		Cli_nomReset},
  	{"sf",		Cli_parseSfCmd},
  	{"help",		Cli_parseHelp},
  	{NULL,		NULL}
};
#endif

#ifdef UNDERDOG_V5
CliHandler TopCliHandlerList[] = {
	{"debug",	Cli_parseDbg},
	{"dbg",		Cli_parseDbg},
	{"gpioTest",Cli_parseGpio},
//	{"i2sTest",	Cli_i2sTest},
	{"keypadTest",Cli_parseKeypad},
	{"spiTest", Cli_parseSpi},
	{"spiTest2",Cli_parseSpi2},
  	{"flash",		Cli_parseFlashCmd},
	{"help",	Cli_parseHelp},
	{NULL,		NULL}
};
#endif
#ifdef COLOSSUS_V5
void Cli_DacTest(void);
CliHandler TopCliHandlerList[] = {
	{"debug",	Cli_parseDbg},
	{"dbg",		Cli_parseDbg},
	{"help",	Cli_parseHelp},
//	{"mdio",	Cli_parseEthMdioCmd},
	{"showip",	Cli_parseShowIp},
	{"flash",	Cli_parseFlashCmd},
	{"dacTest",	Cli_DacTest},
	{"spiTest", Cli_parseSpi},
	{"gpioTest",Cli_parseGpio},
	{"keypadTest", Cli_parseKeypadTest},
	{NULL,		NULL}
};
#endif

#else
extern CliHandler TopCliHandlerList[];
#endif


#endif /*CLI_COMMON_H_*/
