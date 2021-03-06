#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"

#include "xgpio.h"

#include "xparameters.h"
#include "xiic.h"

/*
 * The following constants map to the XPAR parameters created in the
 * xparameters.h file. They are defined here such that a user can easily
 * change all the needed parameters in one place.
 */
#define IIC_BASE_ADDRESS	XPAR_IIC_0_BASEADDR

#define GPIO_EXAMPLE_DEVICE_ID  XPAR_GPIO_0_DEVICE_ID
XGpio Gpio; /* The Instance of the GPIO Driver */

/*
 * The following constant is used to determine which channel of the GPIO is
 * used for the LED if there are 2 channels supported.
 */
#define IN_CHANNEL  1
#define OUT_CHANNEL 2

#define BTN1 0x01   /* Assumes bit 0 of GPIO1 is connected to an button  */
#define LED1 0x01   /* Assumes bit 0 of GPIO is connected to an LED  */

/*
 * The following constant is used to wait after an LED is turned on to make
 * sure that it is visible to the human eye.  This constant might need to be
 * tuned for faster or slower processor speeds.
 */
#define LED_DELAY     10000000

u8 OV7670_init();
void iicScan();

u8 temp = 0;
int main() {
	init_platform();

	int Status;
	volatile int Delay;

	/* Initialize the GPIO driver */
	Status = XGpio_Initialize(&Gpio, GPIO_EXAMPLE_DEVICE_ID);
	if (Status != XST_SUCCESS) {
		xil_printf("Gpio Initialization Failed\r\n");
		return XST_FAILURE;
	}

	/* Set the direction for all signals as inputs except the LED output */
	XGpio_SetDataDirection(&Gpio, IN_CHANNEL, 0xFFFF);
	XGpio_SetDataDirection(&Gpio, OUT_CHANNEL, 0x0000);

	while (1) {

		u32 btn = XGpio_DiscreteRead(&Gpio, IN_CHANNEL);
		if (btn) {
			/* Clear the LED bit */
			XGpio_DiscreteClear(&Gpio, OUT_CHANNEL, LED1);

			/* Wait a small amount of time */
			for (Delay = 0; Delay < LED_DELAY; Delay++)
				;

			if (OV7670_init()) {
				/* Set the LED to High */
				XGpio_DiscreteWrite(&Gpio, OUT_CHANNEL, LED1);
			} else {
				/* Clear the LED bit */
				XGpio_DiscreteClear(&Gpio, OUT_CHANNEL, LED1);
			}
		}
	}

	print("Successfully ran Hello World application");
	cleanup_platform();
	return 0;
}

u8 OV7670_init() {
	u8 resetCMD[] = { 0x12, 0x07 };	// RESET CMD
	u8 com7CMD[] = { 0x12, 0x04 };	// COM7 INIT
	u8 com15CMD[] = { 0x40, 0xD0 };	// COM7 INIT
	unsigned byteSended = 0;

	byteSended = XIic_Send(IIC_BASE_ADDRESS, (0x42 >> 1), resetCMD, 2,
			XIIC_STOP);
	if (byteSended != 2)
		return 0;

	byteSended = XIic_Send(IIC_BASE_ADDRESS, (0x42 >> 1), com7CMD, 2,
			XIIC_STOP);
	if (byteSended != 2)
		return 0;
	byteSended = XIic_Send(IIC_BASE_ADDRESS, (0x42 >> 1), com15CMD, 2,
			XIIC_STOP);
	if (byteSended != 2)
		return 0;

	u8 readBuff[2] = { 0 };

	XIic_Send(IIC_BASE_ADDRESS, (0x42 >> 1), com7CMD, 1, XIIC_STOP);
	XIic_Recv(IIC_BASE_ADDRESS, (0x43 >> 1), readBuff, 1, XIIC_STOP);
	if (readBuff[0] != com7CMD[1])
		return 0;

	XIic_Send(IIC_BASE_ADDRESS, (0x42 >> 1), com15CMD, 1, XIIC_STOP);
	XIic_Recv(IIC_BASE_ADDRESS, (0x42 >> 1), readBuff, 1, XIIC_STOP);
	if (readBuff[0] != com15CMD[1])
		return 0;

	return 1;
}

void iicScan() {
	u8 sendBuff[2] = { 0x12, 0x07 }; // Reset Dev
	for (u8 i = 0; i < 127; i++) {
		unsigned num = XIic_Send(IIC_BASE_ADDRESS, i >> 1, sendBuff, 2,
				XIIC_STOP);
		if (num > 0) {
			print("Found %d\n\r");
		}
	}
}
