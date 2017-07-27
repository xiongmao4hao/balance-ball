///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.60.2.11341/W32 for ARM      27/Jul/2017  11:16:35
// Copyright 1999-2016 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\shize\Desktop\电设\bloodc\project\balance-ball\my\control.c
//    Command line =  
//        C:\Users\shize\Desktop\电设\bloodc\project\balance-ball\my\control.c
//        -D LPLD_K60 -D USE_K60DZ10 -lCN
//        C:\Users\shize\Desktop\电设\bloodc\project\balance-ball\iar\FLASH\List
//        -lB
//        C:\Users\shize\Desktop\电设\bloodc\project\balance-ball\iar\FLASH\List
//        -o
//        C:\Users\shize\Desktop\电设\bloodc\project\balance-ball\iar\FLASH\Obj
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4 -e --fpu=None --dlib_config "C:\Program Files
//        (x86)\IAR Systems\Embedded Workbench
//        7.4\arm\INC\c\DLib_Config_Normal.h" -I
//        C:\Users\shize\Desktop\电设\bloodc\project\balance-ball\iar\..\app\
//        -I
//        C:\Users\shize\Desktop\电设\bloodc\project\balance-ball\iar\..\..\..\lib\CPU\
//        -I
//        C:\Users\shize\Desktop\电设\bloodc\project\balance-ball\iar\..\..\..\lib\common\
//        -I
//        C:\Users\shize\Desktop\电设\bloodc\project\balance-ball\iar\..\..\..\lib\LPLD\
//        -I
//        C:\Users\shize\Desktop\电设\bloodc\project\balance-ball\iar\..\..\..\lib\LPLD\HW\
//        -I
//        C:\Users\shize\Desktop\电设\bloodc\project\balance-ball\iar\..\..\..\lib\LPLD\DEV\
//        -I
//        C:\Users\shize\Desktop\电设\bloodc\project\balance-ball\iar\..\..\..\lib\LPLD\FUNC\
//        -I
//        C:\Users\shize\Desktop\电设\bloodc\project\balance-ball\iar\..\..\..\lib\uCOS-II\Ports\
//        -I
//        C:\Users\shize\Desktop\电设\bloodc\project\balance-ball\iar\..\..\..\lib\uCOS-II\Source\
//        -I
//        C:\Users\shize\Desktop\电设\bloodc\project\balance-ball\iar\..\..\..\lib\FatFs\
//        -I
//        C:\Users\shize\Desktop\电设\bloodc\project\balance-ball\iar\..\..\..\lib\FatFs\option\
//        -I
//        C:\Users\shize\Desktop\电设\bloodc\project\balance-ball\iar\..\..\..\lib\USB\common\
//        -I
//        C:\Users\shize\Desktop\电设\bloodc\project\balance-ball\iar\..\..\..\lib\USB\driver\
//        -I
//        C:\Users\shize\Desktop\电设\bloodc\project\balance-ball\iar\..\..\..\lib\USB\descriptor\
//        -I
//        C:\Users\shize\Desktop\电设\bloodc\project\balance-ball\iar\..\..\..\lib\USB\class\
//        -I C:\Users\shize\Desktop\电设\bloodc\project\balance-ball\iar\..\my\
//        -Ol -I "C:\Program Files (x86)\IAR Systems\Embedded Workbench
//        7.4\arm\CMSIS\Include\" -D ARM_MATH_CM4
//    Locale       =  Chinese (Simplified)_China.936
//    List file    =  
//        C:\Users\shize\Desktop\电设\bloodc\project\balance-ball\iar\FLASH\List\control.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN D
        EXTERN D2
        EXTERN I
        EXTERN I2
        EXTERN KD
        EXTERN KD2
        EXTERN LPLD_FTM_PWM_ChangeDuty
        EXTERN P
        EXTERN `P2`
        EXTERN __aeabi_cfcmple
        EXTERN __aeabi_cfrcmple
        EXTERN __aeabi_d2f
        EXTERN __aeabi_dmul
        EXTERN __aeabi_f2d
        EXTERN __aeabi_f2iz
        EXTERN __aeabi_fadd
        EXTERN __aeabi_fmul
        EXTERN __aeabi_fsub
        EXTERN __aeabi_ui2f
        EXTERN angle
        EXTERN angle2

        PUBLIC A
        PUBLIC A2
        PUBLIC F
        PUBLIC F2
        PUBLIC KI
        PUBLIC KI2
        PUBLIC KO
        PUBLIC KO2
        PUBLIC adress
        PUBLIC adress2
        PUBLIC adress_err
        PUBLIC adress_err2
        PUBLIC adress_err_all
        PUBLIC adress_err_all2
        PUBLIC angle_err
        PUBLIC angle_err2
        PUBLIC angle_err_all
        PUBLIC angle_err_all2
        PUBLIC control
        PUBLIC j
        PUBLIC j2
        PUBLIC x
        PUBLIC x_sit
        PUBLIC xf
        PUBLIC y
        PUBLIC y_sit
        PUBLIC yf

