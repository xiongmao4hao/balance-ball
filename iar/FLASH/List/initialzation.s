///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.60.2.11341/W32 for ARM      27/Jul/2017  17:12:39
// Copyright 1999-2016 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\shize\Desktop\电设\bloodc\project\balance-ball\my\initialzation.c
//    Command line =  
//        C:\Users\shize\Desktop\电设\bloodc\project\balance-ball\my\initialzation.c
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
//        C:\Users\shize\Desktop\电设\bloodc\project\balance-ball\iar\FLASH\List\initialzation.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN KI
        EXTERN KI2
        EXTERN LPLD_FTM_Init
        EXTERN LPLD_FTM_PWM_Enable
        EXTERN LPLD_GPIO_Init
        EXTERN LPLD_NVIC_Init
        EXTERN LPLD_PIT_EnableIrq
        EXTERN LPLD_PIT_Init
        EXTERN LPLD_UART_EnableIrq
        EXTERN LPLD_UART_GetChar
        EXTERN LPLD_UART_Init
        EXTERN __aeabi_cdcmple
        EXTERN __aeabi_cfcmple
        EXTERN __aeabi_cfrcmple
        EXTERN __aeabi_d2iz
        EXTERN __aeabi_dadd
        EXTERN __aeabi_dmul
        EXTERN __aeabi_f2d
        EXTERN __aeabi_fadd
        EXTERN __aeabi_fsub
        EXTERN __aeabi_i2f
        EXTERN __aeabi_memcpy4
        EXTERN __aeabi_ui2f
        EXTERN adress
        EXTERN adress2
        EXTERN adress_err
        EXTERN adress_err2
        EXTERN adress_err_all
        EXTERN adress_err_all2
        EXTERN pit_isr
        EXTERN x
        EXTERN x_sit
        EXTERN y
        EXTERN y_sit

        PUBLIC D
        PUBLIC D2
        PUBLIC GATE
        PUBLIC I
        PUBLIC I1
        PUBLIC I12
        PUBLIC I2
        PUBLIC KD
        PUBLIC KD2
        PUBLIC NVIC_init
        PUBLIC P
        PUBLIC `P1`
        PUBLIC `P12`
        PUBLIC `P2`
        PUBLIC TAKE
        PUBLIC angle
        PUBLIC angle2
        PUBLIC debug_write
        PUBLIC fsend
        PUBLIC ftm_init_struct
        PUBLIC gate
        PUBLIC gate1
        PUBLIC gate2
        PUBLIC gpio_init_struct
        PUBLIC initialzation
        PUBLIC nvic
        PUBLIC pit_init_struct
        PUBLIC send
        PUBLIC site
        PUBLIC site1
        PUBLIC site2
        PUBLIC site3
        PUBLIC start
        PUBLIC take
        PUBLIC take1
        PUBLIC take2
        PUBLIC uart0_init_struct
        PUBLIC x_
        PUBLIC y_

// C:\Users\shize\Desktop\电设\bloodc\project\balance-ball\my\initialzation.c
//    1 #include "initialzation.h"
//    2 #include "math.h"
//    3 
//    4 #define DATA_LENGTH 4
//    5 
//    6 
//    7 static void GPIO_init(void);
//    8 static void PIT_init(void);
//    9 static void uart_init(void);
//   10 static void uart_init_b(void);
//   11 static void uart_init_c(void);
//   12 static void variation(void);
//   13 static void debug_write_b(void);
//   14 static void debug_write_c(void);
//   15 static void FTM_init();
//   16 static void FTM_init2();
//   17 
//   18 //extern char KO;
//   19 extern float x;
//   20 extern float y;
//   21 extern float x_sit;
//   22 extern float y_sit;
//   23 extern float adress,adress2;
//   24 extern float adress_err[DATA_LENGTH],adress_err2[DATA_LENGTH];
//   25 extern char KI,KI2;
//   26 extern float adress_err_all,adress_err_all2;
//   27 
//   28 
//   29 //用于初始化的结构体

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   30 GPIO_InitTypeDef  gpio_init_struct;
gpio_init_struct:
        DS8 20

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   31 PIT_InitTypeDef   pit_init_struct;
pit_init_struct:
        DS8 20

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   32 UART_InitTypeDef  uart0_init_struct;
uart0_init_struct:
        DS8 28

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   33 FTM_InitTypeDef   ftm_init_struct; 
ftm_init_struct:
        DS8 28

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   34 NVIC_InitTypeDef  nvic;
nvic:
        DS8 20
//   35 
//   36 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   37 int8   send[4];
send:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
        DATA
//   38 uint16 TAKE,take1,take2,take;//a
TAKE:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
        DATA
take1:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
        DATA
take2:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
        DATA
take:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   39 uint8  gate1,gate2,gate;//b
gate1:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
gate2:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
gate:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   40 uint8  site,site1,site2,site3;//c
site:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
site1:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
site2:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
site3:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   41 float GATE;
GATE:
        DS8 4
//   42 
//   43 
//   44 //控制相关

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   45 float P,D,P1,I1,I,KD,KD2;
P:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
D:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
`P1`:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
I1:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
I:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
KD:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
KD2:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   46 float P2,D2,P12,I12,I2;
`P2`:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
D2:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
`P12`:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
I12:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
I2:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   47 float angle=0;
angle:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   48 float angle2=0;
angle2:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   49 float x_[8],y_[8];
x_:
        DS8 32

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
y_:
        DS8 32
//   50 
//   51 

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   52 char start,fsend;
start:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
fsend:
        DS8 1
//   53 
//   54 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   55 void initialzation()
//   56 {
initialzation:
        PUSH     {R7,LR}
//   57   uart_init();
        BL       uart_init
//   58   uart_init_b();
        BL       uart_init_b
