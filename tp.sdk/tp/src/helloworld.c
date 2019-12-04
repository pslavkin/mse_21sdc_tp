/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include "xparameters.h"
#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xgpio.h"
#include "xspips.h"

#define SPI_DEVICE_ID	XPAR_PS7_SPI_0_DEVICE_ID
#define BUFFER_SIZE		12

XGpio led_btn;

typedef u8 DataBuffer[BUFFER_SIZE];
u8 ReadBuffer[BUFFER_SIZE];
u8 WriteBuffer[BUFFER_SIZE];
static XSpiPs  SpiInstance;	 /* The instance of the SPI device */

int SpiPolledExample(XSpiPs *SpiInstancePtr, u16 SpiDeviceId)
{
	int Status;
	u32 Count;
	u8 Test;
	XSpiPs_Config *ConfigPtr;	/* Pointer to Configuration data */

	/*
	 * Initialize the SPI driver so that it is  ready to use.
	 */
	ConfigPtr = XSpiPs_LookupConfig(SpiDeviceId);
	if (ConfigPtr == NULL) {
		return XST_DEVICE_NOT_FOUND;
	}

	Status = XSpiPs_CfgInitialize(SpiInstancePtr, ConfigPtr,
				  ConfigPtr->BaseAddress);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Perform a self-test to ensure that the hardware was built correctly.
	 */
	Status = XSpiPs_SelfTest(SpiInstancePtr);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

/*
	 * Set the Spi device as a master and in loopback mode.
	 */
	Status = XSpiPs_SetOptions(SpiInstancePtr, XSPIPS_MASTER_OPTION );
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}



	Test = 0x10;
	for (Count = 0; Count < BUFFER_SIZE; Count++) {
		WriteBuffer[Count] = (u8)(Count + Test);
		ReadBuffer[Count] = 0;
	}


	/*
	 * Transmit the data.
	 */
	XSpiPs_PolledTransfer(SpiInstancePtr, WriteBuffer, ReadBuffer, BUFFER_SIZE);

	/*
	 * Compare the data received with the data that was transmitted.
	 */
	for (Count = 0; Count < BUFFER_SIZE; Count++) {
		if (WriteBuffer[Count] != ReadBuffer[Count]) {
			return XST_FAILURE;
		}
	}

	return XST_SUCCESS;
}

int i;
int main()
{
    init_platform();
    XGpio_Initialize(&led_btn,XPAR_AXI_GPIO_0_DEVICE_ID);
    XGpio_SetDataDirection(&led_btn,2,~0x0F); //leds como salida (0 es salida)
    XGpio_SetDataDirection(&led_btn,1,0x0F);	//botones como entrada (1 es entrada)

    print("Hello World\n\r");
    int i=0;
    int a=0;

    int Status;
    Status = SpiPolledExample(&SpiInstance, SPI_DEVICE_ID);
    	if (Status != XST_SUCCESS) {
    		xil_printf("Spi polled Example Failed\r\n");
    		return XST_FAILURE;
    	}

    while(1) {
    	//XUartPs_RecvByte(STDIN_BASEADDRESS);
    	  a=XGpio_DiscreteRead(&led_btn,1);
       	  XGpio_DiscreteWrite(&led_btn,2,a);
    	  //XGpio_DiscreteWrite(&led_btn,2,i%16);
    	  i++;
    	}
    cleanup_platform();
    return 0;
}
