#include "initialzation.h"
#include "math.h"

#define DATA_LENGTH 4


static void GPIO_init(void);
static void PIT_init(void);
static void uart_init(void);
static void uart_init_b(void);
static void uart_init_c(void);
static void variation(void);
static void debug_write_b(void);
static void debug_write_c(void);
static void FTM_init();
static void FTM_init2();

extern char KO;
extern float x;
extern float y;
extern float x_sit;
extern float y_sit;
extern float adress,adress2;
extern float adress_err[DATA_LENGTH],adress_err2[DATA_LENGTH];
extern char KI,KI2;
extern float adress_err_all,adress_err_all2;


//用于初始化的结构体
GPIO_InitTypeDef  gpio_init_struct;
PIT_InitTypeDef   pit_init_struct;
UART_InitTypeDef  uart0_init_struct;
FTM_InitTypeDef   ftm_init_struct; 
NVIC_InitTypeDef  nvic;


int8   send[4];
uint16 TAKE,take1,take2,take;//a
uint8  gate1,gate2,gate;//b
uint8  site,site1,site2,site3;//c
float GATE;
char  k0=0;

//控制相关
float P,D,P1,I1,I,KD,KD2;
float P2,D2,P12,I12,I2;
float angle=0;
float angle2=0;
float x_[6],y_[6];


char start,fsend;


void initialzation()
{
  uart_init();
  uart_init_b();
  uart_init_c();
  variation();
  GPIO_init();
  PIT_init();
  FTM_init();
  FTM_init2();

}
  
void variation()
{
  P=2.05;
  I=0;
  D=0;
//  P1=2.05;
//  I1=0.45;
  KD=KD2=0.79;
  P2=2.05;
  I2=0;
  D2=0;
//  P12=2.05;
//  I12=0.45;
//  fsend=1;
//  start=0;
  x=x_sit=40;
  y=y_sit=40;

}



void uart_init()
{
  uart0_init_struct.UART_Uartx = UART4; //使用UART4
  uart0_init_struct.UART_BaudRate = 115200; //设置波特率9600
  uart0_init_struct.UART_RxPin = PTE25;  //接收引脚为PTE9
  uart0_init_struct.UART_TxPin = PTE24;  //发送引脚为PTE8
  //初始化UART4
  LPLD_UART_Init(uart0_init_struct);
  
}

void uart_init_b()
{
  uart0_init_struct.UART_Uartx = UART0; //使用UART0
  uart0_init_struct.UART_BaudRate = 115200; //设置波特率9600
  uart0_init_struct.UART_RxPin = PTA15;  //接收引脚为PTE9
  uart0_init_struct.UART_TxPin = PTA14;  //发送引脚为PTE8
  uart0_init_struct.UART_RxIntEnable=TRUE;
  uart0_init_struct.UART_RxIsr = debug_write_b;
  //初始化UART0
  LPLD_UART_Init(uart0_init_struct);
  LPLD_UART_EnableIrq(uart0_init_struct) ;
  
}

void uart_init_c()
{
  uart0_init_struct.UART_Uartx = UART3; //使用UART0
  uart0_init_struct.UART_BaudRate = 115200; //设置波特率9600
  uart0_init_struct.UART_RxPin = PTB10;  //接收引脚为PTE9
  uart0_init_struct.UART_TxPin = PTB11;  //发送引脚为PTE8
  uart0_init_struct.UART_RxIntEnable=TRUE;
  uart0_init_struct.UART_RxIsr = debug_write_c;
  //初始化UART0
  LPLD_UART_Init(uart0_init_struct);
  LPLD_UART_EnableIrq(uart0_init_struct) ;
  
}

void FTM_init()         
{
    ftm_init_struct.FTM_Ftmx = FTM0;	                //使能FTM0通道
    ftm_init_struct.FTM_Mode = FTM_MODE_PWM;	        //使能PWM模式
    ftm_init_struct.FTM_PwmFreq =200;         	//PWM频率kHz 7*1e5
    LPLD_FTM_Init(ftm_init_struct);            
    LPLD_FTM_PWM_Enable(FTM0,FTM_Ch1,2560,PTC2,ALIGN_LEFT);  
}

void FTM_init2()         
{
    ftm_init_struct.FTM_Ftmx = FTM1;	                //使能FTM0通道
    ftm_init_struct.FTM_Mode = FTM_MODE_PWM;	        //使能PWM模式
    ftm_init_struct.FTM_PwmFreq =200;         	//PWM频率kHz 7*1e5
    LPLD_FTM_Init(ftm_init_struct);            
    LPLD_FTM_PWM_Enable(FTM1,FTM_Ch1,2570,PTA9,ALIGN_LEFT);  
}



