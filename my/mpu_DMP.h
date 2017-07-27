
#include "mpu9265.h"
#include "HW_GPIO.h"
#include "HW_SPI.h"
#include "math.h"



#define	SMPLRT_DIV		0x19	//�����ǲ����ʣ�����ֵ��0x07(125Hz)
#define	CONFIG			0x1A	//��ͨ�˲�Ƶ�ʣ�����ֵ��0x06(5Hz)
#define	GYRO_CONFIG		0x1B	//�������Լ켰������Χ������ֵ��0x18(���Լ죬2000deg/s)
#define	ACCEL_CONFIG	        0x1C	//���ټ��Լ졢������Χ����ͨ�˲�Ƶ�ʣ�����ֵ��0x01(���Լ죬2G��5Hz)
#define	ACCEL_CONFIG2	        0x1D    //mpu9250����	�������ü��ٶȼƵĵ�ͨ�˲�Ƶ��
#define	PWR_MGMT_1		0x6B	//��Դ��������ֵ��0x00(��������)
#define	WHO_AM_I		0x75	//IIC��ַ�Ĵ���(Ĭ����ֵ0x68��ֻ��)
#define	SlaveAddress	        0x68	//MPU6050 ����һλΪIICд��ʱ�ĵ�ַ�ֽ����ݣ�+1Ϊ��ȡ
#define DETECT_CTRL             0x6a
#define DMP_CFG_1               0x70
#define DMP_CFG_2               0x71








//extern void delay_ms();
void readdmp(void);
long getdmplong(unsigned char address);
void getquaternion(void);
void getgyro(void);
void getaccel(void);
void getyawpitchroll(void);
void Init_MPU6050(void);