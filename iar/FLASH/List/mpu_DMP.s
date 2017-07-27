///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.60.2.11341/W32 for ARM      14/Jun/2017  16:43:19
// Copyright 1999-2016 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\shize\Desktop\电设\bloodc\project\ball - 副本 - 副本 -
//        副本\my\mpu_DMP.c
//    Command line =  
//        "C:\Users\shize\Desktop\电设\bloodc\project\ball - 副本 - 副本 -
//        副本\my\mpu_DMP.c" -D LPLD_K60 -D USE_K60DZ10 -lCN
//        "C:\Users\shize\Desktop\电设\bloodc\project\ball - 副本 - 副本 -
//        副本\iar\FLASH\List" -lB
//        "C:\Users\shize\Desktop\电设\bloodc\project\ball - 副本 - 副本 -
//        副本\iar\FLASH\List" -o
//        "C:\Users\shize\Desktop\电设\bloodc\project\ball - 副本 - 副本 -
//        副本\iar\FLASH\Obj" --no_cse --no_unroll --no_inline --no_code_motion
//        --no_tbaa --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4 -e --fpu=None --dlib_config "C:\Program Files
//        (x86)\IAR Systems\Embedded Workbench
//        7.4\arm\INC\c\DLib_Config_Normal.h" -I
//        "C:\Users\shize\Desktop\电设\bloodc\project\ball - 副本 - 副本 -
//        副本\iar\..\app\" -I "C:\Users\shize\Desktop\电设\bloodc\project\ball
//        - 副本 - 副本 - 副本\iar\..\..\..\lib\CPU\" -I
//        "C:\Users\shize\Desktop\电设\bloodc\project\ball - 副本 - 副本 -
//        副本\iar\..\..\..\lib\common\" -I
//        "C:\Users\shize\Desktop\电设\bloodc\project\ball - 副本 - 副本 -
//        副本\iar\..\..\..\lib\LPLD\" -I
//        "C:\Users\shize\Desktop\电设\bloodc\project\ball - 副本 - 副本 -
//        副本\iar\..\..\..\lib\LPLD\HW\" -I
//        "C:\Users\shize\Desktop\电设\bloodc\project\ball - 副本 - 副本 -
//        副本\iar\..\..\..\lib\LPLD\DEV\" -I
//        "C:\Users\shize\Desktop\电设\bloodc\project\ball - 副本 - 副本 -
//        副本\iar\..\..\..\lib\LPLD\FUNC\" -I
//        "C:\Users\shize\Desktop\电设\bloodc\project\ball - 副本 - 副本 -
//        副本\iar\..\..\..\lib\uCOS-II\Ports\" -I
//        "C:\Users\shize\Desktop\电设\bloodc\project\ball - 副本 - 副本 -
//        副本\iar\..\..\..\lib\uCOS-II\Source\" -I
//        "C:\Users\shize\Desktop\电设\bloodc\project\ball - 副本 - 副本 -
//        副本\iar\..\..\..\lib\FatFs\" -I
//        "C:\Users\shize\Desktop\电设\bloodc\project\ball - 副本 - 副本 -
//        副本\iar\..\..\..\lib\FatFs\option\" -I
//        "C:\Users\shize\Desktop\电设\bloodc\project\ball - 副本 - 副本 -
//        副本\iar\..\..\..\lib\USB\common\" -I
//        "C:\Users\shize\Desktop\电设\bloodc\project\ball - 副本 - 副本 -
//        副本\iar\..\..\..\lib\USB\driver\" -I
//        "C:\Users\shize\Desktop\电设\bloodc\project\ball - 副本 - 副本 -
//        副本\iar\..\..\..\lib\USB\descriptor\" -I
//        "C:\Users\shize\Desktop\电设\bloodc\project\ball - 副本 - 副本 -
//        副本\iar\..\..\..\lib\USB\class\" -I
//        "C:\Users\shize\Desktop\电设\bloodc\project\ball - 副本 - 副本 -
//        副本\iar\..\my\" -Ol -I "C:\Program Files (x86)\IAR Systems\Embedded
//        Workbench 7.4\arm\CMSIS\Include\" -D ARM_MATH_CM4
//    Locale       =  Chinese (Simplified)_China.936
//    List file    =  
//        C:\Users\shize\Desktop\电设\bloodc\project\ball - 副本 - 副本 -
//        副本\iar\FLASH\List\mpu_DMP.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN __aeabi_d2f
        EXTERN __aeabi_ddiv
        EXTERN __aeabi_dmul
        EXTERN __aeabi_f2d
        EXTERN __aeabi_fadd
        EXTERN __aeabi_fmul
        EXTERN __aeabi_fsub
        EXTERN __aeabi_i2d
        EXTERN asin
        EXTERN atan2
        EXTERN mpu9265_ReadReg
        EXTERN mpu9265_WriteReg

        PUBLIC Init_MPU6050
        PUBLIC accelf
        PUBLIC dmpcfgupddata
        PUBLIC dmpdatas
        PUBLIC dmpmemorydata
        PUBLIC getaccel
        PUBLIC getdmplong
        PUBLIC getgyro
        PUBLIC getquaternion
        PUBLIC getyawpitchroll
        PUBLIC gyrof
        PUBLIC j
        PUBLIC loadcfgupd
        PUBLIC loadfirmware
        PUBLIC quartf
        PUBLIC readdmp
        PUBLIC yprf

// C:\Users\shize\Desktop\电设\bloodc\project\ball - 副本 - 副本 - 副本\my\mpu_DMP.c
//    1 #ifndef __MPU6050DMP_H__
//    2 #define __MPU6050DMP_H__
//    3 #include "mpu_DMP.h"
//    4 
//    5 /*
//    6 第三方配置变量
//    7 */

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//    8 unsigned char dmpdatas[42];
dmpdatas:
        DS8 44

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//    9 uint8 j;
j:
        DS8 1
//   10 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   11 float quartf[4]; /* 四元数*/
quartf:
        DS8 16

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   12 float gyrof[3];  /* 陀螺仪读数*/
gyrof:
        DS8 12

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   13 float accelf[3]; /* 加速度值*/
accelf:
        DS8 12

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   14 float yprf[3];   /* Euler 角度*/
yprf:
        DS8 12
