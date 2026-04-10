#define _CLI_LDOFORCE_C_

#include "../main.h"

void Cli_parseLdoForce(void)
{
	Cli_processHandlerList(&LdoforceCliHandlerList[0]);
}


void Cli_ldoForceDisabled(void)
{
	char *ptr;
	enum LDO_NUM ldoNum;
	u32 x;

	ptr  = getNextToken();
	ldoNum = Cli_ldoForceValidateLdo(ptr);
	if(ldoNum == LDO_MAX)
	{
		return;
	}
	
	x = LDO_CTRL_mReadReg(dLdoCtrl.BaseAddress, LDO_CTRL_ENABLE_CLEAR_REG);	
	LDO_CTRL_mWriteReg(dLdoCtrl.BaseAddress, LDO_CTRL_ENABLE_CLEAR_REG, (x | LdoList[ldoNum].LdoEnBitMask));	
	usr_printf_1("cli_ldoforce: LDO %s disabled\r\n",(u32)LdoList[ldoNum].LdoName);
	cliCmdAccepted = 1;
}

void Cli_ldoForceOff(void)
{
	char *ptr;
	enum LDO_NUM ldoNum;

	ptr  = getNextToken();
	ldoNum = Cli_ldoForceValidateLdo(ptr);
	if(ldoNum == LDO_MAX)
	{
		return;
	}
	
	LdoCtrl_TimerEnableForceOff(&dLdoCtrl,LdoList[ldoNum].LdoEnBitMask);
	usr_printf_1("cli_ldoforce: LDO %s turned off\r\n",(u32)LdoList[ldoNum].LdoName);
	cliCmdAccepted = 1;
}

void Cli_ldoForceOn(void)
{
	char *ptr;
	enum LDO_NUM ldoNum;

	ptr  = getNextToken();
	ldoNum = Cli_ldoForceValidateLdo(ptr);
	if(ldoNum == LDO_MAX)
	{
		return;
	}

	LdoCtrl_TimerEnableForceOn(&dLdoCtrl,LdoList[ldoNum].LdoEnBitMask);
	usr_printf_1("cli_ldoforce: LDO %s turned on\r\n",(u32)LdoList[ldoNum].LdoName);
	cliCmdAccepted = 1;
}

enum LDO_NUM Cli_ldoForceValidateLdo(char *ptr)
{
	enum LDO_NUM ldoNum;
	if(!ptr)
	{
		Cli_ldoForceError();
		return LDO_MAX;
	}

	ldoNum = TranslateLdoName(ptr);
	if(ldoNum == LDO_MAX)
	{
		Cli_ldoForceError();
		return LDO_MAX;
	}
	if(LdoList[ldoNum].LdoEnBitNum == 0xff)
	{
		Cli_ldoForceError();
		return LDO_MAX;
	}
	return ldoNum;
}

void Cli_ldoForceOffOn(void)
{
	consolePrint("Turning off all LDOs\r\n");
	LdoCtrl_TimerEnableForceOff(&dLdoCtrl,0xffffffff);
	consolePrint("Sleeping for 10 seconds\r\n");
#ifdef USE_KERNEL
	sleep(1000);
#endif
#ifdef OVERCAT_S3
//TBD
#endif
	consolePrint("Turning on all LDOs\r\n");
	LdoCtrl_TimerEnableForceOn(&dLdoCtrl,0xffffffff);	
	cliCmdAccepted = 1;
}

void Cli_ldoForceError(void)
{
	consolePrint("cli_ldoForce: Invalid Command\r\n");
}

void Cli_ldoForceHelp(void)
{
	consolePrint("ldoForce disable [ldoName] - Turns off the ldo and leaves it off on subsequent 'seq run' commands\r\n"
	      "ldoForce off [ldoName]     - Turns off the ldo until the next 'seq run' command\r\n"
	      "ldoForce on  [ldoName]     - Turns on the ldo"
	      "ldoForce offon [ldoName]   - Turns all the supplies off and back on without sequence\r\n");
}
