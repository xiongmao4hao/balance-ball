///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.60.2.11341/W32 for ARM      14/Jun/2017  16:43:18
// Copyright 1999-2016 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\shize\Desktop\����\bloodc\project\ball - ���� - ���� -
//        ����\my\mpu9265.c
//    Command line =  
//        "C:\Users\shize\Desktop\����\bloodc\project\ball - ���� - ���� -
//        ����\my\mpu9265.c" -D LPLD_K60 -D USE_K60DZ10 -lCN
//        "C:\Users\shize\Desktop\����\bloodc\project\ball - ���� - ���� -
//        ����\iar\FLASH\List" -lB
//        "C:\Users\shize\Desktop\����\bloodc\project\ball - ���� - ���� -
//        ����\iar\FLASH\List" -o
//        "C:\Users\shize\Desktop\����\bloodc\project\ball - ���� - ���� -
//        ����\iar\FLASH\Obj" --no_cse --no_unroll --no_inline --no_code_motion
//        --no_tbaa --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4 -e --fpu=None --dlib_config "C:\Program Files
//        (x86)\IAR Systems\Embedded Workbench
//        7.4\arm\INC\c\DLib_Config_Normal.h" -I
//        "C:\Users\shize\Desktop\����\bloodc\project\ball - ���� - ���� -
//        ����\iar\..\app\" -I "C:\Users\shize\Desktop\����\bloodc\project\ball
//        - ���� - ���� - ����\iar\..\..\..\lib\CPU\" -I
//        "C:\Users\shize\Desktop\����\bloodc\project\ball - ���� - ���� -
//        ����\iar\..\..\..\lib\common\" -I
//        "C:\Users\shize\Desktop\����\bloodc\project\ball - ���� - ���� -
//        ����\iar\..\..\..\lib\LPLD\" -I
//        "C:\Users\shize\Desktop\����\bloodc\project\ball - ���� - ���� -
//        ����\iar\..\..\..\lib\LPLD\HW\" -I
//        "C:\Users\shize\Desktop\����\bloodc\project\ball - ���� - ���� -
//        ����\iar\..\..\..\lib\LPLD\DEV\" -I
//        "C:\Users\shize\Desktop\����\bloodc\project\ball - ���� - ���� -
//        ����\iar\..\..\..\lib\LPLD\FUNC\" -I
//        "C:\Users\shize\Desktop\����\bloodc\project\ball - ���� - ���� -
//        ����\iar\..\..\..\lib\uCOS-II\Ports\" -I
//        "C:\Users\shize\Desktop\����\bloodc\project\ball - ���� - ���� -
//        ����\iar\..\..\..\lib\uCOS-II\Source\" -I
//        "C:\Users\shize\Desktop\����\bloodc\project\ball - ���� - ���� -
//        ����\iar\..\..\..\lib\FatFs\" -I
//        "C:\Users\shize\Desktop\����\bloodc\project\ball - ���� - ���� -
//        ����\iar\..\..\..\lib\FatFs\option\" -I
//        "C:\Users\shize\Desktop\����\bloodc\project\ball - ���� - ���� -
//        ����\iar\..\..\..\lib\USB\common\" -I
//        "C:\Users\shize\Desktop\����\bloodc\project\ball - ���� - ���� -
//        ����\iar\..\..\..\lib\USB\driver\" -I
//        "C:\Users\shize\Desktop\����\bloodc\project\ball - ���� - ���� -
//        ����\iar\..\..\..\lib\USB\descriptor\" -I
//        "C:\Users\shize\Desktop\����\bloodc\project\ball - ���� - ���� -
//        ����\iar\..\..\..\lib\USB\class\" -I
//        "C:\Users\shize\Desktop\����\bloodc\project\ball - ���� - ���� -
//        ����\iar\..\my\" -Ol -I "C:\Program Files (x86)\IAR Systems\Embedded
//        Workbench 7.4\arm\CMSIS\Include\" -D ARM_MATH_CM4
//    Locale       =  Chinese (Simplified)_China.936
//    List file    =  
//        C:\Users\shize\Desktop\����\bloodc\project\ball - ���� - ���� -
//        ����\iar\FLASH\List\mpu9265.s
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

