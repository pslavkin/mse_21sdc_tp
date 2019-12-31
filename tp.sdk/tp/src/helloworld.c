#include "xparameters.h"
#include "platform.h"
#include "xil_printf.h"
#include "xgpio.h"
#include "xspips.h"
#include <stdio.h>
#include "xgpiops.h"

static         XSpiPs           SpiInstance;   // The instance of the SPI device
static         XGpioPs          xgpioInstance; // instancia de gpioPS 0 (no confundir con AXI GPIO)
XGpioPs_Config *xgpioConfigPtr;                // para configurar el gpioPS

int SpiPolledExample(XSpiPs *SpiInstancePtr, u16 SpiDeviceId)/*{{{*/
{
   int Status;
   XSpiPs_Config *ConfigPtr;                                                                        // Pointer to Configuration data
   ConfigPtr = XSpiPs_LookupConfig(SpiDeviceId);                                                    // Initialize the SPI driver so that it is  ready to use.
   if (ConfigPtr == NULL) {
      return XST_DEVICE_NOT_FOUND;
   }
   Status = XSpiPs_CfgInitialize(SpiInstancePtr, ConfigPtr, ConfigPtr->BaseAddress);
   if (Status != XST_SUCCESS) {
      return XST_FAILURE;
   }
   XSpiPs_SetClkPrescaler(SpiInstancePtr,XSPIPS_CLK_PRESCALE_256);
   Status = XSpiPs_SetOptions(SpiInstancePtr, XSPIPS_MASTER_OPTION | XSPIPS_FORCE_SSELECT_OPTION ); // Set the Spi device as a master and in loopback mode.
   if (Status != XST_SUCCESS) {
      return XST_FAILURE;
   }
   return XST_SUCCESS;
}/*}}}*/
void delay(unsigned int d){/*{{{*/
   unsigned int i;
   for(i=0;i<d;i++)
      ;
}/*}}}*/
int main(void)
{
   XGpio led_btn;
   int j;
   unsigned char txData=0,rxData=0;
   init_platform          (                                    );
   XGpio_Initialize       ( &led_btn,XPAR_AXI_GPIO_0_DEVICE_ID );
   XGpio_SetDataDirection ( &led_btn,1,0x0F                    ); // botones como entrada (1 es entrada)
   print                  ( "mse 3 21 - cordic\n\r"            );

   SpiPolledExample ( &SpiInstance, XPAR_PS7_SPI_0_DEVICE_ID );
   xgpioConfigPtr  = XGpioPs_LookupConfig(XPAR_PS7_GPIO_0_DEVICE_ID);
   XGpioPs_CfgInitialize ( &xgpioInstance,xgpioConfigPtr,xgpioConfigPtr->BaseAddr );

   //emio map:
   // 0 -----> cs
   // 1 <----- stop_data
   //
   XGpioPs_SetDirection  ( &xgpioInstance,2,0x00000001); 

   while(1) {
      //XUartPs_RecvByte(STDIN_BASEADDRESS);
      //XGpio_DiscreteRead(&led_btn,1);
      //XGpio_DiscreteWrite(&led_btn,2,a);

      delay(0xFFFFFF);

      for(j=0;j<20;j++) {
         XGpioPs_Write(&xgpioInstance,2,1);
         delay(0xFFFFFF); 
         XGpioPs_Write(&xgpioInstance,2,0);
         delay(0xFFFFFF); 
         while((XGpioPs_Read(&xgpioInstance,2)&0x00000002)==0x00000002) {
            printf("esperando stop signal\n\r");
            delay(0xFFFFF);
         }
         delay(0xFF); 
         XSpiPs_PolledTransfer ( &SpiInstance,&txData, &rxData, 1 );
         printf("envio %x y recibo %x \n\r", txData,rxData);
      }
      txData++;
      printf("incremento txData=%x \n\r\n\r\n\r", txData);
   }
   cleanup_platform();
   return 0;
}
