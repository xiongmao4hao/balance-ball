///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.60.2.11341/W32 for ARM      24/Jul/2017  19:57:36
// Copyright 1999-2016 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\shize\Desktop\电设\bloodc\project\plane - 副本 - 副本 -
//        副本\my\PIT.c
//    Command line =  
//        "C:\Users\shize\Desktop\电设\bloodc\project\plane - 副本 - 副本 -
//        副本\my\PIT.c" -D LPLD_K60 -D USE_K60DZ10 -lCN
//        "C:\Users\shize\Desktop\电设\bloodc\project\plane - 副本 - 副本 -
//        副本\iar\FLASH\List" -lB
//        "C:\Users\shize\Desktop\电设\bloodc\project\plane - 副本 - 副本 -
//        副本\iar\FLASH\List" -o
//        "C:\Users\shize\Desktop\电设\bloodc\project\plane - 副本 - 副本 -
//        副本\iar\FLASH\Obj" --no_cse --no_unroll --no_inline --no_code_motion
//        --no_tbaa --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4 -e --fpu=None --dlib_config "C:\Program Files
//        (x86)\IAR Systems\Embedded Workbench
//        7.4\arm\INC\c\DLib_Config_Normal.h" -I
//        "C:\Users\shize\Desktop\电设\bloodc\project\plane - 副本 - 副本 -
//        副本\iar\..\app\" -I
//        "C:\Users\shize\Desktop\电设\bloodc\project\plane - 副本 - 副本 -
//        副本\iar\..\..\..\lib\CPU\" -I
//        "C:\Users\shize\Desktop\电设\bloodc\project\plane - 副本 - 副本 -
//        副本\iar\..\..\..\lib\common\" -I
//        "C:\Users\shize\Desktop\电设\bloodc\project\plane - 副本 - 副本 -
//        副本\iar\..\..\..\lib\LPLD\" -I
//        "C:\Users\shize\Desktop\电设\bloodc\project\plane - 副本 - 副本 -
//        副本\iar\..\..\..\lib\LPLD\HW\" -I
//        "C:\Users\shize\Desktop\电设\bloodc\project\plane - 副本 - 副本 -
//        副本\iar\..\..\..\lib\LPLD\DEV\" -I
//        "C:\Users\shize\Desktop\电设\bloodc\project\plane - 副本 - 副本 -
//        副本\iar\..\..\..\lib\LPLD\FUNC\" -I
//        "C:\Users\shize\Desktop\电设\bloodc\project\plane - 副本 - 副本 -
//        副本\iar\..\..\..\lib\uCOS-II\Ports\" -I
//        "C:\Users\shize\Desktop\电设\bloodc\project\plane - 副本 - 副本 -
//        副本\iar\..\..\..\lib\uCOS-II\Source\" -I
//        "C:\Users\shize\Desktop\电设\bloodc\project\plane - 副本 - 副本 -
//        副本\iar\..\..\..\lib\FatFs\" -I
//        "C:\Users\shize\Desktop\电设\bloodc\project\plane - 副本 - 副本 -
//        副本\iar\..\..\..\lib\FatFs\option\" -I
//        "C:\Users\shize\Desktop\电设\bloodc\project\plane - 副本 - 副本 -
//        副本\iar\..\..\..\lib\USB\common\" -I
//        "C:\Users\shize\Desktop\电设\bloodc\project\plane - 副本 - 副本 -
//        副本\iar\..\..\..\lib\USB\driver\" -I
//        "C:\Users\shize\Desktop\电设\bloodc\project\plane - 副本 - 副本 -
//        副本\iar\..\..\..\lib\USB\descriptor\" -I
//        "C:\Users\shize\Desktop\电设\bloodc\project\plane - 副本 - 副本 -
//        副本\iar\..\..\..\lib\USB\class\" -I
//        "C:\Users\shize\Desktop\电设\bloodc\project\plane - 副本 - 副本 -
//        副本\iar\..\my\" -Ol -I "C:\Program Files (x86)\IAR Systems\Embedded
//        Workbench 7.4\arm\CMSIS\Include\" -D ARM_MATH_CM4
//    Locale       =  Chinese (Simplified)_China.936
//    List file    =  
//        C:\Users\shize\Desktop\电设\bloodc\project\plane - 副本 - 副本 -
//        副本\iar\FLASH\List\PIT.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN control

        PUBLIC pit_isr

// C:\Users\shize\Desktop\电设\bloodc\project\plane - 副本 - 副本 - 副本\my\PIT.c
//    1 #include "PIT.H"
//    2 #include "math.h"
//    3 
//    4 extern char start,send_;
//    5 extern uint8 Is_DispPhoto;
//    6 extern float adress;
//    7 
//    8 extern int8 angle;
//    9 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   10 void pit_isr(void)
//   11 {
pit_isr:
        PUSH     {R7,LR}
//   12 //  if(start==1)
//   13       control();
        BL       control
//   14 //发送位置
//   15 //      char count=0;
//   16 //      
//   17 //      int8  send[4];
//   18 //      send[count++]= 0xaa;
//   19 //      send[count++]=((int16)adress)>>8;
//   20 //      send[count++]=(uint8)adress;
//   21 //      LPLD_UART_PutCharArr(UART4,send,count);
//   22 //    LPLD_GPIO_ClearIntFlag(PORTA);
//   23 //    enable_irq(PORTA_IRQn);
//   24     
//   25 }
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
//   26     
// 
// 8 bytes in section .text
// 
// 8 bytes of CODE memory
//
//Errors: none
//Warnings: none
