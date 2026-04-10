#define _CLI_RESET_C_

#include "../main.h"

void Cli_pulseReset(void)
{
	u32 usrTicks;

	if(Cli_parseTime(&usrTicks))
	{
		return;
	}
	if(usrTicks > SYS_CFG_RESET_TIMER_MASK)
	{
		usr_printf_1("Cannot specify more than > %d * 15ns time interval\r\n",SYS_CFG_RESET_TIMER_MASK);
		return;
	}
	usr_printf_1("Resetting for %d ticks\r\n",usrTicks);	
	sysCfg_genResetPulse(&dSysCfg,usrTicks);
	cliCmdAccepted = 1;
}

void Cli_nomReset(void)
{
#define NOM_RESET_NS 20000000L
#define NOM_RESET_TICKS (NOM_RESET_NS / 15)
#if (NOM_RESET_TICKS > SYS_CFG_RESET_TIMER_MASK)
#error
#endif
	usr_printf_1("Resetting for %d ticks\r\n",NOM_RESET_TICKS);
	sysCfg_genResetPulse(&dSysCfg, NOM_RESET_TICKS);
	cliCmdAccepted = 1;
}
