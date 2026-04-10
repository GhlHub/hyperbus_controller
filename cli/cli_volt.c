#define _CLI_VOLT_C_
#include "../main.h"
#include "xilisf.h"
#include "../sf.h"

float Cli_parseVoltQEx(PLDO pLdo);
void Cli_parseCurrQAll(void);
void Cli_parseVoltQAll(void);

void Cli_parseVoltCmdNom1(void)
{
	Cli_parseVoltCmd(LDO_VOLTAGE_NOM1);
}
void Cli_parseVoltCmdNom2(void)
{
	Cli_parseVoltCmd(LDO_VOLTAGE_NOM2);
}
void Cli_parseVoltCmdLpm(void)
{
	Cli_parseVoltCmd(LDO_VOLTAGE_LPM);
}

void Cli_parseVoltCmd(enum LDO_VOLTAGE vm)
{	
	char *ptr;
	PCliHandler	hptr;	
	enum LDO_NUM ldoNum;
	float desiredVoltage;
	float pct;
	
	ptr = getNextToken();
	if(!ptr)
		return;
	hptr = &VoltCliHandlerList[0];
	// Loop thru the list until a matching handler is found or end of handler list has been reached.
	while(hptr->cliToken)
	{
  		if(strcasecmp(ptr, hptr->cliToken) == 0)
  		{
  			hptr->cliFunc();
	  		break;
  		}
	  	hptr++;
	}
	
	if(strcasecmp(ptr,"all") == 0)
	{
		Cli_parseVoltAll(vm);
		return;
	}

	// If we get here, then the key pointed to by ptr
	// should be the name of a supply.
	if(!hptr->cliToken)
	{
		ldoNum = TranslateLdoName(ptr);
		if(ldoNum == LDO_MAX)
		{
			// Not a supply name, bail.
			Cli_parseVoltHelp();
			return;
		} else {
			// We got the supply name, now get the voltage or % margin
			ptr = getNextToken();
			if(!ptr)
				return;
			if(strchr(ptr,'%'))
			{
				Cli_sscanf_floatint(ptr,&pct);
				Ldo_SetVoltagePct(ldoNum, vm, pct);
			} else {
				Cli_sscanf_floatint(ptr, &desiredVoltage);
				Ldo_SetVoltage(ldoNum, vm, desiredVoltage);
			}		
		}
	}

	cliCmdAccepted = 1;
}

void Cli_parseLpmCmd(void)
{
	char *ptr;
	enum LDO_CLI_LPM_CFG orig;

	ptr = getNextToken();
	if(!ptr)
		return;
	orig = ldoCliLpmCfg;
		
	if(strcasecmp(ptr,"enable") == 0)
	{
		ldoCliLpmCfg = LPM_ENABLE;
		Ldo_SyncDac();
		cliCmdAccepted = 1;
	} else if(strcasecmp(ptr,"disable") == 0)
	{
		ldoCliLpmCfg = LPM_DISABLE;
		Ldo_SyncDac();
		cliCmdAccepted = 1;
	} else if(strcasecmp(ptr,"config") == 0)
	{
		Cli_lpmConfigCmd();
	} else if(strcasecmp(ptr,"pcstatus") == 0)
	{
		Cli_lpmPcStatus();
	}
	
	if(orig != ldoCliLpmCfg)
	{
		Ldo_SyncDac();
	}
}