//   15 
//   16 //以下的 firmware 及 config update 数据来自于 Jeff Jrowberg 公开的程序

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
//   17  const unsigned char dmpmemorydata[1929]={
dmpmemorydata:
        DC8 251, 0, 0, 62, 0, 11, 0, 54, 0, 1, 0, 2, 0, 3, 0, 0, 0, 101, 0, 84
        DC8 255, 239, 0, 0, 250, 128, 0, 11, 18, 130, 0, 1, 0, 2, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40, 0, 0, 255, 255, 69, 129, 255, 255
        DC8 250, 114, 0, 0, 0, 0, 0, 0, 3, 232, 0, 0, 0, 1, 0, 1, 127, 255, 255
        DC8 254, 128, 1, 0, 27, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 62
        DC8 3, 48, 64, 0, 0, 0, 2, 202, 227, 9, 62, 128, 0, 0, 32, 0, 0, 0, 0
        DC8 0, 0, 0, 64, 0, 0, 0, 96, 0, 0, 0, 65, 255, 0, 0, 0, 0, 11, 42, 0
        DC8 0, 22, 85, 0, 0, 33, 130, 253, 135, 38, 80, 253, 128, 0, 0, 0, 31
        DC8 0, 0, 0, 5, 128, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 2, 0, 0, 0, 3, 0, 0
        DC8 64, 0, 0, 0, 0, 0, 4, 111, 0, 2, 101, 50, 0, 0, 94, 192, 64, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 251, 140, 111, 93, 253, 93
        DC8 8, 217, 0, 124, 115, 59, 0, 108, 18, 204, 50, 0, 19, 157, 50, 0
        DC8 208, 214, 50, 0, 8, 0, 64, 0, 1, 244, 255, 230, 128, 121, 2, 0, 0
        DC8 0, 0, 0, 208, 214, 0, 0, 39, 16, 251, 0, 0, 0, 64, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0
        DC8 250, 54, 255, 188, 48, 142, 0, 5, 251, 240, 255, 217, 91, 200, 255
        DC8 208, 154, 190, 0, 0, 16, 169, 255, 244, 30, 178, 0, 206, 187, 247
        DC8 0, 0, 0, 1, 0, 0, 0, 4, 0, 2, 0, 2, 2, 0, 0, 12, 255, 194, 128, 0
        DC8 0, 1, 128, 0, 0, 207, 128, 0, 64, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0
        DC8 0, 0, 6, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 63, 104, 182, 121
        DC8 53, 40, 188, 198, 126, 209, 108, 128, 0, 0, 0, 64, 0, 0, 0, 0, 0
        DC8 178, 106, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 63, 240, 0, 0
        DC8 0, 48, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 37, 77, 0, 47, 112, 109
        DC8 0, 0, 5, 174, 0, 12, 2, 208, 0, 0, 0, 0, 0, 101, 0, 84, 255, 239, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 68, 0, 0, 0, 0, 12, 0, 0, 0, 1, 0, 0
        DC8 0, 0, 0, 0, 101, 0, 0, 0, 84, 0, 0, 255, 239, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 64, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 64, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 1, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 27, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 64, 0, 0, 0, 0, 27, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 216, 220, 186, 162, 241, 222, 178, 184, 180, 168, 129, 145, 247, 74
        DC8 144, 127, 145, 106, 243, 249, 219, 168, 249, 176, 186, 160, 128
        DC8 242, 206, 129, 243, 194, 241, 193, 242, 195, 243, 204, 162, 178
        DC8 128, 241, 198, 216, 128, 186, 167, 223, 223, 223, 242, 167, 195
        DC8 203, 197, 182, 240, 135, 162, 148, 36, 72, 112, 60, 149, 64, 104
        DC8 52, 88, 155, 120, 162, 241, 131, 146, 45, 85, 125, 216, 177, 180
        DC8 184, 161, 208, 145, 128, 242, 112, 243, 112, 242, 124, 128, 168
        DC8 241, 1, 176, 152, 135, 217, 67, 216, 134, 201, 136, 186, 161, 242
        DC8 14, 184, 151, 128, 241, 169, 223, 223, 223, 170, 223, 223, 223, 242
        DC8 170, 197, 205, 199, 169, 12, 201, 44, 151, 151, 151, 151, 241, 169
        DC8 137, 38, 70, 102, 176, 180, 186, 128, 172, 222, 242, 202, 241, 178
        DC8 140, 2, 169, 182, 152, 0, 137, 14, 22, 30, 184, 169, 180, 153, 44
        DC8 84, 124, 176, 138, 168, 150, 54, 86, 118, 241, 185, 175, 180, 176
        DC8 131, 192, 184, 168, 151, 17, 177, 143, 152, 185, 175, 240, 36, 8
        DC8 68, 16, 100, 24, 241, 163, 41, 85, 125, 175, 131, 181, 147, 175
        DC8 240, 0, 40, 80, 241, 163, 134, 159, 97, 166, 218, 222, 223, 217
        DC8 250, 163, 134, 150, 219, 49, 166, 217, 248, 223, 186, 166, 143, 194
        DC8 197, 199, 178, 140, 193, 184, 162, 223, 223, 223, 163, 223, 223
        DC8 223, 216, 216, 241, 184, 168, 178, 134, 180, 152, 13, 53, 93, 184
        DC8 170, 152, 176, 135, 45, 53, 61, 178, 182, 186, 175, 140, 150, 25
        DC8 143, 159, 167, 14, 22, 30, 180, 154, 184, 170, 135, 44, 84, 124
        DC8 185, 163, 222, 223, 223, 163, 177, 128, 242, 196, 205, 201, 241
        DC8 184, 169, 180, 153, 131, 13, 53, 93, 137, 185, 163, 45, 85, 125
        DC8 181, 147, 163, 14, 22, 30, 169, 44, 84, 124, 184, 180, 176, 241
        DC8 151, 131, 168, 17, 132, 165, 9, 152, 163, 131, 240, 218, 36, 8, 68
        DC8 16, 100, 24, 216, 241, 165, 41, 85, 125, 165, 133, 149, 2, 26, 46
        DC8 58, 86, 90, 64, 72, 249, 243, 163, 217, 248, 240, 152, 131, 36, 8
        DC8 68, 16, 100, 24, 151, 130, 168, 241, 17, 240, 152, 162, 36, 8, 68
        DC8 16, 100, 24, 218, 243, 222, 216, 131, 165, 148, 1, 217, 163, 2, 241
        DC8 162, 195, 197, 199, 216, 241, 132, 146, 162, 77, 218, 42, 216, 72
        DC8 105, 217, 42, 216, 104, 85, 218, 50, 216, 80, 113, 217, 50, 216
        DC8 112, 93, 218, 58, 216, 88, 121, 217, 58, 216, 120, 147, 163, 77
        DC8 218, 42, 216, 72, 105, 217, 42, 216, 104, 85, 218, 50, 216, 80, 113
        DC8 217, 50, 216, 112, 93, 218, 58, 216, 88, 121, 217, 58, 216, 120
        DC8 168, 138, 154, 240, 40, 80, 120, 158, 243, 136, 24, 241, 159, 29
        DC8 152, 168, 217, 8, 216, 200, 159, 18, 158, 243, 21, 168, 218, 18, 16
        DC8 216, 241, 175, 200, 151, 135, 52, 181, 185, 148, 164, 33, 243, 217
        DC8 34, 216, 242, 45, 243, 217, 42, 216, 242, 53, 243, 217, 50, 216
        DC8 129, 164, 96, 96, 97, 217, 97, 216, 108, 104, 105, 217, 105, 216
        DC8 116, 112, 113, 217, 113, 216, 177, 163, 132, 25, 61, 93, 163, 131
        DC8 26, 62, 94, 147, 16, 48, 129, 16, 17, 184, 176, 175, 143, 148, 242
        DC8 218, 62, 216, 180, 154, 168, 135, 41, 218, 248, 216, 135, 154, 53
        DC8 218, 248, 216, 135, 154, 61, 218, 248, 216, 177, 185, 164, 152, 133
        DC8 2, 46, 86, 165, 129, 0, 12, 20, 163, 151, 176, 138, 241, 45, 217
        DC8 40, 216, 77, 217, 72, 216, 109, 217, 104, 216, 177, 132, 13, 218
        DC8 14, 216, 163, 41, 131, 218, 44, 14, 216, 163, 132, 73, 131, 218, 44
        DC8 76, 14, 216, 184, 176, 168, 138, 154, 245, 32, 170, 218, 223, 216
        DC8 168, 64, 170, 208, 218, 222, 216, 168, 96, 170, 218, 208, 223, 216
        DC8 241, 151, 134, 168, 49, 155, 6, 153, 7, 171, 151, 40, 136, 155, 240
        DC8 12, 32, 20, 64, 184, 176, 180, 168, 140, 156, 240, 4, 40, 81, 121
        DC8 29, 48, 20, 56, 178, 130, 171, 208, 152, 44, 80, 80, 120, 120, 155
        DC8 241, 26, 176, 240, 138, 156, 168, 41, 81, 121, 139, 41, 81, 121
        DC8 138, 36, 112, 89, 139, 32, 88, 113, 138, 68, 105, 56, 139, 57, 64
        DC8 104, 138, 100, 72, 49, 139, 48, 73, 96, 165, 136, 32, 9, 113, 88
        DC8 68, 104, 17, 57, 100, 73, 48, 25, 241, 172, 0, 44, 84, 124, 240
        DC8 140, 168, 4, 40, 80, 120, 241, 136, 151, 38, 168, 89, 152, 172, 140
        DC8 2, 38, 70, 102, 240, 137, 156, 168, 41, 81, 121, 36, 112, 89, 68
        DC8 105, 56, 100, 72, 49, 169, 136, 9, 32, 89, 112, 171, 17, 56, 64
        DC8 105, 168, 25, 49, 72, 96, 140, 168, 60, 65, 92, 32, 124, 0, 241
        DC8 135, 152, 25, 134, 168, 110, 118, 126, 169, 153, 136, 45, 85, 125
        DC8 158, 185, 163, 138, 34, 138, 110, 138, 86, 138, 94, 159, 177, 131
        DC8 6, 38, 70, 102, 14, 46, 78, 110, 157, 184, 173, 0, 44, 84, 124, 242
        DC8 177, 140, 180, 153, 185, 163, 45, 85, 125, 129, 145, 172, 56, 173
        DC8 58, 181, 131, 145, 172, 45, 217, 40, 216, 77, 217, 72, 216, 109
        DC8 217, 104, 216, 140, 157, 174, 41, 217, 4, 174, 216, 81, 217, 4, 174
        DC8 216, 121, 217, 4, 216, 129, 243, 157, 173, 0, 141, 174, 25, 129
        DC8 173, 217, 1, 216, 242, 174, 218, 38, 216, 142, 145, 41, 131, 167
        DC8 217, 173, 173, 173, 173, 243, 42, 216, 216, 241, 176, 172, 137, 145
        DC8 62, 94, 118, 243, 172, 46, 46, 241, 177, 140, 90, 156, 172, 44, 40
        DC8 40, 40, 156, 172, 48, 24, 168, 152, 129, 40, 52, 60, 151, 36, 167
        DC8 40, 52, 60, 156, 36, 242, 176, 137, 172, 145, 44, 76, 108, 138, 155
        DC8 45, 217, 216, 216, 81, 217, 216, 216, 121, 217, 216, 216, 241, 158
        DC8 136, 163, 49, 218, 216, 216, 145, 45, 217, 40, 216, 77, 217, 72
        DC8 216, 109, 217, 104, 216, 177, 131, 147, 53, 61, 128, 37, 218, 216
        DC8 216, 133, 105, 218, 216, 216, 180, 147, 129, 163, 40, 52, 60, 243
        DC8 171, 139, 248, 163, 145, 182, 9, 180, 217, 171, 222, 250, 176, 135
        DC8 156, 185, 163, 221, 241, 163, 163, 163, 163, 149, 241, 163, 163
        DC8 163, 157, 241, 163, 163, 163, 163, 242, 163, 180, 144, 128, 242
        DC8 163, 163, 163, 163, 163, 163, 163, 163, 163, 163, 178, 163, 163
        DC8 163, 163, 163, 163, 176, 135, 181, 153, 241, 163, 163, 163, 152
        DC8 241, 163, 163, 163, 163, 151, 163, 163, 163, 163, 243, 155, 163
        DC8 163, 220, 185, 167, 241, 38, 38, 38, 216, 216, 255, 0, 0, 0
