#define _CLI_FLASH_C_
#include "../main.h"
#include "xilflash.h"

XFlash dFlash;
void Cli_parseFlashCmd(void)
{
	Cli_processHandlerList(&FlashCliHandlerList[0]);
}
void Cli_flashInit(void)
{
	int Status;

	Status = XFlash_Initialize(&dFlash);
	if(Status != XST_SUCCESS) {
		consolePrint("ERROR: Unable to initialize flash\r\n");
		return; //XST_FAILURE;
	}
	Status = XFlash_Reset(&dFlash);
	if(Status != XST_SUCCESS) {
		consolePrint("ERROR: Unable to reset flash\r\n");
		return; // XST_FAILURE;
	}
	consolePrint("INFO: Flash Initialized\r\n");
	cliCmdAccepted = 1;
}

void Cli_flashErase(void)
{
	int Status;

	Status = XFlash_Erase(&dFlash, 0, 0x200000);	// erase 2 megs
	if(Status != XST_SUCCESS) {
		consolePrint("ERROR: Unable to erase flash\r\n");
		return; // XST_FAILURE;
	}
	consolePrint("INFO: Flash Erased\r\n");
	cliCmdAccepted = 1;
}

int WriteBuffer[2] = {0xdeadbeef,0xfeedface};
void Cli_flashWrite(void)
{
	int Status;
	Status = XFlash_Write(&dFlash, 0, 8,
								WriteBuffer);
	if(Status != XST_SUCCESS) {
		consolePrint("ERROR: Unable to program flash\r\n");
		return; // XST_FAILURE;
	}
	consolePrint("INFO: Flash programmed\r\n");
	cliCmdAccepted = 1;
}

char flashBuffer[32*1024*1024];
void Cli_flashDownload(void)
{
	char *ptr;
	char ch;
	int bytesRx;
	int Status;

	ptr = &flashBuffer[0];
	// Disable V5 Uart interrupts and empty the uart rx buffer
	XUartLite_DisableIntr(STDIN_BASEADDRESS);
#ifdef XUartLite_mReadReg
	XUartLite_mDisableIntr(STDIN_BASEADDRESS);
#else
	XUartLite_DisableIntr(STDIN_BASEADDRESS);
#endif

#ifdef XUartLite_mIsReceiveEmpty
	while(!XUartLite_mIsReceiveEmpty(STDIN_BASEADDRESS))
#else
	while(!XUartLite_IsReceiveEmpty(STDIN_BASEADDRESS))
#endif
	{
		inbyte();
	}
	consolePrint("INFO: Download Ready\r\n");

	bytesRx = 0;
	do {
		ch = inbyte();
		if(ch != 0)
		{
			*ptr = ch;
			ptr++;
			bytesRx++;
		}
	} while(ch != 0x00);
	ptr = &flashBuffer[0];
	Status = XFlash_Write(&dFlash, 0, bytesRx, ptr);

	consolePrint("INFO: Download Done\r\n");
}