// C:\Users\shize\Desktop\电设\bloodc\project\balance-ball\my\control.c
//    1 #include "control.h"
//    2 #include "math.h"
//    3 
//    4 
//    5 
//    6 #define DATA_LENGTH 4
//    7 
//    8 static void renew();
//    9 
//   10 
//   11 
//   12 //上位机设定值
//   13 extern float P,D,P1,I1,I,KD,KD2;
//   14 extern float P2,D2,P12,I12,I2;
//   15 extern float angle;
//   16 extern float angle2;
//   17 
//   18 
//   19 

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   20 char KO,KI;
KO:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
KI:
        DS8 1
//   21 //float  KI1;

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   22 char KO2,KI2;
KO2:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
KI2:
        DS8 1
//   23 //float  KI12;

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   24 int8 j,j2;
j:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
j2:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   25 float x;
x:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   26 float y;
y:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   27 float x_sit;
x_sit:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   28 float y_sit;
y_sit:
        DS8 4

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//   29 float xf=2678,yf=2990;
xf:
        DC32 45276000H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
yf:
        DC32 453AE000H
//   30 
//   31 
//   32 
//   33 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   34 float adress;
adress:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   35 float adress_err[DATA_LENGTH];
adress_err:
        DS8 16

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   36 float adress_err_all;
adress_err_all:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   37 float angle_err;
angle_err:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   38 float angle_err_all;
angle_err_all:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   39 float adress2;
adress2:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   40 float adress_err2[DATA_LENGTH];
adress_err2:
        DS8 16

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   41 float adress_err_all2;
adress_err_all2:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   42 float angle_err2;
angle_err2:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   43 float angle_err_all2;
angle_err_all2:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   44 float F;//x输出
F:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   45 float F2;//y输出
F2:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   46 float A; 
A:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   47 float A2;
A2:
        DS8 4
//   48 
//   49 
//   50 
//   51 
//   52 
//   53 
//   54 
//   55 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   56 void control()
//   57 { 
control:
        PUSH     {R4,LR}
//   58       renew();
        BL       renew
