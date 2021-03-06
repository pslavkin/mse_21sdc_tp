#include "xparameters.h"
#include "platform.h"
#include "xil_printf.h"
#include <stdio.h>
#include <stdbool.h>
#include "xgpiops.h"
#include "helloworld.h"

#define PORT_DIR_DATA_OUT 0x0003E3FF
#define PORT_DIR_DATA_IN  0x0003E300 
#define BANK2_PIN_OFFSET  54 

enum ports {/*{{{*/
   //0-7<---->i/odata
   M_VALID_PIN=BANK2_PIN_OFFSET+8 ,//8  -----> m_valid 11 1110 0011 1111 1111 =  0x0003E3FF
   M_LAST_PIN                     ,//9  -----> m_last
   M_READY_PIN                    ,//10 <----- m_ready

   S_VALID_PIN                    ,//11 <----- s_valid
   S_LAST_PIN                     ,//12 <----- s_last
   S_READY_PIN                    ,//13 -----> s_ready

   LED0_PIN                       ,//14 -----> led0
   LED1_PIN                       ,//15 -----> led1
   LED2_PIN                       ,//16 -----> led2
   LED3_PIN                       ,//17 -----> led3
};/*}}}*/

static            XGpioPs          xgpioInstance; // instancia de gpioPS 0 (no confundir con AXI GPIO)
XGpioPs_Config *  xgpioConfigPtr;                 // para configurar el gpioPS

void delay(unsigned int d){/*{{{*/
   unsigned int i;
   for(i=0;i<d;i++)
      ;
}/*}}}*/
void initEmio(void)
{
   xgpioConfigPtr  = XGpioPs_LookupConfig(XPAR_PS7_GPIO_0_DEVICE_ID);
   XGpioPs_CfgInitialize ( &xgpioInstance,xgpioConfigPtr,xgpioConfigPtr->BaseAddr );
   XGpioPs_SetDirection  ( &xgpioInstance,2,PORT_DIR_DATA_IN); 
}


void taskRx(void)
{
   unsigned int i;
   signed char data;
   short int dataInt=0,byte=0;
   readData ( ); //para poner el bus como entrada solamente
   for(i=0;i<0xFFFFF && readS_Valid()==0;i++)
      ;
   for(i=0;i<1000 && readS_Valid()==1;i++) {
      data     = readData ( );// primero lee lo que esta en el bus y despues le indica que pase al siguiente
      setLeds       ( data                     );
      printf        ( "dato leido \t %d = \t%d\n\r",i,data );
      setS_Ready    ( 1                        ); // PL hace con esto un one shot segun el clk
      setS_Ready    ( 0                        );
      dataInt |= (data<<byte)&(0x00FF<<byte);

      if(byte==8) {
         printf ( "dato leido int=%d\n\r",dataInt);
         byte    = 0                               ;
         dataInt = 0                               ;
      }
      else
         byte=8;
   }
   printf ( "listo rx\n\r" );
}
void taskTx(void)
{
   signed char data;
   unsigned int i;
   signed char im[] = { 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100};
   signed char real[] = { 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100};
      
//   signed char real[] = {125 ,106 ,71  ,25  ,-25 ,-71 ,-106 ,-125 ,-125 ,-106 ,-71  ,-25  ,25   ,71   ,106 ,125};
//   signed char im[]   = {25  ,71  ,106 ,125 ,125 ,106 ,71   ,25   ,-25  ,-71  ,-106 ,-125 ,-125 ,-106 ,-71 ,-25};

   setS_Ready ( 0 );
   setM_Valid ( 0 );
   for(i=0;i<0xFFFFF && readM_Ready()==0;i++)
      ;
   data=0;
   for(i=0;i<sizeof(real) && readM_Ready()==1;i++) {
      writeData ( real[i] );
      setLeds   ( real[i] );
      printf     ( "escribo data real \t %d = \t %d\n\r",i,real[i] );
      setM_Valid ( 1 ); // PL hace con esto un one shot segun el clk
      setM_Valid ( 0 );
      writeData ( im[i] );
      setLeds   ( im[i] );
      printf     ( "escribo data im \t %d = \t %d\n\r",i,im[i] );
      setM_Valid ( 1 ); // PL hace con esto un one shot segun el clk
      setM_Valid ( 0 );
      data++;
   }
   printf ( "listo tx\n\r" );
}

int main(void)
{

   init_platform (                         );
   initEmio      (                         );
   printf        ( "mse 3 21 - cordic\n\r" );

   //-------------------------------------------
   while(1) {
      taskTx();
      taskRx();
      delay  ( 0x1FFFFFF   );
//      printf ( "listo\n\r" );
   }
   cleanup_platform();
   return 0;
}

signed char readData ( void               )
{ 
   XGpioPs_SetDirection ( &xgpioInstance,2,PORT_DIR_DATA_IN );
   int value= XGpioPs_Read  ( &xgpioInstance ,2);
   return (value & 0x000000FF);
}
void writeData         ( signed char data )
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
void setM_Valid  ( bool s                  ) { XGpioPs_WritePin(&xgpioInstance       ,M_VALID_PIN ,s);}
void setM_Last   ( bool s                  ) { XGpioPs_WritePin(&xgpioInstance       ,M_LAST_PIN  ,s);}
bool readM_Ready ( void                    ) { return XGpioPs_ReadPin(&xgpioInstance ,M_READY_PIN)   ;}
bool readS_Valid ( void                    ) { return XGpioPs_ReadPin(&xgpioInstance ,S_VALID_PIN)   ;}
bool readS_Last  ( void                    ) { return XGpioPs_ReadPin(&xgpioInstance ,S_LAST_PIN)    ;}
void setS_Ready  ( bool s                  ) { XGpioPs_WritePin(&xgpioInstance       ,S_READY_PIN ,s);}
void setLed      ( unsigned char p, bool s ) { XGpioPs_WritePin(&xgpioInstance,p,s)                  ;}
void setLeds     ( unsigned int l          ) {
   setLed(LED0_PIN,l&0x01);
   setLed(LED1_PIN,l&0x02);
   setLed(LED2_PIN,l&0x04);
   setLed(LED3_PIN,l&0x08);
}


