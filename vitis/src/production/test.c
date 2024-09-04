#include "xparameters.h"
#include "xuartlite_l.h"
#include "math.h"
#include "fpga.h"
#include "stdint.h"
#include "xil_printf.h"


int main(void)
{
	uint32_t* uartptr = (uint32_t *)XPAR_UARTLITE_0_BASEADDR;
	
	uint32_t whilecount = 0;
	uint32_t status, control;
	while(1) {

		status = uartptr[XUL_STATUS_REG_OFFSET/4];
		control = uartptr[XUL_CONTROL_REG_OFFSET/4];
        xil_printf("whilecount = %d, status = 0x%08x, control = 0x%08x\n\r", whilecount, status, control);
		
		for (int i=0; i<20000000; i++); // wait

		whilecount++;
	}

	return(0);

}
