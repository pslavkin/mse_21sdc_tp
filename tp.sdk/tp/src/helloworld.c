#include "xparameters.h"
#include "platform.h"
#include "xil_printf.h"
#include "xgpio.h"
#include <stdio.h>
#include <stdbool.h>
#include "xgpiops.h"
#include "helloworld.h"

#define PORT_DIR_DATA_OUT 0x000FC7FF
#define PORT_DIR_DATA_IN  0x000FC700 
#define BANK2_PIN_OFFSET  54 

enum ports {/*{{{*/
   //0-7<---->i/odata
   M_VALID_PIN=BANK2_PIN_OFFSET+8 ,//8  -----> m_valid  1111 1100 0111 1111 1111 =  0x000FC7FF
   M_LAST_PIN                     ,//9  -----> m_last
   M_CLK_PIN                      ,//10 -----> m_clk
   M_READY_PIN                    ,//11 <----- m_ready

   S_VALID_PIN                    ,//12 <----- s_valid
   S_LAST_PIN                     ,//13 <----- s_last
   S_CLK_PIN                      ,//14 -----> clk
   S_READY_PIN                    ,//15 -----> s_ready

   LED0_PIN                       ,//16 -----> led0
   LED1_PIN                       ,//17 -----> led1
   LED2_PIN                       ,//18 -----> led2
   LED3_PIN                       ,//19 -----> led3
   RST_PIN                        ,//20 -----> rst
};/*}}}*/

static            XGpio            led_btn;
static            XGpioPs          xgpioInstance; // instancia de gpioPS 0 (no confundir con AXI GPIO)
XGpioPs_Config *  xgpioConfigPtr;                 // para configurar el gpioPS

void delay(unsigned int d){/*{{{*/
   unsigned int i;
   for(i=0;i<d;i++)
      ;
}/*}}}*/
void initBtnRgb(void)
{
   XGpio_Initialize       ( &led_btn,XPAR_AXI_GPIO_0_DEVICE_ID );
   XGpio_SetDataDirection ( &led_btn,1,0x0F                    ); // botones como entrada (1 es entrada)
}
void initEmio(void)
{
   xgpioConfigPtr  = XGpioPs_LookupConfig(XPAR_PS7_GPIO_0_DEVICE_ID);
   XGpioPs_CfgInitialize ( &xgpioInstance,xgpioConfigPtr,xgpioConfigPtr->BaseAddr );
   XGpioPs_SetDirection  ( &xgpioInstance,2,PORT_DIR_DATA_IN); 
}

int main(void)
{
   int data,i;
   init_platform (                         );
   initBtnRgb    (                         );
   initEmio      (                         );
   printf        ( "mse 3 21 - cordic\n\r" );

   delay      ( 0xFFFFFF );
   setS_Ready ( 0 );
   delay      ( 0xFFFFFF );
   setM_Valid ( 0 );
   delay      ( 0xFFFFFF );
   setS_Clk   ( 1 );
   delay      ( 0xFFFFFF );
   setM_Clk   ( 1 );
   delay      ( 0xFFFFFF );

   while(readM_Ready()==0) {
      printf ( "esperando al axi master ready clk 0\n\r" );
      setM_Clk ( 0      );
      delay    ( 0xFFFFFF );
      if(readM_Ready()==1) 
         break;
      printf ( "esperando al axi master ready clk 1\n\r" );
      setM_Clk ( 1        );
      delay    ( 0xFFFFFF );
   }
   data=3;
      writeData ( data                       );
      setLeds   ( data                       );
      printf    ( "escribo data=%d\n\r",data );
   setM_Valid ( 1      );
   delay      ( 0xFFFF );
   for(i=0;i<5 && readM_Ready()==1;i++) {
      writeData ( data                       );
      setLeds   ( data                       );
      printf    ( "escribo data=%d\n\r",data );
      delay     ( 0x2FFFFFF                   );
      setM_Clk  ( 0                          );
      delay     ( 0xFFFFFF                   );
      setM_Clk  ( 1                          );
      delay     ( 0xFFFFFF                   );
      data++;
      while(readM_Ready()==0) {
         printf ( "esperando al axi master ready\n\r" );
         setM_Clk ( 0        );
         setS_Clk ( 0        );
         delay    ( 0xFFFFFF );
         if(readM_Ready()==1) 
            break;
         setM_Clk ( 1        );
         setS_Clk ( 1        );
         delay    ( 0xFFFFFF );
      }
   }
   setM_Valid ( 0        );
   delay      ( 0xFFFFFF );
   printf ( "listo tx\n\r" );
//-------------------------------------------
   readData ( );
   while(readS_Valid()==0) {
      printf ( "esperando al axi slave valid\n\r" );
      setS_Clk ( 0        );
      delay    ( 0xFFFFFF );
      if(readS_Valid()==1)
         break;
      setS_Clk ( 1        );
      delay    ( 0xFFFFFF );
   }
   setS_Ready ( 1        );
   delay      ( 0xFFFF   );
      data=readData (                          );
      setLeds       ( data                     );
      printf        ( "dato leido=%i\n\r",data );
   for(i=0;i<16 && readS_Valid()==1;i++) {
      data=readData (                          );
      setLeds       ( data                     );
      printf        ( "dato leido=%i\n\r",data );
      setM_Clk      ( 0                        );
      delay         ( 0xFFFFFF                 );
      setM_Clk      ( 1                        );
      delay         ( 0xFFFFFF                 );
   }
   setS_Ready ( 0      );
   delay      ( 0xFFFF );
   while(1) {
      delay  ( 0xFFFFFF    );
      printf ( "listo\n\r" );
   }
   cleanup_platform();
   return 0;
}

