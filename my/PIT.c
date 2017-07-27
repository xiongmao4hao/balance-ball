#include "PIT.H"
#include "math.h"

extern char start,send_;
extern uint8 Is_DispPhoto;
extern float adress;

extern int8 angle;

void pit_isr(void)
{
//  if(start==1)
      control();
//·¢ËÍÎ»ÖÃ
//      char count=0;
//      
//      int8  send[4];
//      send[count++]= 0xaa;
//      send[count++]=((int16)adress)>>8;
//      send[count++]=(uint8)adress;
//      LPLD_UART_PutCharArr(UART4,send,count);
//    LPLD_GPIO_ClearIntFlag(PORTA);
//    enable_irq(PORTA_IRQn);
    
}
    