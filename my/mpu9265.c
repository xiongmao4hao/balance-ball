/**
 * @file L3G4200d.c
 * @version yang
 * @date 2017/2/21
 * @brief L3G4200D设备驱动程序
 *
 * 更改建议:可根据实际硬件修改
 *
 * 版权所有:北京拉普兰德电子技术有限公司
 * http://www.lpld.cn
 * mail:support@lpld.cn
 *
 * @par
 * 本代码由拉普兰德[LPLD]开发并维护，并向所有使用者开放源代码。
 * 开发者可以随意修使用或改源代码。但本段及以上注释应予以保留。
 * 不得更改或删除原版权所有者姓名，二次开发者可以加注二次版权所有者。
 * 但应在遵守此协议的基础上，开放源代码、不得出售代码本身。
 * 拉普兰德不负责由于使用本代码所带来的任何事故、法律责任或相关不良影响。
 * 拉普兰德无义务解释、说明本代码的具体原理、功能、实现方法。
 * 除非拉普兰德[LPLD]授权，开发者不得将本代码用于商业产品。
 */
#include "mpu9265.h"


static void mpu9265_Delay(void);
void delay_ms(unsigned int );
/*
 *    mpu9265_Delay_Init
 *   初始化MMA7660，包括初始化7660所需的I2C接口以及7660的寄存器
 *
 *   参数：
 *    无
 */
void mpu9265_I2C_init(void)
{
  I2C_InitTypeDef i2c_init_param;
    
  //L3G4200D_I2CX
  i2c_init_param.I2C_I2Cx = L3G4200D_I2CX;       //在L3G4200D.h中修改该值
  i2c_init_param.I2C_IntEnable = FALSE;
  i2c_init_param.I2C_ICR = L3G4200D_SCL_200KHZ ;  //可根据实际电路更改SCL频率//标准模式和快速模式怎么修改？
  i2c_init_param.I2C_SclPin = L3G4200D_SCLPIN;   //在L3G4200D.h中修改该值
  i2c_init_param.I2C_SdaPin = L3G4200D_SDAPIN;   //在L3G4200D.h中修改该值
  i2c_init_param.I2C_Isr = NULL;
  
  LPLD_I2C_Init(i2c_init_param);
  

}


/*
 *   mpu9265_WriteReg
 *   该函数用于配置L3G4200D的寄存器
 *
 *   参数：
 *   RegisterAddress 
 *    |__ L3G4200D寄存器地址
 *   Data
 *    |__ 具体写入的字节型数据 
 */
void mpu9265_WriteReg(uint8 RegisterAddress, uint8 Data)
{
  //发送从机地址
  LPLD_I2C_StartTrans(L3G4200D_I2CX, L3G4200D_Addr, I2C_MWSR);
  LPLD_I2C_WaitAck(L3G4200D_I2CX, I2C_ACK_ON);
  
  //写MMA7660寄存器地址
  LPLD_I2C_WriteByte(L3G4200D_I2CX, RegisterAddress);
  LPLD_I2C_WaitAck(L3G4200D_I2CX, I2C_ACK_ON);
  
  //向寄存器中写具体数据
  LPLD_I2C_WriteByte(L3G4200D_I2CX, Data);
  LPLD_I2C_WaitAck(L3G4200D_I2CX, I2C_ACK_ON);

  LPLD_I2C_Stop(L3G4200D_I2CX);
  
  
  mpu9265_Delay();
  
}

/*
 *   mpu9265_WriteReg
 *   该函数用于读取L3G4200D的数据
 *
 *   参数：
 *     RegisterAddress 
 *        |__ L3G4200D寄存器地址
 *   返回值
 *      tuoluoyi传感器的测量值
 */
uint8 mpu9265_ReadReg(uint8 RegisterAddress)
{
  uint8 result;

  //发送从机地址
  LPLD_I2C_StartTrans(L3G4200D_I2CX, L3G4200D_Addr, I2C_MWSR);
  LPLD_I2C_WaitAck(L3G4200D_I2CX, I2C_ACK_ON);

  //写MMA7660寄存器地址
  LPLD_I2C_WriteByte(L3G4200D_I2CX, RegisterAddress);
  LPLD_I2C_WaitAck(L3G4200D_I2CX, I2C_ACK_ON);

  //再次产生开始信号
  LPLD_I2C_ReStart(L3G4200D_I2CX);

  //发送从机地址和读取位L3G4200D
  LPLD_I2C_WriteByte(L3G4200D_I2CX, L3G4200D_READ);
  LPLD_I2C_WaitAck(L3G4200D_I2CX, I2C_ACK_ON);

  //转换主机模式为读
  LPLD_I2C_SetMasterWR(L3G4200D_I2CX, I2C_MRSW);

  //关闭应答ACK
  LPLD_I2C_WaitAck(L3G4200D_I2CX, I2C_ACK_OFF);//关闭ACK

  //读IIC数据
  result =LPLD_I2C_ReadByte(L3G4200D_I2CX);
  LPLD_I2C_WaitAck(L3G4200D_I2CX, I2C_ACK_ON);

  //发送停止信号
  LPLD_I2C_Stop(L3G4200D_I2CX);

   //读IIC数据
  result = LPLD_I2C_ReadByte(L3G4200D_I2CX);
  
  mpu9265_Delay();

  return result;
}

///*
// * 函数功能：读L3G4200D jiao速度输出
// * 参数
// *       Regs_Addr - 加速度寄存器地址
// * 函数返回值：加速度值（int8）
// */   
//int8 mpu9265_GetResult(uint8 Regs_Addr) 
//{
//   char ret;
//   
////   if(Regs_Addr>OUT_Z_H)
////    return 0;
//   
//// 等待转换完成并取出值   
//   ret=mpu9265_ReadReg(Regs_Addr);
////     while(ret&0x40) {
////    ret=LPLD_MMA7660_ReadReg(Regs_Addr);
////  }
// 
//   return ret;
//
//}


/*
 * 延时函数
 */
static void mpu9265_Delay(void){
  int n;
  for(n=1;n<200;n++)
  {
    asm("nop");
  }
}

/*
 * 延时ms
 */
void delay_ms(unsigned int ms)
{
  unsigned int i, n;
  for(n=0;n<ms;n++)
  {
  for(i=0;i<16666;i++)
   {
    asm("nop");
   }
  }
}