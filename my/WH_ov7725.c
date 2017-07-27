

#include "WH_ov7725.h"



extern PIT_InitTypeDef   pit_init_struct;
extern char start,send_;
extern UART_InitTypeDef  uart0_init_struct;


static void porta_isr(void);
static void portb_isr(void);
static void gpio_init(void);
static void dma_init(void);
static void img_extract(uint8 *dst, uint8 *src, uint32 srclen);
static void delay();
static uint8 ov7725_reg_Init();
static void delay_ms(unsigned int ms);

GPIO_InitTypeDef pta_init;
GPIO_InitTypeDef ptb_init;
GPIO_InitTypeDef pte_init;
GPIO_InitTypeDef ptd_init;
DMA_InitTypeDef dma_init_struct;


uint8 Pix_Data[PHOTO_SIZE];       //二值化数据  
uint8 Pix_TURE_Data[PHOTO_TURE_SIZE];//解压后数据
uint32 V_Cnt;                     //行采集计数
uint8 Is_DispPhoto;               //图像发送标志


/*
 * 延时ms,         ms=1时，正负脉宽1.12ms，周期2.24ms
 */

void delay_ms(unsigned int ms)
{
  uint16 i,j;
  for(i=0;i<ms;i++)
  for(j=0;j<ms;j++);
}




void ov7725_init (void)
{
 
  
  ov7725_reg_Init();
  while(ov7725_reg_Init() == 0);
  delay();
  
  V_Cnt=0;          //行计数
  Is_DispPhoto=0;   //显示图像标志
  
  gpio_init();
  dma_init();
  
  //使能PORTA中断
  LPLD_GPIO_ClearIntFlag(PORTA);
  enable_irq(PORTA_IRQn);

  

}


void extract()
{
  if(Is_DispPhoto==1)
  {
    DisableInterrupts;
    img_extract(Pix_TURE_Data,Pix_Data,PHOTO_SIZE);
    EnableInterrupts;   
  }
}

void send_image()    //发送图像
{
  
    DisableInterrupts;
    static int i=0;
     
    LPLD_UART_PutChar(UART4,0x1);  //上位机通信协议
    LPLD_UART_PutChar(UART4,0xfe);
        
    for(i=0;i<=V*H-1;i++)   
    {

      LPLD_UART_PutChar(UART4,Pix_Data[i]);
                 
    }
  
    
    LPLD_UART_PutChar(UART4,0xfe);
    LPLD_UART_PutChar(UART4,0x1);
    


    EnableInterrupts;
}



void gpio_init()
{
  //OV数据口初始化：PTD8~PTD15
  ptd_init.GPIO_PTx = PTD;
  ptd_init.GPIO_Dir = DIR_INPUT;
  ptd_init.GPIO_Pins = GPIO_Pin0_7;
  ptd_init.GPIO_PinControl = IRQC_DIS | INPUT_PULL_DIS;
  LPLD_GPIO_Init(ptd_init);
  
  //OV行信号接口初始化：PTB3-H
  ptb_init.GPIO_PTx = PTB;
  ptb_init.GPIO_Dir = DIR_INPUT;
  ptb_init.GPIO_Pins = GPIO_Pin3;
  ptb_init.GPIO_PinControl = IRQC_RI|INPUT_PULL_DOWN|INPUT_PF_EN;
  ptb_init.GPIO_Isr = portb_isr;
  LPLD_GPIO_Init(ptb_init); 
  
  //OV场信号接口初始化：PTA5-V
  pta_init.GPIO_PTx = PTA;
  pta_init.GPIO_Dir = DIR_INPUT;
  pta_init.GPIO_Pins = GPIO_Pin5;
  pta_init.GPIO_PinControl = IRQC_RI|INPUT_PULL_DOWN|INPUT_PF_EN;
  pta_init.GPIO_Isr = porta_isr;
  LPLD_GPIO_Init(pta_init); 
  
  //OV PCLK信号接口初始化：PTE6-PCLK
  pte_init.GPIO_PTx = PTE;
  pte_init.GPIO_Pins = GPIO_Pin6;
  pte_init.GPIO_Dir = DIR_INPUT;
  pte_init.GPIO_PinControl = IRQC_DMAFA| INPUT_PULL_DIS;
  LPLD_GPIO_Init(pte_init); 
  
}

