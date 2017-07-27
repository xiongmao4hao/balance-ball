///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.60.2.11341/W32 for ARM      27/Jul/2017  11:16:39
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
        EXTERN KO
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
        EXTERN __aeabi_d2f
        EXTERN __aeabi_d2iz
        EXTERN __aeabi_dadd
        EXTERN __aeabi_dmul
        EXTERN __aeabi_f2d
        EXTERN __aeabi_fadd
        EXTERN __aeabi_fdiv
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
        PUBLIC k0
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
//   18 extern char KO;
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

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   42 char  k0=0;
k0:
        DS8 1
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
//   49 float x_[6],y_[6];
x_:
        DS8 24

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
y_:
        DS8 24
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
//   70   P=2.05;
variation:
        LDR.W    R0,??DataTable10  ;; 0x40033333
        LDR.W    R1,??DataTable10_1
        STR      R0,[R1, #+0]
//   71   I=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable10_2
        STR      R0,[R1, #+0]
//   72   D=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable10_3
        STR      R0,[R1, #+0]
//   73 //  P1=2.05;
//   74 //  I1=0.45;
//   75   KD=KD2=0.79;
        LDR.W    R0,??DataTable10_4  ;; 0x3f4a3d71
        LDR.W    R1,??DataTable10_5
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable10_5
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable10_6
        STR      R0,[R1, #+0]
//   76   P2=2.05;
        LDR.W    R0,??DataTable10  ;; 0x40033333
        LDR.W    R1,??DataTable10_7
        STR      R0,[R1, #+0]
//   77   I2=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable10_8
        STR      R0,[R1, #+0]
//   78   D2=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable10_9
        STR      R0,[R1, #+0]
//   79 //  P12=2.05;
//   80 //  I12=0.45;
//   81 //  fsend=1;
//   82 //  start=0;
//   83   x=x_sit=40;
        LDR.W    R0,??DataTable10_10  ;; 0x42200000
        LDR.W    R1,??DataTable10_11
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable10_11
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable10_12
        STR      R0,[R1, #+0]
//   84   y=y_sit=40;
        LDR.W    R0,??DataTable10_10  ;; 0x42200000
        LDR.W    R1,??DataTable10_13
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable10_13
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable10_14
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
        LDR.W    R0,??DataTable10_15  ;; 0x400ea000
        LDR.W    R1,??DataTable10_16
        STR      R0,[R1, #+0]
//   93   uart0_init_struct.UART_BaudRate = 115200; //设置波特率9600
        MOVS     R0,#+115200
        LDR.W    R1,??DataTable10_16
        STR      R0,[R1, #+4]
//   94   uart0_init_struct.UART_RxPin = PTE25;  //接收引脚为PTE9
        MOVS     R0,#+149
        LDR.W    R1,??DataTable10_16
        STRB     R0,[R1, #+9]
//   95   uart0_init_struct.UART_TxPin = PTE24;  //发送引脚为PTE8
        MOVS     R0,#+148
        LDR.W    R1,??DataTable10_16
        STRB     R0,[R1, #+8]
//   96   //初始化UART4
//   97   LPLD_UART_Init(uart0_init_struct);
        LDR.W    R1,??DataTable10_16
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
        LDR.W    R0,??DataTable10_17  ;; 0x4006a000
        LDR.W    R1,??DataTable10_16
        STR      R0,[R1, #+0]
//  104   uart0_init_struct.UART_BaudRate = 115200; //设置波特率9600
        MOVS     R0,#+115200
        LDR.W    R1,??DataTable10_16
        STR      R0,[R1, #+4]
//  105   uart0_init_struct.UART_RxPin = PTA15;  //接收引脚为PTE9
        MOVS     R0,#+15
        LDR.W    R1,??DataTable10_16
        STRB     R0,[R1, #+9]
//  106   uart0_init_struct.UART_TxPin = PTA14;  //发送引脚为PTE8
        MOVS     R0,#+14
        LDR.W    R1,??DataTable10_16
        STRB     R0,[R1, #+8]
//  107   uart0_init_struct.UART_RxIntEnable=TRUE;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable10_16
        STRB     R0,[R1, #+10]
//  108   uart0_init_struct.UART_RxIsr = debug_write_b;
        ADR.W    R0,debug_write_b
        LDR.W    R1,??DataTable10_16
        STR      R0,[R1, #+20]
//  109   //初始化UART0
//  110   LPLD_UART_Init(uart0_init_struct);
        LDR.W    R1,??DataTable10_16
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_UART_Init
//  111   LPLD_UART_EnableIrq(uart0_init_struct) ;
        LDR.W    R1,??DataTable10_16
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
        LDR.W    R0,??DataTable10_18  ;; 0x4006d000
        LDR.W    R1,??DataTable10_16
        STR      R0,[R1, #+0]
//  118   uart0_init_struct.UART_BaudRate = 115200; //设置波特率9600
        MOVS     R0,#+115200
        LDR.W    R1,??DataTable10_16
        STR      R0,[R1, #+4]
//  119   uart0_init_struct.UART_RxPin = PTB10;  //接收引脚为PTE9
        MOVS     R0,#+42
        LDR.W    R1,??DataTable10_16
        STRB     R0,[R1, #+9]
//  120   uart0_init_struct.UART_TxPin = PTB11;  //发送引脚为PTE8
        MOVS     R0,#+43
        LDR.W    R1,??DataTable10_16
        STRB     R0,[R1, #+8]
//  121   uart0_init_struct.UART_RxIntEnable=TRUE;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable10_16
        STRB     R0,[R1, #+10]
//  122   uart0_init_struct.UART_RxIsr = debug_write_c;
        ADR.W    R0,debug_write_c
        LDR.W    R1,??DataTable10_16
        STR      R0,[R1, #+20]
//  123   //初始化UART0
//  124   LPLD_UART_Init(uart0_init_struct);
        LDR.W    R1,??DataTable10_16
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_UART_Init
//  125   LPLD_UART_EnableIrq(uart0_init_struct) ;
        LDR.W    R1,??DataTable10_16
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
        LDR.W    R0,??DataTable10_19  ;; 0x40038000
        LDR.W    R1,??DataTable10_20
        STR      R0,[R1, #+0]
//  132     ftm_init_struct.FTM_Mode = FTM_MODE_PWM;	        //使能PWM模式
        MOVS     R0,#+1
        LDR.W    R1,??DataTable10_20
        STRB     R0,[R1, #+4]
//  133     ftm_init_struct.FTM_PwmFreq =200;         	//PWM频率kHz 7*1e5
        MOVS     R0,#+200
        LDR.W    R1,??DataTable10_20
        STR      R0,[R1, #+8]
//  134     LPLD_FTM_Init(ftm_init_struct);            
        LDR.W    R1,??DataTable10_20
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
        LDR.W    R0,??DataTable10_19  ;; 0x40038000
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
        LDR.W    R0,??DataTable10_21  ;; 0x40039000
        LDR.W    R1,??DataTable10_20
        STR      R0,[R1, #+0]
//  141     ftm_init_struct.FTM_Mode = FTM_MODE_PWM;	        //使能PWM模式
        MOVS     R0,#+1
        LDR.W    R1,??DataTable10_20
        STRB     R0,[R1, #+4]
//  142     ftm_init_struct.FTM_PwmFreq =200;         	//PWM频率kHz 7*1e5
        MOVS     R0,#+200
        LDR.W    R1,??DataTable10_20
        STR      R0,[R1, #+8]
//  143     LPLD_FTM_Init(ftm_init_struct);            
        LDR.W    R1,??DataTable10_20
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
        LDR.W    R0,??DataTable10_21  ;; 0x40039000
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
        LDR.W    R0,??DataTable10_22  ;; 0x400ff080
        LDR.W    R1,??DataTable10_23
        STR      R0,[R1, #+0]
//  152     gpio_init_struct.GPIO_Pins =GPIO_Pin1|GPIO_Pin4|GPIO_Pin5|GPIO_Pin6|GPIO_Pin7|GPIO_Pin8|GPIO_Pin16;     //c1，c16方向
        LDR.W    R0,??DataTable10_24  ;; 0x101f2
        LDR.W    R1,??DataTable10_23
        STR      R0,[R1, #+4]
//  153     gpio_init_struct.GPIO_Dir = DIR_OUTPUT;                                       //输出
        MOVS     R0,#+1
        LDR.W    R1,??DataTable10_23
        STRB     R0,[R1, #+12]
//  154     gpio_init_struct.GPIO_PinControl = INPUT_PULL_UP|IRQC_DIS;                   //内部上拉|不产生中断
        MOVS     R0,#+3
        LDR.W    R1,??DataTable10_23
        STR      R0,[R1, #+8]
//  155     gpio_init_struct.GPIO_Output=OUTPUT_H ;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable10_23
        STRB     R0,[R1, #+13]
//  156     LPLD_GPIO_Init(gpio_init_struct);
        LDR.W    R1,??DataTable10_23
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//  157     PTC7_O = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable10_25  ;; 0x43fe101c
        STR      R0,[R1, #+0]
//  158     PTC4_O = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable10_26  ;; 0x43fe1010
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
        LDR.W    R1,??DataTable10_27
        STRB     R0,[R1, #+0]
//  170     pit_init_struct.PIT_PeriodMs = 15;      //定时周期 5ms
        MOVS     R0,#+15
        LDR.W    R1,??DataTable10_27
        STR      R0,[R1, #+8]
//  171     pit_init_struct.PIT_PeriodUs = 50;      //定时周期 5ms
        MOVS     R0,#+50
        LDR.W    R1,??DataTable10_27
        STR      R0,[R1, #+4]
//  172     pit_init_struct.PIT_Isr = pit_isr;     //设置中断函数
        LDR.W    R0,??DataTable10_28
        LDR.W    R1,??DataTable10_27
        STR      R0,[R1, #+16]
//  173     LPLD_PIT_Init(pit_init_struct);        //初始化PIT
        LDR.W    R1,??DataTable10_27
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_PIT_Init
//  174     LPLD_PIT_EnableIrq(pit_init_struct);    //允许中断
        LDR.W    R1,??DataTable10_27
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
        LDR.W    R1,??DataTable10_29
        STRB     R0,[R1, #+0]
//  181   nvic.NVIC_IRQChannelEnable=TRUE ;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable10_29
        STRB     R0,[R1, #+16]
//  182   nvic.NVIC_IRQChannelGroupPriority=NVIC_PriorityGroup_1;
        MOVS     R0,#+6
        LDR.W    R1,??DataTable10_29
        STR      R0,[R1, #+4]
//  183   nvic.NVIC_IRQChannelPreemptionPriority=1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable10_29
        STR      R0,[R1, #+8]
//  184   nvic.NVIC_IRQChannelSubPriority=1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable10_29
        STR      R0,[R1, #+12]
//  185   LPLD_NVIC_Init(nvic);  
        LDR.W    R1,??DataTable10_29
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_NVIC_Init
//  186   nvic .NVIC_IRQChannel=UART0_RX_TX_IRQn;
        MOVS     R0,#+45
        LDR.W    R1,??DataTable10_29
        STRB     R0,[R1, #+0]
//  187   nvic.NVIC_IRQChannelEnable=TRUE ;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable10_29
        STRB     R0,[R1, #+16]
//  188   nvic.NVIC_IRQChannelGroupPriority=NVIC_PriorityGroup_1;
        MOVS     R0,#+6
        LDR.W    R1,??DataTable10_29
        STR      R0,[R1, #+4]
//  189   nvic.NVIC_IRQChannelPreemptionPriority=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable10_29
        STR      R0,[R1, #+8]
//  190   nvic.NVIC_IRQChannelSubPriority=1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable10_29
        STR      R0,[R1, #+12]
//  191   LPLD_NVIC_Init(nvic);
        LDR.W    R1,??DataTable10_29
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_NVIC_Init
//  192   nvic .NVIC_IRQChannel=UART3_RX_TX_IRQn;
        MOVS     R0,#+51
        LDR.W    R1,??DataTable10_29
        STRB     R0,[R1, #+0]
//  193   nvic.NVIC_IRQChannelEnable=TRUE ;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable10_29
        STRB     R0,[R1, #+16]
//  194   nvic.NVIC_IRQChannelGroupPriority=NVIC_PriorityGroup_1;
        MOVS     R0,#+6
        LDR.W    R1,??DataTable10_29
        STR      R0,[R1, #+4]
//  195   nvic.NVIC_IRQChannelPreemptionPriority=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable10_29
        STR      R0,[R1, #+8]
//  196   nvic.NVIC_IRQChannelSubPriority=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable10_29
        STR      R0,[R1, #+12]
//  197   LPLD_NVIC_Init(nvic);
        LDR.W    R1,??DataTable10_29
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
debug_write_b:
        PUSH     {R7,LR}
//  284     gate = LPLD_UART_GetChar(UART0);
        LDR.W    R0,??DataTable10_17  ;; 0x4006a000
        BL       LPLD_UART_GetChar
        LDR.W    R1,??DataTable10_30
        STRB     R0,[R1, #+0]
//  285     if(gate==0x1c)
        LDR.W    R0,??DataTable10_30
        LDRB     R0,[R0, #+0]
        CMP      R0,#+28
        BNE.W    ??debug_write_b_0
//  286     {
//  287      gate = LPLD_UART_GetChar(UART0); 
        LDR.W    R0,??DataTable10_17  ;; 0x4006a000
        BL       LPLD_UART_GetChar
        LDR.W    R1,??DataTable10_30
        STRB     R0,[R1, #+0]
//  288       if(gate==1)
        LDR.W    R0,??DataTable10_30
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??debug_write_b_1
//  289       {
//  290         gate1= LPLD_UART_GetChar(UART0); 
        LDR.W    R0,??DataTable10_17  ;; 0x4006a000
        BL       LPLD_UART_GetChar
        LDR.W    R1,??DataTable10_31
        STRB     R0,[R1, #+0]
//  291         gate2= LPLD_UART_GetChar(UART0);
        LDR.W    R0,??DataTable10_17  ;; 0x4006a000
        BL       LPLD_UART_GetChar
        LDR.W    R1,??DataTable10_32
        STRB     R0,[R1, #+0]
//  292         GATE=(float)(gate1*256+gate2)/100;
        LDR.W    R0,??DataTable10_31
        LDRB     R0,[R0, #+0]
        MOV      R1,#+256
        LDR.W    R2,??DataTable10_32
        LDRB     R2,[R2, #+0]
        MLA      R0,R1,R0,R2
        BL       __aeabi_i2f
        LDR.W    R1,??DataTable10_33  ;; 0x42c80000
        BL       __aeabi_fdiv
        LDR.W    R1,??DataTable10_34
        STR      R0,[R1, #+0]
        B.N      ??debug_write_b_2
//  293       }
//  294       else
//  295       {
//  296         gate1= LPLD_UART_GetChar(UART0); 
??debug_write_b_1:
        LDR.W    R0,??DataTable10_17  ;; 0x4006a000
        BL       LPLD_UART_GetChar
        LDR.W    R1,??DataTable10_31
        STRB     R0,[R1, #+0]
//  297         gate2= LPLD_UART_GetChar(UART0); 
        LDR.W    R0,??DataTable10_17  ;; 0x4006a000
        BL       LPLD_UART_GetChar
        LDR.W    R1,??DataTable10_32
        STRB     R0,[R1, #+0]
//  298         GATE=(float)(gate1*256+gate2)/100;
        LDR.W    R0,??DataTable10_31
        LDRB     R0,[R0, #+0]
        MOV      R1,#+256
        LDR.W    R2,??DataTable10_32
        LDRB     R2,[R2, #+0]
        MLA      R0,R1,R0,R2
        BL       __aeabi_i2f
        LDR.W    R1,??DataTable10_33  ;; 0x42c80000
        BL       __aeabi_fdiv
        LDR.W    R1,??DataTable10_34
        STR      R0,[R1, #+0]
//  299         GATE=-GATE;
        LDR.W    R0,??DataTable10_34
        LDR      R0,[R0, #+0]
        EORS     R0,R0,#0x80000000
        LDR.W    R1,??DataTable10_34
        STR      R0,[R1, #+0]
//  300       }
//  301       angle=GATE-2.34;
??debug_write_b_2:
        LDR.W    R0,??DataTable10_34
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        LDR.W    R2,??DataTable10_35  ;; 0xeb851eb8
        LDR.W    R3,??DataTable10_36  ;; 0xc002b851
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable10_37
        STR      R0,[R1, #+0]
//  302       if(KO==0)
        LDR.W    R0,??DataTable10_38
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??debug_write_b_0
//  303       {
//  304         if(angle<0.6&&angle>-0.6)
        LDR.W    R0,??DataTable10_37
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable10_39  ;; 0x3f19999a
        BL       __aeabi_cfcmple
        BCS.N    ??debug_write_b_0
        LDR.W    R0,??DataTable10_37
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable10_40  ;; 0xbf199999
        BL       __aeabi_cfrcmple
        BHI.N    ??debug_write_b_0
//  305          angle=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable10_37
        STR      R0,[R1, #+0]
//  306       }
//  307     }
//  308     if(gate==0x2c)
??debug_write_b_0:
        LDR.W    R0,??DataTable10_30
        LDRB     R0,[R0, #+0]
        CMP      R0,#+44
        BNE.W    ??debug_write_b_3
//  309     {
//  310      gate = LPLD_UART_GetChar(UART0); 
        LDR.W    R0,??DataTable10_17  ;; 0x4006a000
        BL       LPLD_UART_GetChar
        LDR.W    R1,??DataTable10_30
        STRB     R0,[R1, #+0]
//  311       if(gate==1)
        LDR.W    R0,??DataTable10_30
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??debug_write_b_4
//  312       {
//  313         gate1= LPLD_UART_GetChar(UART0); 
        LDR.W    R0,??DataTable10_17  ;; 0x4006a000
        BL       LPLD_UART_GetChar
        LDR.W    R1,??DataTable10_31
        STRB     R0,[R1, #+0]
//  314         gate2= LPLD_UART_GetChar(UART0);
        LDR.W    R0,??DataTable10_17  ;; 0x4006a000
        BL       LPLD_UART_GetChar
        LDR.W    R1,??DataTable10_32
        STRB     R0,[R1, #+0]
//  315         GATE=(float)(gate1*256+gate2)/100;
        LDR.W    R0,??DataTable10_31
        LDRB     R0,[R0, #+0]
        MOV      R1,#+256
        LDR.W    R2,??DataTable10_32
        LDRB     R2,[R2, #+0]
        MLA      R0,R1,R0,R2
        BL       __aeabi_i2f
        LDR.W    R1,??DataTable10_33  ;; 0x42c80000
        BL       __aeabi_fdiv
        LDR.W    R1,??DataTable10_34
        STR      R0,[R1, #+0]
        B.N      ??debug_write_b_5
//  316       }
//  317       else
//  318       {
//  319         gate1= LPLD_UART_GetChar(UART0); 
??debug_write_b_4:
        LDR.W    R0,??DataTable10_17  ;; 0x4006a000
        BL       LPLD_UART_GetChar
        LDR.W    R1,??DataTable10_31
        STRB     R0,[R1, #+0]
//  320         gate2= LPLD_UART_GetChar(UART0); 
        LDR.W    R0,??DataTable10_17  ;; 0x4006a000
        BL       LPLD_UART_GetChar
        LDR.W    R1,??DataTable10_32
        STRB     R0,[R1, #+0]
//  321         GATE=(float)(gate1*256+gate2)/100;
        LDR.W    R0,??DataTable10_31
        LDRB     R0,[R0, #+0]
        MOV      R1,#+256
        LDR.W    R2,??DataTable10_32
        LDRB     R2,[R2, #+0]
        MLA      R0,R1,R0,R2
        BL       __aeabi_i2f
        LDR.W    R1,??DataTable10_33  ;; 0x42c80000
        BL       __aeabi_fdiv
        LDR.W    R1,??DataTable10_34
        STR      R0,[R1, #+0]
//  322         GATE=-GATE;
        LDR.W    R0,??DataTable10_34
        LDR      R0,[R0, #+0]
        EORS     R0,R0,#0x80000000
        LDR.W    R1,??DataTable10_34
        STR      R0,[R1, #+0]
//  323       }
//  324       angle2=-(GATE-1.27);
??debug_write_b_5:
        LDR.W    R0,??DataTable10_34
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        LDR.W    R2,??DataTable10_41  ;; 0x851eb852
        LDR.W    R3,??DataTable10_42  ;; 0xbff451eb
        BL       __aeabi_dadd
        EORS     R1,R1,#0x80000000
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable10_43
        STR      R0,[R1, #+0]
//  325       if(KO==0)
        LDR.W    R0,??DataTable10_38
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??debug_write_b_3
//  326       {
//  327         if(angle2<0.6&&angle2>-0.6)
        LDR.W    R0,??DataTable10_43
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable10_39  ;; 0x3f19999a
        BL       __aeabi_cfcmple
        BCS.N    ??debug_write_b_3
        LDR.W    R0,??DataTable10_43
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable10_40  ;; 0xbf199999
        BL       __aeabi_cfrcmple
        BHI.N    ??debug_write_b_3
//  328          angle2=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable10_43
        STR      R0,[R1, #+0]
//  329       }
//  330     }
//  331     
//  332 }
??debug_write_b_3:
        POP      {R0,PC}          ;; return
//  333 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  334 void debug_write_c(void)
//  335 {
debug_write_c:
        PUSH     {R3-R5,LR}
//  336     site = LPLD_UART_GetChar(UART3);
        LDR.W    R0,??DataTable10_18  ;; 0x4006d000
        BL       LPLD_UART_GetChar
        LDR.W    R1,??DataTable10_44
        STRB     R0,[R1, #+0]
//  337     if(site==0x41)
        LDR.W    R0,??DataTable10_44
        LDRB     R0,[R0, #+0]
        CMP      R0,#+65
        BNE.N    ??debug_write_c_0
//  338     { 
//  339       site1 = LPLD_UART_GetChar(UART3); 
        LDR.W    R0,??DataTable10_18  ;; 0x4006d000
        BL       LPLD_UART_GetChar
        LDR.W    R1,??DataTable10_45
        STRB     R0,[R1, #+0]
//  340       site2 = LPLD_UART_GetChar(UART3); 
        LDR.W    R0,??DataTable10_18  ;; 0x4006d000
        BL       LPLD_UART_GetChar
        LDR.W    R1,??DataTable10_46
        STRB     R0,[R1, #+0]
//  341       site3 = LPLD_UART_GetChar(UART3); 
        LDR.W    R0,??DataTable10_18  ;; 0x4006d000
        BL       LPLD_UART_GetChar
        LDR.W    R1,??DataTable10_47
        STRB     R0,[R1, #+0]
//  342       site1 = site1-48;
        LDR.W    R0,??DataTable10_45
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+48
        LDR.W    R1,??DataTable10_45
        STRB     R0,[R1, #+0]
//  343       site2 = site2-48;
        LDR.W    R0,??DataTable10_46
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+48
        LDR.W    R1,??DataTable10_46
        STRB     R0,[R1, #+0]
//  344       site3 = site3-48;
        LDR.W    R0,??DataTable10_47
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+48
        LDR.W    R1,??DataTable10_47
        STRB     R0,[R1, #+0]
//  345       x = site1*100+ site2*10+site3;
        LDR.W    R0,??DataTable10_45
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+100
        LDR.W    R2,??DataTable10_46
        LDRB     R2,[R2, #+0]
        MOVS     R3,#+10
        MULS     R2,R3,R2
        MLA      R0,R1,R0,R2
        LDR.W    R1,??DataTable10_47
        LDRB     R1,[R1, #+0]
        ADDS     R0,R0,R1
        BL       __aeabi_i2f
        LDR.W    R1,??DataTable10_12
        STR      R0,[R1, #+0]
//  346     }
//  347     if(site==0x42)
??debug_write_c_0:
        LDR.W    R0,??DataTable10_44
        LDRB     R0,[R0, #+0]
        CMP      R0,#+66
        BNE.N    ??debug_write_c_1
//  348     {
//  349       site1 = LPLD_UART_GetChar(UART3); 
        LDR.W    R0,??DataTable10_18  ;; 0x4006d000
        BL       LPLD_UART_GetChar
        LDR.W    R1,??DataTable10_45
        STRB     R0,[R1, #+0]
//  350       site2 = LPLD_UART_GetChar(UART3);
        LDR.W    R0,??DataTable10_18  ;; 0x4006d000
        BL       LPLD_UART_GetChar
        LDR.W    R1,??DataTable10_46
        STRB     R0,[R1, #+0]
//  351       site3 = LPLD_UART_GetChar(UART3); 
        LDR.W    R0,??DataTable10_18  ;; 0x4006d000
        BL       LPLD_UART_GetChar
        LDR.W    R1,??DataTable10_47
        STRB     R0,[R1, #+0]
//  352       site1 = site1-48; 
        LDR.W    R0,??DataTable10_45
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+48
        LDR.W    R1,??DataTable10_45
        STRB     R0,[R1, #+0]
//  353       site2 = site2-48;
        LDR.W    R0,??DataTable10_46
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+48
        LDR.W    R1,??DataTable10_46
        STRB     R0,[R1, #+0]
//  354       site3 = site3-48;
        LDR.W    R0,??DataTable10_47
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+48
        LDR.W    R1,??DataTable10_47
        STRB     R0,[R1, #+0]
//  355       y = site1*100+ site2*10+site3;
        LDR.W    R0,??DataTable10_45
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+100
        LDR.W    R2,??DataTable10_46
        LDRB     R2,[R2, #+0]
        MOVS     R3,#+10
        MULS     R2,R3,R2
        MLA      R0,R1,R0,R2
        LDR.W    R1,??DataTable10_47
        LDRB     R1,[R1, #+0]
        ADDS     R0,R0,R1
        BL       __aeabi_i2f
        LDR.W    R1,??DataTable10_14
        STR      R0,[R1, #+0]
//  356      
//  357     }
//  358   if(x_sit-5<x&&x<x_sit+5&&y_sit-5<y&&y<y_sit+5)
??debug_write_c_1:
        LDR.N    R0,??DataTable10_11
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable10_48  ;; 0xc0a00000
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable10_12
        LDR      R1,[R1, #+0]
        BL       __aeabi_cfcmple
        BCS.N    ??debug_write_c_2
        LDR.N    R0,??DataTable10_11
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable10_49  ;; 0x40a00000
        BL       __aeabi_fadd
        MOVS     R1,R0
        LDR.N    R0,??DataTable10_12
        LDR      R0,[R0, #+0]
        BL       __aeabi_cfcmple
        BCS.N    ??debug_write_c_2
        LDR.N    R0,??DataTable10_13
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable10_48  ;; 0xc0a00000
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable10_14
        LDR      R1,[R1, #+0]
        BL       __aeabi_cfcmple
        BCS.N    ??debug_write_c_2
        LDR.N    R0,??DataTable10_13
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable10_49  ;; 0x40a00000
        BL       __aeabi_fadd
        MOVS     R1,R0
        LDR.N    R0,??DataTable10_14
        LDR      R0,[R0, #+0]
        BL       __aeabi_cfcmple
        BCS.N    ??debug_write_c_2
//  359   {
//  360     k0++;
        LDR.W    R0,??DataTable10_50
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable10_50
        STRB     R0,[R1, #+0]
//  361     if(k0==4)
        LDR.W    R0,??DataTable10_50
        LDRB     R0,[R0, #+0]
        CMP      R0,#+4
        BNE.N    ??debug_write_c_3
//  362     {
//  363       k0=3;
        MOVS     R0,#+3
        LDR.W    R1,??DataTable10_50
        STRB     R0,[R1, #+0]
//  364       x=x_sit;
        LDR.N    R0,??DataTable10_11
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable10_12
        STR      R0,[R1, #+0]
//  365       y=y_sit;
        LDR.N    R0,??DataTable10_13
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable10_14
        STR      R0,[R1, #+0]
        B.N      ??debug_write_c_3
//  366     }
//  367   }
//  368   else
//  369     k0=0;
??debug_write_c_2:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable10_50
        STRB     R0,[R1, #+0]
//  370     
//  371     
//  372   int i;
//  373   for(i=3;i>0;i--)
??debug_write_c_3:
        MOVS     R0,#+3
        B.N      ??debug_write_c_4
//  374   {
//  375     x_[i]=x_[i-1];
??debug_write_c_5:
        LDR.N    R1,??DataTable10_51
        ADD      R1,R1,R0, LSL #+2
        LDR      R1,[R1, #-4]
        LDR.N    R2,??DataTable10_51
        STR      R1,[R2, R0, LSL #+2]
//  376   }
        SUBS     R0,R0,#+1
??debug_write_c_4:
        CMP      R0,#+1
        BGE.N    ??debug_write_c_5
//  377   x_[0]=x;
        LDR.N    R0,??DataTable10_12
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable10_51
        STR      R0,[R1, #+0]
//  378 //  if(fabs(x-x_[0])<10)
//  379 //  {
//  380 //    x=(int16)(0.25*x_[0]+0.25*x_[1]+0.25*x_[2]+0.25*x_[3]); 
//  381 //  }
//  382 //  else
//  383   if(fabs(x-x_[0])<120)
        LDR.N    R0,??DataTable10_12
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable10_51
        LDR      R1,[R1, #+0]
        BL       __aeabi_fsub
        BL       __aeabi_f2d
        BICS     R1,R1,#0x80000000
        MOVS     R2,#+0
        LDR.N    R3,??DataTable10_52  ;; 0x405e0000
        BL       __aeabi_cdcmple
        BCS.N    ??debug_write_c_6
//  384     x=(int16)(0.5*x_[0]+0.5*x_[1]);
        LDR.N    R0,??DataTable10_51
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable10_53  ;; 0x3fe00000
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable10_51
        LDR      R0,[R0, #+4]
        BL       __aeabi_f2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable10_53  ;; 0x3fe00000
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        BL       __aeabi_d2iz
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       __aeabi_i2f
        LDR.N    R1,??DataTable10_12
        STR      R0,[R1, #+0]
        B.N      ??debug_write_c_7
//  385   else
//  386     x=x_[0];
??debug_write_c_6:
        LDR.N    R0,??DataTable10_51
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable10_12
        STR      R0,[R1, #+0]
//  387   adress2 = x-x_sit;
??debug_write_c_7:
        LDR.N    R0,??DataTable10_12
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable10_11
        LDR      R1,[R1, #+0]
        BL       __aeabi_fsub
        LDR.N    R1,??DataTable10_54
        STR      R0,[R1, #+0]
//  388   for(i=DATA_LENGTH-1;i>0;i--)
        MOVS     R0,#+3
        B.N      ??debug_write_c_8
//  389   {
//  390     adress_err2[i] = adress_err2[i-1];
??debug_write_c_9:
        LDR.N    R1,??DataTable10_55
        ADD      R1,R1,R0, LSL #+2
        LDR      R1,[R1, #-4]
        LDR.N    R2,??DataTable10_55
        STR      R1,[R2, R0, LSL #+2]
//  391   }
        SUBS     R0,R0,#+1
??debug_write_c_8:
        CMP      R0,#+1
        BGE.N    ??debug_write_c_9
//  392   adress_err2[0] = adress2;
        LDR.N    R0,??DataTable10_54
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable10_55
        STR      R0,[R1, #+0]
//  393   
//  394  //限幅 
//  395   adress_err_all2+=adress_err2[0];
        LDR.N    R0,??DataTable10_56
        LDR      R1,[R0, #+0]
        LDR.N    R0,??DataTable10_55
        LDR      R0,[R0, #+0]
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable10_56
        STR      R0,[R1, #+0]
//  396   if(adress2>20||adress2<-20)
        LDR.N    R0,??DataTable10_54
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable10_57  ;; 0x41a00001
        BL       __aeabi_cfrcmple
        BLS.N    ??debug_write_c_10
        LDR.N    R0,??DataTable10_54
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable10_58  ;; 0xc1a00000
        BL       __aeabi_cfcmple
        BCS.N    ??debug_write_c_11
//  397    adress_err_all2=KI2=0;
??debug_write_c_10:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable10_59
        STRB     R0,[R1, #+0]
        LDR.N    R0,??DataTable10_59
        LDRB     R0,[R0, #+0]
        BL       __aeabi_ui2f
        LDR.N    R1,??DataTable10_56
        STR      R0,[R1, #+0]
        B.N      ??debug_write_c_12
//  398   else
//  399     KI2=1;
??debug_write_c_11:
        MOVS     R0,#+1
        LDR.N    R1,??DataTable10_59
        STRB     R0,[R1, #+0]
//  400   if(adress_err_all2>25)
??debug_write_c_12:
        LDR.N    R0,??DataTable10_56
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable10_60  ;; 0x41c80001
        BL       __aeabi_cfrcmple
        BHI.N    ??debug_write_c_13
//  401     adress_err_all2=25;
        LDR.N    R0,??DataTable10_61  ;; 0x41c80000
        LDR.N    R1,??DataTable10_56
        STR      R0,[R1, #+0]
//  402   if(adress_err_all2<-25)
??debug_write_c_13:
        LDR.N    R0,??DataTable10_56
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable10_62  ;; 0xc1c80000
        BL       __aeabi_cfcmple
        BCS.N    ??debug_write_c_14
//  403     adress_err_all2=-25;
        LDR.N    R0,??DataTable10_62  ;; 0xc1c80000
        LDR.N    R1,??DataTable10_56
        STR      R0,[R1, #+0]
//  404  
//  405   for(i=3;i>0;i--)
??debug_write_c_14:
        MOVS     R0,#+3
        B.N      ??debug_write_c_15
//  406   {
//  407     y_[i]=y_[i-1];
??debug_write_c_16:
        LDR.N    R1,??DataTable10_63
        ADD      R1,R1,R0, LSL #+2
        LDR      R1,[R1, #-4]
        LDR.N    R2,??DataTable10_63
        STR      R1,[R2, R0, LSL #+2]
//  408   }
        SUBS     R0,R0,#+1
??debug_write_c_15:
        CMP      R0,#+1
        BGE.N    ??debug_write_c_16
//  409   y_[0]=y;
        LDR.N    R0,??DataTable10_14
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable10_63
        STR      R0,[R1, #+0]
//  410 
//  411 //  {
//  412 //    y=(int16)(0.25*y_[0]+0.25*y_[1]+0.25*y_[2]+0.25*y_[3]); 
//  413 //  }
//  414 //  else
//  415    if(fabs(y-y_[0])<100)
        LDR.N    R0,??DataTable10_14
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable10_63
        LDR      R1,[R1, #+0]
        BL       __aeabi_fsub
        BL       __aeabi_f2d
        BICS     R1,R1,#0x80000000
        MOVS     R2,#+0
        LDR.N    R3,??DataTable10_64  ;; 0x40590000
        BL       __aeabi_cdcmple
        BCS.N    ??debug_write_c_17
//  416     y=(int16)(0.5*y_[0]+0.5*y_[1]);
        LDR.N    R0,??DataTable10_63
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable10_53  ;; 0x3fe00000
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable10_63
        LDR      R0,[R0, #+4]
        BL       __aeabi_f2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable10_53  ;; 0x3fe00000
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        BL       __aeabi_d2iz
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       __aeabi_i2f
        LDR.N    R1,??DataTable10_14
        STR      R0,[R1, #+0]
        B.N      ??debug_write_c_18
//  417    else
//  418      y=y_[0];
??debug_write_c_17:
        LDR.N    R0,??DataTable10_63
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable10_14
        STR      R0,[R1, #+0]
//  419   //更新
//  420   
//  421   adress = y-y_sit;
??debug_write_c_18:
        LDR.N    R0,??DataTable10_14
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable10_13
        LDR      R1,[R1, #+0]
        BL       __aeabi_fsub
        LDR.N    R1,??DataTable10_65
        STR      R0,[R1, #+0]
//  422   for(i=DATA_LENGTH-1;i>0;i--)
        MOVS     R0,#+3
        B.N      ??debug_write_c_19
//  423   {
//  424     adress_err[i] = adress_err[i-1];
??debug_write_c_20:
        LDR.N    R1,??DataTable10_66
        ADD      R1,R1,R0, LSL #+2
        LDR      R1,[R1, #-4]
        LDR.N    R2,??DataTable10_66
        STR      R1,[R2, R0, LSL #+2]
//  425   }
        SUBS     R0,R0,#+1
??debug_write_c_19:
        CMP      R0,#+1
        BGE.N    ??debug_write_c_20
//  426   adress_err[0] = adress;
        LDR.N    R0,??DataTable10_65
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable10_66
        STR      R0,[R1, #+0]
//  427  
//  428   adress_err_all+=adress_err[0];
        LDR.N    R0,??DataTable10_67
        LDR      R1,[R0, #+0]
        LDR.N    R0,??DataTable10_66
        LDR      R0,[R0, #+0]
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable10_67
        STR      R0,[R1, #+0]
//  429   //限幅
//  430   if(adress>20||adress<-20)
        LDR.N    R0,??DataTable10_65
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable10_57  ;; 0x41a00001
        BL       __aeabi_cfrcmple
        BLS.N    ??debug_write_c_21
        LDR.N    R0,??DataTable10_65
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable10_58  ;; 0xc1a00000
        BL       __aeabi_cfcmple
        BCS.N    ??debug_write_c_22
//  431     adress_err_all=KI=0;
??debug_write_c_21:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable10_68
        STRB     R0,[R1, #+0]
        LDR.N    R0,??DataTable10_68
        LDRB     R0,[R0, #+0]
        BL       __aeabi_ui2f
        LDR.N    R1,??DataTable10_67
        STR      R0,[R1, #+0]
        B.N      ??debug_write_c_23
//  432   else
//  433     KI=1;
??debug_write_c_22:
        MOVS     R0,#+1
        LDR.N    R1,??DataTable10_68
        STRB     R0,[R1, #+0]
//  434   if(adress_err_all>25)
??debug_write_c_23:
        LDR.N    R0,??DataTable10_67
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable10_60  ;; 0x41c80001
        BL       __aeabi_cfrcmple
        BHI.N    ??debug_write_c_24
//  435     adress_err_all=25;
        LDR.N    R0,??DataTable10_61  ;; 0x41c80000
        LDR.N    R1,??DataTable10_67
        STR      R0,[R1, #+0]
//  436   if(adress_err_all<-25)
??debug_write_c_24:
        LDR.N    R0,??DataTable10_67
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable10_62  ;; 0xc1c80000
        BL       __aeabi_cfcmple
        BCS.N    ??debug_write_c_25
//  437     adress_err_all=-25;
        LDR.N    R0,??DataTable10_62  ;; 0xc1c80000
        LDR.N    R1,??DataTable10_67
        STR      R0,[R1, #+0]
//  438   // //更新
//  439  
//  440     
//  441 }
??debug_write_c_25:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10:
        DC32     0x40033333

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_1:
        DC32     P

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_2:
        DC32     I

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_3:
        DC32     D

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_4:
        DC32     0x3f4a3d71

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_5:
        DC32     KD2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_6:
        DC32     KD

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_7:
        DC32     `P2`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_8:
        DC32     I2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_9:
        DC32     D2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_10:
        DC32     0x42200000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_11:
        DC32     x_sit

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_12:
        DC32     x

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_13:
        DC32     y_sit

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_14:
        DC32     y

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_15:
        DC32     0x400ea000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_16:
        DC32     uart0_init_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_17:
        DC32     0x4006a000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_18:
        DC32     0x4006d000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_19:
        DC32     0x40038000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_20:
        DC32     ftm_init_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_21:
        DC32     0x40039000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_22:
        DC32     0x400ff080

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_23:
        DC32     gpio_init_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_24:
        DC32     0x101f2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_25:
        DC32     0x43fe101c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_26:
        DC32     0x43fe1010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_27:
        DC32     pit_init_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_28:
        DC32     pit_isr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_29:
        DC32     nvic

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_30:
        DC32     gate

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_31:
        DC32     gate1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_32:
        DC32     gate2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_33:
        DC32     0x42c80000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_34:
        DC32     GATE

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_35:
        DC32     0xeb851eb8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_36:
        DC32     0xc002b851

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_37:
        DC32     angle

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_38:
        DC32     KO

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_39:
        DC32     0x3f19999a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_40:
        DC32     0xbf199999

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_41:
        DC32     0x851eb852

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_42:
        DC32     0xbff451eb

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_43:
        DC32     angle2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_44:
        DC32     site

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_45:
        DC32     site1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_46:
        DC32     site2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_47:
        DC32     site3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_48:
        DC32     0xc0a00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_49:
        DC32     0x40a00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_50:
        DC32     k0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_51:
        DC32     x_

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_52:
        DC32     0x405e0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_53:
        DC32     0x3fe00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_54:
        DC32     adress2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_55:
        DC32     adress_err2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_56:
        DC32     adress_err_all2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_57:
        DC32     0x41a00001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_58:
        DC32     0xc1a00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_59:
        DC32     KI2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_60:
        DC32     0x41c80001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_61:
        DC32     0x41c80000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_62:
        DC32     0xc1c80000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_63:
        DC32     y_

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_64:
        DC32     0x40590000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_65:
        DC32     adress

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_66:
        DC32     adress_err

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_67:
        DC32     adress_err_all

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_68:
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
//   246 bytes in section .bss
// 2 736 bytes in section .text
// 
// 2 736 bytes of CODE memory
//   246 bytes of DATA memory
//
//Errors: none
//Warnings: none