//   59   uart_init_c();
        BL       uart_init_c
//   60   variation();
        BL       variation
//   61   GPIO_init();
        BL       GPIO_init
//   62   PIT_init();
        BL       PIT_init
//   63   FTM_init();
        BL       FTM_init
//   64   FTM_init2();
        BL       FTM_init2
//   65 
//   66 }
        POP      {R0,PC}          ;; return
//   67   

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   68 void variation()
//   69 {
//   70   P=3.28;
variation:
        LDR.W    R0,??DataTable9  ;; 0x4051eb85
        LDR.W    R1,??DataTable9_1
        STR      R0,[R1, #+0]
//   71   I=0.31;
        LDR.W    R0,??DataTable9_2  ;; 0x3e9eb852
        LDR.W    R1,??DataTable9_3
        STR      R0,[R1, #+0]
//   72   D=14.19;
        LDR.W    R0,??DataTable9_4  ;; 0x41630a3d
        LDR.W    R1,??DataTable9_5
        STR      R0,[R1, #+0]
//   73 //  P1=2.05;
//   74 //  I1=0.45;
//   75 //  KD=KD2=0.79;
//   76   P2=3.28;
        LDR.W    R0,??DataTable9  ;; 0x4051eb85
        LDR.W    R1,??DataTable9_6
        STR      R0,[R1, #+0]
//   77   I2=0.31;
        LDR.W    R0,??DataTable9_2  ;; 0x3e9eb852
        LDR.W    R1,??DataTable9_7
        STR      R0,[R1, #+0]
//   78   D2=14.19;
        LDR.W    R0,??DataTable9_4  ;; 0x41630a3d
        LDR.W    R1,??DataTable9_8
        STR      R0,[R1, #+0]
//   79 //  P12=2.05;
//   80 //  I12=0.45;
//   81 //  fsend=1;
//   82 //  start=0;
//   83   x=x_sit=40;
        LDR.W    R0,??DataTable9_9  ;; 0x42200000
        LDR.W    R1,??DataTable9_10
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable9_10
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable9_11
        STR      R0,[R1, #+0]
//   84   y=y_sit=40;
        LDR.W    R0,??DataTable9_9  ;; 0x42200000
        LDR.W    R1,??DataTable9_12
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable9_12
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable9_13
        STR      R0,[R1, #+0]
//   85 
//   86 }
        BX       LR               ;; return
//   87 
//   88 
//   89 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   90 void uart_init()
//   91 {
uart_init:
        PUSH     {R5-R7,LR}
//   92   uart0_init_struct.UART_Uartx = UART4; //使用UART4
        LDR.W    R0,??DataTable9_14  ;; 0x400ea000
        LDR.W    R1,??DataTable9_15
        STR      R0,[R1, #+0]
//   93   uart0_init_struct.UART_BaudRate = 115200; //设置波特率9600
        MOVS     R0,#+115200
        LDR.W    R1,??DataTable9_15
        STR      R0,[R1, #+4]
//   94   uart0_init_struct.UART_RxPin = PTE25;  //接收引脚为PTE9
        MOVS     R0,#+149
        LDR.W    R1,??DataTable9_15
        STRB     R0,[R1, #+9]
//   95   uart0_init_struct.UART_TxPin = PTE24;  //发送引脚为PTE8
        MOVS     R0,#+148
        LDR.W    R1,??DataTable9_15
        STRB     R0,[R1, #+8]
//   96   //初始化UART4
//   97   LPLD_UART_Init(uart0_init_struct);
        LDR.W    R1,??DataTable9_15
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_UART_Init
//   98   
//   99 }
        POP      {R0-R2,PC}       ;; return
//  100 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  101 void uart_init_b()
//  102 {
uart_init_b:
        PUSH     {R5-R7,LR}
//  103   uart0_init_struct.UART_Uartx = UART0; //使用UART0
        LDR.W    R0,??DataTable9_16  ;; 0x4006a000
        LDR.W    R1,??DataTable9_15
        STR      R0,[R1, #+0]
//  104   uart0_init_struct.UART_BaudRate = 115200; //设置波特率9600
        MOVS     R0,#+115200
        LDR.W    R1,??DataTable9_15
        STR      R0,[R1, #+4]
//  105   uart0_init_struct.UART_RxPin = PTA15;  //接收引脚为PTE9
        MOVS     R0,#+15
        LDR.W    R1,??DataTable9_15
        STRB     R0,[R1, #+9]
//  106   uart0_init_struct.UART_TxPin = PTA14;  //发送引脚为PTE8
        MOVS     R0,#+14
        LDR.W    R1,??DataTable9_15
        STRB     R0,[R1, #+8]
//  107   uart0_init_struct.UART_RxIntEnable=TRUE;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable9_15
        STRB     R0,[R1, #+10]
//  108   uart0_init_struct.UART_RxIsr = debug_write_b;
        ADR.W    R0,debug_write_b
        LDR.W    R1,??DataTable9_15
        STR      R0,[R1, #+20]
//  109   //初始化UART0
//  110   LPLD_UART_Init(uart0_init_struct);
        LDR.W    R1,??DataTable9_15
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_UART_Init
//  111   LPLD_UART_EnableIrq(uart0_init_struct) ;
        LDR.W    R1,??DataTable9_15
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_UART_EnableIrq
//  112   
//  113 }
        POP      {R0-R2,PC}       ;; return
//  114 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  115 void uart_init_c()
//  116 {
uart_init_c:
        PUSH     {R5-R7,LR}
//  117   uart0_init_struct.UART_Uartx = UART3; //使用UART0
        LDR.W    R0,??DataTable9_17  ;; 0x4006d000
        LDR.W    R1,??DataTable9_15
        STR      R0,[R1, #+0]
//  118   uart0_init_struct.UART_BaudRate = 115200; //设置波特率9600
        MOVS     R0,#+115200
        LDR.W    R1,??DataTable9_15
        STR      R0,[R1, #+4]
//  119   uart0_init_struct.UART_RxPin = PTB10;  //接收引脚为PTE9
        MOVS     R0,#+42
        LDR.W    R1,??DataTable9_15
        STRB     R0,[R1, #+9]
//  120   uart0_init_struct.UART_TxPin = PTB11;  //发送引脚为PTE8
        MOVS     R0,#+43
        LDR.W    R1,??DataTable9_15
        STRB     R0,[R1, #+8]
//  121   uart0_init_struct.UART_RxIntEnable=TRUE;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable9_15
        STRB     R0,[R1, #+10]
//  122   uart0_init_struct.UART_RxIsr = debug_write_c;
        ADR.W    R0,debug_write_c
        LDR.W    R1,??DataTable9_15
        STR      R0,[R1, #+20]
//  123   //初始化UART0
//  124   LPLD_UART_Init(uart0_init_struct);
        LDR.W    R1,??DataTable9_15
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_UART_Init
//  125   LPLD_UART_EnableIrq(uart0_init_struct) ;
        LDR.W    R1,??DataTable9_15
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_UART_EnableIrq
//  126   
//  127 }
        POP      {R0-R2,PC}       ;; return
//  128 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  129 void FTM_init()         
//  130 {
FTM_init:
        PUSH     {R5-R7,LR}
//  131     ftm_init_struct.FTM_Ftmx = FTM0;	                //使能FTM0通道
        LDR.W    R0,??DataTable9_18  ;; 0x40038000
        LDR.W    R1,??DataTable9_19
        STR      R0,[R1, #+0]
//  132     ftm_init_struct.FTM_Mode = FTM_MODE_PWM;	        //使能PWM模式
        MOVS     R0,#+1
        LDR.W    R1,??DataTable9_19
        STRB     R0,[R1, #+4]
//  133     ftm_init_struct.FTM_PwmFreq =200;         	//PWM频率kHz 7*1e5
        MOVS     R0,#+200
        LDR.W    R1,??DataTable9_19
        STR      R0,[R1, #+8]
//  134     LPLD_FTM_Init(ftm_init_struct);            
        LDR.W    R1,??DataTable9_19
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_FTM_Init
//  135     LPLD_FTM_PWM_Enable(FTM0,FTM_Ch1,2560,PTC2,ALIGN_LEFT);  
        MOVS     R0,#+40
        STR      R0,[SP, #+0]
        MOVS     R3,#+62
        MOV      R2,#+2560
        MOVS     R1,#+1
        LDR.W    R0,??DataTable9_18  ;; 0x40038000
        BL       LPLD_FTM_PWM_Enable
//  136 }
        POP      {R0-R2,PC}       ;; return
//  137 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  138 void FTM_init2()         
//  139 {
FTM_init2:
        PUSH     {R5-R7,LR}
//  140     ftm_init_struct.FTM_Ftmx = FTM1;	                //使能FTM0通道
        LDR.W    R0,??DataTable9_20  ;; 0x40039000
        LDR.W    R1,??DataTable9_19
        STR      R0,[R1, #+0]
//  141     ftm_init_struct.FTM_Mode = FTM_MODE_PWM;	        //使能PWM模式
        MOVS     R0,#+1
        LDR.W    R1,??DataTable9_19
        STRB     R0,[R1, #+4]
//  142     ftm_init_struct.FTM_PwmFreq =200;         	//PWM频率kHz 7*1e5
        MOVS     R0,#+200
        LDR.W    R1,??DataTable9_19
        STR      R0,[R1, #+8]
//  143     LPLD_FTM_Init(ftm_init_struct);            
        LDR.W    R1,??DataTable9_19
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_FTM_Init
//  144     LPLD_FTM_PWM_Enable(FTM1,FTM_Ch1,2570,PTA9,ALIGN_LEFT);  
        MOVS     R0,#+40
        STR      R0,[SP, #+0]
        MOVS     R3,#+9
        MOVW     R2,#+2570
        MOVS     R1,#+1
        LDR.W    R0,??DataTable9_20  ;; 0x40039000
        BL       LPLD_FTM_PWM_Enable
//  145 }
        POP      {R0-R2,PC}       ;; return
//  146 
//  147 
//  148 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  149 void GPIO_init(void)
//  150 {
GPIO_init:
        PUSH     {R7,LR}
//  151     gpio_init_struct.GPIO_PTx = PTC;     
        LDR.W    R0,??DataTable9_21  ;; 0x400ff080
        LDR.W    R1,??DataTable9_22
        STR      R0,[R1, #+0]
//  152     gpio_init_struct.GPIO_Pins =GPIO_Pin1|GPIO_Pin4|GPIO_Pin5|GPIO_Pin6|GPIO_Pin7|GPIO_Pin8|GPIO_Pin16;     //c1，c16方向
        LDR.W    R0,??DataTable9_23  ;; 0x101f2
        LDR.W    R1,??DataTable9_22
        STR      R0,[R1, #+4]
//  153     gpio_init_struct.GPIO_Dir = DIR_OUTPUT;                                       //输出
        MOVS     R0,#+1
        LDR.W    R1,??DataTable9_22
        STRB     R0,[R1, #+12]
//  154     gpio_init_struct.GPIO_PinControl = INPUT_PULL_UP|IRQC_DIS;                   //内部上拉|不产生中断
        MOVS     R0,#+3
        LDR.W    R1,??DataTable9_22
        STR      R0,[R1, #+8]
//  155     gpio_init_struct.GPIO_Output=OUTPUT_H ;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable9_22
        STRB     R0,[R1, #+13]
//  156     LPLD_GPIO_Init(gpio_init_struct);
        LDR.W    R1,??DataTable9_22
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//  157     PTC7_O = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable9_24  ;; 0x43fe101c
        STR      R0,[R1, #+0]
//  158     PTC4_O = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable9_25  ;; 0x43fe1010
        STR      R0,[R1, #+0]
//  159 
//  160 
//  161 }
        POP      {R0,PC}          ;; return
//  162 
//  163 
//  164 
//  165 
//  166 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  167 void PIT_init(void)
//  168 {
PIT_init:
        PUSH     {R7,LR}
//  169     pit_init_struct.PIT_Pitx = PIT0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable9_26
        STRB     R0,[R1, #+0]
//  170     pit_init_struct.PIT_PeriodMs = 15;      //定时周期 5ms
        MOVS     R0,#+15
        LDR.W    R1,??DataTable9_26
        STR      R0,[R1, #+8]
//  171     pit_init_struct.PIT_PeriodUs = 50;      //定时周期 5ms
        MOVS     R0,#+50
        LDR.W    R1,??DataTable9_26
        STR      R0,[R1, #+4]
//  172     pit_init_struct.PIT_Isr = pit_isr;     //设置中断函数
        LDR.W    R0,??DataTable9_27
        LDR.W    R1,??DataTable9_26
        STR      R0,[R1, #+16]
//  173     LPLD_PIT_Init(pit_init_struct);        //初始化PIT
        LDR.W    R1,??DataTable9_26
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_PIT_Init
//  174     LPLD_PIT_EnableIrq(pit_init_struct);    //允许中断
        LDR.W    R1,??DataTable9_26
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_PIT_EnableIrq
//  175 
//  176 }
        POP      {R0,PC}          ;; return
//  177 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  178 void NVIC_init(void)
//  179 {
NVIC_init:
        PUSH     {R7,LR}
//  180   nvic .NVIC_IRQChannel=PIT0_IRQn;
        MOVS     R0,#+68
        LDR.W    R1,??DataTable9_28
        STRB     R0,[R1, #+0]
//  181   nvic.NVIC_IRQChannelEnable=TRUE ;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable9_28
        STRB     R0,[R1, #+16]
//  182   nvic.NVIC_IRQChannelGroupPriority=NVIC_PriorityGroup_1;
        MOVS     R0,#+6
        LDR.W    R1,??DataTable9_28
        STR      R0,[R1, #+4]
//  183   nvic.NVIC_IRQChannelPreemptionPriority=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable9_28
        STR      R0,[R1, #+8]
//  184   nvic.NVIC_IRQChannelSubPriority=1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable9_28
        STR      R0,[R1, #+12]
//  185   LPLD_NVIC_Init(nvic);  
        LDR.W    R1,??DataTable9_28
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_NVIC_Init
//  186   nvic .NVIC_IRQChannel=UART0_RX_TX_IRQn;
        MOVS     R0,#+45
        LDR.W    R1,??DataTable9_28
        STRB     R0,[R1, #+0]
//  187   nvic.NVIC_IRQChannelEnable=TRUE ;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable9_28
        STRB     R0,[R1, #+16]
//  188   nvic.NVIC_IRQChannelGroupPriority=NVIC_PriorityGroup_1;
        MOVS     R0,#+6
        LDR.W    R1,??DataTable9_28
        STR      R0,[R1, #+4]
//  189   nvic.NVIC_IRQChannelPreemptionPriority=1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable9_28
        STR      R0,[R1, #+8]
//  190   nvic.NVIC_IRQChannelSubPriority=1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable9_28
        STR      R0,[R1, #+12]
//  191   LPLD_NVIC_Init(nvic);
        LDR.W    R1,??DataTable9_28
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_NVIC_Init
//  192   nvic .NVIC_IRQChannel=UART3_RX_TX_IRQn;
        MOVS     R0,#+51
        LDR.W    R1,??DataTable9_28
        STRB     R0,[R1, #+0]
//  193   nvic.NVIC_IRQChannelEnable=TRUE ;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable9_28
        STRB     R0,[R1, #+16]
//  194   nvic.NVIC_IRQChannelGroupPriority=NVIC_PriorityGroup_1;
        MOVS     R0,#+6
        LDR.W    R1,??DataTable9_28
        STR      R0,[R1, #+4]
//  195   nvic.NVIC_IRQChannelPreemptionPriority=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable9_28
        STR      R0,[R1, #+8]
//  196   nvic.NVIC_IRQChannelSubPriority=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable9_28
        STR      R0,[R1, #+12]
//  197   LPLD_NVIC_Init(nvic);
        LDR.W    R1,??DataTable9_28
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_NVIC_Init
//  198   
//  199 }
        POP      {R0,PC}          ;; return
//  200 
//  201 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  202 void debug_write(void)
//  203 {
//  204 //    take = LPLD_UART_GetChar(UART4);
//  205  //   char count=0;
//  206 //    if(take==0xdd)
//  207 //    {
//  208 //      take = LPLD_UART_GetChar(UART4); 
//  209 //      take1=((int16)take)*100;
//  210 //      take = LPLD_UART_GetChar(UART4); 
//  211 //      take2=take;
//  212 //      TAKE=take1+take2;
//  213 //      P=((float)TAKE)/100;
//  214 //      send[count++]=0x44;
//  215 //      send[count++]= TAKE>>8;
//  216 //      send[count++]= TAKE;
//  217 //      LPLD_UART_PutCharArr(UART4,send,count);
//  218 //    }
//  219     
//  220 //     else if(take==0xa5)
//  221 //    {
//  222 //      take = LPLD_UART_GetChar(UART4); 
//  223 //      take1=((int16)take)*100;
//  224 //      take = LPLD_UART_GetChar(UART4); 
//  225 //      take2=take;
//  226 //      TAKE=take1+take2;
//  227 //      D=((float)TAKE)/100;
//  228 //      send[count++]=0x55;
//  229 //      send[count++]= TAKE>>8;
//  230 //      send[count++]= TAKE;
//  231 //      LPLD_UART_PutChar(UART4,x);
//  232 //    }
//  233     
//  234 
//  235 //    
//  236 //    else if(take==0xdd)
//  237 //    {
//  238 //      take = LPLD_UART_GetChar(UART4);  
//  239 //      sit=take;
//  240 //      send[count++]=0x44;
//  241 //      send[count++]= take;
//  242 //      LPLD_UART_PutCharArr(UART4,send,count);
//  243 //      
//  244 //    } 
//  245 //    
//  246 //    else if(take==0xee)
//  247 //    {
//  248 //      take = LPLD_UART_GetChar(UART4);  
//  249 //      sitline=take;
//  250 //      send[count++]=0x55;
//  251 //      send[count++]= take;
//  252 //      LPLD_UART_PutCharArr(UART4,send,count);
//  253 //      
//  254 //    } 
//  255 //    
//  256 //    else if(take==0x11)
//  257 //    {
//  258 //      take = LPLD_UART_GetChar(UART4);  
//  259 //      scale=take;
//  260 //      send[count++]=0x66;
//  261 //      send[count++]= take;
//  262 //      LPLD_UART_PutCharArr(UART4,send,count);
//  263 //      
//  264 //    } 
//  265 //
//  266 //    else if(take==0xa1)
//  267 //    {
//  268 //      start=1;
//  269 //      send_=0;
//  270 //    }
//  271 //    else if(take==0xa2)
//  272 //    {
//  273 //      start=0;
//  274 //      send_=1;
//  275 //    }
//  276 //    
//  277       
//  278       
//  279   }
debug_write:
        BX       LR               ;; return
//  280 
//  281 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  282 void debug_write_b(void)
//  283 {
//  284 //    gate = LPLD_UART_GetChar(UART0);
//  285 //    if(gate==0x1c)
//  286 //    {
//  287 //     gate = LPLD_UART_GetChar(UART0); 
//  288 //      if(gate==1)
//  289 //      {
//  290 //        gate1= LPLD_UART_GetChar(UART0); 
//  291 //        gate2= LPLD_UART_GetChar(UART0);
//  292 //        GATE=(float)(gate1*256+gate2)/100;
//  293 //      }
//  294 //      else
//  295 //      {
//  296 //        gate1= LPLD_UART_GetChar(UART0); 
//  297 //        gate2= LPLD_UART_GetChar(UART0); 
//  298 //        GATE=(float)(gate1*256+gate2)/100;
//  299 //        GATE=-GATE;
//  300 //      }
//  301 //      angle=GATE-2.34;
//  302 ////      if(KO==0)
//  303 ////      {
//  304 ////        if(angle<0.6&&angle>-0.6)
//  305 ////         angle=0;
//  306 ////      }
//  307 //    }
//  308 //    if(gate==0x2c)
//  309 //    {
//  310 //     gate = LPLD_UART_GetChar(UART0); 
//  311 //      if(gate==1)
//  312 //      {
//  313 //        gate1= LPLD_UART_GetChar(UART0); 
//  314 //        gate2= LPLD_UART_GetChar(UART0);
//  315 //        GATE=(float)(gate1*256+gate2)/100;
//  316 //      }
//  317 //      else
//  318 //      {
//  319 //        gate1= LPLD_UART_GetChar(UART0); 
//  320 //        gate2= LPLD_UART_GetChar(UART0); 
//  321 //        GATE=(float)(gate1*256+gate2)/100;
//  322 //        GATE=-GATE;
//  323 //      }
//  324 //      angle2=-(GATE-1.27);
//  325 ////      if(KO==0)
//  326 ////      {
//  327 ////        if(angle2<0.6&&angle2>-0.6)
//  328 ////         angle2=0;
//  329 ////      }
//  330 //    }
//  331     
//  332 }
debug_write_b:
        BX       LR               ;; return
//  333 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  334 void debug_write_c(void)
//  335 {
debug_write_c:
        PUSH     {R3-R5,LR}
//  336     site = LPLD_UART_GetChar(UART3);
        LDR.W    R0,??DataTable9_17  ;; 0x4006d000
        BL       LPLD_UART_GetChar
        LDR.W    R1,??DataTable9_29
        STRB     R0,[R1, #+0]
//  337     if(site==0x41)
        LDR.W    R0,??DataTable9_29
        LDRB     R0,[R0, #+0]
        CMP      R0,#+65
        BNE.N    ??debug_write_c_0
//  338     { 
//  339       site1 = LPLD_UART_GetChar(UART3); 
        LDR.W    R0,??DataTable9_17  ;; 0x4006d000
        BL       LPLD_UART_GetChar
        LDR.W    R1,??DataTable9_30
        STRB     R0,[R1, #+0]
//  340       site2 = LPLD_UART_GetChar(UART3); 
        LDR.W    R0,??DataTable9_17  ;; 0x4006d000
        BL       LPLD_UART_GetChar
        LDR.W    R1,??DataTable9_31
        STRB     R0,[R1, #+0]
//  341       site3 = LPLD_UART_GetChar(UART3); 
        LDR.W    R0,??DataTable9_17  ;; 0x4006d000
        BL       LPLD_UART_GetChar
        LDR.W    R1,??DataTable9_32
        STRB     R0,[R1, #+0]
//  342       site1 = site1-48;
        LDR.W    R0,??DataTable9_30
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+48
        LDR.W    R1,??DataTable9_30
        STRB     R0,[R1, #+0]
//  343       site2 = site2-48;
        LDR.W    R0,??DataTable9_31
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+48
        LDR.W    R1,??DataTable9_31
        STRB     R0,[R1, #+0]
//  344       site3 = site3-48;
        LDR.W    R0,??DataTable9_32
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+48
        LDR.W    R1,??DataTable9_32
        STRB     R0,[R1, #+0]
//  345       x = site1*100+ site2*10+site3;
        LDR.W    R0,??DataTable9_30
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+100
        LDR.W    R2,??DataTable9_31
        LDRB     R2,[R2, #+0]
        MOVS     R3,#+10
        MULS     R2,R3,R2
        MLA      R0,R1,R0,R2
        LDR.W    R1,??DataTable9_32
        LDRB     R1,[R1, #+0]
        ADDS     R0,R0,R1
        BL       __aeabi_i2f
        LDR.W    R1,??DataTable9_11
        STR      R0,[R1, #+0]
//  346     }
//  347     if(site==0x42)
??debug_write_c_0:
        LDR.W    R0,??DataTable9_29
        LDRB     R0,[R0, #+0]
        CMP      R0,#+66
        BNE.N    ??debug_write_c_1
//  348     {
//  349       site1 = LPLD_UART_GetChar(UART3); 
        LDR.W    R0,??DataTable9_17  ;; 0x4006d000
        BL       LPLD_UART_GetChar
        LDR.W    R1,??DataTable9_30
        STRB     R0,[R1, #+0]
//  350       site2 = LPLD_UART_GetChar(UART3);
        LDR.W    R0,??DataTable9_17  ;; 0x4006d000
        BL       LPLD_UART_GetChar
        LDR.W    R1,??DataTable9_31
        STRB     R0,[R1, #+0]
//  351       site3 = LPLD_UART_GetChar(UART3); 
        LDR.W    R0,??DataTable9_17  ;; 0x4006d000
        BL       LPLD_UART_GetChar
        LDR.W    R1,??DataTable9_32
        STRB     R0,[R1, #+0]
//  352       site1 = site1-48; 
        LDR.W    R0,??DataTable9_30
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+48
        LDR.W    R1,??DataTable9_30
        STRB     R0,[R1, #+0]
//  353       site2 = site2-48;
        LDR.W    R0,??DataTable9_31
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+48
        LDR.W    R1,??DataTable9_31
        STRB     R0,[R1, #+0]
//  354       site3 = site3-48;
        LDR.W    R0,??DataTable9_32
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+48
        LDR.W    R1,??DataTable9_32
        STRB     R0,[R1, #+0]
//  355       y = site1*100+ site2*10+site3;
        LDR.W    R0,??DataTable9_30
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+100
        LDR.W    R2,??DataTable9_31
        LDRB     R2,[R2, #+0]
        MOVS     R3,#+10
        MULS     R2,R3,R2
        MLA      R0,R1,R0,R2
        LDR.W    R1,??DataTable9_32
        LDRB     R1,[R1, #+0]
        ADDS     R0,R0,R1
        BL       __aeabi_i2f
        LDR.N    R1,??DataTable9_13
        STR      R0,[R1, #+0]
//  356      
//  357     }
//  358 //  if(x_sit-5<x&&x<x_sit+5&&y_sit-5<y&&y<y_sit+5)
//  359 //  {
//  360 //    k0++;
//  361 //    if(k0==9)
//  362 //    {
//  363 //      k0=8;
//  364 //      x=x_sit;
//  365 //      y=y_sit;
//  366 //    }
//  367 //  }
//  368 //  else
//  369 //    k0=0;
//  370     
//  371     
//  372   int i;
//  373   for(i=7;i>0;i--)
??debug_write_c_1:
        MOVS     R0,#+7
        B.N      ??debug_write_c_2
//  374   {
//  375     x_[i]=x_[i-1];
??debug_write_c_3:
        LDR.W    R1,??DataTable9_33
        ADD      R1,R1,R0, LSL #+2
        LDR      R1,[R1, #-4]
        LDR.W    R2,??DataTable9_33
        STR      R1,[R2, R0, LSL #+2]
//  376   }
        SUBS     R0,R0,#+1
??debug_write_c_2:
        CMP      R0,#+1
        BGE.N    ??debug_write_c_3
//  377   x_[0]=x;
        LDR.N    R0,??DataTable9_11
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable9_33
        STR      R0,[R1, #+0]
//  378 //  if(fabs(x-x_[0])<10)
//  379 //  {
//  380 //    x=(int16)(0.25*x_[0]+0.25*x_[1]+0.25*x_[2]+0.25*x_[3]); 
//  381 //  }
//  382 //  else
//  383   if(fabs(x-x_[0])<120)
        LDR.N    R0,??DataTable9_11
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable9_33
        LDR      R1,[R1, #+0]
        BL       __aeabi_fsub
        BL       __aeabi_f2d
        BICS     R1,R1,#0x80000000
        MOVS     R2,#+0
        LDR.N    R3,??DataTable9_34  ;; 0x405e0000
        BL       __aeabi_cdcmple
        BCS.N    ??debug_write_c_4
//  384     x=(int16)(0.25*x_[0]+0.25*x_[1]+0.25*x_[2]+0.25*x_[3]);
        LDR.N    R0,??DataTable9_33
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable9_35  ;; 0x3fd00000
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable9_33
        LDR      R0,[R0, #+4]
        BL       __aeabi_f2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable9_35  ;; 0x3fd00000
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable9_33
        LDR      R0,[R0, #+8]
        BL       __aeabi_f2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable9_35  ;; 0x3fd00000
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable9_33
        LDR      R0,[R0, #+12]
        BL       __aeabi_f2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable9_35  ;; 0x3fd00000
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        BL       __aeabi_d2iz
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       __aeabi_i2f
        LDR.N    R1,??DataTable9_11
        STR      R0,[R1, #+0]
        B.N      ??debug_write_c_5
//  385   else
//  386     x=x_[0];
??debug_write_c_4:
        LDR.N    R0,??DataTable9_33
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable9_11
        STR      R0,[R1, #+0]
//  387   adress2 = x-x_sit;
??debug_write_c_5:
        LDR.N    R0,??DataTable9_11
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable9_10
        LDR      R1,[R1, #+0]
        BL       __aeabi_fsub
        LDR.N    R1,??DataTable9_36
        STR      R0,[R1, #+0]
//  388   for(i=DATA_LENGTH-1;i>0;i--)
        MOVS     R0,#+3
        B.N      ??debug_write_c_6
//  389   {
//  390     adress_err2[i] = adress_err2[i-1];
??debug_write_c_7:
        LDR.N    R1,??DataTable9_37
        ADD      R1,R1,R0, LSL #+2
        LDR      R1,[R1, #-4]
        LDR.N    R2,??DataTable9_37
        STR      R1,[R2, R0, LSL #+2]
//  391   }
        SUBS     R0,R0,#+1
??debug_write_c_6:
        CMP      R0,#+1
        BGE.N    ??debug_write_c_7
//  392   adress_err2[0] = adress2;
        LDR.N    R0,??DataTable9_36
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable9_37
        STR      R0,[R1, #+0]
//  393   
//  394  //限幅 
//  395   adress_err_all2+=adress_err2[0];
        LDR.N    R0,??DataTable9_38
        LDR      R1,[R0, #+0]
        LDR.N    R0,??DataTable9_37
        LDR      R0,[R0, #+0]
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable9_38
        STR      R0,[R1, #+0]
//  396   if(adress2>20||adress2<-20)
        LDR.N    R0,??DataTable9_36
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable9_39  ;; 0x41a00001
        BL       __aeabi_cfrcmple
        BLS.N    ??debug_write_c_8
        LDR.N    R0,??DataTable9_36
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable9_40  ;; 0xc1a00000
        BL       __aeabi_cfcmple
        BCS.N    ??debug_write_c_9
//  397    adress_err_all2=KI2=0;
??debug_write_c_8:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable9_41
        STRB     R0,[R1, #+0]
        LDR.N    R0,??DataTable9_41
        LDRB     R0,[R0, #+0]
        BL       __aeabi_ui2f
        LDR.N    R1,??DataTable9_38
        STR      R0,[R1, #+0]
        B.N      ??debug_write_c_10
//  398   else
//  399     KI2=1;
??debug_write_c_9:
        MOVS     R0,#+1
        LDR.N    R1,??DataTable9_41
        STRB     R0,[R1, #+0]
//  400   if(adress_err_all2>25)
??debug_write_c_10:
        LDR.N    R0,??DataTable9_38
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable9_42  ;; 0x41c80001
        BL       __aeabi_cfrcmple
        BHI.N    ??debug_write_c_11
//  401     adress_err_all2=25;
        LDR.N    R0,??DataTable9_43  ;; 0x41c80000
        LDR.N    R1,??DataTable9_38
        STR      R0,[R1, #+0]
//  402   if(adress_err_all2<-25)
??debug_write_c_11:
        LDR.N    R0,??DataTable9_38
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable9_44  ;; 0xc1c80000
        BL       __aeabi_cfcmple
        BCS.N    ??debug_write_c_12
//  403     adress_err_all2=-25;
        LDR.N    R0,??DataTable9_44  ;; 0xc1c80000
        LDR.N    R1,??DataTable9_38
        STR      R0,[R1, #+0]
//  404  
//  405   for(i=7;i>0;i--)
??debug_write_c_12:
        MOVS     R0,#+7
        B.N      ??debug_write_c_13
//  406   {
//  407     y_[i]=y_[i-1];
??debug_write_c_14:
        LDR.N    R1,??DataTable9_45
        ADD      R1,R1,R0, LSL #+2
        LDR      R1,[R1, #-4]
        LDR.N    R2,??DataTable9_45
        STR      R1,[R2, R0, LSL #+2]
//  408   }
        SUBS     R0,R0,#+1
??debug_write_c_13:
        CMP      R0,#+1
        BGE.N    ??debug_write_c_14
//  409   y_[0]=y;
        LDR.N    R0,??DataTable9_13
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable9_45
        STR      R0,[R1, #+0]
//  410 
//  411 //  {
//  412 //    y=(int16)(0.25*y_[0]+0.25*y_[1]+0.25*y_[2]+0.25*y_[3]); 
//  413 //  }
//  414 //  else
//  415    if(fabs(y-y_[0])<100)
        LDR.N    R0,??DataTable9_13
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable9_45
        LDR      R1,[R1, #+0]
        BL       __aeabi_fsub
        BL       __aeabi_f2d
        BICS     R1,R1,#0x80000000
        MOVS     R2,#+0
        LDR.N    R3,??DataTable9_46  ;; 0x40590000
        BL       __aeabi_cdcmple
        BCS.N    ??debug_write_c_15
//  416     y=(int16)(0.25*y_[0]+0.25*y_[1]+0.25*y_[2]+0.25*y_[3]);
        LDR.N    R0,??DataTable9_45
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable9_35  ;; 0x3fd00000
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable9_45
        LDR      R0,[R0, #+4]
        BL       __aeabi_f2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable9_35  ;; 0x3fd00000
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable9_45
        LDR      R0,[R0, #+8]
        BL       __aeabi_f2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable9_35  ;; 0x3fd00000
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable9_45
        LDR      R0,[R0, #+12]
        BL       __aeabi_f2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable9_35  ;; 0x3fd00000
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        BL       __aeabi_d2iz
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       __aeabi_i2f
        LDR.N    R1,??DataTable9_13
        STR      R0,[R1, #+0]
        B.N      ??debug_write_c_16
//  417    else
//  418      y=y_[0];
??debug_write_c_15:
        LDR.N    R0,??DataTable9_45
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable9_13
        STR      R0,[R1, #+0]
//  419   //更新
//  420   
//  421   adress = y-y_sit;
??debug_write_c_16:
        LDR.N    R0,??DataTable9_13
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable9_12
        LDR      R1,[R1, #+0]
        BL       __aeabi_fsub
        LDR.N    R1,??DataTable9_47
        STR      R0,[R1, #+0]
//  422   for(i=DATA_LENGTH-1;i>0;i--)
        MOVS     R0,#+3
        B.N      ??debug_write_c_17
//  423   {
//  424     adress_err[i] = adress_err[i-1];
??debug_write_c_18:
        LDR.N    R1,??DataTable9_48
        ADD      R1,R1,R0, LSL #+2
        LDR      R1,[R1, #-4]
        LDR.N    R2,??DataTable9_48
        STR      R1,[R2, R0, LSL #+2]
//  425   }
        SUBS     R0,R0,#+1
??debug_write_c_17:
        CMP      R0,#+1
        BGE.N    ??debug_write_c_18
//  426   adress_err[0] = adress;
        LDR.N    R0,??DataTable9_47
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable9_48
        STR      R0,[R1, #+0]
//  427  
//  428   adress_err_all+=adress_err[0];
        LDR.N    R0,??DataTable9_49
        LDR      R1,[R0, #+0]
        LDR.N    R0,??DataTable9_48
        LDR      R0,[R0, #+0]
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable9_49
        STR      R0,[R1, #+0]
//  429   //限幅
//  430   if(adress>20||adress<-20)
        LDR.N    R0,??DataTable9_47
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable9_39  ;; 0x41a00001
        BL       __aeabi_cfrcmple
        BLS.N    ??debug_write_c_19
        LDR.N    R0,??DataTable9_47
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable9_40  ;; 0xc1a00000
        BL       __aeabi_cfcmple
        BCS.N    ??debug_write_c_20
//  431     adress_err_all=KI=0;
??debug_write_c_19:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable9_50
        STRB     R0,[R1, #+0]
        LDR.N    R0,??DataTable9_50
        LDRB     R0,[R0, #+0]
        BL       __aeabi_ui2f
        LDR.N    R1,??DataTable9_49
        STR      R0,[R1, #+0]
        B.N      ??debug_write_c_21
//  432   else
//  433     KI=1;
??debug_write_c_20:
        MOVS     R0,#+1
        LDR.N    R1,??DataTable9_50
        STRB     R0,[R1, #+0]
//  434   if(adress_err_all>25)
??debug_write_c_21:
        LDR.N    R0,??DataTable9_49
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable9_42  ;; 0x41c80001
        BL       __aeabi_cfrcmple
        BHI.N    ??debug_write_c_22
//  435     adress_err_all=25;
        LDR.N    R0,??DataTable9_43  ;; 0x41c80000
        LDR.N    R1,??DataTable9_49
        STR      R0,[R1, #+0]
//  436   if(adress_err_all<-25)
??debug_write_c_22:
        LDR.N    R0,??DataTable9_49
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable9_44  ;; 0xc1c80000
        BL       __aeabi_cfcmple
        BCS.N    ??debug_write_c_23
//  437     adress_err_all=-25;
        LDR.N    R0,??DataTable9_44  ;; 0xc1c80000
        LDR.N    R1,??DataTable9_49
        STR      R0,[R1, #+0]
//  438   // //更新
//  439  
//  440     
//  441 }
??debug_write_c_23:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9:
        DC32     0x4051eb85

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_1:
        DC32     P

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_2:
        DC32     0x3e9eb852

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_3:
        DC32     I

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_4:
        DC32     0x41630a3d

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_5:
        DC32     D

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_6:
        DC32     `P2`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_7:
        DC32     I2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_8:
        DC32     D2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_9:
        DC32     0x42200000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_10:
        DC32     x_sit

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_11:
        DC32     x

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_12:
        DC32     y_sit

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_13:
        DC32     y

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_14:
        DC32     0x400ea000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_15:
        DC32     uart0_init_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_16:
        DC32     0x4006a000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_17:
        DC32     0x4006d000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_18:
        DC32     0x40038000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_19:
        DC32     ftm_init_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_20:
        DC32     0x40039000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_21:
        DC32     0x400ff080

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_22:
        DC32     gpio_init_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_23:
        DC32     0x101f2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_24:
        DC32     0x43fe101c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_25:
        DC32     0x43fe1010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_26:
        DC32     pit_init_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_27:
        DC32     pit_isr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_28:
        DC32     nvic

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_29:
        DC32     site

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_30:
        DC32     site1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_31:
        DC32     site2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_32:
        DC32     site3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_33:
        DC32     x_

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_34:
        DC32     0x405e0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_35:
        DC32     0x3fd00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_36:
        DC32     adress2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_37:
        DC32     adress_err2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_38:
        DC32     adress_err_all2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_39:
        DC32     0x41a00001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_40:
        DC32     0xc1a00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_41:
        DC32     KI2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_42:
        DC32     0x41c80001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_43:
        DC32     0x41c80000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_44:
        DC32     0xc1c80000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_45:
        DC32     y_

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_46:
        DC32     0x40590000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_47:
        DC32     adress

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_48:
        DC32     adress_err

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_49:
        DC32     adress_err_all

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_50:
        DC32     KI

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  442 
// 
//   261 bytes in section .bss
// 2 060 bytes in section .text
// 
// 2 060 bytes of CODE memory
//   261 bytes of DATA memory
//
//Errors: none
//Warnings: none
