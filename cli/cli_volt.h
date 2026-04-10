#ifndef _CLI_VOLT_H_
#define _CLI_VOLT_H_

void Cli_parseVoltCmdNom1(void);
void Cli_parseVoltCmdNom2(void);
void Cli_parseVoltCmdLpm(void);
void Cli_parseVoltCmd(enum LDO_VOLTAGE vm);
void VoltSetAllNominal(void);
void VoltSetPctMargin(float pct);
void Cli_parseLpmCmd(void);
void Cli_lpmConfigCmd(void);
void Cli_lpmPcStatus(void);
void Cli_parseVoltHelp(void);
void Cli_parseVoltHelpLdo(void);
void Cli_parseVoltAll(enum LDO_VOLTAGE vm);
void Cli_parseVoltQ(void);
#ifdef USE_CLI_CURRQ
void Cli_parseVoltCurrQ(void);
void Cli_parseCurrQ(void);
void Cli_parseCurrentMax(void);
void Cli_parseCurrentMaxReset(void);


#endif
void Cli_parseGenLdoCal(void);

#ifdef _CLI_VOLT_C_
CliHandler VoltCliHandlerList[] = {
	{"cal",		Cli_parseGenLdoCal},
	{"help",	Cli_parseVoltHelp},
	{"helpldo",	Cli_parseVoltHelpLdo},
	{NULL, NULL}
	};
#endif

#endif /*CLI_VOLT_H_*/