//enum LDO_LPM_CFG pcCfg
void Cli_lpmConfigCmd(void)
{
	//TODO: Parse LPM Config [SupplyNames/ALL] [00:NM1/NM2/LPM/OFF] [01:NM1/NM2/LPM/OFF] [10:NM1/NM2/LPM/OFF] [11:NM1/NM2/LPM/OFF]
	char *ptr;
	enum LDO_NUM ldoNum;
	enum LDO_LPM_CFG lpmCfg;
	PLDO_STATUS pLdoStatus;
	u32 usrPcState;
	u32 dacValue;
	PLDO pLdo;
	
	ptr = getNextToken();
	ldoNum = TranslateLdoName(ptr);
	if(ldoNum == LDO_MAX)
	{
		return;
	}

	pLdoStatus = &LdoStatusList[ldoNum] ;
	
	usrPcState = 0xff;
	ptr = getNextToken();
	if(strcmp(ptr,"00") == 0)
		usrPcState = 0;
	if(strcmp(ptr,"01") == 0)
		usrPcState = 1;
	if(strcmp(ptr,"10") == 0)
		usrPcState = 2;
	if(strcmp(ptr,"11") == 0)
		usrPcState = 3;
	if(usrPcState == 0xff)
		return;
	
	lpmCfg = LPM_CFG_MAX;
	ptr = getNextToken();
	if(strcasecmp(ptr,"NM1") == 0)
		lpmCfg = LPM_CFG_NOM1;
	if(strcasecmp(ptr,"NM2") == 0)
		lpmCfg = LPM_CFG_NOM2;
	if(strcasecmp(ptr,"LPM") == 0)
		lpmCfg = LPM_CFG_LPM;
	if(strcasecmp(ptr,"OFF") == 0)
		lpmCfg = LPM_CFG_OFF;
	if(lpmCfg == LPM_CFG_MAX)
		return;
		
	pLdoStatus->lpmCfg[usrPcState] = lpmCfg;
	pLdo = &LdoList[ldoNum];
	
	if(ldoCliLpmCfg == LPM_ENABLE)
	{
		if(lpmCfg != LPM_CFG_OFF)
		{
			dacValue = pLdoStatus->dacValue[lpmCfg];
			Dac_SendCommand(pLdo->dacPin, dacValue);
		}
	}
	
	cliCmdAccepted = 1;	
}

void Cli_lpmPcStatus(void)
{
	u32 pc1, pc2;

	pc1 = pc2 = 0;
	if(pcState & 0x01)
		pc1++;
	if(pcState & 0x02)
		pc2++;
	
	usr_printf_2(
			"PC1 = %d\r\n"
			"PC2 = %d\r\n",
			pc1, pc2);
	cliCmdAccepted = 1;
}

void Cli_parseVoltAll(enum LDO_VOLTAGE vm)
{
	char 	*ptr;
	int		x;
	float	pct;
	
	ptr = getNextToken();	
	if(strchr(ptr,'%'))
	{
		Cli_sscanf_floatint(ptr, &pct);
		for(x=0;x<LDO_MAX;x++)
		{
			Ldo_SetVoltagePct(x, vm, pct);
		}
	}
	cliCmdAccepted = 1;
}

void Cli_parseVoltHelp(void)
{
	sf_print(CLI_VOLT_HELP_STR);
	cliCmdAccepted = 1;
}

void Cli_parseVoltHelpLdo(void)
{
#ifdef UNDERDOG_S3
	print(	"Athena LDO Supply Names\r\n"
			"VDDC\r\n"
			"CAM1_AVDD1P2\r\n"
			"CAM2_AVDD1P2\r\n"
			"DSI_AVDD1P2\r\n"
			"APLL_AVDD1P2\r\n"
			"MPLL_AVDD1P2\r\n"
			"DPLL_AVDD1P2\r\n"
			"USBAVDD12PLL\r\n"
			"USBDVDD12PLL\r\n"
			"TPLL_AVDD1P2\r\n"
			"ATXIHFEPDVDD1P2\r\n"
			"TDAC_DVDD1P2\r\n"
			"ARXAVDD1P2\r\n"
			"USBAVDD12\r\n"
			"VDDO_1P8\r\n"
			"VDDO_EMI\r\n"
			"VDDP_EMI\r\n"
			"VDDO_FA\r\n"
			"USBAVDD25\r\n"
			"USBAVDD25REF\r\n"
			"NVM_VDDP\r\n"
			"TDAC_AVDD2P5\r\n"
			"ATXLNDRVAVDD2P5\r\n"
			"ATXIHFEPSPVDDR30P1\r\n"
			"ATXIHFEPAVDD30\r\n"
			"ATXIHFEPSPVDDL30P0\r\n"
			"ARXAVDD3P0\r\n"
			"WCDAVDD3P0\r\n"
			"VDDO_SDIO1\r\n"
			"VDDO_SDIO3\r\n"
			"VDDO_SIMA\r\n"
			"VDDO_USB\r\n"
			"VDDO_SIMB\r\n"
			"USBAVDD33\r\n"
			"VBCLDO\r\n");

	print(	"\r\nUnderdog Schmatic Names\r\n"
			"VCC_1V2_A\r\n"
			"VCC_1V2_B\r\n"
			"VCC_1V2_C\r\n"
			"VCC_1V2_D\r\n"
			"VCC_1V8_A\r\n"
			"VCC_1V8_B\r\n"
			"VCC_1V8_C\r\n"
			"VCC_1V8_D\r\n"
			"VCC_2V5_A\r\n"
			"VCC_2V5_B\r\n"
			"VCC_3V0_A\r\n"
			"VCC_3V0_B\r\n"
			"VCC_3V0_C\r\n"
			"VCC_3V0_D\r\n"
			"VCC_3V0_E\r\n"
			"VCC_3V3\r\n"
			"VCC_2V7\r\n"
			"VCC_2V8\r\n"
			"VCC_1V8_RF\r\n"
			"VCC_1V8_MEM\r\n"
			"V5_VCCO_1P8\r\n"
			"V5_VCCO_SDIO\r\n"
			"V5_VCCO_SIMA\r\n"
			"V5_VCCO_SIMB\r\n"
			"VBATT\r\n");
#endif
#ifdef OVERCAT_S3
	sf_print(LDO_OVERCAT_SUPPLY_STR);
#ifdef TARGET_ATHENARAY
	sf_print(LDO_ATHENARAY_SUPPLY_STR);
#endif
#endif
	cliCmdAccepted = 1;
}

