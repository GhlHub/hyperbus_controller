#define _CLI_C_
#include "../main.h"

#ifdef COLOSSUS_V5
#include "../net.h"
#endif

void Cli_Init(void)
{
 	cliInputBuff[0] = 0;
 	cliInputLen  = 0;
 	inEscapeMode = 0;
 	inPrintMode  = 0;
 	inCmdMode    = 1;
}

void Cli_parseEscape(void)
{
  char x;
#ifdef USE_KERNEL
  x = cliRxBuffer[cliRxBufferCurrIdx++];
#else
  x = inbyte();
#endif
  switch(inEscapeMode)
  {
    case 1:
      switch(x)
      {
	  	case 0x1b:
			inCmdMode    = 0;
			inPrintMode  = 1;
			inEscapeMode = 0;
			//print(printModeMsg);
			break;
        case 0x5b:
          inEscapeMode++;
          break;
        default:
          inEscapeMode = 0;
          break;
      }
      break;
    case 2:
      switch(x)
      {
        case 'A':
          strcpy(cliInputBuff,cliInputBuff_p);
          cliInputLen = strlen(cliInputBuff);
		  uart_usb_put_crlf();
		  Cli_printPrompt();
		  consolePrint(cliInputBuff);
          inEscapeMode = 0;
          break;
        default:
          inEscapeMode = 0;
          break;
      }
  }
}

#ifndef USE_KERNEL
void Cli_Task(void)
{
#ifdef XUartLite_mIsReceiveEmpty
  while(!XUartLite_mIsReceiveEmpty(STDIN_BASEADDRESS))
#else
  while(!XUartLite_IsReceiveEmpty(STDIN_BASEADDRESS))
#endif
  {
	if(inEscapeMode)
    {
		Cli_parseEscape();
    } else if(inCmdMode) {
  		Cli_processCmdMode();
    } else {
		xil_printf("Cli_Task: %d %d %d\r\n",inPrintMode,inEscapeMode,inCmdMode);
		while(1);
	}
  }
}
#endif

#ifdef USE_KERNEL

void Cli_Task(void)
{
	ssize_t qBytes;
  while(1)
  {
  	qBytes = msgrcv(cliRxMsgQ,cliRxBuffer,CLI_RX_BUFFER_SIZE,0,0);	// blocks here until there is something available
  	if(qBytes == -1)
  	{
  		while(1)
	  		print("ERROR: msgrcv in Cli_Task\r\n");	
  	}
  	cliRxBufferMaxIdx = qBytes;
  	cliRxBufferCurrIdx= 0;
  	while(cliRxBufferCurrIdx < cliRxBufferMaxIdx)
  	{
		if(inEscapeMode)
	    {
			Cli_parseEscape();
	    } else if(inCmdMode) {
	  		Cli_processCmdMode();
	    } else {
			xil_printf("Cli_Task: %d %d %d\r\n",inPrintMode,inEscapeMode,inCmdMode);
			while(1);
		}
  	}
  }
}
#endif

#ifdef COLOSSUS_V5
void Cli_EnqueueEthRx(int rxBytes)
{
	char *ptr;
	
	ptr = &tcp0RxBuffer[0];
	while(rxBytes > 32)
	{
		msgsnd(cliRxMsgQ,ptr,32,0);
		ptr     += 32;
		rxBytes -= 32;
	}
	if(rxBytes)
		msgsnd(cliRxMsgQ,ptr,rxBytes,0);
}
#endif

void Cli_parseCmdLine()
{
	char *ptr;
	PCliHandler	hptr;

	ptr = strtok_r(cliInputBuff," ",&tokPtr);
  
	// Get pointer to list of top level cli handlers
	hptr = &TopCliHandlerList[0];
	cliCmdAccepted = 0;
  
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
	if(cliCmdAccepted)
	{
		consolePrint("Command Accepted\r\n");
	} else {
		consolePrint(unknownCmdMsg);
	}  
}

void Cli_processCmdMode(void) {
	char x;
#ifdef USE_KERNEL
  x = cliRxBuffer[cliRxBufferCurrIdx++];
#else
  x = inbyte();
#endif
      switch(x) {
        case 0x1b:  // escape
          inEscapeMode = 1;
          break;
        case 0x03:  // ctrl-c
		  uart_usb_put_crlf();
          Cli_printPrompt();
          cliInputBuff[0] = 0;
          cliInputLen = 0;
          break;
        case '\r':
		  uart_usb_put_crlf();
          cliInputBuff[cliInputLen] = 0;
          strcpy(cliInputBuff_p,cliInputBuff);

          Cli_parseCmdLine();
          cliInputBuff[0] = 0;
          cliInputLen = 0;
          Cli_printPrompt();
          break;
        case '\b':
        case 0x7f:  // backspace
          if(cliInputLen)
          {
            consoleOutbyte(x);
            consoleOutbyte(' ');
            consoleOutbyte(x);
            cliInputLen--;
            cliInputBuff[cliInputLen] = 0;
          }
          break;
        default:
          if(IsValidDisplayChar(x) && (cliInputLen < CLI_INPUT_BUFF_SIZE))
          {
            consoleOutbyte(x);
            cliInputBuff[cliInputLen++] = x;
          } else {
//            xil_printf("%02x\r\n",x);
          }
          break;
      }
}
