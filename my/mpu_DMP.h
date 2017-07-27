
#include "mpu9265.h"
#include "HW_GPIO.h"
#include "HW_SPI.h"
#include "math.h"



#define	SMPLRT_DIV		0x19	//陀螺仪采样率，典型值：0x07(125Hz)
#define	CONFIG			0x1A	//低通滤波频率，典型值：0x06(5Hz)
#define	GYRO_CONFIG		0x1B	//陀螺仪自检及测量范围，典型值：0x18(不自检，2000deg/s)
#define	ACCEL_CONFIG	        0x1C	//加速计自检、测量范围及高通滤波频率，典型值：0x01(不自检，2G，5Hz)
#define	ACCEL_CONFIG2	        0x1D    //mpu9250才有	用来配置加速度计的低通滤波频率
#define	PWR_MGMT_1		0x6B	//电源管理，典型值：0x00(正常启用)
#define	WHO_AM_I		0x75	//IIC地址寄存器(默认数值0x68，只读)
#define	SlaveAddress	        0x68	//MPU6050 左移一位为IIC写入时的地址字节数据，+1为读取
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