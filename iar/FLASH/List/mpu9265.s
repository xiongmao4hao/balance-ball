///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.60.2.11341/W32 for ARM      14/Jun/2017  16:43:18
// Copyright 1999-2016 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\shize\Desktop\电设\bloodc\project\ball - 副本 - 副本 -
//        副本\my\mpu9265.c
//    Command line =  
//        "C:\Users\shize\Desktop\电设\bloodc\project\ball - 副本 - 副本 -
//        副本\my\mpu9265.c" -D LPLD_K60 -D USE_K60DZ10 -lCN
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
//        副本\iar\FLASH\List\mpu9265.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_I2C_Init
        EXTERN LPLD_I2C_ReStart
        EXTERN LPLD_I2C_ReadByte
        EXTERN LPLD_I2C_SetMasterWR
        EXTERN LPLD_I2C_StartTrans
        EXTERN LPLD_I2C_Stop
        EXTERN LPLD_I2C_WaitAck
        EXTERN LPLD_I2C_WriteByte

        PUBLIC delay_ms
        PUBLIC mpu9265_I2C_init
        PUBLIC mpu9265_ReadReg
        PUBLIC mpu9265_WriteReg

// C:\Users\shize\Desktop\电设\bloodc\project\ball - 副本 - 副本 - 副本\my\mpu9265.c
//    1 /**
//    2  * @file L3G4200d.c
//    3  * @version yang
//    4  * @date 2017/2/21
//    5  * @brief L3G4200D设备驱动程序
//    6  *
//    7  * 更改建议:可根据实际硬件修改
//    8  *
//    9  * 版权所有:北京拉普兰德电子技术有限公司
//   10  * http://www.lpld.cn
//   11  * mail:support@lpld.cn
//   12  *
//   13  * @par
//   14  * 本代码由拉普兰德[LPLD]开发并维护，并向所有使用者开放源代码。
//   15  * 开发者可以随意修使用或改源代码。但本段及以上注释应予以保留。
//   16  * 不得更改或删除原版权所有者姓名，二次开发者可以加注二次版权所有者。
//   17  * 但应在遵守此协议的基础上，开放源代码、不得出售代码本身。
//   18  * 拉普兰德不负责由于使用本代码所带来的任何事故、法律责任或相关不良影响。
//   19  * 拉普兰德无义务解释、说明本代码的具体原理、功能、实现方法。
//   20  * 除非拉普兰德[LPLD]授权，开发者不得将本代码用于商业产品。
//   21  */
//   22 #include "mpu9265.h"
//   23 
//   24 
//   25 static void mpu9265_Delay(void);
//   26 void delay_ms(unsigned int );
//   27 /*
//   28  *    mpu9265_Delay_Init
//   29  *   初始化MMA7660，包括初始化7660所需的I2C接口以及7660的寄存器
//   30  *
//   31  *   参数：
//   32  *    无
//   33  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   34 void mpu9265_I2C_init(void)
//   35 {
mpu9265_I2C_init:
        PUSH     {LR}
        SUB      SP,SP,#+20