void dma_init()
{
  //DMA参数配置
  dma_init_struct.DMA_CHx = DMA_CH0;    //CH0通道
  dma_init_struct.DMA_Req = PORTE_DMAREQ;       //PORTE为请求源
  dma_init_struct.DMA_MajorLoopCnt = H; //主循环计数值：行采集点数，宽度
  dma_init_struct.DMA_MinorByteCnt = 1; //次循环字节计数：每次读入1字节
  dma_init_struct.DMA_SourceAddr = (uint32)&PTD->PDIR;        //源地址：PTD0~7
  dma_init_struct.DMA_DestAddr = (uint32)Pix_Data;      //目的地址：存放图像的数组
  dma_init_struct.DMA_DestAddrOffset = 1;       //目的地址偏移：每次读入增加1
  dma_init_struct.DMA_AutoDisableReq = TRUE;    //自动禁用请求
  //初始化DMA
  LPLD_DMA_Init(dma_init_struct);
}


void porta_isr()
{
  DisableInterrupts;
  if(LPLD_GPIO_IsPinxExt(PORTA, GPIO_Pin5))
  {
    //检测到场开始信号，加载目的地址
    LPLD_DMA_LoadDstAddr(DMA_CH0, Pix_Data);
    //清行中断标志，防止进入无效行中断
    LPLD_GPIO_ClearIntFlag(PORTB);
    enable_irq(PORTB_IRQn);
    LPLD_PIT_DisableIrq(pit_init_struct);
//    LPLD_UART_DisableIrq(uart0_init_struct) ;
  }
  
  EnableInterrupts;
  
}
void portb_isr()
{
  DisableInterrupts;
  if(LPLD_GPIO_IsPinxExt(PORTB, GPIO_Pin3))
  {
    //检测到行开始信号，使能DMA请求
    if(V_Cnt<58)
    {
       
      V_Cnt++;
      if(V_Cnt>16)          // 比预定小1的值
      LPLD_DMA_EnableReq(DMA_CH0);  
      
    }
    //行数采集已满，关闭中断
    else
    {
      //关GPIO中断 
      disable_irq(PORTA_IRQn);
      disable_irq(PORTB_IRQn);
      Is_DispPhoto = 1;//可以显示图像
      V_Cnt=0; 
//      if(send_==1) 
//      send_image();
      extract();
      //使能PIT
      LPLD_PIT_EnableIrq(pit_init_struct);
    }
  }
  EnableInterrupts;
}


#define OV_THRESHOLD OV_threshold
uint8 OV_threshold = 0;
/*OV7725初始化配置表*/
Register_Info ov7725_reg[] =
{
  //寄存器，寄存器值次
  {OV7725_COM4         , 0xC1},    //
  {OV7725_CLKRC        , 0x02},    //50帧
  {OV7725_COM2         , 0x03},
  {OV7725_COM3         , 0xD0},
  {OV7725_COM7         , 0x40},
  {OV7725_HSTART       , 0x3F},
  {OV7725_HSIZE        , 0x50},
  {OV7725_VSTRT        , 0x03},
  {OV7725_VSIZE        , 0x78},
  {OV7725_HREF         , 0x00},
  {OV7725_SCAL0        , 0x0A},
  {OV7725_AWB_Ctrl0    , 0xE0},
  {OV7725_DSPAuto      , 0xff},
  {OV7725_DSP_Ctrl2    , 0x0C},
  {OV7725_DSP_Ctrl3    , 0x00},
  {OV7725_DSP_Ctrl4    , 0x00},
  
#if (CAMERA_W == 80)
{OV7725_HOutSize     , 0x14},
#elif (CAMERA_W == 160)
{OV7725_HOutSize     , 0x28},
#elif (CAMERA_W == 240)
{OV7725_HOutSize     , 0x3c},
#elif (CAMERA_W == 320)
{OV7725_HOutSize     , 0x50},
#else

#endif

#if (CAMERA_H == 60 )
{OV7725_VOutSize     , 0x1E},
#elif (CAMERA_H == 120 )
{OV7725_VOutSize     , 0x3c},
#elif (CAMERA_H == 180 )
{OV7725_VOutSize     , 0x5a},
#elif (CAMERA_H == 240 )
{OV7725_VOutSize     , 0x78},
#else

#endif

{OV7725_EXHCH        , 0x00},
{OV7725_GAM1         , 0x0c},
{OV7725_GAM2         , 0x16},
{OV7725_GAM3         , 0x2a},
{OV7725_GAM4         , 0x4e},
{OV7725_GAM5         , 0x61},
{OV7725_GAM6         , 0x6f},
{OV7725_GAM7         , 0x7b},
{OV7725_GAM8         , 0x86},
{OV7725_GAM9         , 0x8e},
{OV7725_GAM10        , 0x97},
{OV7725_GAM11        , 0xa4},
{OV7725_GAM12        , 0xaf},
{OV7725_GAM13        , 0xc5},
{OV7725_GAM14        , 0xd7},
{OV7725_GAM15        , 0xe8},
{OV7725_SLOP         , 0x20},
{OV7725_LC_RADI      , 0x00},
{OV7725_LC_COEF      , 0x13},
{OV7725_LC_XC        , 0x08},
{OV7725_LC_COEFB     , 0x14},
{OV7725_LC_COEFR     , 0x17},
{OV7725_LC_CTR       , 0x05},
{OV7725_BDBase       , 0x99},
{OV7725_BDMStep      , 0x03},
{OV7725_SDE          , 0x04},
{OV7725_BRIGHT       , 0x00},
{OV7725_CNST         , 0x29},//0x38
{OV7725_SIGN         , 0x06},
{OV7725_UVADJ0       , 0x11},
{OV7725_UVADJ1       , 0x02},

};

