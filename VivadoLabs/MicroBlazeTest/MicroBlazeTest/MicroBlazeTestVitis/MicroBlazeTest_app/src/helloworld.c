
#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"

#include "xparameters.h"
#include "xiic.h"

/*
 * The following constants map to the XPAR parameters created in the
 * xparameters.h file. They are defined here such that a user can easily
 * change all the needed parameters in one place.
 */
#define IIC_BASE_ADDRESS	XPAR_IIC_0_BASEADDR

u8 temp =0;
int main()
{
    init_platform();

for(u8 i=0;i,255;i++){

	unsigned num =  XIic_Send(IIC_BASE_ADDRESS, 'K', 0xA5, 1, XIIC_STOP);
	if(num > 0 ){
		temp= i;
	}
}


    print("Hello World\n\r");
    print("Successfully ran Hello World application");
    cleanup_platform();
    return 0;
}

