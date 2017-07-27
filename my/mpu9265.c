/**
 * @file L3G4200d.c
 * @version yang
 * @date 2017/2/21
 * @brief L3G4200D�豸��������
 *
 * ���Ľ���:�ɸ���ʵ��Ӳ���޸�
 *
 * ��Ȩ����:�����������µ��Ӽ������޹�˾
 * http://www.lpld.cn
 * mail:support@lpld.cn
 *
 * @par
 * ����������������[LPLD]������ά������������ʹ���߿���Դ���롣
 * �����߿���������ʹ�û��Դ���롣�����μ�����ע��Ӧ���Ա�����
 * ���ø��Ļ�ɾ��ԭ��Ȩ���������������ο����߿��Լ�ע���ΰ�Ȩ�����ߡ�
 * ��Ӧ�����ش�Э��Ļ����ϣ�����Դ���롢���ó��۴��뱾��
 * �������²���������ʹ�ñ��������������κ��¹ʡ��������λ���ز���Ӱ�졣
 * ����������������͡�˵��������ľ���ԭ�����ܡ�ʵ�ַ�����
 * ������������[LPLD]��Ȩ�������߲��ý�������������ҵ��Ʒ��
 */
#include "mpu9265.h"


static void mpu9265_Delay(void);
void delay_ms(unsigned int );
/*
 *    mpu9265_Delay_Init
 *   ��ʼ��MMA7660��������ʼ��7660�����I2C�ӿ��Լ�7660�ļĴ���
 *
 *   ������
 *    ��
 */
void mpu9265_I2C_init(void)
{
  I2C_InitTypeDef i2c_init_param;
    
  //L3G4200D_I2CX
  i2c_init_param.I2C_I2Cx = L3G4200D_I2CX;       //��L3G4200D.h���޸ĸ�ֵ
  i2c_init_param.I2C_IntEnable = FALSE;
  i2c_init_param.I2C_ICR = L3G4200D_SCL_200KHZ ;  //�ɸ���ʵ�ʵ�·����SCLƵ��//��׼ģʽ�Ϳ���ģʽ��ô�޸ģ�
  i2c_init_param.I2C_SclPin = L3G4200D_SCLPIN;   //��L3G4200D.h���޸ĸ�ֵ
  i2c_init_param.I2C_SdaPin = L3G4200D_SDAPIN;   //��L3G4200D.h���޸ĸ�ֵ
  i2c_init_param.I2C_Isr = NULL;
  
  LPLD_I2C_Init(i2c_init_param);
  

}


/*
 *   mpu9265_WriteReg
 *   �ú�����������L3G4200D�ļĴ���
 *
 *   ������
 *   RegisterAddress 
 *    |__ L3G4200D�Ĵ�����ַ
 *   Data
 *    |__ ����д����ֽ������� 
 */
void mpu9265_WriteReg(uint8 RegisterAddress, uint8 Data)
{
  //���ʹӻ���ַ
  LPLD_I2C_StartTrans(L3G4200D_I2CX, L3G4200D_Addr, I2C_MWSR);
  LPLD_I2C_WaitAck(L3G4200D_I2CX, I2C_ACK_ON);
  
  //дMMA7660�Ĵ�����ַ
  LPLD_I2C_WriteByte(L3G4200D_I2CX, RegisterAddress);
  LPLD_I2C_WaitAck(L3G4200D_I2CX, I2C_ACK_ON);
  
  //��Ĵ�����д��������
  LPLD_I2C_WriteByte(L3G4200D_I2CX, Data);
  LPLD_I2C_WaitAck(L3G4200D_I2CX, I2C_ACK_ON);

  LPLD_I2C_Stop(L3G4200D_I2CX);
  
  
  mpu9265_Delay();
  
}

/*
 *   mpu9265_WriteReg
 *   �ú������ڶ�ȡL3G4200D������
 *
 *   ������
 *     RegisterAddress 
 *        |__ L3G4200D�Ĵ�����ַ
 *   ����ֵ
 *      tuoluoyi�������Ĳ���ֵ
 */
uint8 mpu9265_ReadReg(uint8 RegisterAddress)
{
  uint8 result;

  //���ʹӻ���ַ
  LPLD_I2C_StartTrans(L3G4200D_I2CX, L3G4200D_Addr, I2C_MWSR);
  LPLD_I2C_WaitAck(L3G4200D_I2CX, I2C_ACK_ON);

  //дMMA7660�Ĵ�����ַ
  LPLD_I2C_WriteByte(L3G4200D_I2CX, RegisterAddress);
  LPLD_I2C_WaitAck(L3G4200D_I2CX, I2C_ACK_ON);

  //�ٴβ�����ʼ�ź�
  LPLD_I2C_ReStart(L3G4200D_I2CX);

  //���ʹӻ���ַ�Ͷ�ȡλL3G4200D
  LPLD_I2C_WriteByte(L3G4200D_I2CX, L3G4200D_READ);
  LPLD_I2C_WaitAck(L3G4200D_I2CX, I2C_ACK_ON);

  //ת������ģʽΪ��
  LPLD_I2C_SetMasterWR(L3G4200D_I2CX, I2C_MRSW);

  //�ر�Ӧ��ACK
  LPLD_I2C_WaitAck(L3G4200D_I2CX, I2C_ACK_OFF);//�ر�ACK

  //��IIC����
  result =LPLD_I2C_ReadByte(L3G4200D_I2CX);
  LPLD_I2C_WaitAck(L3G4200D_I2CX, I2C_ACK_ON);

  //����ֹͣ�ź�
  LPLD_I2C_Stop(L3G4200D_I2CX);

   //��IIC����
  result = LPLD_I2C_ReadByte(L3G4200D_I2CX);
  
  mpu9265_Delay();

  return result;
}

///*
// * �������ܣ���L3G4200D jiao�ٶ����
// * �����w
// *       Regs_Addr - ���ٶȼĴ�����ַ
// * ��������ֵ�����ٶ�ֵ��int8��
// */   
//int8 mpu9265_GetResult(uint8 Regs_Addr) 
//{
//   char ret;
//   
////   if(Regs_Addr>OUT_Z_H)
////    return 0;
//   
//// �ȴ�ת����ɲ�ȡ��ֵ   
//   ret=mpu9265_ReadReg(Regs_Addr);
////     while(ret&0x40) {
////    ret=LPLD_MMA7660_ReadReg(Regs_Addr);
////  }
// 
//   return ret;
//
//}


/*
 * ��ʱ����
 */
static void mpu9265_Delay(void){
  int n;
  for(n=1;n<200;n++)
  {
    asm("nop");
  }
}

/*
 * ��ʱms
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