#define _CLI_SEQ_C_

#include "../main.h"

void Cli_parseSeqCmd(void)
{
	Cli_processHandlerList(&SeqCliHandlerList[0]);
}
void Cli_parseSeqSet(void)
{
	char *ptr;
	enum LDO_NUM ldoNum;
	u32 usrTicks;
	
	ptr = getNextToken();
	if(!ptr)
		return;
	ldoNum = TranslateLdoName(ptr);

	if(ldoNum == LDO_MAX)
	{
		sf_print(CLI_SEQ_BAD_LDO_NAME_STR);
		return;
	}
	
	if(LdoList[ldoNum].LdoEnBitNum == 0xff)
	{
		usr_printf_1("ERROR: cli_seq: Invalid command, supply %s is always active\r\n",
			(u32)LdoList[ldoNum].LdoName);
		return;
	}

	if(Cli_parseTime(&usrTicks))	
	{
		return;
	}
	
	// 200000 tick offset for 2ms ldo startup time.
//	if((CalData.calData.calVer == CAL_VER_1) &&
//	   (ldoSeqMode == LDO_SEQ_MODE_NOMINAL))
//	{
//		usrTicks += (200000 / 15); // 66.67MHz clock = 15ns period
//	 	usrTicks += CalData.calData.ldoCalDelayTicks[ldoNum];
//	}

	Ldo_TimerCounterLoad(&dLdoCtrl, LdoList[ldoNum].LdoEnBitNum, (usrTicks*15));
	usr_printf_2("cli_seq: LDO Sequence Accepted for LDO Bit Num:%d Ticks:%d 15ns/tick\r\n",
		LdoList[ldoNum].LdoEnBitNum,
		usrTicks);
	cliCmdAccepted = 1;
}

void Cli_parseSeqRun(void)
{
	u8  dipstrap;
	u32 timerEnMask;
	u32 ldoStatus;
	u32 x;

	Cli_parseSeqStop();
	Cli_parseSeqOff();

	if(ldoSeqMode == LDO_SEQ_MODE_NOMINAL)
	{
		sf_print(CLI_SEQ_DEFAULT_STR);
		setDefaultSequence();
	} else {
		Ldo_TimerCounterReload(&dLdoCtrl);
		sf_print(CLI_SEQ_USER_STR);
	}
	// Turn on 32k clock);
	sysCfg_enableClk32k(&dSysCfg);
#ifdef UNDERDOG_S3
	sysCfg_enableClk26M(&dSysCfg);
#endif
#ifdef COLOSSUS_S3
	sysCfg_enableClk26M(&dSysCfg);
#endif
	BB_Reset(&dSysCfg,1);
	dipstrap	= sysCfg_getDipStrapState(&dSysCfg);
	// Apply strap options and put Athena flash in reset state
	IpcSendFpgaStrapOptions(dipstrap,0x01);

#ifdef USE_KERNEL
	sleep(1000);
#endif
	sf_print(CLI_SEQ_POWERUP_START_STR);
	servoSkip = (500/20);
	LdoCtrl_TimerEnableWrite(&dLdoCtrl, 0xffffffff);
	timerEnMask = LDO_CTRL_mReadReg(dLdoCtrl.BaseAddress, LDO_CTRL_TIMER_ENABLE_REG);
	x = 0;
	do{
		ldoStatus = LdoCtrl_TimerEnableGetState(&dLdoCtrl);
		x++;
	} while((ldoStatus != timerEnMask) && (x < 10));

	// Apply strap options and take athena flash out of reset
#ifdef USE_KERNEL
	for(x=0;x<2;x++)
	{
		sleep(1000);
	}
#endif
#ifdef OVERCAT_S3
	for(x = 0; x < 10; x++)
	{
		Timer0Tick = 0;
		XTmrCtr_Start(&dTimer0, 0);
		while(Timer0Tick == 0);
	}
#endif
	BB_Run(&dSysCfg,1);
	LedSet(SYS_CFG_LED_0);
	sf_print(CLI_SEQ_POWERUP_DONE_STR);
	cliCmdAccepted = 1;
}

void Cli_parseSeqStop(void)
{
	LdoCtrl_TimerEnableWrite(&dLdoCtrl, 0);
	sf_print(CLI_SEQ_STOP_STR);
	cliCmdAccepted = 1;
}

void Cli_parseSeqOff(void)
{
	// turn off supplies
	LdoCtrl_TimerEnableWrite(&dLdoCtrl, 0);
	LdoCtrl_TimerEnableForceOff(&dLdoCtrl,0xffffffff);

	// Turn off 32k clock due to leakage
	sysCfg_disableClk32k(&dSysCfg);
#ifdef UNDERDOG_S3
	sysCfg_disableClk26M(&dSysCfg);
#endif
#ifdef COLOSSUS_S3
	sysCfg_disableClk26M(&dSysCfg);
#endif
	// Set strap options to zero so there is no leakage.
	IpcSendFpgaStrapOptions(0,0);

	// Reset ldo controller
	BB_Reset(&dSysCfg,1);
	LedClear(SYS_CFG_LED_0);
//	LdoCtrl_Reset(&dLdoCtrl);
	sf_print(CLI_SEQ_OFF_STR);
	cliCmdAccepted = 1;
}

void Cli_parseSeqDefault(void)
{
	ldoSeqMode = LDO_SEQ_MODE_NOMINAL;
	setDefaultSequence();
	cliCmdAccepted = 1;
}

void Cli_parseSeqManual(void)
{
	ldoSeqMode = LDO_SEQ_MODE_MANUAL;
	cliCmdAccepted = 1;
}

void Cli_parseSeqStatus(void)
{
	usr_printf_1("LDO_CTRL_TIMER_ENABLE_REG = %08x\r\n",
		LDO_CTRL_mReadReg(dLdoCtrl.BaseAddress, LDO_CTRL_TIMER_ENABLE_REG));
	usr_printf_1("LDO_CTRL_LDO_EN_REG = %08x\r\n",
		LdoCtrl_TimerEnableGetState(&dLdoCtrl));
	usr_printf_1("LDO_CTRL_ENABLE_SET_REG   = %08x\r\n",
		LDO_CTRL_mReadReg(dLdoCtrl.BaseAddress, LDO_CTRL_ENABLE_SET_REG));
	usr_printf_1("LDO_CTRL_ENABLE_CLEAR_REG = %08x\r\n",
		LDO_CTRL_mReadReg(dLdoCtrl.BaseAddress, LDO_CTRL_ENABLE_CLEAR_REG));
	cliCmdAccepted = 1;
}

void Cli_parseSeqShow(void)
{
	int x;
	u32 bitNum;
	
	print("\r\n");
	for(x=0; x<(LDO_MAX); x++)
	{
		bitNum = LdoList[x].LdoEnBitNum;
		if(bitNum != 0xff)
		{
			usr_printf_2("%16s: %10dns\r\n",(u32)LdoList[x].LdoName,ldoTimerShadow.usrNs[bitNum]);
		}
	}
	cliCmdAccepted = 1;
}

void Cli_parseSeqReload(void)
{
	Ldo_TimerCounterReload(&dLdoCtrl);
	cliCmdAccepted = 1;
}

void Cli_parseSeqHelp(void)
{
	sf_print(CLI_SEQ_HELP_STR);
	sf_print(CLI_SEQ_HELP_STR2);
	sf_print(CLI_SEQ_HELP_STR3);
	cliCmdAccepted = 1;
}