void Cli_parseVoltQ(void)
{
	char *ptr;
	float voltage;
	enum LDO_NUM ldoNum;
	PLDO pLdo;
	u32 ldoStatus;
	
	ldoStatus = LdoCtrl_TimerEnableGetState(&dLdoCtrl);
	ptr = getNextToken();
	if(strcasecmp(ptr,"all") == 0)
	{
        Cli_parseVoltQAll();
	} else {
		ldoNum = TranslateLdoName(ptr);
		if(ldoNum == LDO_MAX)
		{
			// Not a supply name, bail.
			//Cli_parseVoltHelp();
			return;
		}
		pLdo = &LdoList[ldoNum];
		voltage = Cli_parseVoltQEx(pLdo);
		usr_printf_2("%s = %dmV",(u32)pLdo->LdoName,(int)(voltage*1000));
		if((!(ldoStatus & pLdo->LdoEnBitMask)) && (pLdo->LdoEnBitNum != 0xff))
		{
			consolePrint(" LDO is disabled, may be invalid.");
		}
		consolePrint("\r\n");
	}
	cliCmdAccepted = 1;
}

void Cli_parseVoltQAll(void)
{
	PLDO pLdo;
	enum ADC_SCAN_CH adcCh;	
	float voltage;
	enum LDO_NUM ldoNum;
	u32 ldoStatus;
	
	ldoStatus = LdoCtrl_TimerEnableGetState(&dLdoCtrl);
    for(ldoNum = 0; ldoNum < LDO_MAX; ldoNum++)
    {
		pLdo = &LdoList[ldoNum];
		adcCh = pLdo->adcVChan;
		if(adcCh == ADC_SCAN_MAX)
			continue;
		voltage = Cli_parseVoltQEx(pLdo);
		usr_printf_2("%s = %dmV",(u32)pLdo->LdoName,(int)(voltage*1000));
		if((!(ldoStatus & pLdo->LdoEnBitMask)) && (pLdo->LdoEnBitNum != 0xff))
		{
			consolePrint(" LDO is disabled, may be invalid.");
		}
		consolePrint("\r\n");
	}
}

float Cli_parseVoltQEx(PLDO pLdo)
{
	float voltage;
	enum ADC_NUM adcNum;
	PADC pAdc;
	PADC_MEASUREMENTS pMeas;
	enum ADC_SCAN_CH adcCh;	
	
	adcNum = pLdo->adcNum;
	adcCh  = pLdo->adcVChan;

	if(adcCh == ADC_SCAN_MAX)
		return 0;
		
	pAdc	= &adcList[adcNum];
	pMeas 	= pAdc->measurements;
	if(pLdo->ldoNum == VBATT)
	{
		voltage = (Adc_CalculateVoltage(adcNum, pMeas->adcData[adcCh]) + AdjustedVref[pAdc->vcomm]) * 2;
	} else {
		voltage = Adc_CalculateVoltage(adcNum, pMeas->adcData[adcCh]) + AdjustedVref[pAdc->vcomm];
	}
	return voltage;
}

#ifdef USE_CLI_CURRQ
void Cli_parseVoltCurrQ(void)
{
    Cli_parseVoltQAll();
    Cli_parseCurrQAll();
}