//uint8 cfgnum = sizeof(ov7725_reg);
uint8 cfgnum = sizeof(ov7725_reg) / sizeof(ov7725_reg[0]); /*结构体数组成员数目*/


/************************************************
* 函数名：ov7725_reg_Init
* 描述  ：Sensor 寄存器 初始化
* 输入  ：无
* 输出  ：返回1成功，返回0失败
* 注意  ：无
************************************************/
uint8 threshold = 56;
uint8 ov7725_reg_Init(void)
{
  uint16 i = 0;
  uint8 Sensor_IDCode = 0;
  LPLD_SCCB_Init();
  
  LPLD_SCCB_WriteReg(OV7725_CNST, OV_threshold);
    
  delay_ms(50);
  while( 0 == LPLD_SCCB_WriteReg ( OV7725_COM7, 0x80 ) ) /*复位sensor */
  {
    i++;
    if(i == 20)
    {
      return 0 ;
    }
  }
  delay_ms(50);
  
  if( 0 == LPLD_SCCB_ReadReg( OV7725_VER, &Sensor_IDCode, 1 ) )	 /* 读取sensor ID号*/
  {
    return 0;
  }
  
  if(Sensor_IDCode == OV7725_ID)          //若ID正确，则配置所有寄存器
  {
    LPLD_SCCB_WriteReg(OV7725_CNST, threshold);
    for( i = 0 ; i < cfgnum ; i++ )
    {
      if( 0 == LPLD_SCCB_WriteReg(ov7725_reg[i].Address, ov7725_reg[i].Value) )
      {
        return 0;
      }
    }
  }
  else
  {
    return 0;
  }
   
  return 1;
}


//srclen 是二值化图像的占用空间大小
void img_extract(uint8 *dst, uint8 *src, uint32 srclen)
{
    uint8 colour[2] = {255, 0}; //0 和 1 分别对应的颜色
    //注：山外的摄像头 0 表示 白色，1表示 黑色
    uint8 tmpsrc;
    while(srclen --)
    {
        tmpsrc = *src++;
        *dst++ = colour[ (tmpsrc >> 7 ) & 0x01 ];
        *dst++ = colour[ (tmpsrc >> 6 ) & 0x01 ];
        *dst++ = colour[ (tmpsrc >> 5 ) & 0x01 ];
        *dst++ = colour[ (tmpsrc >> 4 ) & 0x01 ];
        *dst++ = colour[ (tmpsrc >> 3 ) & 0x01 ];
        *dst++ = colour[ (tmpsrc >> 2 ) & 0x01 ];
        *dst++ = colour[ (tmpsrc >> 1 ) & 0x01 ];
        *dst++ = colour[ (tmpsrc >> 0 ) & 0x01 ];
    }
}

/*
 * 延时一段时间
 */
void delay()
{
  uint16 i, n;
  for(i=0;i<30000;i++)
  {
    for(n=0;n<200;n++)
    {
      asm("nop");
    }
  }
}