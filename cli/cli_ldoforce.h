#ifndef _CLI_LDOFORCE_H_
#define _CLI_LDOFORCE_H_

void Cli_parseLdoForce(void);
void Cli_ldoForceDisabled(void);
void Cli_ldoForceOff(void);
void Cli_ldoForceOn(void);
enum LDO_NUM Cli_ldoForceValidateLdo(char *ptr);
void Cli_ldoForceOffOn(void);
void Cli_ldoForceError(void);
void Cli_ldoForceHelp(void);

#ifdef _CLI_LDOFORCE_C_
CliHandler LdoforceCliHandlerList[] = {
	{"disable", Cli_ldoForceDisabled},
	{"off",		Cli_ldoForceOff},
	{"on",		Cli_ldoForceOn},
	{"offon",	Cli_ldoForceOffOn},
	{"help",	Cli_ldoForceHelp},
  	{NULL,		NULL}
};
#endif

#endif /*CLI_LDOFORCE_H_*/