void Cli_parseCurrentMax(void){
	enum LDO_NUM ldoNum;
	PLDO pLdo;
	char buff[64];
	for(ldoNum = 0; ldoNum < LDO_MAX; ldoNum++)
	{
		pLdo    = &LdoList[ldoNum];
		if(pLdo->adcIChan != ADC_SCAN_MAX)
		{
			sprintf(buff,"%s = %E A\r\n", pLdo->LdoName, pLdo->MaxCurrent);
			consolePrint(buff);
		}
	}
	cliCmdAccepted = 1;

}
void Cli_parseCurrentMaxReset(void){
	enum LDO_NUM ldoNum;
	PLDO pLdo;
	for(ldoNum = 0; ldoNum < LDO_MAX; ldoNum++)
	{
		pLdo    = &LdoList[ldoNum];
		pLdo->MaxCurrent =0;
	}
	cliCmdAccepted = 1;

}

void Cli_parseCurrQ(void)
{
	char *ptr;
	float Isense;
	float Vsense;
	float Vr1;
	enum LDO_NUM ldoNum;
	enum ADC_NUM adcNum;
	PLDO pLdo;
	PADC pAdc;
	PADC_MEASUREMENTS pMeas;
	char buff[64];
		
	ptr = getNextToken();
	
	if(strcasecmp(ptr,"all") == 0)
	{
		Cli_parseCurrQAll();
		return;
	}	
	ldoNum = TranslateLdoName(ptr);
	if(ldoNum == LDO_MAX)
	{
		// Not a supply name, bail.
		//Cli_parseVoltHelp();
		return;
	}
	
	pLdo    = &LdoList[ldoNum];
	adcNum	= pLdo->adcNum;
	pAdc	= &adcList[pLdo->adcNum];
	pMeas 	= pAdc->measurements;
	
	if(pLdo->adcIChan == ADC_SCAN_MAX)
	{
		consolePrint("ERROR: Current information not available\r\n");
		return;
	}
	
	Vsense 	= Adc_CalculateVoltage(adcNum, pMeas->adcData[pLdo->adcIChan]);
//	printf("%d %x %E\r\n",adcNum,pMeas->adcData[pLdo->adcIChan],Vsense);
	Vr1		= (Adc_CalculateVoltage(adcNum, pMeas->adcData[pLdo->adcVChan]) +  AdjustedVref[pAdc->vcomm]) - pLdo->LdoVref;
	Isense = (Vsense / pLdo->RsenseHigh) - (Vr1 / pLdo->R1);
	sprintf(buff,"%s = %E A\r\n", pLdo->LdoName, Isense);
	consolePrint(buff);
	cliCmdAccepted = 1;
}

void Cli_parseCurrQAll(void)
{	
	float Isense;
	float Vsense;
	float Vr1;
	enum LDO_NUM ldoNum;
	enum ADC_NUM adcNum;
	PLDO pLdo;
	PADC pAdc;
	PADC_MEASUREMENTS pMeas;
	char buff[64];

	for(ldoNum = 0; ldoNum < LDO_MAX; ldoNum++)
	{
		pLdo    = &LdoList[ldoNum];
		adcNum	= pLdo->adcNum;
		pAdc	= &adcList[pLdo->adcNum];
		pMeas 	= pAdc->measurements;

		if(pLdo->adcIChan == ADC_SCAN_MAX)
		{
			continue;
		}

		Vsense 	= Adc_CalculateVoltage(adcNum, pMeas->adcData[pLdo->adcIChan]);
		Vr1		= (Adc_CalculateVoltage(adcNum, pMeas->adcData[pLdo->adcVChan]) +  AdjustedVref[pAdc->vcomm]) - pLdo->LdoVref;
		Isense = (Vsense / pLdo->RsenseHigh) - (Vr1 / pLdo->R1);
		sprintf(buff,"%s = %E A\r\n", pLdo->LdoName, Isense);
		consolePrint(buff);
	}
	cliCmdAccepted = 1;
}
#endif

void Cli_parseGenLdoCal(void)
{
	PDAC_CAL_INFO pDinfo;
	enum DAC_NUM dacNum;
	enum DAC_CH dacCh;

	Sf_EraseSector(SF_DAC_CAL_DATA_OFFSET);
	Ldo_GenDacCal();
	for(dacNum=0;dacNum<DAC_MAX;dacNum++)
	{
		pDinfo = &DacCalInfoList[dacNum];
		usr_printf_1("Dac Number: %d\r\n",dacNum);
		for(dacCh=0;dacCh<DAC_CH_MAX;dacCh++)
		{
			usr_printf_2("  %02d: %d\r\n",dacCh,pDinfo->DacAdj[dacCh]);
		}
	}
	Sf_WriteData(SF_DAC_CAL_DATA_OFFSET, 128, (u8*)&DacCalInfoList);
	
	cliCmdAccepted = 1;
}
