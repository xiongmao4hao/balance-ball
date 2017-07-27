///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.60.2.11341/W32 for ARM      04/Jul/2017  10:13:24
// Copyright 1999-2016 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\shize\Desktop\����\bloodc\project\plane\app\ball.c
//    Command line =  
//        C:\Users\shize\Desktop\����\bloodc\project\plane\app\ball.c -D
//        LPLD_K60 -D USE_K60DZ10 -lCN
//        C:\Users\shize\Desktop\����\bloodc\project\plane\iar\FLASH\List -lB
//        C:\Users\shize\Desktop\����\bloodc\project\plane\iar\FLASH\List -o
//        C:\Users\shize\Desktop\����\bloodc\project\plane\iar\FLASH\Obj
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4 -e --fpu=None --dlib_config "C:\Program Files
//        (x86)\IAR Systems\Embedded Workbench
//        7.4\arm\INC\c\DLib_Config_Normal.h" -I
//        C:\Users\shize\Desktop\����\bloodc\project\plane\iar\..\app\ -I
//        C:\Users\shize\Desktop\����\bloodc\project\plane\iar\..\..\..\lib\CPU\
//        -I
//        C:\Users\shize\Desktop\����\bloodc\project\plane\iar\..\..\..\lib\common\
//        -I
//        C:\Users\shize\Desktop\����\bloodc\project\plane\iar\..\..\..\lib\LPLD\
//        -I
//        C:\Users\shize\Desktop\����\bloodc\project\plane\iar\..\..\..\lib\LPLD\HW\
//        -I
//        C:\Users\shize\Desktop\����\bloodc\project\plane\iar\..\..\..\lib\LPLD\DEV\
//        -I
//        C:\Users\shize\Desktop\����\bloodc\project\plane\iar\..\..\..\lib\LPLD\FUNC\
//        -I
//        C:\Users\shize\Desktop\����\bloodc\project\plane\iar\..\..\..\lib\uCOS-II\Ports\
//        -I
//        C:\Users\shize\Desktop\����\bloodc\project\plane\iar\..\..\..\lib\uCOS-II\Source\
//        -I
//        C:\Users\shize\Desktop\����\bloodc\project\plane\iar\..\..\..\lib\FatFs\
//        -I
//        C:\Users\shize\Desktop\����\bloodc\project\plane\iar\..\..\..\lib\FatFs\option\
//        -I
//        C:\Users\shize\Desktop\����\bloodc\project\plane\iar\..\..\..\lib\USB\common\
//        -I
//        C:\Users\shize\Desktop\����\bloodc\project\plane\iar\..\..\..\lib\USB\driver\
//        -I
//        C:\Users\shize\Desktop\����\bloodc\project\plane\iar\..\..\..\lib\USB\descriptor\
//        -I
//        C:\Users\shize\Desktop\����\bloodc\project\plane\iar\..\..\..\lib\USB\class\
//        -I C:\Users\shize\Desktop\����\bloodc\project\plane\iar\..\my\ -Ol -I
//        "C:\Program Files (x86)\IAR Systems\Embedded Workbench
//        7.4\arm\CMSIS\Include\" -D ARM_MATH_CM4
//    Locale       =  Chinese (Simplified)_China.936
//    List file    =  
//        C:\Users\shize\Desktop\����\bloodc\project\plane\iar\FLASH\List\ball.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN debug_write
        EXTERN initialzation

        PUBLIC main

// C:\Users\shize\Desktop\����\bloodc\project\plane\app\ball.c
//    1 /**
//    2  * --------------����"��������K60�ײ��V3"�Ĺ��̣�ball��-----------------
//    3  * @file ball.c
//    4  * @version 0.0
//    5  * @date 2013-9-29
//    6  * @brief ���ڸù��̵�����
//    7  *
//    8  * ��Ȩ����:�����������µ��Ӽ������޹�˾
//    9  * http://www.lpld.cn
//   10  * mail:support@lpld.cn
//   11  * Ӳ��ƽ̨:  LPLD K60 Card / LPLD K60 Nano
//   12  *
//   13  * �����̻���"��������K60�ײ��V3"������
//   14  * ���п�Դ�������"lib"�ļ����£��û����ظ��ĸ�Ŀ¼�´��룬
//   15  * �����û������豣����"project"�ļ����£��Թ����������ļ�������
//   16  * �ײ��ʹ�÷���������ĵ��� 
//   17  *
//   18  */
//   19 #include "common.h"
//   20 #include "initialzation.h"
//   21    
//   22 
//   23 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   24 void main (void)
//   25 {
main:
        PUSH     {R7,LR}
//   26 
//   27   DisableInterrupts;
        CPSID    I
//   28   initialzation();
        BL       initialzation
//   29   EnableInterrupts;
        CPSIE    I
//   30   while(1)
//   31   {
//   32    debug_write();
??main_0:
        BL       debug_write
        B.N      ??main_0
//   33   } 
//   34 }

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//   35 
// 
// 16 bytes in section .text
// 
// 16 bytes of CODE memory
//
//Errors: none
//Warnings: none
