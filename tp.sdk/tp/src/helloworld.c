#include "xparameters.h"
#include "platform.h"
#include "xil_printf.h"
#include "xgpio.h"
#include "xspips.h"
#include <stdio.h>
#include "xgpiops.h"

#define SPI_DEVICE_ID   XPAR_PS7_SPI_0_DEVICE_ID
#define BUFFER_SIZE     12

XGpio led_btn;
typedef u8 DataBuffer[BUFFER_SIZE];
static XSpiPs  SpiInstance;   /* The instance of the SPI device */

static XGpioPs xgpioInstance; // instancia de gpioPS 0 (no confundir con AXI GPIO)
XGpioPs_Config *xgpioConfigPtr;    // para configurar el gpioPS

int SpiPolledExample(XSpiPs *SpiInstancePtr, u16 SpiDeviceId)
{
   int Status;
// u32 Count;
// u8 Test;
   XSpiPs_Config *ConfigPtr;  /* Pointer to Configuration data */
   /*
    * Initialize the SPI driver so that it is  ready to use.
    */
   ConfigPtr = XSpiPs_LookupConfig(SpiDeviceId);
   if (ConfigPtr == NULL) {
      return XST_DEVICE_NOT_FOUND;
   }

   Status = XSpiPs_CfgInitialize(SpiInstancePtr, ConfigPtr, ConfigPtr->BaseAddress);
   if (Status != XST_SUCCESS) {
      return XST_FAILURE;
   }
   XSpiPs_SetClkPrescaler(SpiInstancePtr,XSPIPS_CLK_PRESCALE_256);
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
   Status = XSpiPs_SetOptions(SpiInstancePtr, XSPIPS_MASTER_OPTION);// | XSPIPS_FORCE_SSELECT_OPTION );
   if (Status != XST_SUCCESS) {
      return XST_FAILURE;
   }


// Test = 0x00;
// for (Count = 0; Count < BUFFER_SIZE; Count++) {
//    WriteBuffer[Count] = (u8)(Count + Test);
//    ReadBuffer[Count] = 0;
// }


   /*
    * Transmit the data.
    */
// XSpiPs_PolledTransfer(SpiInstancePtr, WriteBuffer, ReadBuffer, BUFFER_SIZE);

   return XST_SUCCESS;
}

int main()
{
    unsigned char txData=0,rxData=0;
    unsigned char txData2=0,rxData2=0;
    init_platform();
    XGpio_Initialize(&led_btn,XPAR_AXI_GPIO_0_DEVICE_ID);
    //XGpio_SetDataDirection(&led_btn,2,~0x0F); //leds como salida (0 es salida)
    XGpio_SetDataDirection(&led_btn,1,0x0F); //botones como entrada (1 es entrada)
    print("Hello World\n\r");


    SpiPolledExample(&SpiInstance, SPI_DEVICE_ID);
    xgpioConfigPtr  = XGpioPs_LookupConfig(XPAR_PS7_GPIO_0_DEVICE_ID);
    XGpioPs_CfgInitialize(&xgpioInstance,xgpioConfigPtr,xgpioConfigPtr->BaseAddr);
    XGpioPs_SetDirection(&xgpioInstance,2,1);
 
 
    while(1) {
       int i=0,j;
       //XUartPs_RecvByte(STDIN_BASEADDRESS);
       XGpio_DiscreteRead(&led_btn,1);
       //XGpio_DiscreteWrite(&led_btn,2,a);

       for(i=0;i<0xFFFFFF;i++)
          ;

       for(j=0;j<20;j++) {
          //dato=0x01;
         XGpioPs_Write(&xgpioInstance,2,1);
          for(i=0;i<0xFFFFFF;i++)
             ;
          XGpioPs_Write(&xgpioInstance,2,0);
          for(i=0;i<0xFFFFFF;i++)
             ;
          XSpiPs_PolledTransfer ( &SpiInstance,&txData, &rxData, 1 );
          printf("envio %x y recibo %x \n\r", txData,rxData);
       }
       txData++;
       printf("incremento txData=%x \n\r\n\r\n\r", txData);
    }

    cleanup_platform();
    return 0;
}