//   18  // bank 0, 256 bytes
//   19     0xFB, 0x00, 0x00, 0x3E, 0x00, 0x0B, 0x00, 0x36, 0x00, 0x01, 0x00, 0x02, 0x00, 0x03, 0x00, 0x00,
//   20     0x00, 0x65, 0x00, 0x54, 0xFF, 0xEF, 0x00, 0x00, 0xFA, 0x80, 0x00, 0x0B, 0x12, 0x82, 0x00, 0x01,
//   21     0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
//   22     0x00, 0x28, 0x00, 0x00, 0xFF, 0xFF, 0x45, 0x81, 0xFF, 0xFF, 0xFA, 0x72, 0x00, 0x00, 0x00, 0x00,
//   23     0x00, 0x00, 0x03, 0xE8, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x7F, 0xFF, 0xFF, 0xFE, 0x80, 0x01,
//   24     0x00, 0x1B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
//   25     0x00, 0x3E, 0x03, 0x30, 0x40, 0x00, 0x00, 0x00, 0x02, 0xCA, 0xE3, 0x09, 0x3E, 0x80, 0x00, 0x00,
//   26     0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x60, 0x00, 0x00, 0x00,
//   27     0x41, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x2A, 0x00, 0x00, 0x16, 0x55, 0x00, 0x00, 0x21, 0x82,
//   28     0xFD, 0x87, 0x26, 0x50, 0xFD, 0x80, 0x00, 0x00, 0x00, 0x1F, 0x00, 0x00, 0x00, 0x05, 0x80, 0x00,
//   29     0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00,
//   30     0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x6F, 0x00, 0x02, 0x65, 0x32, 0x00, 0x00, 0x5E, 0xC0,
//   31     0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
//   32     0xFB, 0x8C, 0x6F, 0x5D, 0xFD, 0x5D, 0x08, 0xD9, 0x00, 0x7C, 0x73, 0x3B, 0x00, 0x6C, 0x12, 0xCC,
//   33     0x32, 0x00, 0x13, 0x9D, 0x32, 0x00, 0xD0, 0xD6, 0x32, 0x00, 0x08, 0x00, 0x40, 0x00, 0x01, 0xF4,
//   34     0xFF, 0xE6, 0x80, 0x79, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0xD0, 0xD6, 0x00, 0x00, 0x27, 0x10,
//   35 
//   36     // bank 1, 256 bytes
//   37     0xFB, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
//   38     0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00,
//   39     0x00, 0x00, 0xFA, 0x36, 0xFF, 0xBC, 0x30, 0x8E, 0x00, 0x05, 0xFB, 0xF0, 0xFF, 0xD9, 0x5B, 0xC8,
//   40     0xFF, 0xD0, 0x9A, 0xBE, 0x00, 0x00, 0x10, 0xA9, 0xFF, 0xF4, 0x1E, 0xB2, 0x00, 0xCE, 0xBB, 0xF7,
//   41     0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x04, 0x00, 0x02, 0x00, 0x02, 0x02, 0x00, 0x00, 0x0C,
//   42     0xFF, 0xC2, 0x80, 0x00, 0x00, 0x01, 0x80, 0x00, 0x00, 0xCF, 0x80, 0x00, 0x40, 0x00, 0x00, 0x00,
//   43     0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x14,
//   44     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
//   45     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
//   46     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
//   47     0x00, 0x00, 0x00, 0x00, 0x03, 0x3F, 0x68, 0xB6, 0x79, 0x35, 0x28, 0xBC, 0xC6, 0x7E, 0xD1, 0x6C,
//   48     0x80, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0xB2, 0x6A, 0x00, 0x00, 0x00, 0x00,
//   49     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x3F, 0xF0, 0x00, 0x00, 0x00, 0x30,
//   50     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
//   51     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
//   52     0x00, 0x00, 0x25, 0x4D, 0x00, 0x2F, 0x70, 0x6D, 0x00, 0x00, 0x05, 0xAE, 0x00, 0x0C, 0x02, 0xD0,
//   53 
//   54     // bank 2, 256 bytes
//   55     0x00, 0x00, 0x00, 0x00, 0x00, 0x65, 0x00, 0x54, 0xFF, 0xEF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
//   56     0x00, 0x00, 0x01, 0x00, 0x00, 0x44, 0x00, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x01, 0x00,
//   57     0x00, 0x00, 0x00, 0x00, 0x00, 0x65, 0x00, 0x00, 0x00, 0x54, 0x00, 0x00, 0xFF, 0xEF, 0x00, 0x00,
//   58     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
//   59     0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
//   60     0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
//   61     0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
//   62     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
//   63     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
//   64     0x00, 0x1B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
//   65     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
//   66     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00,
//   67     0x00, 0x1B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
//   68     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
//   69     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
//   70     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
//   71 
//   72     // bank 3, 256 bytes
//   73     0xD8, 0xDC, 0xBA, 0xA2, 0xF1, 0xDE, 0xB2, 0xB8, 0xB4, 0xA8, 0x81, 0x91, 0xF7, 0x4A, 0x90, 0x7F,
//   74     0x91, 0x6A, 0xF3, 0xF9, 0xDB, 0xA8, 0xF9, 0xB0, 0xBA, 0xA0, 0x80, 0xF2, 0xCE, 0x81, 0xF3, 0xC2,
//   75     0xF1, 0xC1, 0xF2, 0xC3, 0xF3, 0xCC, 0xA2, 0xB2, 0x80, 0xF1, 0xC6, 0xD8, 0x80, 0xBA, 0xA7, 0xDF,
//   76     0xDF, 0xDF, 0xF2, 0xA7, 0xC3, 0xCB, 0xC5, 0xB6, 0xF0, 0x87, 0xA2, 0x94, 0x24, 0x48, 0x70, 0x3C,
//   77     0x95, 0x40, 0x68, 0x34, 0x58, 0x9B, 0x78, 0xA2, 0xF1, 0x83, 0x92, 0x2D, 0x55, 0x7D, 0xD8, 0xB1,
//   78     0xB4, 0xB8, 0xA1, 0xD0, 0x91, 0x80, 0xF2, 0x70, 0xF3, 0x70, 0xF2, 0x7C, 0x80, 0xA8, 0xF1, 0x01,
//   79     0xB0, 0x98, 0x87, 0xD9, 0x43, 0xD8, 0x86, 0xC9, 0x88, 0xBA, 0xA1, 0xF2, 0x0E, 0xB8, 0x97, 0x80,
//   80     0xF1, 0xA9, 0xDF, 0xDF, 0xDF, 0xAA, 0xDF, 0xDF, 0xDF, 0xF2, 0xAA, 0xC5, 0xCD, 0xC7, 0xA9, 0x0C,
//   81     0xC9, 0x2C, 0x97, 0x97, 0x97, 0x97, 0xF1, 0xA9, 0x89, 0x26, 0x46, 0x66, 0xB0, 0xB4, 0xBA, 0x80,
//   82     0xAC, 0xDE, 0xF2, 0xCA, 0xF1, 0xB2, 0x8C, 0x02, 0xA9, 0xB6, 0x98, 0x00, 0x89, 0x0E, 0x16, 0x1E,
//   83     0xB8, 0xA9, 0xB4, 0x99, 0x2C, 0x54, 0x7C, 0xB0, 0x8A, 0xA8, 0x96, 0x36, 0x56, 0x76, 0xF1, 0xB9,
//   84     0xAF, 0xB4, 0xB0, 0x83, 0xC0, 0xB8, 0xA8, 0x97, 0x11, 0xB1, 0x8F, 0x98, 0xB9, 0xAF, 0xF0, 0x24,
//   85     0x08, 0x44, 0x10, 0x64, 0x18, 0xF1, 0xA3, 0x29, 0x55, 0x7D, 0xAF, 0x83, 0xB5, 0x93, 0xAF, 0xF0,
//   86     0x00, 0x28, 0x50, 0xF1, 0xA3, 0x86, 0x9F, 0x61, 0xA6, 0xDA, 0xDE, 0xDF, 0xD9, 0xFA, 0xA3, 0x86,
//   87     0x96, 0xDB, 0x31, 0xA6, 0xD9, 0xF8, 0xDF, 0xBA, 0xA6, 0x8F, 0xC2, 0xC5, 0xC7, 0xB2, 0x8C, 0xC1,
//   88     0xB8, 0xA2, 0xDF, 0xDF, 0xDF, 0xA3, 0xDF, 0xDF, 0xDF, 0xD8, 0xD8, 0xF1, 0xB8, 0xA8, 0xB2, 0x86,
//   89 
//   90     // bank 4, 256 bytes
//   91     0xB4, 0x98, 0x0D, 0x35, 0x5D, 0xB8, 0xAA, 0x98, 0xB0, 0x87, 0x2D, 0x35, 0x3D, 0xB2, 0xB6, 0xBA,
//   92     0xAF, 0x8C, 0x96, 0x19, 0x8F, 0x9F, 0xA7, 0x0E, 0x16, 0x1E, 0xB4, 0x9A, 0xB8, 0xAA, 0x87, 0x2C,
//   93     0x54, 0x7C, 0xB9, 0xA3, 0xDE, 0xDF, 0xDF, 0xA3, 0xB1, 0x80, 0xF2, 0xC4, 0xCD, 0xC9, 0xF1, 0xB8,
//   94     0xA9, 0xB4, 0x99, 0x83, 0x0D, 0x35, 0x5D, 0x89, 0xB9, 0xA3, 0x2D, 0x55, 0x7D, 0xB5, 0x93, 0xA3,
//   95     0x0E, 0x16, 0x1E, 0xA9, 0x2C, 0x54, 0x7C, 0xB8, 0xB4, 0xB0, 0xF1, 0x97, 0x83, 0xA8, 0x11, 0x84,
//   96     0xA5, 0x09, 0x98, 0xA3, 0x83, 0xF0, 0xDA, 0x24, 0x08, 0x44, 0x10, 0x64, 0x18, 0xD8, 0xF1, 0xA5,
//   97     0x29, 0x55, 0x7D, 0xA5, 0x85, 0x95, 0x02, 0x1A, 0x2E, 0x3A, 0x56, 0x5A, 0x40, 0x48, 0xF9, 0xF3,
//   98     0xA3, 0xD9, 0xF8, 0xF0, 0x98, 0x83, 0x24, 0x08, 0x44, 0x10, 0x64, 0x18, 0x97, 0x82, 0xA8, 0xF1,
//   99     0x11, 0xF0, 0x98, 0xA2, 0x24, 0x08, 0x44, 0x10, 0x64, 0x18, 0xDA, 0xF3, 0xDE, 0xD8, 0x83, 0xA5,
//  100     0x94, 0x01, 0xD9, 0xA3, 0x02, 0xF1, 0xA2, 0xC3, 0xC5, 0xC7, 0xD8, 0xF1, 0x84, 0x92, 0xA2, 0x4D,
//  101     0xDA, 0x2A, 0xD8, 0x48, 0x69, 0xD9, 0x2A, 0xD8, 0x68, 0x55, 0xDA, 0x32, 0xD8, 0x50, 0x71, 0xD9,
//  102     0x32, 0xD8, 0x70, 0x5D, 0xDA, 0x3A, 0xD8, 0x58, 0x79, 0xD9, 0x3A, 0xD8, 0x78, 0x93, 0xA3, 0x4D,
//  103     0xDA, 0x2A, 0xD8, 0x48, 0x69, 0xD9, 0x2A, 0xD8, 0x68, 0x55, 0xDA, 0x32, 0xD8, 0x50, 0x71, 0xD9,
//  104     0x32, 0xD8, 0x70, 0x5D, 0xDA, 0x3A, 0xD8, 0x58, 0x79, 0xD9, 0x3A, 0xD8, 0x78, 0xA8, 0x8A, 0x9A,
//  105     0xF0, 0x28, 0x50, 0x78, 0x9E, 0xF3, 0x88, 0x18, 0xF1, 0x9F, 0x1D, 0x98, 0xA8, 0xD9, 0x08, 0xD8,
//  106     0xC8, 0x9F, 0x12, 0x9E, 0xF3, 0x15, 0xA8, 0xDA, 0x12, 0x10, 0xD8, 0xF1, 0xAF, 0xC8, 0x97, 0x87,
//  107 
//  108     // bank 5, 256 bytes
//  109     0x34, 0xB5, 0xB9, 0x94, 0xA4, 0x21, 0xF3, 0xD9, 0x22, 0xD8, 0xF2, 0x2D, 0xF3, 0xD9, 0x2A, 0xD8,
//  110     0xF2, 0x35, 0xF3, 0xD9, 0x32, 0xD8, 0x81, 0xA4, 0x60, 0x60, 0x61, 0xD9, 0x61, 0xD8, 0x6C, 0x68,
//  111     0x69, 0xD9, 0x69, 0xD8, 0x74, 0x70, 0x71, 0xD9, 0x71, 0xD8, 0xB1, 0xA3, 0x84, 0x19, 0x3D, 0x5D,
//  112     0xA3, 0x83, 0x1A, 0x3E, 0x5E, 0x93, 0x10, 0x30, 0x81, 0x10, 0x11, 0xB8, 0xB0, 0xAF, 0x8F, 0x94,
//  113     0xF2, 0xDA, 0x3E, 0xD8, 0xB4, 0x9A, 0xA8, 0x87, 0x29, 0xDA, 0xF8, 0xD8, 0x87, 0x9A, 0x35, 0xDA,
//  114     0xF8, 0xD8, 0x87, 0x9A, 0x3D, 0xDA, 0xF8, 0xD8, 0xB1, 0xB9, 0xA4, 0x98, 0x85, 0x02, 0x2E, 0x56,
//  115     0xA5, 0x81, 0x00, 0x0C, 0x14, 0xA3, 0x97, 0xB0, 0x8A, 0xF1, 0x2D, 0xD9, 0x28, 0xD8, 0x4D, 0xD9,
//  116     0x48, 0xD8, 0x6D, 0xD9, 0x68, 0xD8, 0xB1, 0x84, 0x0D, 0xDA, 0x0E, 0xD8, 0xA3, 0x29, 0x83, 0xDA,
//  117     0x2C, 0x0E, 0xD8, 0xA3, 0x84, 0x49, 0x83, 0xDA, 0x2C, 0x4C, 0x0E, 0xD8, 0xB8, 0xB0, 0xA8, 0x8A,
//  118     0x9A, 0xF5, 0x20, 0xAA, 0xDA, 0xDF, 0xD8, 0xA8, 0x40, 0xAA, 0xD0, 0xDA, 0xDE, 0xD8, 0xA8, 0x60,
//  119     0xAA, 0xDA, 0xD0, 0xDF, 0xD8, 0xF1, 0x97, 0x86, 0xA8, 0x31, 0x9B, 0x06, 0x99, 0x07, 0xAB, 0x97,
//  120     0x28, 0x88, 0x9B, 0xF0, 0x0C, 0x20, 0x14, 0x40, 0xB8, 0xB0, 0xB4, 0xA8, 0x8C, 0x9C, 0xF0, 0x04,
//  121     0x28, 0x51, 0x79, 0x1D, 0x30, 0x14, 0x38, 0xB2, 0x82, 0xAB, 0xD0, 0x98, 0x2C, 0x50, 0x50, 0x78,
//  122     0x78, 0x9B, 0xF1, 0x1A, 0xB0, 0xF0, 0x8A, 0x9C, 0xA8, 0x29, 0x51, 0x79, 0x8B, 0x29, 0x51, 0x79,
//  123     0x8A, 0x24, 0x70, 0x59, 0x8B, 0x20, 0x58, 0x71, 0x8A, 0x44, 0x69, 0x38, 0x8B, 0x39, 0x40, 0x68,
//  124     0x8A, 0x64, 0x48, 0x31, 0x8B, 0x30, 0x49, 0x60, 0xA5, 0x88, 0x20, 0x09, 0x71, 0x58, 0x44, 0x68,
//  125 
//  126     // bank 6, 256 bytes
//  127     0x11, 0x39, 0x64, 0x49, 0x30, 0x19, 0xF1, 0xAC, 0x00, 0x2C, 0x54, 0x7C, 0xF0, 0x8C, 0xA8, 0x04,
//  128     0x28, 0x50, 0x78, 0xF1, 0x88, 0x97, 0x26, 0xA8, 0x59, 0x98, 0xAC, 0x8C, 0x02, 0x26, 0x46, 0x66,
//  129     0xF0, 0x89, 0x9C, 0xA8, 0x29, 0x51, 0x79, 0x24, 0x70, 0x59, 0x44, 0x69, 0x38, 0x64, 0x48, 0x31,
//  130     0xA9, 0x88, 0x09, 0x20, 0x59, 0x70, 0xAB, 0x11, 0x38, 0x40, 0x69, 0xA8, 0x19, 0x31, 0x48, 0x60,
//  131     0x8C, 0xA8, 0x3C, 0x41, 0x5C, 0x20, 0x7C, 0x00, 0xF1, 0x87, 0x98, 0x19, 0x86, 0xA8, 0x6E, 0x76,
//  132     0x7E, 0xA9, 0x99, 0x88, 0x2D, 0x55, 0x7D, 0x9E, 0xB9, 0xA3, 0x8A, 0x22, 0x8A, 0x6E, 0x8A, 0x56,
//  133     0x8A, 0x5E, 0x9F, 0xB1, 0x83, 0x06, 0x26, 0x46, 0x66, 0x0E, 0x2E, 0x4E, 0x6E, 0x9D, 0xB8, 0xAD,
//  134     0x00, 0x2C, 0x54, 0x7C, 0xF2, 0xB1, 0x8C, 0xB4, 0x99, 0xB9, 0xA3, 0x2D, 0x55, 0x7D, 0x81, 0x91,
//  135     0xAC, 0x38, 0xAD, 0x3A, 0xB5, 0x83, 0x91, 0xAC, 0x2D, 0xD9, 0x28, 0xD8, 0x4D, 0xD9, 0x48, 0xD8,
//  136     0x6D, 0xD9, 0x68, 0xD8, 0x8C, 0x9D, 0xAE, 0x29, 0xD9, 0x04, 0xAE, 0xD8, 0x51, 0xD9, 0x04, 0xAE,
//  137     0xD8, 0x79, 0xD9, 0x04, 0xD8, 0x81, 0xF3, 0x9D, 0xAD, 0x00, 0x8D, 0xAE, 0x19, 0x81, 0xAD, 0xD9,
//  138     0x01, 0xD8, 0xF2, 0xAE, 0xDA, 0x26, 0xD8, 0x8E, 0x91, 0x29, 0x83, 0xA7, 0xD9, 0xAD, 0xAD, 0xAD,
//  139     0xAD, 0xF3, 0x2A, 0xD8, 0xD8, 0xF1, 0xB0, 0xAC, 0x89, 0x91, 0x3E, 0x5E, 0x76, 0xF3, 0xAC, 0x2E,
//  140     0x2E, 0xF1, 0xB1, 0x8C, 0x5A, 0x9C, 0xAC, 0x2C, 0x28, 0x28, 0x28, 0x9C, 0xAC, 0x30, 0x18, 0xA8,
//  141     0x98, 0x81, 0x28, 0x34, 0x3C, 0x97, 0x24, 0xA7, 0x28, 0x34, 0x3C, 0x9C, 0x24, 0xF2, 0xB0, 0x89,
//  142     0xAC, 0x91, 0x2C, 0x4C, 0x6C, 0x8A, 0x9B, 0x2D, 0xD9, 0xD8, 0xD8, 0x51, 0xD9, 0xD8, 0xD8, 0x79,
//  143 
//  144     // bank 7, 138 bytes (remainder)
//  145     0xD9, 0xD8, 0xD8, 0xF1, 0x9E, 0x88, 0xA3, 0x31, 0xDA, 0xD8, 0xD8, 0x91, 0x2D, 0xD9, 0x28, 0xD8,
//  146     0x4D, 0xD9, 0x48, 0xD8, 0x6D, 0xD9, 0x68, 0xD8, 0xB1, 0x83, 0x93, 0x35, 0x3D, 0x80, 0x25, 0xDA,
//  147     0xD8, 0xD8, 0x85, 0x69, 0xDA, 0xD8, 0xD8, 0xB4, 0x93, 0x81, 0xA3, 0x28, 0x34, 0x3C, 0xF3, 0xAB,
//  148     0x8B, 0xF8, 0xA3, 0x91, 0xB6, 0x09, 0xB4, 0xD9, 0xAB, 0xDE, 0xFA, 0xB0, 0x87, 0x9C, 0xB9, 0xA3,
//  149     0xDD, 0xF1, 0xA3, 0xA3, 0xA3, 0xA3, 0x95, 0xF1, 0xA3, 0xA3, 0xA3, 0x9D, 0xF1, 0xA3, 0xA3, 0xA3,
//  150     0xA3, 0xF2, 0xA3, 0xB4, 0x90, 0x80, 0xF2, 0xA3, 0xA3, 0xA3, 0xA3, 0xA3, 0xA3, 0xA3, 0xA3, 0xA3,
//  151     0xA3, 0xB2, 0xA3, 0xA3, 0xA3, 0xA3, 0xA3, 0xA3, 0xB0, 0x87, 0xB5, 0x99, 0xF1, 0xA3, 0xA3, 0xA3,
//  152     0x98, 0xF1, 0xA3, 0xA3, 0xA3, 0xA3, 0x97, 0xA3, 0xA3, 0xA3, 0xA3, 0xF3, 0x9B, 0xA3, 0xA3, 0xDC,
//  153     0xB9, 0xA7, 0xF1, 0x26, 0x26, 0x26, 0xD8, 0xD8, 0xFF
//  154 };
//  155 

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
//  156 const unsigned char dmpcfgupddata[239] = {
dmpcfgupddata:
        DC8 3, 123, 3, 76, 205, 108, 3, 171, 3, 54, 86, 118, 0, 104, 4, 2, 203
        DC8 71, 162, 2, 24, 4, 0, 5, 139, 193, 1, 12, 4, 0, 0, 0, 0, 3, 127, 6
        DC8 12, 201, 44, 151, 151, 151, 3, 137, 3, 38, 70, 102, 0, 108, 2, 32
        DC8 0, 2, 64, 4, 0, 0, 0, 0, 2, 68, 4, 0, 0, 0, 0, 2, 72, 4, 0, 0, 0, 0
        DC8 2, 76, 4, 0, 0, 0, 0, 2, 80, 4, 0, 0, 0, 0, 2, 84, 4, 0, 0, 0, 0, 2
        DC8 88, 4, 0, 0, 0, 0, 2, 92, 4, 0, 0, 0, 0, 2, 188, 4, 0, 0, 0, 0, 1
        DC8 236, 4, 0, 0, 64, 0, 3, 127, 6, 12, 201, 44, 151, 151, 151, 4, 2, 3
        DC8 13, 53, 93, 4, 9, 4, 135, 45, 53, 61, 0, 163, 1, 0, 0, 0, 1, 1, 7
        DC8 134, 1, 254, 7, 65, 5, 241, 32, 40, 48, 56, 7, 126, 1, 48, 7, 70, 1
        DC8 154, 7, 71, 4, 241, 40, 48, 56, 7, 108, 4, 241, 40, 48, 56, 2, 22
        DC8 2, 0, 1, 1, 178, 2, 255, 255, 1, 144, 4, 9, 35, 161, 53, 1, 106, 2
        DC8 6, 0, 1, 96, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 96, 4, 64, 0, 0, 0, 1
        DC8 98, 2, 0, 0, 0, 96, 4, 0, 64, 0, 0, 0