void GPIO_init(void)
{
    gpio_init_struct.GPIO_PTx = PTC;     
    gpio_init_struct.GPIO_Pins =GPIO_Pin1|GPIO_Pin4|GPIO_Pin5|GPIO_Pin6|GPIO_Pin7|GPIO_Pin8|GPIO_Pin16;     //c1，c16方向
    gpio_init_struct.GPIO_Dir = DIR_OUTPUT;                                       //输出
    gpio_init_struct.GPIO_PinControl = INPUT_PULL_UP|IRQC_DIS;                   //内部上拉|不产生中断
    gpio_init_struct.GPIO_Output=OUTPUT_H ;
    LPLD_GPIO_Init(gpio_init_struct);
    PTC7_O = 0;
    PTC4_O = 0;


}





void PIT_init(void)
{
    pit_init_struct.PIT_Pitx = PIT0;
    pit_init_struct.PIT_PeriodMs = 15;      //定时周期 5ms
    pit_init_struct.PIT_PeriodUs = 50;      //定时周期 5ms
    pit_init_struct.PIT_Isr = pit_isr;     //设置中断函数
    LPLD_PIT_Init(pit_init_struct);        //初始化PIT
    LPLD_PIT_EnableIrq(pit_init_struct);    //允许中断

}

void NVIC_init(void)
{
  nvic .NVIC_IRQChannel=PIT0_IRQn;
  nvic.NVIC_IRQChannelEnable=TRUE ;
  nvic.NVIC_IRQChannelGroupPriority=NVIC_PriorityGroup_1;
  nvic.NVIC_IRQChannelPreemptionPriority=1;
  nvic.NVIC_IRQChannelSubPriority=1;
  LPLD_NVIC_Init(nvic);  
  nvic .NVIC_IRQChannel=UART0_RX_TX_IRQn;
  nvic.NVIC_IRQChannelEnable=TRUE ;
  nvic.NVIC_IRQChannelGroupPriority=NVIC_PriorityGroup_1;
  nvic.NVIC_IRQChannelPreemptionPriority=0;
  nvic.NVIC_IRQChannelSubPriority=1;
  LPLD_NVIC_Init(nvic);
  nvic .NVIC_IRQChannel=UART3_RX_TX_IRQn;
  nvic.NVIC_IRQChannelEnable=TRUE ;
  nvic.NVIC_IRQChannelGroupPriority=NVIC_PriorityGroup_1;
  nvic.NVIC_IRQChannelPreemptionPriority=0;
  nvic.NVIC_IRQChannelSubPriority=0;
  LPLD_NVIC_Init(nvic);
  
}


void debug_write(void)
{
//    take = LPLD_UART_GetChar(UART4);
 //   char count=0;
//    if(take==0xdd)
//    {
//      take = LPLD_UART_GetChar(UART4); 
//      take1=((int16)take)*100;
//      take = LPLD_UART_GetChar(UART4); 
//      take2=take;
//      TAKE=take1+take2;
//      P=((float)TAKE)/100;
//      send[count++]=0x44;
//      send[count++]= TAKE>>8;
//      send[count++]= TAKE;
//      LPLD_UART_PutCharArr(UART4,send,count);
//    }
    
//     else if(take==0xa5)
//    {
//      take = LPLD_UART_GetChar(UART4); 
//      take1=((int16)take)*100;
//      take = LPLD_UART_GetChar(UART4); 
//      take2=take;
//      TAKE=take1+take2;
//      D=((float)TAKE)/100;
//      send[count++]=0x55;
//      send[count++]= TAKE>>8;
//      send[count++]= TAKE;
//      LPLD_UART_PutChar(UART4,x);
//    }
    

//    
//    else if(take==0xdd)
//    {
//      take = LPLD_UART_GetChar(UART4);  
//      sit=take;
//      send[count++]=0x44;
//      send[count++]= take;
//      LPLD_UART_PutCharArr(UART4,send,count);
//      
//    } 
//    
//    else if(take==0xee)
//    {
//      take = LPLD_UART_GetChar(UART4);  
//      sitline=take;
//      send[count++]=0x55;
//      send[count++]= take;
//      LPLD_UART_PutCharArr(UART4,send,count);
//      
//    } 
//    
//    else if(take==0x11)
//    {
//      take = LPLD_UART_GetChar(UART4);  
//      scale=take;
//      send[count++]=0x66;
//      send[count++]= take;
//      LPLD_UART_PutCharArr(UART4,send,count);
//      
//    } 
//
//    else if(take==0xa1)
//    {
//      start=1;
//      send_=0;
//    }
//    else if(take==0xa2)
//    {
//      start=0;
//      send_=1;
//    }
//    
      
      
  }


