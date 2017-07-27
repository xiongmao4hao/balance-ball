/*
 * @file       VCAN_OV7725_Eagle.h
 * @brief      鹰眼ov7725驱动代码
 * @version    v5.0
 * @date       2015-01-31
 */

#ifndef _WH_ov7725_H_
#define _WH_ov7725_H_

#include "WH_ov7725_REG.h"
#include "common.h"
#include "DEV_SCCB.h"

   
//存储数组属性

//图像宽度
#define H 10

//图像高度
#define V 42
//图像大小
#define PHOTO_SIZE H*V
#define PHOTO_TURE_SIZE 8*H*V
   


//配置 摄像头 参数
#define CAMERA_DMA_CH       OV7725_EAGLE_DMA_CH         //定义摄像头的DMA采集通道
#define CAMERA_W            OV7725_EAGLE_W              //定义摄像头图像宽度
#define CAMERA_H            OV7725_EAGLE_H              //定义摄像头图像高度
#define CAMERA_SIZE         OV7725_EAGLE_SIZE           //图像占用空间大小
#define CAMERA_DMA_NUM      OV7725_EAGLE_DMA_NUM        //DMA采集次数



//
//配置摄像头 属性

#define OV7725_EAGLE_W            80          //80                     //定义摄像头图像宽度
#define OV7725_EAGLE_H            60                                  //定义摄像头图像高度

typedef struct
{
    uint8 Address;			       /*寄存器地址*/
    uint8 Value;		           /*寄存器值*/
} Register_Info;


void ov7725_init(void);
void extract(void);
void send_image(void);


#endif  