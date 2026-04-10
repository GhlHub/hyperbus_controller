#ifndef _CLI_H_
#define _CLI_H_

#define IsValidDisplayChar(_ch)       ((_ch >= '0' && _ch <= '}') || \
                                       (_ch >= ' ' && _ch <= '/'))

#define CLI_RX_BUFFER_SIZE 64

typedef struct _CliHandler_ {
	char *cliToken;
	void (*cliFunc)();
} CliHandler, *PCliHandler;

#ifdef _CLI_C_

unsigned char inEscapeMode;
unsigned char inPrintMode;
unsigned char inCmdMode;

char cmdModeMsg[] 	= "\r\nIn Cmd Mode\r\n";
char crlf[] 		= "\r\n";
int	cliCmdAccepted;

#ifdef USE_KERNEL
int cliRxMsgQ = -1;
int cliTxMsgQ = -1;
char cliRxBuffer[CLI_RX_BUFFER_SIZE];
u32 cliRxBufferMaxIdx;
u32 cliRxBufferCurrIdx;
#endif
#else
extern char unknownCmdMsg[];
extern int cliCmdAccepted;

#ifdef USE_KERNEL
extern int cliRxMsgQ;
extern int cliTxMsgQ;
extern char cliRxBuffer[CLI_RX_BUFFER_SIZE];
extern u32 cliRxBufferMaxIdx;
extern u32 cliRxBufferCurrIdx;
#endif
#endif

void Cli_Init(void);
void Cli_Task(void);
void Cli_processCmdMode(void);


#endif /*CLI_H_*/
