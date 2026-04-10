#define _CLI_SF_C_

#include "../main.h"
#include "xilisf.h"
#include "../sf.h"
#include "cli_sf.h"

void Cli_parseSfCmd(void)
{
	Cli_processHandlerList(&SfCliHandlerList[0]);
}

void Cli_parseSfGetStatusInfo(void)
{
	int status;
	u8 sfStatus[32];

	status = XIsf_GetStatus(&dIsf, sfStatus); 
	printErrorStatus(status);
	do {
		status = XSpi_SetSlaveSelect(dIsf.SpiInstPtr,
						dIsf.SpiSlaveSelect);
	} while(status == XST_DEVICE_BUSY);
	usr_printf_1("SF Status = %x\r\n",sfStatus[1]);
	
	status = XIsf_GetDeviceInfo(&dIsf, sfStatus);
	printErrorStatus(status);
	do {
		status = XSpi_SetSlaveSelect(dIsf.SpiInstPtr,
						dIsf.SpiSlaveSelect);
	} while(status == XST_DEVICE_BUSY);
	usr_printf_5("SF Info = %x %x %x %x %x\r\n",
		sfStatus[1],
		sfStatus[2],
		sfStatus[3],
		sfStatus[4],
		sfStatus[5]);

#if 0
	xil_printf("DevId = %x\r\n",sfStatus[1] & XISF_SR_DEVID_MASK);
	if(sfStatus[1] & XISF_SR_ADDR_MODE_MASK)
		print("  XISF_SR_ADDR_MODE_MASK\r\n");
	if(sfStatus[1] & XISF_SR_COMPARE_MASK)
		print("  XISF_SR_COMPARE_MASK\r\n");
	if(sfStatus[1] & XISF_SR_IS_READY_MASK)
		print("  XISF_SR_IS_READY_MASK\r\n");
	if(sfStatus[1] & XISF_SR_IS_READY_MASK)
		print("  XISF_SR_IS_READY_MASK\r\n");
	if(sfStatus[1] & XISF_SR_DEVID_SHIFT_MASK)
		print("  XISF_SR_DEVID_SHIFT_MASK\r\n");
#endif
	cliCmdAccepted = 1;
}

void Cli_parseSfSetCfg(void)
{
#ifdef USE_KERNEL
	u32 x32;
#else
	char buff[32];
	float f;
#endif
	char *ptr;
	
	memset(&ManufData,0,sizeof(ManufData));	
	ptr = getNextToken();
	strcpy(&ManufData.manufData.serialNum[0],ptr);
	ptr = getNextToken();
	strcpy(&ManufData.manufData.manufYear[0],ptr);
	ptr = getNextToken();
	strcpy(&ManufData.manufData.manufMonth[0],ptr);
	ptr = getNextToken();
	strcpy(&ManufData.manufData.manufDate[0],ptr);

#ifdef USE_KERNEL
	ptr = getNextToken();
	sscanf(ptr,"%lx",&x32);
	ManufData.manufData.patchMask = x32;
#else
	usr_scanf_string(&buff[0], 16);
	usr_sscanf_floatint(buff, &f);
	ManufData.manufData.patchMask = f;
#endif
	consolePrint("\r\n");
	xil_printf("%s\r\n%s/%s/%s\r\n",
		ManufData.manufData.serialNum,
		ManufData.manufData.manufYear,
		ManufData.manufData.manufMonth,
		ManufData.manufData.manufDate);
	ManufData.manufData.manufVer = MANUF_VER_1;
	Sf_WriteManufData();

	cliCmdAccepted = 1;
}