//   36   I2C_InitTypeDef i2c_init_param;
//   37     
//   38   //L3G4200D_I2CX
//   39   i2c_init_param.I2C_I2Cx = L3G4200D_I2CX;       //在L3G4200D.h中修改该值
        LDR.N    R0,??DataTable2  ;; 0x40066000
        STR      R0,[SP, #+0]
//   40   i2c_init_param.I2C_IntEnable = FALSE;
        MOVS     R0,#+0
        STRB     R0,[SP, #+5]
//   41   i2c_init_param.I2C_ICR = L3G4200D_SCL_200KHZ ;  //可根据实际电路更改SCL频率//标准模式和快速模式怎么修改？
        MOVS     R0,#+35
        STRB     R0,[SP, #+4]
//   42   i2c_init_param.I2C_SclPin = L3G4200D_SCLPIN;   //在L3G4200D.h中修改该值
        MOVS     R0,#+32
        STRB     R0,[SP, #+6]
//   43   i2c_init_param.I2C_SdaPin = L3G4200D_SDAPIN;   //在L3G4200D.h中修改该值
        MOVS     R0,#+33
        STRB     R0,[SP, #+7]
//   44   i2c_init_param.I2C_Isr = NULL;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
//   45   
//   46   LPLD_I2C_Init(i2c_init_param);
        MOV      R0,SP
        LDM      R0,{R0-R3}
        BL       LPLD_I2C_Init
//   47   
//   48 
//   49 }
        ADD      SP,SP,#+20
        POP      {PC}             ;; return
//   50 
//   51 
//   52 /*
//   53  *   mpu9265_WriteReg
//   54  *   该函数用于配置L3G4200D的寄存器
//   55  *
//   56  *   参数：
//   57  *   RegisterAddress 
//   58  *    |__ L3G4200D寄存器地址
//   59  *   Data
//   60  *    |__ 具体写入的字节型数据 
//   61  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   62 void mpu9265_WriteReg(uint8 RegisterAddress, uint8 Data)
//   63 {
mpu9265_WriteReg:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//   64   //发送从机地址
//   65   LPLD_I2C_StartTrans(L3G4200D_I2CX, L3G4200D_Addr, I2C_MWSR);
        MOVS     R2,#+0
        MOVS     R1,#+104
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       LPLD_I2C_StartTrans
//   66   LPLD_I2C_WaitAck(L3G4200D_I2CX, I2C_ACK_ON);
        MOVS     R1,#+1
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       LPLD_I2C_WaitAck
//   67   
//   68   //写MMA7660寄存器地址
//   69   LPLD_I2C_WriteByte(L3G4200D_I2CX, RegisterAddress);
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       LPLD_I2C_WriteByte
//   70   LPLD_I2C_WaitAck(L3G4200D_I2CX, I2C_ACK_ON);
        MOVS     R1,#+1
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       LPLD_I2C_WaitAck
//   71   
//   72   //向寄存器中写具体数据
//   73   LPLD_I2C_WriteByte(L3G4200D_I2CX, Data);
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       LPLD_I2C_WriteByte
//   74   LPLD_I2C_WaitAck(L3G4200D_I2CX, I2C_ACK_ON);
        MOVS     R1,#+1
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       LPLD_I2C_WaitAck
//   75 
//   76   LPLD_I2C_Stop(L3G4200D_I2CX);
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       LPLD_I2C_Stop
//   77   
//   78   
//   79   mpu9265_Delay();
        BL       mpu9265_Delay
//   80   
//   81 }
        POP      {R0,R4,R5,PC}    ;; return
//   82 
//   83 /*
//   84  *   mpu9265_WriteReg
//   85  *   该函数用于读取L3G4200D的数据
//   86  *
//   87  *   参数：
//   88  *     RegisterAddress 
//   89  *        |__ L3G4200D寄存器地址
//   90  *   返回值
//   91  *      tuoluoyi传感器的测量值
//   92  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   93 uint8 mpu9265_ReadReg(uint8 RegisterAddress)
//   94 {
mpu9265_ReadReg:
        PUSH     {R4,LR}
        MOVS     R4,R0
//   95   uint8 result;
//   96 
//   97   //发送从机地址
//   98   LPLD_I2C_StartTrans(L3G4200D_I2CX, L3G4200D_Addr, I2C_MWSR);
        MOVS     R2,#+0
        MOVS     R1,#+104
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       LPLD_I2C_StartTrans
//   99   LPLD_I2C_WaitAck(L3G4200D_I2CX, I2C_ACK_ON);
        MOVS     R1,#+1
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       LPLD_I2C_WaitAck
//  100 
//  101   //写MMA7660寄存器地址
//  102   LPLD_I2C_WriteByte(L3G4200D_I2CX, RegisterAddress);
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       LPLD_I2C_WriteByte
//  103   LPLD_I2C_WaitAck(L3G4200D_I2CX, I2C_ACK_ON);
        MOVS     R1,#+1
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       LPLD_I2C_WaitAck
//  104 
//  105   //再次产生开始信号
//  106   LPLD_I2C_ReStart(L3G4200D_I2CX);
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       LPLD_I2C_ReStart
//  107 
//  108   //发送从机地址和读取位L3G4200D
//  109   LPLD_I2C_WriteByte(L3G4200D_I2CX, L3G4200D_READ);
        MOVS     R1,#+209
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       LPLD_I2C_WriteByte
//  110   LPLD_I2C_WaitAck(L3G4200D_I2CX, I2C_ACK_ON);
        MOVS     R1,#+1
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       LPLD_I2C_WaitAck
//  111 
//  112   //转换主机模式为读
//  113   LPLD_I2C_SetMasterWR(L3G4200D_I2CX, I2C_MRSW);
        MOVS     R1,#+1
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       LPLD_I2C_SetMasterWR
//  114 
//  115   //关闭应答ACK
//  116   LPLD_I2C_WaitAck(L3G4200D_I2CX, I2C_ACK_OFF);//关闭ACK
        MOVS     R1,#+0
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       LPLD_I2C_WaitAck
//  117 
//  118   //读IIC数据
//  119   result =LPLD_I2C_ReadByte(L3G4200D_I2CX);
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       LPLD_I2C_ReadByte
        MOVS     R4,R0
//  120   LPLD_I2C_WaitAck(L3G4200D_I2CX, I2C_ACK_ON);
        MOVS     R1,#+1
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       LPLD_I2C_WaitAck
//  121 
//  122   //发送停止信号
//  123   LPLD_I2C_Stop(L3G4200D_I2CX);
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       LPLD_I2C_Stop
//  124 
//  125    //读IIC数据
//  126   result = LPLD_I2C_ReadByte(L3G4200D_I2CX);
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       LPLD_I2C_ReadByte
        MOVS     R4,R0
//  127   
//  128   mpu9265_Delay();
        BL       mpu9265_Delay
//  129 
//  130   return result;
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4,PC}          ;; return
//  131 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     0x40066000
//  132 
//  133 ///*
//  134 // * 函数功能：读L3G4200D jiao速度输出
//  135 // * 参数
//  136 // *       Regs_Addr - 加速度寄存器地址
//  137 // * 函数返回值：加速度值（int8）
//  138 // */   
//  139 //int8 mpu9265_GetResult(uint8 Regs_Addr) 
//  140 //{
//  141 //   char ret;
//  142 //   
//  143 ////   if(Regs_Addr>OUT_Z_H)
//  144 ////    return 0;
//  145 //   
//  146 //// 等待转换完成并取出值   
//  147 //   ret=mpu9265_ReadReg(Regs_Addr);
//  148 ////     while(ret&0x40) {
//  149 ////    ret=LPLD_MMA7660_ReadReg(Regs_Addr);
//  150 ////  }
//  151 // 
//  152 //   return ret;
//  153 //
//  154 //}
//  155 
//  156 
//  157 /*
//  158  * 延时函数
//  159  */

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  160 static void mpu9265_Delay(void){
//  161   int n;
//  162   for(n=1;n<200;n++)
mpu9265_Delay:
        MOVS     R0,#+1
        B.N      ??mpu9265_Delay_0
//  163   {
//  164     asm("nop");
??mpu9265_Delay_1:
        nop
//  165   }
        ADDS     R0,R0,#+1
??mpu9265_Delay_0:
        CMP      R0,#+200
        BLT.N    ??mpu9265_Delay_1
//  166 }
        BX       LR               ;; return
//  167 
//  168 /*
//  169  * 延时ms
//  170  */

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  171 void delay_ms(unsigned int ms)
//  172 {
//  173   unsigned int i, n;
//  174   for(n=0;n<ms;n++)
delay_ms:
        MOVS     R2,#+0
        B.N      ??delay_ms_0
//  175   {
//  176   for(i=0;i<16666;i++)
//  177    {
//  178     asm("nop");
??delay_ms_1:
        nop
//  179    }
        ADDS     R1,R1,#+1
??delay_ms_2:
        MOVW     R3,#+16666
        CMP      R1,R3
        BCC.N    ??delay_ms_1
        ADDS     R2,R2,#+1
??delay_ms_0:
        CMP      R2,R0
        BCS.N    ??delay_ms_3
        MOVS     R1,#+0
        B.N      ??delay_ms_2
//  180   }
//  181 }
??delay_ms_3:
        BX       LR               ;; return

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// 
// 284 bytes in section .text
// 
// 284 bytes of CODE memory
//
//Errors: none
//Warnings: none
