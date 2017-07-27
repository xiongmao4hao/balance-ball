/*
 * @file       VCAN_OV7725_Eagle.h
 * @brief      ӥ��ov7725��������
 * @version    v5.0
 * @date       2015-01-31
 */

#ifndef _WH_ov7725_H_
#define _WH_ov7725_H_

#include "WH_ov7725_REG.h"
#include "common.h"
#include "DEV_SCCB.h"

   
//�洢��������

//ͼ����
#define H 10

//ͼ��߶�
#define V 42
//ͼ���С
#define PHOTO_SIZE H*V
#define PHOTO_TURE_SIZE 8*H*V
   


//���� ����ͷ ����
#define CAMERA_DMA_CH       OV7725_EAGLE_DMA_CH         //��������ͷ��DMA�ɼ�ͨ��
#define CAMERA_W            OV7725_EAGLE_W              //��������ͷͼ����
#define CAMERA_H            OV7725_EAGLE_H              //��������ͷͼ��߶�
#define CAMERA_SIZE         OV7725_EAGLE_SIZE           //ͼ��ռ�ÿռ��С
#define CAMERA_DMA_NUM      OV7725_EAGLE_DMA_NUM        //DMA�ɼ�����



//
//��������ͷ ����

#define OV7725_EAGLE_W            80          //80                     //��������ͷͼ����
#define OV7725_EAGLE_H            60                                  //��������ͷͼ��߶�

typedef struct
{
    uint8 Address;			       /*�Ĵ�����ַ*/
    uint8 Value;		           /*�Ĵ���ֵ*/
} Register_Info;


void ov7725_init(void);
void extract(void);
void send_image(void);


#endif  