void debug_write_b(void)
{
    gate = LPLD_UART_GetChar(UART0);
    if(gate==0x1c)
    {
     gate = LPLD_UART_GetChar(UART0); 
      if(gate==1)
      {
        gate1= LPLD_UART_GetChar(UART0); 
        gate2= LPLD_UART_GetChar(UART0);
        GATE=(float)(gate1*256+gate2)/100;
      }
      else
      {
        gate1= LPLD_UART_GetChar(UART0); 
        gate2= LPLD_UART_GetChar(UART0); 
        GATE=(float)(gate1*256+gate2)/100;
        GATE=-GATE;
      }
      angle=GATE-2.34;
      if(KO==0)
      {
        if(angle<0.6&&angle>-0.6)
         angle=0;
      }
    }
    if(gate==0x2c)
    {
     gate = LPLD_UART_GetChar(UART0); 
      if(gate==1)
      {
        gate1= LPLD_UART_GetChar(UART0); 
        gate2= LPLD_UART_GetChar(UART0);
        GATE=(float)(gate1*256+gate2)/100;
      }
      else
      {
        gate1= LPLD_UART_GetChar(UART0); 
        gate2= LPLD_UART_GetChar(UART0); 
        GATE=(float)(gate1*256+gate2)/100;
        GATE=-GATE;
      }
      angle2=-(GATE-1.27);
      if(KO==0)
      {
        if(angle2<0.6&&angle2>-0.6)
         angle2=0;
      }
    }
    
}

void debug_write_c(void)
{
    site = LPLD_UART_GetChar(UART3);
    if(site==0x41)
    { 
      site1 = LPLD_UART_GetChar(UART3); 
      site2 = LPLD_UART_GetChar(UART3); 
      site3 = LPLD_UART_GetChar(UART3); 
      site1 = site1-48;
      site2 = site2-48;
      site3 = site3-48;
      x = site1*100+ site2*10+site3;
    }
    if(site==0x42)
    {
      site1 = LPLD_UART_GetChar(UART3); 
      site2 = LPLD_UART_GetChar(UART3);
      site3 = LPLD_UART_GetChar(UART3); 
      site1 = site1-48; 
      site2 = site2-48;
      site3 = site3-48;
      y = site1*100+ site2*10+site3;
     
    }
  if(x_sit-5<x&&x<x_sit+5&&y_sit-5<y&&y<y_sit+5)
  {
    k0++;
    if(k0==4)
    {
      k0=3;
      x=x_sit;
      y=y_sit;
    }
  }
  else
    k0=0;
    
    
  int i;
  for(i=3;i>0;i--)
  {
    x_[i]=x_[i-1];
  }
  x_[0]=x;
//  if(fabs(x-x_[0])<10)
//  {
//    x=(int16)(0.25*x_[0]+0.25*x_[1]+0.25*x_[2]+0.25*x_[3]); 
//  }
//  else
  if(fabs(x-x_[0])<120)
    x=(int16)(0.5*x_[0]+0.5*x_[1]);
  else
    x=x_[0];
  adress2 = x-x_sit;
  for(i=DATA_LENGTH-1;i>0;i--)
  {
    adress_err2[i] = adress_err2[i-1];
  }
  adress_err2[0] = adress2;
  
 //限幅 
  adress_err_all2+=adress_err2[0];
  if(adress2>20||adress2<-20)
   adress_err_all2=KI2=0;
  else
    KI2=1;
  if(adress_err_all2>25)
    adress_err_all2=25;
  if(adress_err_all2<-25)
    adress_err_all2=-25;
 
  for(i=3;i>0;i--)
  {
    y_[i]=y_[i-1];
  }
  y_[0]=y;

//  {
//    y=(int16)(0.25*y_[0]+0.25*y_[1]+0.25*y_[2]+0.25*y_[3]); 
//  }
//  else
   if(fabs(y-y_[0])<100)
    y=(int16)(0.5*y_[0]+0.5*y_[1]);
   else
     y=y_[0];
  //更新
  
  adress = y-y_sit;
  for(i=DATA_LENGTH-1;i>0;i--)
  {
    adress_err[i] = adress_err[i-1];
  }
  adress_err[0] = adress;
 
  adress_err_all+=adress_err[0];
  //限幅
  if(adress>20||adress<-20)
    adress_err_all=KI=0;
  else
    KI=1;
  if(adress_err_all>25)
    adress_err_all=25;
  if(adress_err_all<-25)
    adress_err_all=-25;
  // //更新
 
    
}