//  157 //  dmp config 
//  158 //  BANK    OFFSET  LENGTH  [DATA]
//  159     0x03,   0x7B,   0x03,   0x4C, 0xCD, 0x6C,         
//  160     0x03,   0xAB,   0x03,   0x36, 0x56, 0x76,         
//  161     0x00,   0x68,   0x04,   0x02, 0xCB, 0x47, 0xA2,   
//  162     0x02,   0x18,   0x04,   0x00, 0x05, 0x8B, 0xC1,   
//  163     0x01,   0x0C,   0x04,   0x00, 0x00, 0x00, 0x00,   
//  164     0x03,   0x7F,   0x06,   0x0C, 0xC9, 0x2C, 0x97, 0x97, 0x97, 
//  165     0x03,   0x89,   0x03,   0x26, 0x46, 0x66,         
//  166     0x00,   0x6C,   0x02,   0x20, 0x00,               
//  167     0x02,   0x40,   0x04,   0x00, 0x00, 0x00, 0x00,   
//  168     0x02,   0x44,   0x04,   0x00, 0x00, 0x00, 0x00,   
//  169     0x02,   0x48,   0x04,   0x00, 0x00, 0x00, 0x00,   
//  170     0x02,   0x4C,   0x04,   0x00, 0x00, 0x00, 0x00,   
//  171     0x02,   0x50,   0x04,   0x00, 0x00, 0x00, 0x00,   
//  172     0x02,   0x54,   0x04,   0x00, 0x00, 0x00, 0x00,  
//  173     0x02,   0x58,   0x04,   0x00, 0x00, 0x00, 0x00,  
//  174     0x02,   0x5C,   0x04,   0x00, 0x00, 0x00, 0x00,  
//  175     0x02,   0xBC,   0x04,   0x00, 0x00, 0x00, 0x00,   
//  176     0x01,   0xEC,   0x04,   0x00, 0x00, 0x40, 0x00,  
//  177     0x03,   0x7F,   0x06,   0x0C, 0xC9, 0x2C, 0x97, 0x97, 0x97,
//  178     0x04,   0x02,   0x03,   0x0D, 0x35, 0x5D,         
//  179     0x04,   0x09,   0x04,   0x87, 0x2D, 0x35, 0x3D,   
//  180     0x00,   0xA3,   0x01,   0x00,                    
//  181     0x00,   0x00,   0x01,   0x01, 
//  182     //原程序中此行代码为
//  183     //0x00,   0x00,   0x00,   0x01,  即LENGTH=0x00，有错
//  184         
//  185     0x07,   0x86,   0x01,   0xFE,                     
//  186     0x07,   0x41,   0x05,   0xF1, 0x20, 0x28, 0x30, 0x38, 
//  187     0x07,   0x7E,   0x01,   0x30,                   
//  188     0x07,   0x46,   0x01,   0x9A,                    
//  189     0x07,   0x47,   0x04,   0xF1, 0x28, 0x30, 0x38,   
//  190     0x07,   0x6C,   0x04,   0xF1, 0x28, 0x30, 0x38,  
//  191     0x02,   0x16,   0x02,   0x00, 0x01,              
//  192 // 上行最后一个数据调整FIFO rate :0x00=200HZ,0x01=100HZ,0x02=66HZ,0x03=50HZ ,0x04=40HZ,0x05=33.33HZ, 
//  193 // 可从 datasheet 公式推算
//  194 
//  195 //dmp updates
//  196     0x01,   0xB2,   0x02,   0xFF, 0xFF,
//  197     0x01,   0x90,   0x04,   0x09, 0x23, 0xA1, 0x35,
//  198     0x01,   0x6A,   0x02,   0x06, 0x00,
//  199     0x01,   0x60,   0x08,   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
//  200     0x00,   0x60,   0x04,   0x40, 0x00, 0x00, 0x00,
//  201     0x01,   0x62,   0x02,   0x00, 0x00,
//  202     0x00,   0x60,   0x04,   0x00, 0x40, 0x00, 0x00
//  203 };
//  204 
//  205 
//  206 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  207 void readdmp(void)
//  208 
//  209 {
readdmp:
        PUSH     {R4,LR}
