#include <xil_printf.h>
#include "platform.h"

int main(void)
{
    init_platform();

    xil_printf("Hello!");

    while(1)
    {
    }
}