//   59       if(0<F2<10&&angle2>0)
        LDR.W    R0,??DataTable1
        LDR      R0,[R0, #+0]
        MOVS     R1,#+0
        BL       __aeabi_cfrcmple
        BCS.N    ??control_0
        MOVS     R0,#+1
        B.N      ??control_1
??control_0:
        MOVS     R0,#+0
??control_1:
        LDR.W    R0,??DataTable1_1
        LDR      R0,[R0, #+0]
        MOVS     R1,#+0
        BL       __aeabi_cfrcmple
        BCS.N    ??control_2
//   60       xf=2360-F2-angle2*0;
        LDR.W    R0,??DataTable1_2  ;; 0x45138000
        LDR.W    R1,??DataTable1
        LDR      R1,[R1, #+0]
        BL       __aeabi_fsub
        MOVS     R4,R0
        LDR.W    R0,??DataTable1_1
        LDR      R1,[R0, #+0]
        MOVS     R0,#+0
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOVS     R0,R4
        BL       __aeabi_fsub
        LDR.W    R1,??DataTable1_3
        STR      R0,[R1, #+0]
        B.N      ??control_3
//   61       else 
//   62         if(0>F2>-10&&angle2<0)
??control_2:
        LDR.W    R0,??DataTable1
        LDR      R0,[R0, #+0]
        MOVS     R1,#+0
        BL       __aeabi_cfcmple
        BCS.N    ??control_4
        MOVS     R0,#+1
        B.N      ??control_5
??control_4:
        MOVS     R0,#+0
??control_5:
        LDR.W    R0,??DataTable1_1
        LDR      R0,[R0, #+0]
        MOVS     R1,#+0
        BL       __aeabi_cfcmple
        BCS.N    ??control_6
//   63               xf=2360-F2-angle2*0;
        LDR.W    R0,??DataTable1_2  ;; 0x45138000
        LDR.W    R1,??DataTable1
        LDR      R1,[R1, #+0]
        BL       __aeabi_fsub
        MOVS     R4,R0
        LDR.W    R0,??DataTable1_1
        LDR      R1,[R0, #+0]
        MOVS     R0,#+0
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOVS     R0,R4
        BL       __aeabi_fsub
        LDR.W    R1,??DataTable1_3
        STR      R0,[R1, #+0]
        B.N      ??control_3
//   64         else
//   65               xf=2360-F2;
??control_6:
        LDR.W    R0,??DataTable1_2  ;; 0x45138000
        LDR.W    R1,??DataTable1
        LDR      R1,[R1, #+0]
        BL       __aeabi_fsub
        LDR.W    R1,??DataTable1_3
        STR      R0,[R1, #+0]
//   66       if(xf>2660)
??control_3:
        LDR.W    R0,??DataTable1_3
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable1_4  ;; 0x45264001
        BL       __aeabi_cfrcmple
        BHI.N    ??control_7
//   67         xf=2660;
        LDR.W    R0,??DataTable1_5  ;; 0x45264000
        LDR.W    R1,??DataTable1_3
        STR      R0,[R1, #+0]
//   68       if(xf<2060)
??control_7:
        LDR.W    R0,??DataTable1_3
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable1_6  ;; 0x4500c000
        BL       __aeabi_cfcmple
        BCS.N    ??control_8
//   69         xf=2060;
        LDR.W    R0,??DataTable1_6  ;; 0x4500c000
        LDR.N    R1,??DataTable1_3
        STR      R0,[R1, #+0]
//   70       if(10>F>0&&angle<0)
??control_8:
        LDR.W    R0,??DataTable1_7
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable1_8  ;; 0x41200000
        BL       __aeabi_cfcmple
        BCS.N    ??control_9
        MOVS     R0,#+1
        B.N      ??control_10
??control_9:
        MOVS     R0,#+0
??control_10:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??control_11
        LDR.N    R0,??DataTable1_9
        LDR      R0,[R0, #+0]
        MOVS     R1,#+0
        BL       __aeabi_cfcmple
        BCS.N    ??control_11
//   71      yf=2480+F-angle*0;
        LDR.N    R0,??DataTable1_7
        LDR      R1,[R0, #+0]
        LDR.N    R0,??DataTable1_10  ;; 0x451b0000
        BL       __aeabi_fadd
        MOVS     R4,R0
        LDR.N    R0,??DataTable1_9
        LDR      R1,[R0, #+0]
        MOVS     R0,#+0
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOVS     R0,R4
        BL       __aeabi_fsub
        LDR.N    R1,??DataTable1_11
        STR      R0,[R1, #+0]
        B.N      ??control_12
//   72       else 
//   73         if(0>F>-10&&angle>0)
??control_11:
        LDR.N    R0,??DataTable1_7
        LDR      R0,[R0, #+0]
        MOVS     R1,#+0
        BL       __aeabi_cfcmple
        BCS.N    ??control_13
        MOVS     R0,#+1
        B.N      ??control_14
??control_13:
        MOVS     R0,#+0
??control_14:
        LDR.N    R0,??DataTable1_9
        LDR      R0,[R0, #+0]
        MOVS     R1,#+0
        BL       __aeabi_cfrcmple
        BCS.N    ??control_15
//   74               yf=2480+F-angle*0; 
        LDR.N    R0,??DataTable1_7
        LDR      R1,[R0, #+0]
        LDR.N    R0,??DataTable1_10  ;; 0x451b0000
        BL       __aeabi_fadd
        MOVS     R4,R0
        LDR.N    R0,??DataTable1_9
        LDR      R1,[R0, #+0]
        MOVS     R0,#+0
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOVS     R0,R4
        BL       __aeabi_fsub
        LDR.N    R1,??DataTable1_11
        STR      R0,[R1, #+0]
        B.N      ??control_12
//   75         else
//   76               yf=2480+F;
??control_15:
        LDR.N    R0,??DataTable1_7
        LDR      R1,[R0, #+0]
        LDR.N    R0,??DataTable1_10  ;; 0x451b0000
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable1_11
        STR      R0,[R1, #+0]
//   77       if(yf>2780)
??control_12:
        LDR.N    R0,??DataTable1_11
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable1_12  ;; 0x452dc001
        BL       __aeabi_cfrcmple
        BHI.N    ??control_16
//   78         yf=2780;
        LDR.N    R0,??DataTable1_13  ;; 0x452dc000
        LDR.N    R1,??DataTable1_11
        STR      R0,[R1, #+0]
//   79       if(yf<2160)
??control_16:
        LDR.N    R0,??DataTable1_11
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable1_14  ;; 0x45070000
        BL       __aeabi_cfcmple
        BCS.N    ??control_17
//   80         yf=2160;
        LDR.N    R0,??DataTable1_14  ;; 0x45070000
        LDR.N    R1,??DataTable1_11
        STR      R0,[R1, #+0]
//   81       LPLD_FTM_PWM_ChangeDuty(FTM0,FTM_Ch1,(uint16)(xf));
??control_17:
        LDR.N    R0,??DataTable1_3
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2iz
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        MOVS     R2,R0
        MOVS     R1,#+1
        LDR.N    R0,??DataTable1_15  ;; 0x40038000
        BL       LPLD_FTM_PWM_ChangeDuty
//   82       LPLD_FTM_PWM_ChangeDuty(FTM1,FTM_Ch1,(uint16)(yf));
        LDR.N    R0,??DataTable1_11
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2iz
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        MOVS     R2,R0
        MOVS     R1,#+1
        LDR.N    R0,??DataTable1_16  ;; 0x40039000
        BL       LPLD_FTM_PWM_ChangeDuty
//   83 
//   84 }
        POP      {R4,PC}          ;; return
//   85 
//   86 
//   87 
//   88 
//   89 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   90 void renew()
//   91 {
renew:
        PUSH     {R3-R5,LR}
//   92 
//   93   //计算
//   94   if(y>35&&y<45)
        LDR.N    R0,??DataTable1_17
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable1_18  ;; 0x420c0001
        BL       __aeabi_cfrcmple
        BHI.N    ??renew_0
        LDR.N    R0,??DataTable1_17
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable1_19  ;; 0x42340000
        BL       __aeabi_cfcmple
        BCS.N    ??renew_0
//   95   {
//   96     A = (float)(P * adress_err[0] 
//   97              + KD*D * (adress_err[0] -adress_err[1])
//   98              +KI*I*adress_err_all);//
        LDR.N    R0,??DataTable1_20
        LDR      R1,[R0, #+0]
        LDR.N    R0,??DataTable1_21
        LDR      R0,[R0, #+0]
        BL       __aeabi_fmul
        MOVS     R4,R0
        LDR.N    R0,??DataTable1_22
        LDR      R1,[R0, #+0]
        LDR.N    R0,??DataTable1_23
        LDR      R0,[R0, #+0]
        BL       __aeabi_fmul
        MOVS     R5,R0
        LDR.N    R0,??DataTable1_21
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable1_21
        LDR      R1,[R1, #+4]
        BL       __aeabi_fsub
        MOVS     R1,R5
        BL       __aeabi_fmul
        MOVS     R1,R4
        BL       __aeabi_fadd
        MOVS     R4,R0
        LDR.N    R0,??DataTable1_24
        LDRB     R0,[R0, #+0]
        BL       __aeabi_ui2f
        LDR.N    R1,??DataTable1_25
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        LDR.N    R1,??DataTable1_26
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        MOVS     R1,R4
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable1_27
        STR      R0,[R1, #+0]
        B.N      ??renew_1
//   99   }
//  100   else
//  101     A=(float)(P * adress_err[0] 
//  102              + D * (adress_err[0] -adress_err[1])
//  103              +KI*I*adress_err_all);//
??renew_0:
        LDR.N    R0,??DataTable1_20
        LDR      R1,[R0, #+0]
        LDR.N    R0,??DataTable1_21
        LDR      R0,[R0, #+0]
        BL       __aeabi_fmul
        MOVS     R4,R0
        LDR.N    R0,??DataTable1_21
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable1_21
        LDR      R1,[R1, #+4]
        BL       __aeabi_fsub
        LDR.N    R1,??DataTable1_23
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        MOVS     R1,R4
        BL       __aeabi_fadd
        MOVS     R4,R0
        LDR.N    R0,??DataTable1_24
        LDRB     R0,[R0, #+0]
        BL       __aeabi_ui2f
        LDR.N    R1,??DataTable1_25
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        LDR.N    R1,??DataTable1_26
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        MOVS     R1,R4
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable1_27
        STR      R0,[R1, #+0]
//  104   F=A*4.222;
??renew_1:
        LDR.N    R0,??DataTable1_27
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        LDR.N    R2,??DataTable1_28  ;; 0xf7ced917
        LDR.N    R3,??DataTable1_29  ;; 0x4010e353
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable1_7
        STR      R0,[R1, #+0]
//  105   
//  106 
//  107 
//  108   //计算
//  109   if(x>35&&x<45)
        LDR.N    R0,??DataTable1_30
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable1_18  ;; 0x420c0001
        BL       __aeabi_cfrcmple
        BHI.N    ??renew_2
        LDR.N    R0,??DataTable1_30
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable1_19  ;; 0x42340000
        BL       __aeabi_cfcmple
        BCS.N    ??renew_2
//  110   {
//  111     A2 = (float)(P2 * adress_err2[0] 
//  112                + KD2*D2 * (adress_err2[0] -adress_err2[1])
//  113                +KI2*I2*adress_err_all2);//
        LDR.N    R0,??DataTable1_31
        LDR      R1,[R0, #+0]
        LDR.N    R0,??DataTable1_32
        LDR      R0,[R0, #+0]
        BL       __aeabi_fmul
        MOVS     R4,R0
        LDR.N    R0,??DataTable1_33
        LDR      R1,[R0, #+0]
        LDR.N    R0,??DataTable1_34
        LDR      R0,[R0, #+0]
        BL       __aeabi_fmul
        MOVS     R5,R0
        LDR.N    R0,??DataTable1_32
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable1_32
        LDR      R1,[R1, #+4]
        BL       __aeabi_fsub
        MOVS     R1,R5
        BL       __aeabi_fmul
        MOVS     R1,R4
        BL       __aeabi_fadd
        MOVS     R4,R0
        LDR.N    R0,??DataTable1_35
        LDRB     R0,[R0, #+0]
        BL       __aeabi_ui2f
        LDR.N    R1,??DataTable1_36
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        LDR.N    R1,??DataTable1_37
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        MOVS     R1,R4
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable1_38
        STR      R0,[R1, #+0]
        B.N      ??renew_3
//  114   }
//  115   else
//  116      A2 = (float)(P2 * adress_err2[0] 
//  117                + D2 * (adress_err2[0] -adress_err2[1])
//  118                +KI2*I2*adress_err_all2);//
??renew_2:
        LDR.N    R0,??DataTable1_31
        LDR      R1,[R0, #+0]
        LDR.N    R0,??DataTable1_32
        LDR      R0,[R0, #+0]
        BL       __aeabi_fmul
        MOVS     R4,R0
        LDR.N    R0,??DataTable1_32
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable1_32
        LDR      R1,[R1, #+4]
        BL       __aeabi_fsub
        LDR.N    R1,??DataTable1_34
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        MOVS     R1,R4
        BL       __aeabi_fadd
        MOVS     R4,R0
        LDR.N    R0,??DataTable1_35
        LDRB     R0,[R0, #+0]
        BL       __aeabi_ui2f
        LDR.N    R1,??DataTable1_36
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        LDR.N    R1,??DataTable1_37
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        MOVS     R1,R4
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable1_38
        STR      R0,[R1, #+0]
//  119   F2=A2*4.222;
??renew_3:
        LDR.N    R0,??DataTable1_38
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        LDR.N    R2,??DataTable1_28  ;; 0xf7ced917
        LDR.N    R3,??DataTable1_29  ;; 0x4010e353
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable1
        STR      R0,[R1, #+0]
//  120 
//  121 
//  122   
//  123 
//  124 //  angle_err=A-angle;
//  125 //  
//  126 //
//  127 //  angle_err_all+=KI1*angle_err;
//  128 //  if(angle_err_all>30)
//  129 //    angle_err_all=30;
//  130 //  if(angle_err_all<-30)
//  131 //    angle_err_all=-30;
//  132 //
//  133 //  F=P1 * angle_err 
//  134 //    + KI1*I1 * angle_err_all ;
//  135   
//  136   if(F>350)
        LDR.N    R0,??DataTable1_7
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable1_39  ;; 0x43af0001
        BL       __aeabi_cfrcmple
        BHI.N    ??renew_4
//  137     F=350;
        LDR.N    R0,??DataTable1_40  ;; 0x43af0000
        LDR.N    R1,??DataTable1_7
        STR      R0,[R1, #+0]
        B.N      ??renew_5
//  138   else 
//  139     if(F<-350)
??renew_4:
        LDR.N    R0,??DataTable1_7
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable1_41  ;; 0xc3af0000
        BL       __aeabi_cfcmple
        BCS.N    ??renew_5
//  140        F=-350;
        LDR.N    R0,??DataTable1_41  ;; 0xc3af0000
        LDR.N    R1,??DataTable1_7
        STR      R0,[R1, #+0]
//  141   
//  142 //   angle_err2=A2-angle2;
//  143 //  
//  144 //
//  145 //  angle_err_all2+=KI1*angle_err2;
//  146 //
//  147 //   if(angle_err_all2>30)
//  148 //    angle_err_all2=30;
//  149 //  if(angle_err_all2<-30)
//  150 //    angle_err_all2=-30;
//  151 //  
//  152 //  F2=P12 * angle_err2 
//  153 //    + KI12*I1 * angle_err_all2 ;
//  154   if(F2>350)
??renew_5:
        LDR.N    R0,??DataTable1
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable1_39  ;; 0x43af0001
        BL       __aeabi_cfrcmple
        BHI.N    ??renew_6
//  155     F2=350;
        LDR.N    R0,??DataTable1_40  ;; 0x43af0000
        LDR.N    R1,??DataTable1
        STR      R0,[R1, #+0]
        B.N      ??renew_7
//  156   else 
//  157     if(F2<-350)
??renew_6:
        LDR.N    R0,??DataTable1
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable1_41  ;; 0xc3af0000
        BL       __aeabi_cfcmple
        BCS.N    ??renew_7
//  158        F2=-350;
        LDR.N    R0,??DataTable1_41  ;; 0xc3af0000
        LDR.N    R1,??DataTable1
        STR      R0,[R1, #+0]
//  159 
//  160   
//  161 }
??renew_7:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     F2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     angle2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC32     0x45138000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_3:
        DC32     xf

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_4:
        DC32     0x45264001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_5:
        DC32     0x45264000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_6:
        DC32     0x4500c000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_7:
        DC32     F

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_8:
        DC32     0x41200000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_9:
        DC32     angle

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_10:
        DC32     0x451b0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_11:
        DC32     yf

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_12:
        DC32     0x452dc001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_13:
        DC32     0x452dc000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_14:
        DC32     0x45070000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_15:
        DC32     0x40038000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_16:
        DC32     0x40039000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_17:
        DC32     y

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_18:
        DC32     0x420c0001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_19:
        DC32     0x42340000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_20:
        DC32     P

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_21:
        DC32     adress_err

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_22:
        DC32     KD

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_23:
        DC32     D

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_24:
        DC32     KI

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_25:
        DC32     I

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_26:
        DC32     adress_err_all

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_27:
        DC32     A

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_28:
        DC32     0xf7ced917

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_29:
        DC32     0x4010e353

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_30:
        DC32     x

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_31:
        DC32     `P2`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_32:
        DC32     adress_err2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_33:
        DC32     KD2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_34:
        DC32     D2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_35:
        DC32     KI2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_36:
        DC32     I2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_37:
        DC32     adress_err_all2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_38:
        DC32     A2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_39:
        DC32     0x43af0001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_40:
        DC32     0x43af0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_41:
        DC32     0xc3af0000

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  162 
//  163 
//  164 
//  165   
//  166 
//  167     
//  168     
//  169   
// 
//   102 bytes in section .bss
//     8 bytes in section .data
// 1 142 bytes in section .text
// 
// 1 142 bytes of CODE memory
//   110 bytes of DATA memory
//
//Errors: none
//Warnings: none