//  210   unsigned char dmpnum;
//  211   
//  212   for (dmpnum=0;dmpnum<42;dmpnum++)
        MOVS     R4,#+0
        B.N      ??readdmp_0
//  213   {  
//  214     dmpdatas[dmpnum] = mpu9265_ReadReg(0x74);      
??readdmp_1:
        MOVS     R0,#+116
        BL       mpu9265_ReadReg
        LDR.W    R1,??DataTable7
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STRB     R0,[R1, R4]
//  215   }  
        ADDS     R4,R4,#+1
??readdmp_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+42
        BLT.N    ??readdmp_1
//  216   mpu9265_WriteReg(DETECT_CTRL , 0xcc);//FIFO_RST | DMP_RST | DMP_EN | FIFO_EN
        MOVS     R1,#+204
        MOVS     R0,#+106
        BL       mpu9265_WriteReg
//  217 
//  218 }
        POP      {R4,PC}          ;; return
//  219 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  220 long getdmplong(unsigned char address)
//  221 {
//  222   long dmptempl;
//  223   dmptempl = dmpdatas[address];
getdmplong:
        LDR.W    R1,??DataTable7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDRB     R1,[R1, R0]
//  224   dmptempl <<= 8;
        LSLS     R1,R1,#+8
//  225   dmptempl |= dmpdatas[address+1];
        LDR.N    R2,??DataTable7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADD      R2,R2,R0
        LDRB     R2,[R2, #+1]
        ORRS     R1,R2,R1
//  226   dmptempl <<= 8;
        LSLS     R1,R1,#+8
//  227   dmptempl |= dmpdatas[address+2];
        LDR.N    R2,??DataTable7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADD      R2,R2,R0
        LDRB     R2,[R2, #+2]
        ORRS     R1,R2,R1
//  228   dmptempl <<= 8;
        LSLS     R1,R1,#+8
//  229   dmptempl |= dmpdatas[address+3];
        LDR.N    R2,??DataTable7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADD      R0,R2,R0
        LDRB     R0,[R0, #+3]
        ORRS     R1,R0,R1
//  230   return dmptempl;
        MOVS     R0,R1
        BX       LR               ;; return
//  231 }
//  232 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  233 void getquaternion(void)
//  234 {    
getquaternion:
        PUSH     {R7,LR}
//  235   quartf[0] = getdmplong(0)/1073741824.0;  
        MOVS     R0,#+0
        BL       getdmplong
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable7_1  ;; 0x41d00000
        BL       __aeabi_ddiv
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable7_2
        STR      R0,[R1, #+0]
//  236   quartf[1] = getdmplong(4)/1073741824.0;
        MOVS     R0,#+4
        BL       getdmplong
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable7_1  ;; 0x41d00000
        BL       __aeabi_ddiv
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable7_2
        STR      R0,[R1, #+4]
//  237   quartf[2] = getdmplong(8)/1073741824.0;
        MOVS     R0,#+8
        BL       getdmplong
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable7_1  ;; 0x41d00000
        BL       __aeabi_ddiv
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable7_2
        STR      R0,[R1, #+8]
//  238   quartf[3] = getdmplong(12)/1073741824.0;
        MOVS     R0,#+12
        BL       getdmplong
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable7_1  ;; 0x41d00000
        BL       __aeabi_ddiv
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable7_2
        STR      R0,[R1, #+12]
//  239 }
        POP      {R0,PC}          ;; return
//  240 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  241 void getgyro(void)
//  242 {
getgyro:
        PUSH     {R7,LR}
//  243   gyrof[0]=getdmplong(16)/16.384;
        MOVS     R0,#+16
        BL       getdmplong
        BL       __aeabi_i2d
        LDR.N    R2,??DataTable7_3  ;; 0xd2f1a9fc
        LDR.N    R3,??DataTable7_4  ;; 0x4030624d
        BL       __aeabi_ddiv
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable7_5
        STR      R0,[R1, #+0]
//  244   gyrof[1]=getdmplong(20)/16.384;
        MOVS     R0,#+20
        BL       getdmplong
        BL       __aeabi_i2d
        LDR.N    R2,??DataTable7_3  ;; 0xd2f1a9fc
        LDR.N    R3,??DataTable7_4  ;; 0x4030624d
        BL       __aeabi_ddiv
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable7_5
        STR      R0,[R1, #+4]
//  245   gyrof[2]=getdmplong(24)/16.384;
        MOVS     R0,#+24
        BL       getdmplong
        BL       __aeabi_i2d
        LDR.N    R2,??DataTable7_3  ;; 0xd2f1a9fc
        LDR.N    R3,??DataTable7_4  ;; 0x4030624d
        BL       __aeabi_ddiv
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable7_5
        STR      R0,[R1, #+8]
//  246 }
        POP      {R0,PC}          ;; return
//  247 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  248 void getaccel(void)
//  249 {
getaccel:
        PUSH     {R7,LR}
//  250   accelf[0]=getdmplong(28)/32768.0;
        MOVS     R0,#+28
        BL       getdmplong
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable7_6  ;; 0x40e00000
        BL       __aeabi_ddiv
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable7_7
        STR      R0,[R1, #+0]
//  251   accelf[1]=getdmplong(32)/32768.0;
        MOVS     R0,#+32
        BL       getdmplong
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable7_6  ;; 0x40e00000
        BL       __aeabi_ddiv
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable7_7
        STR      R0,[R1, #+4]
//  252   accelf[2]=getdmplong(36)/32768.0;
        MOVS     R0,#+36
        BL       getdmplong
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable7_6  ;; 0x40e00000
        BL       __aeabi_ddiv
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable7_7
        STR      R0,[R1, #+8]
//  253 }
        POP      {R0,PC}          ;; return
//  254 
//  255  

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  256 void loadfirmware(void)
//  257 {
loadfirmware:
        PUSH     {R3-R5,LR}
//  258   unsigned int datanum=0;
        MOVS     R4,#+0
//  259   unsigned char bank;
//  260   unsigned lastbank=1;
        MOVS     R0,#+1
//  261   for (datanum=0;datanum<1929;datanum++)
        MOVS     R4,#+0
        B.N      ??loadfirmware_0
//  262    {
//  263      bank=datanum/256;
??loadfirmware_1:
        LSRS     R5,R4,#+8
//  264      if(lastbank!=bank)
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R0,R5
        BEQ.N    ??loadfirmware_2
//  265      { 
//  266        mpu9265_WriteReg(0x6d,bank);
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+109
        BL       mpu9265_WriteReg
//  267        mpu9265_WriteReg(0x6e,0); 
        MOVS     R1,#+0
        MOVS     R0,#+110
        BL       mpu9265_WriteReg
//  268      }
//  269 
//  270      mpu9265_WriteReg(0x6f,dmpmemorydata[datanum]);     
??loadfirmware_2:
        LDR.N    R0,??DataTable7_8
        LDRB     R1,[R0, R4]
        MOVS     R0,#+111
        BL       mpu9265_WriteReg
//  271      lastbank=bank; 
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        MOVS     R0,R5
//  272     };
        ADDS     R4,R4,#+1
??loadfirmware_0:
        CMP      R4,#+1928
        BLS.N    ??loadfirmware_1
//  273 }
        POP      {R0,R4,R5,PC}    ;; return
//  274 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  275 void loadcfgupd(void)
//  276 {
loadcfgupd:
        PUSH     {R3-R7,LR}
//  277   unsigned char line;
//  278   unsigned char bank;
//  279   unsigned char datacounts=0;
        MOVS     R4,#+0
//  280   unsigned char bytes2write;
//  281   unsigned char offset;
//  282   unsigned char writingcounts;
//  283      
//  284   for (line=0;line<37;line++)
        MOVS     R5,#+0
        B.N      ??loadcfgupd_0
//  285   {
//  286     bank=dmpcfgupddata[datacounts];
//  287     datacounts++;
//  288     offset=dmpcfgupddata[datacounts];
//  289     datacounts++;
//  290     bytes2write=dmpcfgupddata[datacounts];
//  291     mpu9265_WriteReg(0x6d,bank);  
//  292     mpu9265_WriteReg(0x6e,offset);
//  293     for (writingcounts=0;writingcounts<bytes2write;writingcounts++)
//  294 	{                 
//  295     	 datacounts++;
??loadcfgupd_1:
        ADDS     R4,R4,#+1
//  296          mpu9265_WriteReg(0x6f,dmpcfgupddata[datacounts]); 
        LDR.N    R0,??DataTable7_9
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDRB     R1,[R0, R4]
        MOVS     R0,#+111
        BL       mpu9265_WriteReg
//  297         }
        ADDS     R7,R7,#+1
??loadcfgupd_2:
        MOVS     R0,R7
        MOVS     R1,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R0,R1
        BCC.N    ??loadcfgupd_1
//  298        datacounts++;
        ADDS     R4,R4,#+1
        ADDS     R5,R5,#+1
??loadcfgupd_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+37
        BGE.N    ??loadcfgupd_3
        LDR.N    R0,??DataTable7_9
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDRB     R1,[R0, R4]
        ADDS     R4,R4,#+1
        LDR.N    R0,??DataTable7_9
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDRB     R7,[R0, R4]
        ADDS     R4,R4,#+1
        LDR.N    R0,??DataTable7_9
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDRB     R6,[R0, R4]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+109
        BL       mpu9265_WriteReg
        MOVS     R1,R7
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+110
        BL       mpu9265_WriteReg
        MOVS     R7,#+0
        B.N      ??loadcfgupd_2
//  299   }
//  300 }
??loadcfgupd_3:
        POP      {R0,R4-R7,PC}    ;; return
//  301 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  302 void getyawpitchroll(void)
//  303 {
getyawpitchroll:
        PUSH     {R4-R6,LR}
//  304 
//  305  yprf[0] = atan2(2 *(quartf[2] * quartf[3] + quartf[0] * quartf[1]) , quartf[0] * quartf[0] -quartf[1] * quartf[1] -quartf[2] * quartf[2] + quartf[3] * quartf[3])*57.3; 
        LDR.N    R0,??DataTable7_2
        LDR      R1,[R0, #+0]
        LDR.N    R0,??DataTable7_2
        LDR      R0,[R0, #+0]
        BL       __aeabi_fmul
        MOVS     R4,R0
        LDR.N    R0,??DataTable7_2
        LDR      R1,[R0, #+4]
        LDR.N    R0,??DataTable7_2
        LDR      R0,[R0, #+4]
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOVS     R0,R4
        BL       __aeabi_fsub
        MOVS     R4,R0
        LDR.N    R0,??DataTable7_2
        LDR      R1,[R0, #+8]
        LDR.N    R0,??DataTable7_2
        LDR      R0,[R0, #+8]
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOVS     R0,R4
        BL       __aeabi_fsub
        MOVS     R4,R0
        LDR.N    R0,??DataTable7_2
        LDR      R1,[R0, #+12]
        LDR.N    R0,??DataTable7_2
        LDR      R0,[R0, #+12]
        BL       __aeabi_fmul
        MOVS     R1,R4
        BL       __aeabi_fadd
        BL       __aeabi_f2d
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R4,R2
        MOVS     R5,R3
        LDR.N    R0,??DataTable7_2
        LDR      R1,[R0, #+8]
        LDR.N    R0,??DataTable7_2
        LDR      R0,[R0, #+12]
        BL       __aeabi_fmul
        MOVS     R6,R0
        LDR.N    R0,??DataTable7_2
        LDR      R1,[R0, #+0]
        LDR.N    R0,??DataTable7_2
        LDR      R0,[R0, #+4]
        BL       __aeabi_fmul
        MOVS     R1,R6
        BL       __aeabi_fadd
        MOVS     R1,#+1073741824
        BL       __aeabi_fmul
        BL       __aeabi_f2d
        MOVS     R2,R4
        MOVS     R3,R5
        BL       atan2
        MOVS     R2,#+1717986918
        LDR.N    R3,??DataTable7_10  ;; 0x404ca666
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable7_11
        STR      R0,[R1, #+0]
//  306  
//  307  yprf[1]=asin(-2*(quartf[1]*quartf[3]-quartf[0]*quartf[2]))*57.3;
        LDR.N    R0,??DataTable7_2
        LDR      R1,[R0, #+4]
        LDR.N    R0,??DataTable7_2
        LDR      R0,[R0, #+12]
        BL       __aeabi_fmul
        MOVS     R4,R0
        LDR.N    R0,??DataTable7_2
        LDR      R1,[R0, #+0]
        LDR.N    R0,??DataTable7_2
        LDR      R0,[R0, #+8]
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOVS     R0,R4
        BL       __aeabi_fsub
        MOVS     R1,#-1073741824
        BL       __aeabi_fmul
        BL       __aeabi_f2d
        BL       asin
        MOVS     R2,#+1717986918
        LDR.N    R3,??DataTable7_10  ;; 0x404ca666
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable7_11
        STR      R0,[R1, #+4]
//  308 
//  309  yprf[2]=atan2(2*(quartf[1] * quartf[2] + quartf[0] * quartf[3]) , quartf[0] * quartf[0] +quartf[1] * quartf[1] -quartf[2] * quartf[2] - quartf[3] * quartf[3])*57.3; 
        LDR.N    R0,??DataTable7_2
        LDR      R1,[R0, #+0]
        LDR.N    R0,??DataTable7_2
        LDR      R0,[R0, #+0]
        BL       __aeabi_fmul
        MOVS     R4,R0
        LDR.N    R0,??DataTable7_2
        LDR      R1,[R0, #+4]
        LDR.N    R0,??DataTable7_2
        LDR      R0,[R0, #+4]
        BL       __aeabi_fmul
        MOVS     R1,R4
        BL       __aeabi_fadd
        MOVS     R4,R0
        LDR.N    R0,??DataTable7_2
        LDR      R1,[R0, #+8]
        LDR.N    R0,??DataTable7_2
        LDR      R0,[R0, #+8]
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOVS     R0,R4
        BL       __aeabi_fsub
        MOVS     R4,R0
        LDR.N    R0,??DataTable7_2
        LDR      R1,[R0, #+12]
        LDR.N    R0,??DataTable7_2
        LDR      R0,[R0, #+12]
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOVS     R0,R4
        BL       __aeabi_fsub
        BL       __aeabi_f2d
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R4,R2
        MOVS     R5,R3
        LDR.N    R0,??DataTable7_2
        LDR      R1,[R0, #+4]
        LDR.N    R0,??DataTable7_2
        LDR      R0,[R0, #+8]
        BL       __aeabi_fmul
        MOVS     R6,R0
        LDR.N    R0,??DataTable7_2
        LDR      R1,[R0, #+0]
        LDR.N    R0,??DataTable7_2
        LDR      R0,[R0, #+12]
        BL       __aeabi_fmul
        MOVS     R1,R6
        BL       __aeabi_fadd
        MOVS     R1,#+1073741824
        BL       __aeabi_fmul
        BL       __aeabi_f2d
        MOVS     R2,R4
        MOVS     R3,R5
        BL       atan2
        MOVS     R2,#+1717986918
        LDR.N    R3,??DataTable7_10  ;; 0x404ca666
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable7_11
        STR      R0,[R1, #+8]
//  310 }
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7:
        DC32     dmpdatas

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_1:
        DC32     0x41d00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_2:
        DC32     quartf

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_3:
        DC32     0xd2f1a9fc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_4:
        DC32     0x4030624d

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_5:
        DC32     gyrof

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_6:
        DC32     0x40e00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_7:
        DC32     accelf

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_8:
        DC32     dmpmemorydata

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_9:
        DC32     dmpcfgupddata

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_10:
        DC32     0x404ca666

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_11:
        DC32     yprf
//  311 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  312 void Init_MPU6050(void)
//  313 {
Init_MPU6050:
        PUSH     {R7,LR}
//  314    	mpu9265_WriteReg(PWR_MGMT_1, 0x00);   // 使能温度传感器并用内部8M晶振
        MOVS     R1,#+0
        MOVS     R0,#+107
        BL       mpu9265_WriteReg
//  315         mpu9265_WriteReg(SMPLRT_DIV, 0x04);   //
        MOVS     R1,#+4
        MOVS     R0,#+25
        BL       mpu9265_WriteReg
//  316         mpu9265_WriteReg(CONFIG, 0x06);   //
        MOVS     R1,#+6
        MOVS     R0,#+26
        BL       mpu9265_WriteReg
//  317         mpu9265_WriteReg(GYRO_CONFIG, 0x18);   //陀螺仪配置：2000度/秒满量程
        MOVS     R1,#+24
        MOVS     R0,#+27
        BL       mpu9265_WriteReg
//  318         mpu9265_WriteReg(ACCEL_CONFIG, 0x00);   //加速度计配置：2g满量程
        MOVS     R1,#+0
        MOVS     R0,#+28
        BL       mpu9265_WriteReg
//  319         loadfirmware(); 
        BL       loadfirmware
//  320         loadcfgupd();
        BL       loadcfgupd
//  321         mpu9265_WriteReg(DMP_CFG_1 , 0x03);
        MOVS     R1,#+3
        MOVS     R0,#+112
        BL       mpu9265_WriteReg
//  322         mpu9265_WriteReg(DMP_CFG_2 , 0x00);
        MOVS     R1,#+0
        MOVS     R0,#+113
        BL       mpu9265_WriteReg
//  323         mpu9265_WriteReg(DETECT_CTRL , 0xcc);
        MOVS     R1,#+204
        MOVS     R0,#+106
        BL       mpu9265_WriteReg
//  324 }
        POP      {R0,PC}          ;; return

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  325 
//  326 
//  327 #endif 
// 
//    97 bytes in section .bss
// 2 172 bytes in section .rodata
// 1 022 bytes in section .text
// 
// 1 022 bytes of CODE  memory
// 2 172 bytes of CONST memory
//    97 bytes of DATA  memory
//
//Errors: none
//Warnings: none
