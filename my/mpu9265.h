


#ifndef _L3G4200Dku_H_
#define _L3G4200Dku_H_

#include "common.h"
#include "HW_I2C.h"


// ����MPU9250�ڲ���ַ
//****************************************
//#define	SMPLRT_DIV		0x19	//�����ǲ����ʣ�����ֵ��0x07(125Hz)
//#define	CONFIG			0x1A	//��ͨ�˲�Ƶ�ʣ�����ֵ��0x06(5Hz)
//#define	GYRO_CONFIG		0x1B	//�������Լ켰������Χ������ֵ��0x18(���Լ죬2000deg/s)
//#define	ACCEL_CONFIG	0x1C	//���ټ��Լ졢������Χ����ͨ�˲�Ƶ�ʣ�����ֵ��0x01(���Լ죬2G��5Hz)

#define	ACCEL_XOUT_H	0x3B
#define	ACCEL_XOUT_L	0x3C
#define	ACCEL_YOUT_H	0x3D
#define	ACCEL_YOUT_L	0x3E
#define	ACCEL_ZOUT_H	0x3F
#define	ACCEL_ZOUT_L	0x40

#define	TEMP_OUT_H		0x41
#define	TEMP_OUT_L		0x42

#define	GYRO_XOUT_H		0x43
#define	GYRO_XOUT_L		0x44	
#define	GYRO_YOUT_H		0x45
#define	GYRO_YOUT_L		0x46
#define	GYRO_ZOUT_H		0x47
#define	GYRO_ZOUT_L		0x48

		
#define MAG_XOUT_L		0x03
#define MAG_XOUT_H		0x04
#define MAG_YOUT_L		0x05
#define MAG_YOUT_H		0x06
#define MAG_ZOUT_L		0x07
#define MAG_ZOUT_H		0x08


//#define	PWR_MGMT_1		0x6B	//��Դ��������ֵ��0x00(��������)
//#define	WHO_AM_I		  0x75	//IIC��ַ�Ĵ���(Ĭ����ֵ0x68��ֻ��)


//=========mpu9265 ���ܲ���==================//
#define	Slaveaddress	0x68      //��68�����ԭ��ͼ����
#define	L3G4200D_Addr   0x68 	 //����������IIC�����еĴӵ�ַ������ALT����ADDRESS��ַ���ŵĲ�ͬ�޸�
#define L3G4200D_WRITE  0xD0     //L3G4200D_Addr<<1 | 0x00
#define L3G4200D_READ   0xD1    //L3G4200D_Addr<<1 | 0x01//�޸�
//************************************
/********�û����޸�ֵ ��ʼ***********/
//����MMA7660�õ���I2Cͨ��
#define L3G4200D_I2CX    (I2C0)

//����MMA7660�õ���SCL����
#define L3G4200D_SCLPIN  (PTB0)

//����MMA7660�õ���SDA����
#define L3G4200D_SDAPIN  (PTB1)
/********�û����޸�ֵ ����***********/


//����SCL Bus Speedȡֵ����������Ϊ50Mhzʱ�ļ�����
#define L3G4200D_SCL_50KHZ                   (0x33) 
#define L3G4200D_SCL_100KHZ                  (0x2B)  
#define L3G4200D_SCL_150KHZ                  (0x28)
#define L3G4200D_SCL_200KHZ                  (0x23)
#define L3G4200D_SCL_250KHZ                  (0x21)
#define L3G4200D_SCL_300KHZ                  (0x20)
#define L3G4200D_SCL_400KHZ                  (0x17)  


//��������
void   mpu9265_I2C_init(void);
void   mpu9265_WriteReg(uint8, uint8);
uint8   mpu9265_ReadReg(uint8);
int8    mpu9265_GetResult(uint8);


#endif