// C:\Users\shize\Desktop\����\bloodc\project\ball - ���� - ���� - ����\my\mpu9265.c
//    1 /**
//    2  * @file L3G4200d.c
//    3  * @version yang
//    4  * @date 2017/2/21
//    5  * @brief L3G4200D�豸��������
//    6  *
//    7  * ���Ľ���:�ɸ���ʵ��Ӳ���޸�
//    8  *
//    9  * ��Ȩ����:�����������µ��Ӽ������޹�˾
//   10  * http://www.lpld.cn
//   11  * mail:support@lpld.cn
//   12  *
//   13  * @par
//   14  * ����������������[LPLD]������ά������������ʹ���߿���Դ���롣
//   15  * �����߿���������ʹ�û��Դ���롣�����μ�����ע��Ӧ���Ա�����
//   16  * ���ø��Ļ�ɾ��ԭ��Ȩ���������������ο����߿��Լ�ע���ΰ�Ȩ�����ߡ�
//   17  * ��Ӧ�����ش�Э��Ļ����ϣ�����Դ���롢���ó��۴��뱾��
//   18  * �������²���������ʹ�ñ��������������κ��¹ʡ��������λ���ز���Ӱ�졣
//   19  * ����������������͡�˵��������ľ���ԭ�����ܡ�ʵ�ַ�����
//   20  * ������������[LPLD]��Ȩ�������߲��ý�������������ҵ��Ʒ��
//   21  */
//   22 #include "mpu9265.h"
//   23 
//   24 
//   25 static void mpu9265_Delay(void);
//   26 void delay_ms(unsigned int );
//   27 /*
//   28  *    mpu9265_Delay_Init
//   29  *   ��ʼ��MMA7660��������ʼ��7660�����I2C�ӿ��Լ�7660�ļĴ���
//   30  *
//   31  *   ������
//   32  *    ��
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
//   39   i2c_init_param.I2C_I2Cx = L3G4200D_I2CX;       //��L3G4200D.h���޸ĸ�ֵ
        LDR.N    R0,??DataTable2  ;; 0x40066000
        STR      R0,[SP, #+0]
//   40   i2c_init_param.I2C_IntEnable = FALSE;
        MOVS     R0,#+0
        STRB     R0,[SP, #+5]
//   41   i2c_init_param.I2C_ICR = L3G4200D_SCL_200KHZ ;  //�ɸ���ʵ�ʵ�·����SCLƵ��//��׼ģʽ�Ϳ���ģʽ��ô�޸ģ�
        MOVS     R0,#+35
        STRB     R0,[SP, #+4]
//   42   i2c_init_param.I2C_SclPin = L3G4200D_SCLPIN;   //��L3G4200D.h���޸ĸ�ֵ
        MOVS     R0,#+32
        STRB     R0,[SP, #+6]
//   43   i2c_init_param.I2C_SdaPin = L3G4200D_SDAPIN;   //��L3G4200D.h���޸ĸ�ֵ
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
//   54  *   �ú�����������L3G4200D�ļĴ���
//   55  *
//   56  *   ������
//   57  *   RegisterAddress 
//   58  *    |__ L3G4200D�Ĵ�����ַ
//   59  *   Data
//   60  *    |__ ����д����ֽ������� 
//   61  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   62 void mpu9265_WriteReg(uint8 RegisterAddress, uint8 Data)
//   63 {
mpu9265_WriteReg:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//   64   //���ʹӻ���ַ
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
//   68   //дMMA7660�Ĵ�����ַ
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
//   72   //��Ĵ�����д��������
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
//   85  *   �ú������ڶ�ȡL3G4200D������
//   86  *
//   87  *   ������
//   88  *     RegisterAddress 
//   89  *        |__ L3G4200D�Ĵ�����ַ
//   90  *   ����ֵ
//   91  *      tuoluoyi�������Ĳ���ֵ
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
//   97   //���ʹӻ���ַ
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
//  101   //дMMA7660�Ĵ�����ַ
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
//  105   //�ٴβ�����ʼ�ź�
//  106   LPLD_I2C_ReStart(L3G4200D_I2CX);
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       LPLD_I2C_ReStart
//  107 
//  108   //���ʹӻ���ַ�Ͷ�ȡλL3G4200D
//  109   LPLD_I2C_WriteByte(L3G4200D_I2CX, L3G4200D_READ);
        MOVS     R1,#+209
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       LPLD_I2C_WriteByte
//  110   LPLD_I2C_WaitAck(L3G4200D_I2CX, I2C_ACK_ON);
        MOVS     R1,#+1
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       LPLD_I2C_WaitAck
//  111 
//  112   //ת������ģʽΪ��
//  113   LPLD_I2C_SetMasterWR(L3G4200D_I2CX, I2C_MRSW);
        MOVS     R1,#+1
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       LPLD_I2C_SetMasterWR
//  114 
//  115   //�ر�Ӧ��ACK
//  116   LPLD_I2C_WaitAck(L3G4200D_I2CX, I2C_ACK_OFF);//�ر�ACK
        MOVS     R1,#+0
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       LPLD_I2C_WaitAck
//  117 
//  118   //��IIC����
//  119   result =LPLD_I2C_ReadByte(L3G4200D_I2CX);
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       LPLD_I2C_ReadByte
        MOVS     R4,R0
//  120   LPLD_I2C_WaitAck(L3G4200D_I2CX, I2C_ACK_ON);
        MOVS     R1,#+1
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       LPLD_I2C_WaitAck
//  121 
//  122   //����ֹͣ�ź�
//  123   LPLD_I2C_Stop(L3G4200D_I2CX);
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       LPLD_I2C_Stop
//  124 
//  125    //��IIC����
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
//  134 // * �������ܣ���L3G4200D jiao�ٶ����
//  135 // * �����w
//  136 // *       Regs_Addr - ���ٶȼĴ�����ַ
//  137 // * ��������ֵ�����ٶ�ֵ��int8��
//  138 // */   
//  139 //int8 mpu9265_GetResult(uint8 Regs_Addr) 
//  140 //{
//  141 //   char ret;
//  142 //   
//  143 ////   if(Regs_Addr>OUT_Z_H)
//  144 ////    return 0;
//  145 //   
//  146 //// �ȴ�ת����ɲ�ȡ��ֵ   
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
//  158  * ��ʱ����
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
//  169  * ��ʱms
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