void Cli_parseSfShowCfg(void)
{
	int status;

	sf_print(BANNER_STR);
	consolePrint("\r\nBuild: ");
	consolePrint(__DATE__);
	consolePrint(" ");
	consolePrint(__TIME__);
	consolePrint("\r\n");
#ifdef UNDERDOG_S3
	consolePrint("PLATFORM: Underdog\r\n");
#endif
#ifdef COLOSSUS_S3
	consolePrint("PLATFORM: Colossus\r\n");
#endif
#ifdef OVERCAT_S3
#ifdef TARGET_ATHENARAY
	consolePrint("PLATFORM: AthenaRay\r\n");
#endif
#ifdef TARGET_VENUSRAY
	consolePrint("PLATFORM: Venus/JunoRay\r\n");
#endif
#ifdef TARGET_BONDRAY
	consolePrint("PLATFORM: BondRay\r\n");
#endif
#endif

	status = Sf_ReadManufData();
	if(ManufData.manufData.manufVer != MANUF_VER_1)
	{
		consolePrint("ERROR: Manuf data not present\r\n");
	} else {
		usr_printf_6(
			"Cfg Ver   : %d\r\n"
			"S/N       : %s\r\n"
			"Manuf Date: %s/%s/%s\r\n"
			"Patch Mask: %x\r\n",
			ManufData.manufData.manufVer,
			(u32)ManufData.manufData.serialNum,
			(u32)ManufData.manufData.manufYear,
			(u32)ManufData.manufData.manufMonth,
			(u32)ManufData.manufData.manufDate,
			ManufData.manufData.patchMask);
		printErrorStatus(status);
	}
	cliCmdAccepted = 1;
}

void Cli_parseSfEraseManuf(void)
{
	int status;
	status = Sf_EraseSector(SF_MANUF_DATA_OFFSET);
	printErrorStatus(status);
	cliCmdAccepted = 1;
}

void Cli_parseSfEraseVref(void)
{
	int status;
	status = Sf_EraseSector(SF_VREF_CAL_DATA_OFFSET);
	printErrorStatus(status);
	cliCmdAccepted = 1;
}

void Cli_parseSetVrefCal(void)
{
	int status;
	char buff[16];
	float act;

	consolePrint("\r\nVREF 1.225V Actual Voltage: ");
	usr_scanf_string(&buff[0], 16);
	usr_sscanf_floatint(buff, &act);
	VrefCalData.vrefCalData.vrefOffset[VREF_1P225] = 1.225 - act;

	consolePrint("\r\nVREF 2.048V Actual Voltage: ");
	usr_scanf_string(&buff[0], 16);
	usr_sscanf_floatint(buff, &act);
	VrefCalData.vrefCalData.vrefOffset[VREF_2P048] = 2.048 - act;

	consolePrint("\r\nVREF 4.096V Actual Voltage: ");
	usr_scanf_string(&buff[0], 16);
	usr_sscanf_floatint(buff, &act);
	VrefCalData.vrefCalData.vrefOffset[VREF_4P096] = 4.096 - act;
	print("\r\n");
	
	VrefCalData.vrefCalData.vrefCalVer = VREF_CAL_VER_1;
	status = Sf_WriteVrefCalData();
	printErrorStatus(status);
	cliCmdAccepted = 1;
}	

void Cli_parseSfReadTimerCfg(void)
{
	int status;
	status = Sf_ReadSeq();
	printErrorStatus(status);
	cliCmdAccepted = 1;
}

void Cli_parseSfSelectTimerCfg(void)
{
	char *ptr;
	u32 idx;
	ptr = getNextToken();
	if(!ptr)
		return;
	usr_sscanf_int(ptr, (long*)&idx);
	if(idx > SF_TIMER_CFG_MAX)
		return;
	memcpy(&ldoTimerShadow,
		&TimerCfgData.timerCfg[idx],
		sizeof(ldoTimerShadow));
	cliCmdAccepted = 1;
}

void Cli_parseSfWriteTimerCfg(void)
{
	int status;
	char *ptr;
	u32 idx;

	ptr = getNextToken();
	if(!ptr)
		return;

	usr_sscanf_int(ptr, (long*)&idx);
	if(idx > SF_TIMER_CFG_MAX)
		return;

	status = Sf_ReadSeq();
	if(printErrorStatus(status))
	{
		return;
	}

	status = Sf_EraseSector(SF_SEQ_DATA_OFFSET);
	if(printErrorStatus(status))
	{
		return;
	}

	memcpy(&TimerCfgData.timerCfg[idx],
		&ldoTimerShadow,
		sizeof(ldoTimerShadow));

	status = Sf_WriteSeq();
	printErrorStatus(status);
	cliCmdAccepted = 1;
}