unsigned char readData ( void               ) 
{ 
   XGpioPs_SetDirection ( &xgpioInstance,2,PORT_DIR_DATA_IN );
   unsigned int value= XGpioPs_Read  ( &xgpioInstance ,2);
   return value & 0x000000FF;
}
void writeData         ( unsigned char data ) 
{
   XGpioPs_SetDirection ( &xgpioInstance,2,PORT_DIR_DATA_OUT );
   XGpioPs_WritePin(&xgpioInstance,BANK2_PIN_OFFSET+0,(data>>0)&0x01);
   XGpioPs_WritePin(&xgpioInstance,BANK2_PIN_OFFSET+1,(data>>1)&0x01);
   XGpioPs_WritePin(&xgpioInstance,BANK2_PIN_OFFSET+2,(data>>2)&0x01);
   XGpioPs_WritePin(&xgpioInstance,BANK2_PIN_OFFSET+3,(data>>3)&0x01);
   XGpioPs_WritePin(&xgpioInstance,BANK2_PIN_OFFSET+4,(data>>4)&0x01);
   XGpioPs_WritePin(&xgpioInstance,BANK2_PIN_OFFSET+5,(data>>5)&0x01);
   XGpioPs_WritePin(&xgpioInstance,BANK2_PIN_OFFSET+6,(data>>6)&0x01);
   XGpioPs_WritePin(&xgpioInstance,BANK2_PIN_OFFSET+7,(data>>7)&0x01);
}
void setM_Valid  ( bool s                  ) { XGpioPs_WritePin(&xgpioInstance       ,M_VALID_PIN ,s)                                    ;}
void setM_Last   ( bool s                  ) { XGpioPs_WritePin(&xgpioInstance       ,M_LAST_PIN  ,s)                                    ;}
bool readM_Ready ( void                    ) { return XGpioPs_ReadPin(&xgpioInstance ,M_READY_PIN)                                       ;}
void setM_Clk    ( bool s                  ) { XGpioPs_WritePin(&xgpioInstance       ,M_CLK_PIN     ,s)                                    ;}
bool readS_Valid ( void                    ) { return XGpioPs_ReadPin(&xgpioInstance ,S_VALID_PIN)                                       ;}
bool readS_Last  ( void                    ) { return XGpioPs_ReadPin(&xgpioInstance ,S_LAST_PIN)                                        ;}
void setS_Ready  ( bool s                  ) { XGpioPs_WritePin(&xgpioInstance       ,S_READY_PIN ,s)                                    ;}
void setS_Clk    ( bool s                  ) { XGpioPs_WritePin(&xgpioInstance       ,S_CLK_PIN     ,s)                                    ;}
void setRst    ( bool s                  ) { XGpioPs_WritePin(&xgpioInstance       ,RST_PIN     ,s)                                    ;}
void setLeds     ( unsigned int l          ) {
   setLed(LED0_PIN,l&0x01);
   setLed(LED1_PIN,l&0x02);
   setLed(LED2_PIN,l&0x04);
   setLed(LED3_PIN,l&0x08);
}
void setLed ( unsigned char p, bool s ) { XGpioPs_WritePin(&xgpioInstance,p,s);}


