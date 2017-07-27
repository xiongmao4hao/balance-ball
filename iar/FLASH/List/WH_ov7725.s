///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.60.2.11341/W32 for ARM      06/Jul/2017  20:22:27
// Copyright 1999-2016 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\shize\Desktop\电设\bloodc\project\plane\my\WH_ov7725.c
//    Command line =  
//        C:\Users\shize\Desktop\电设\bloodc\project\plane\my\WH_ov7725.c -D
//        LPLD_K60 -D USE_K60DZ10 -lCN
//        C:\Users\shize\Desktop\电设\bloodc\project\plane\iar\FLASH\List -lB
//        C:\Users\shize\Desktop\电设\bloodc\project\plane\iar\FLASH\List -o
//        C:\Users\shize\Desktop\电设\bloodc\project\plane\iar\FLASH\Obj
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4 -e --fpu=None --dlib_config "C:\Program Files
//        (x86)\IAR Systems\Embedded Workbench
//        7.4\arm\INC\c\DLib_Config_Normal.h" -I
//        C:\Users\shize\Desktop\电设\bloodc\project\plane\iar\..\app\ -I
//        C:\Users\shize\Desktop\电设\bloodc\project\plane\iar\..\..\..\lib\CPU\
//        -I
//        C:\Users\shize\Desktop\电设\bloodc\project\plane\iar\..\..\..\lib\common\
//        -I
//        C:\Users\shize\Desktop\电设\bloodc\project\plane\iar\..\..\..\lib\LPLD\
//        -I
//        C:\Users\shize\Desktop\电设\bloodc\project\plane\iar\..\..\..\lib\LPLD\HW\
//        -I
//        C:\Users\shize\Desktop\电设\bloodc\project\plane\iar\..\..\..\lib\LPLD\DEV\
//        -I
//        C:\Users\shize\Desktop\电设\bloodc\project\plane\iar\..\..\..\lib\LPLD\FUNC\
//        -I
//        C:\Users\shize\Desktop\电设\bloodc\project\plane\iar\..\..\..\lib\uCOS-II\Ports\
//        -I
//        C:\Users\shize\Desktop\电设\bloodc\project\plane\iar\..\..\..\lib\uCOS-II\Source\
//        -I
//        C:\Users\shize\Desktop\电设\bloodc\project\plane\iar\..\..\..\lib\FatFs\
//        -I
//        C:\Users\shize\Desktop\电设\bloodc\project\plane\iar\..\..\..\lib\FatFs\option\
//        -I
//        C:\Users\shize\Desktop\电设\bloodc\project\plane\iar\..\..\..\lib\USB\common\
//        -I
//        C:\Users\shize\Desktop\电设\bloodc\project\plane\iar\..\..\..\lib\USB\driver\
//        -I
//        C:\Users\shize\Desktop\电设\bloodc\project\plane\iar\..\..\..\lib\USB\descriptor\
//        -I
//        C:\Users\shize\Desktop\电设\bloodc\project\plane\iar\..\..\..\lib\USB\class\
//        -I C:\Users\shize\Desktop\电设\bloodc\project\plane\iar\..\my\ -Ol -I
//        "C:\Program Files (x86)\IAR Systems\Embedded Workbench
//        7.4\arm\CMSIS\Include\" -D ARM_MATH_CM4
//    Locale       =  Chinese (Simplified)_China.936
//    List file    =  
//        C:\Users\shize\Desktop\电设\bloodc\project\plane\iar\FLASH\List\WH_ov7725.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_DMA_Init
        EXTERN LPLD_GPIO_Init
        EXTERN LPLD_PIT_DisableIrq
        EXTERN LPLD_PIT_EnableIrq
        EXTERN LPLD_SCCB_Init
        EXTERN LPLD_SCCB_ReadReg
        EXTERN LPLD_SCCB_WriteReg
        EXTERN LPLD_UART_PutChar
        EXTERN __aeabi_memcpy4
        EXTERN pit_init_struct

        PUBLIC Is_DispPhoto
        PUBLIC OV_threshold
        PUBLIC Pix_Data
        PUBLIC Pix_TURE_Data
        PUBLIC V_Cnt
        PUBLIC cfgnum
        PUBLIC dma_init_struct
        PUBLIC extract
        PUBLIC ov7725_init
        PUBLIC ov7725_reg
        PUBLIC pta_init
        PUBLIC ptb_init
        PUBLIC ptd_init
        PUBLIC pte_init
        PUBLIC send_image
        PUBLIC threshold

// C:\Users\shize\Desktop\电设\bloodc\project\plane\my\WH_ov7725.c
//    1 
//    2 
//    3 #include "WH_ov7725.h"

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// static __interwork __softfp void NVIC_EnableIRQ(IRQn_Type)
NVIC_EnableIRQ:
        MOVS     R1,#+1
        ANDS     R2,R0,#0x1F
        LSLS     R1,R1,R2
        LDR.W    R2,??DataTable10  ;; 0xe000e100
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+5
        STR      R1,[R2, R0, LSL #+2]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// static __interwork __softfp void NVIC_DisableIRQ(IRQn_Type)
NVIC_DisableIRQ:
        MOVS     R1,#+1
        ANDS     R2,R0,#0x1F
        LSLS     R1,R1,R2
        LDR.W    R2,??DataTable10_1  ;; 0xe000e180
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+5
        STR      R1,[R2, R0, LSL #+2]
        BX       LR               ;; return
//    4 
//    5 
//    6 
//    7 extern PIT_InitTypeDef   pit_init_struct;
//    8 extern char start,send_;
//    9 extern UART_InitTypeDef  uart0_init_struct;
//   10 
//   11 
//   12 static void porta_isr(void);
//   13 static void portb_isr(void);
//   14 static void gpio_init(void);
//   15 static void dma_init(void);
//   16 static void img_extract(uint8 *dst, uint8 *src, uint32 srclen);
//   17 static void delay();
//   18 static uint8 ov7725_reg_Init();
//   19 static void delay_ms(unsigned int ms);
//   20 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   21 GPIO_InitTypeDef pta_init;
pta_init:
        DS8 20

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   22 GPIO_InitTypeDef ptb_init;
ptb_init:
        DS8 20

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   23 GPIO_InitTypeDef pte_init;
pte_init:
        DS8 20

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   24 GPIO_InitTypeDef ptd_init;
ptd_init:
        DS8 20

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   25 DMA_InitTypeDef dma_init_struct;
dma_init_struct:
        DS8 44
//   26 
//   27 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   28 uint8 Pix_Data[PHOTO_SIZE];       //二值化数据  
Pix_Data:
        DS8 420

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   29 uint8 Pix_TURE_Data[PHOTO_TURE_SIZE];//解压后数据
Pix_TURE_Data:
        DS8 3360

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   30 uint32 V_Cnt;                     //行采集计数
V_Cnt:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   31 uint8 Is_DispPhoto;               //图像发送标志
Is_DispPhoto:
        DS8 1
//   32 
//   33 
//   34 /*
//   35  * 延时ms,         ms=1时，正负脉宽1.12ms，周期2.24ms
//   36  */
//   37 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   38 void delay_ms(unsigned int ms)
//   39 {
//   40   uint16 i,j;
//   41   for(i=0;i<ms;i++)
delay_ms:
        MOVS     R1,#+0
        B.N      ??delay_ms_0
//   42   for(j=0;j<ms;j++);
??delay_ms_1:
        ADDS     R2,R2,#+1
??delay_ms_2:
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        CMP      R2,R0
        BCC.N    ??delay_ms_1
        ADDS     R1,R1,#+1
??delay_ms_0:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,R0
        BCS.N    ??delay_ms_3
        MOVS     R2,#+0
        B.N      ??delay_ms_2
//   43 }
??delay_ms_3:
        BX       LR               ;; return
//   44 
//   45 
//   46 
//   47 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   48 void ov7725_init (void)
//   49 {
ov7725_init:
        PUSH     {R7,LR}
//   50  
//   51   
//   52   ov7725_reg_Init();
        BL       ov7725_reg_Init
//   53   while(ov7725_reg_Init() == 0);
??ov7725_init_0:
        BL       ov7725_reg_Init
        CMP      R0,#+0
        BEQ.N    ??ov7725_init_0
//   54   delay();
        BL       delay
//   55   
//   56   V_Cnt=0;          //行计数
        MOVS     R0,#+0
        LDR.W    R1,??DataTable10_2
        STR      R0,[R1, #+0]
//   57   Is_DispPhoto=0;   //显示图像标志
        MOVS     R0,#+0
        LDR.W    R1,??DataTable10_3
        STRB     R0,[R1, #+0]
//   58   
//   59   gpio_init();
        BL       gpio_init
//   60   dma_init();
        BL       dma_init
//   61   
//   62   //使能PORTA中断
//   63   LPLD_GPIO_ClearIntFlag(PORTA);
        MOVS     R0,#-1
        LDR.W    R1,??DataTable10_4  ;; 0x400490a0
        STR      R0,[R1, #+0]
//   64   enable_irq(PORTA_IRQn);
        MOVS     R0,#+87
        BL       NVIC_EnableIRQ
//   65 
//   66   
//   67 
//   68 }
        POP      {R0,PC}          ;; return
//   69 
//   70 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   71 void extract()
//   72 {
extract:
        PUSH     {R7,LR}
//   73   if(Is_DispPhoto==1)
        LDR.W    R0,??DataTable10_3
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??extract_0
//   74   {
//   75     DisableInterrupts;
        CPSID    I
//   76     img_extract(Pix_TURE_Data,Pix_Data,PHOTO_SIZE);
        MOV      R2,#+420
        LDR.W    R1,??DataTable10_5
        LDR.W    R0,??DataTable10_6
        BL       img_extract
//   77     EnableInterrupts;   
        CPSIE    I
//   78   }
//   79 }
??extract_0:
        POP      {R0,PC}          ;; return
//   80 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   81 void send_image()    //发送图像
//   82 {
send_image:
        PUSH     {R7,LR}
//   83   
//   84     DisableInterrupts;
        CPSID    I
//   85     static int i=0;
//   86      
//   87     LPLD_UART_PutChar(UART4,0x1);  //上位机通信协议
        MOVS     R1,#+1
        LDR.W    R0,??DataTable10_7  ;; 0x400ea000
        BL       LPLD_UART_PutChar
//   88     LPLD_UART_PutChar(UART4,0xfe);
        MVNS     R1,#+1
        LDR.W    R0,??DataTable10_7  ;; 0x400ea000
        BL       LPLD_UART_PutChar
//   89         
//   90     for(i=0;i<=V*H-1;i++)   
        MOVS     R0,#+0
        LDR.N    R1,??DataTable10_8
        STR      R0,[R1, #+0]
        B.N      ??send_image_0
//   91     {
//   92 
//   93       LPLD_UART_PutChar(UART4,Pix_Data[i]);
??send_image_1:
        LDR.N    R0,??DataTable10_5
        LDR.N    R1,??DataTable10_8
        LDR      R1,[R1, #+0]
        LDRSB    R0,[R0, R1]
        MOVS     R1,R0
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable10_7  ;; 0x400ea000
        BL       LPLD_UART_PutChar
//   94                  
//   95     }
        LDR.N    R0,??DataTable10_8
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable10_8
        STR      R0,[R1, #+0]
??send_image_0:
        LDR.N    R0,??DataTable10_8
        LDR      R0,[R0, #+0]
        CMP      R0,#+420
        BLT.N    ??send_image_1
//   96   
//   97     
//   98     LPLD_UART_PutChar(UART4,0xfe);
        MVNS     R1,#+1
        LDR.N    R0,??DataTable10_7  ;; 0x400ea000
        BL       LPLD_UART_PutChar
//   99     LPLD_UART_PutChar(UART4,0x1);
        MOVS     R1,#+1
        LDR.N    R0,??DataTable10_7  ;; 0x400ea000
        BL       LPLD_UART_PutChar
//  100     
//  101 
//  102 
//  103     EnableInterrupts;
        CPSIE    I
//  104 }
        POP      {R0,PC}          ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
`send_image::i`:
        DS8 4
//  105 
//  106 
//  107 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  108 void gpio_init()
//  109 {
gpio_init:
        PUSH     {R7,LR}
//  110   //OV数据口初始化：PTD8~PTD15
//  111   ptd_init.GPIO_PTx = PTD;
        LDR.N    R0,??DataTable10_9  ;; 0x400ff0c0
        LDR.N    R1,??DataTable10_10
        STR      R0,[R1, #+0]
//  112   ptd_init.GPIO_Dir = DIR_INPUT;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable10_10
        STRB     R0,[R1, #+12]
//  113   ptd_init.GPIO_Pins = GPIO_Pin0_7;
        MOVS     R0,#+255
        LDR.N    R1,??DataTable10_10
        STR      R0,[R1, #+4]
//  114   ptd_init.GPIO_PinControl = IRQC_DIS | INPUT_PULL_DIS;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable10_10
        STR      R0,[R1, #+8]
//  115   LPLD_GPIO_Init(ptd_init);
        LDR.N    R1,??DataTable10_10
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//  116   
//  117   //OV行信号接口初始化：PTB3-H
//  118   ptb_init.GPIO_PTx = PTB;
        LDR.N    R0,??DataTable10_11  ;; 0x400ff040
        LDR.N    R1,??DataTable10_12
        STR      R0,[R1, #+0]
//  119   ptb_init.GPIO_Dir = DIR_INPUT;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable10_12
        STRB     R0,[R1, #+12]
//  120   ptb_init.GPIO_Pins = GPIO_Pin3;
        MOVS     R0,#+8
        LDR.N    R1,??DataTable10_12
        STR      R0,[R1, #+4]
//  121   ptb_init.GPIO_PinControl = IRQC_RI|INPUT_PULL_DOWN|INPUT_PF_EN;
        LDR.N    R0,??DataTable10_13  ;; 0x90012
        LDR.N    R1,??DataTable10_12
        STR      R0,[R1, #+8]
//  122   ptb_init.GPIO_Isr = portb_isr;
        ADR.W    R0,portb_isr
        LDR.N    R1,??DataTable10_12
        STR      R0,[R1, #+16]
//  123   LPLD_GPIO_Init(ptb_init); 
        LDR.N    R1,??DataTable10_12
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//  124   
//  125   //OV场信号接口初始化：PTA5-V
//  126   pta_init.GPIO_PTx = PTA;
        LDR.N    R0,??DataTable10_14  ;; 0x400ff000
        LDR.N    R1,??DataTable10_15
        STR      R0,[R1, #+0]
//  127   pta_init.GPIO_Dir = DIR_INPUT;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable10_15
        STRB     R0,[R1, #+12]
//  128   pta_init.GPIO_Pins = GPIO_Pin5;
        MOVS     R0,#+32
        LDR.N    R1,??DataTable10_15
        STR      R0,[R1, #+4]
//  129   pta_init.GPIO_PinControl = IRQC_RI|INPUT_PULL_DOWN|INPUT_PF_EN;
        LDR.N    R0,??DataTable10_13  ;; 0x90012
        LDR.N    R1,??DataTable10_15
        STR      R0,[R1, #+8]
//  130   pta_init.GPIO_Isr = porta_isr;
        ADR.W    R0,porta_isr
        LDR.N    R1,??DataTable10_15
        STR      R0,[R1, #+16]
//  131   LPLD_GPIO_Init(pta_init); 
        LDR.N    R1,??DataTable10_15
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//  132   
//  133   //OV PCLK信号接口初始化：PTE6-PCLK
//  134   pte_init.GPIO_PTx = PTE;
        LDR.N    R0,??DataTable10_16  ;; 0x400ff100
        LDR.N    R1,??DataTable10_17
        STR      R0,[R1, #+0]
//  135   pte_init.GPIO_Pins = GPIO_Pin6;
        MOVS     R0,#+64
        LDR.N    R1,??DataTable10_17
        STR      R0,[R1, #+4]
//  136   pte_init.GPIO_Dir = DIR_INPUT;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable10_17
        STRB     R0,[R1, #+12]
//  137   pte_init.GPIO_PinControl = IRQC_DMAFA| INPUT_PULL_DIS;
        MOVS     R0,#+131072
        LDR.N    R1,??DataTable10_17
        STR      R0,[R1, #+8]
//  138   LPLD_GPIO_Init(pte_init); 
        LDR.N    R1,??DataTable10_17
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//  139   
//  140 }
        POP      {R0,PC}          ;; return
//  141 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  142 void dma_init()
//  143 {
dma_init:
        PUSH     {LR}
        SUB      SP,SP,#+28
//  144   //DMA参数配置
//  145   dma_init_struct.DMA_CHx = DMA_CH0;    //CH0通道
        MOVS     R0,#+0
        LDR.N    R1,??DataTable10_18
        STRB     R0,[R1, #+0]
//  146   dma_init_struct.DMA_Req = PORTE_DMAREQ;       //PORTE为请求源
        MOVS     R0,#+53
        LDR.N    R1,??DataTable10_18
        STRB     R0,[R1, #+1]
//  147   dma_init_struct.DMA_MajorLoopCnt = H; //主循环计数值：行采集点数，宽度
        MOVS     R0,#+10
        LDR.N    R1,??DataTable10_18
        STRH     R0,[R1, #+4]
//  148   dma_init_struct.DMA_MinorByteCnt = 1; //次循环字节计数：每次读入1字节
        MOVS     R0,#+1
        LDR.N    R1,??DataTable10_18
        STR      R0,[R1, #+8]
//  149   dma_init_struct.DMA_SourceAddr = (uint32)&PTD->PDIR;        //源地址：PTD0~7
        LDR.N    R0,??DataTable10_19  ;; 0x400ff0d0
        LDR.N    R1,??DataTable10_18
        STR      R0,[R1, #+12]
//  150   dma_init_struct.DMA_DestAddr = (uint32)Pix_Data;      //目的地址：存放图像的数组
        LDR.N    R0,??DataTable10_5
        LDR.N    R1,??DataTable10_18
        STR      R0,[R1, #+24]
//  151   dma_init_struct.DMA_DestAddrOffset = 1;       //目的地址偏移：每次读入增加1
        MOVS     R0,#+1
        LDR.N    R1,??DataTable10_18
        STRH     R0,[R1, #+30]
//  152   dma_init_struct.DMA_AutoDisableReq = TRUE;    //自动禁用请求
        MOVS     R0,#+1
        LDR.N    R1,??DataTable10_18
        STRB     R0,[R1, #+36]
//  153   //初始化DMA
//  154   LPLD_DMA_Init(dma_init_struct);
        LDR.N    R1,??DataTable10_18
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+44
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_DMA_Init
//  155 }
        ADD      SP,SP,#+28
        POP      {PC}             ;; return
//  156 
//  157 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  158 void porta_isr()
//  159 {
porta_isr:
        PUSH     {R7,LR}
//  160   DisableInterrupts;
        CPSID    I
//  161   if(LPLD_GPIO_IsPinxExt(PORTA, GPIO_Pin5))
        LDR.N    R0,??DataTable10_4  ;; 0x400490a0
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??porta_isr_0
//  162   {
//  163     //检测到场开始信号，加载目的地址
//  164     LPLD_DMA_LoadDstAddr(DMA_CH0, Pix_Data);
        LDR.N    R0,??DataTable10_5
        LDR.N    R1,??DataTable10_20  ;; 0x40009010
        STR      R0,[R1, #+0]
//  165     //清行中断标志，防止进入无效行中断
//  166     LPLD_GPIO_ClearIntFlag(PORTB);
        MOVS     R0,#-1
        LDR.N    R1,??DataTable10_21  ;; 0x4004a0a0
        STR      R0,[R1, #+0]
//  167     enable_irq(PORTB_IRQn);
        MOVS     R0,#+88
        BL       NVIC_EnableIRQ
//  168     LPLD_PIT_DisableIrq(pit_init_struct);
        LDR.N    R1,??DataTable10_22
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_PIT_DisableIrq
//  169 //    LPLD_UART_DisableIrq(uart0_init_struct) ;
//  170   }
//  171   
//  172   EnableInterrupts;
??porta_isr_0:
        CPSIE    I
//  173   
//  174 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  175 void portb_isr()
//  176 {
portb_isr:
        PUSH     {R7,LR}
//  177   DisableInterrupts;
        CPSID    I
//  178   if(LPLD_GPIO_IsPinxExt(PORTB, GPIO_Pin3))
        LDR.N    R0,??DataTable10_21  ;; 0x4004a0a0
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+28
        BPL.N    ??portb_isr_0
//  179   {
//  180     //检测到行开始信号，使能DMA请求
//  181     if(V_Cnt<58)
        LDR.N    R0,??DataTable10_2
        LDR      R0,[R0, #+0]
        CMP      R0,#+58
        BCS.N    ??portb_isr_1
//  182     {
//  183        
//  184       V_Cnt++;
        LDR.N    R0,??DataTable10_2
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable10_2
        STR      R0,[R1, #+0]
//  185       if(V_Cnt>16)          // 比预定小1的值
        LDR.N    R0,??DataTable10_2
        LDR      R0,[R0, #+0]
        CMP      R0,#+17
        BCC.N    ??portb_isr_0
//  186       LPLD_DMA_EnableReq(DMA_CH0);  
        LDR.N    R0,??DataTable10_23  ;; 0x4000800c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable10_23  ;; 0x4000800c
        STR      R0,[R1, #+0]
        B.N      ??portb_isr_0
//  187       
//  188     }
//  189     //行数采集已满，关闭中断
//  190     else
//  191     {
//  192       //关GPIO中断 
//  193       disable_irq(PORTA_IRQn);
??portb_isr_1:
        MOVS     R0,#+87
        BL       NVIC_DisableIRQ
//  194       disable_irq(PORTB_IRQn);
        MOVS     R0,#+88
        BL       NVIC_DisableIRQ
//  195       Is_DispPhoto = 1;//可以显示图像
        MOVS     R0,#+1
        LDR.N    R1,??DataTable10_3
        STRB     R0,[R1, #+0]
//  196       V_Cnt=0; 
        MOVS     R0,#+0
        LDR.N    R1,??DataTable10_2
        STR      R0,[R1, #+0]
//  197 //      if(send_==1) 
//  198 //      send_image();
//  199       extract();
        BL       extract
//  200       //使能PIT
//  201       LPLD_PIT_EnableIrq(pit_init_struct);
        LDR.N    R1,??DataTable10_22
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_PIT_EnableIrq
//  202     }
//  203   }
//  204   EnableInterrupts;
??portb_isr_0:
        CPSIE    I
//  205 }
        POP      {R0,PC}          ;; return
//  206 
//  207 
//  208 #define OV_THRESHOLD OV_threshold

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//  209 uint8 OV_threshold = 0;
OV_threshold:
        DS8 1
//  210 /*OV7725初始化配置表*/

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//  211 Register_Info ov7725_reg[] =
ov7725_reg:
        DC8 13, 193, 17, 2, 9, 3, 12, 208, 18, 64, 23, 63, 24, 80, 25, 3, 26
        DC8 120, 50, 0, 160, 10, 99, 224, 172, 255, 101, 12, 102, 0, 103, 0, 41
        DC8 20, 44, 30, 42, 0, 126, 12, 127, 22, 128, 42, 129, 78, 130, 97, 131
        DC8 111, 132, 123, 133, 134, 134, 142, 135, 151, 136, 164, 137, 175
        DC8 138, 197, 139, 215, 140, 232, 141, 32, 74, 0, 73, 19, 71, 8, 75, 20
        DC8 76, 23, 70, 5, 34, 153, 35, 3, 166, 4, 155, 0, 156, 41, 171, 6, 158
        DC8 17, 159, 2, 0, 0
//  212 {
//  213   //寄存器，寄存器值次
//  214   {OV7725_COM4         , 0xC1},    //
//  215   {OV7725_CLKRC        , 0x02},    //50帧
//  216   {OV7725_COM2         , 0x03},
//  217   {OV7725_COM3         , 0xD0},
//  218   {OV7725_COM7         , 0x40},
//  219   {OV7725_HSTART       , 0x3F},
//  220   {OV7725_HSIZE        , 0x50},
//  221   {OV7725_VSTRT        , 0x03},
//  222   {OV7725_VSIZE        , 0x78},
//  223   {OV7725_HREF         , 0x00},
//  224   {OV7725_SCAL0        , 0x0A},
//  225   {OV7725_AWB_Ctrl0    , 0xE0},
//  226   {OV7725_DSPAuto      , 0xff},
//  227   {OV7725_DSP_Ctrl2    , 0x0C},
//  228   {OV7725_DSP_Ctrl3    , 0x00},
//  229   {OV7725_DSP_Ctrl4    , 0x00},
//  230   
//  231 #if (CAMERA_W == 80)
//  232 {OV7725_HOutSize     , 0x14},
//  233 #elif (CAMERA_W == 160)
//  234 {OV7725_HOutSize     , 0x28},
//  235 #elif (CAMERA_W == 240)
//  236 {OV7725_HOutSize     , 0x3c},
//  237 #elif (CAMERA_W == 320)
//  238 {OV7725_HOutSize     , 0x50},
//  239 #else
//  240 
//  241 #endif
//  242 
//  243 #if (CAMERA_H == 60 )
//  244 {OV7725_VOutSize     , 0x1E},
//  245 #elif (CAMERA_H == 120 )
//  246 {OV7725_VOutSize     , 0x3c},
//  247 #elif (CAMERA_H == 180 )
//  248 {OV7725_VOutSize     , 0x5a},
//  249 #elif (CAMERA_H == 240 )
//  250 {OV7725_VOutSize     , 0x78},
//  251 #else
//  252 
//  253 #endif
//  254 
//  255 {OV7725_EXHCH        , 0x00},
//  256 {OV7725_GAM1         , 0x0c},
//  257 {OV7725_GAM2         , 0x16},
//  258 {OV7725_GAM3         , 0x2a},
//  259 {OV7725_GAM4         , 0x4e},
//  260 {OV7725_GAM5         , 0x61},
//  261 {OV7725_GAM6         , 0x6f},
//  262 {OV7725_GAM7         , 0x7b},
//  263 {OV7725_GAM8         , 0x86},
//  264 {OV7725_GAM9         , 0x8e},
//  265 {OV7725_GAM10        , 0x97},
//  266 {OV7725_GAM11        , 0xa4},
//  267 {OV7725_GAM12        , 0xaf},
//  268 {OV7725_GAM13        , 0xc5},
//  269 {OV7725_GAM14        , 0xd7},
//  270 {OV7725_GAM15        , 0xe8},
//  271 {OV7725_SLOP         , 0x20},
//  272 {OV7725_LC_RADI      , 0x00},
//  273 {OV7725_LC_COEF      , 0x13},
//  274 {OV7725_LC_XC        , 0x08},
//  275 {OV7725_LC_COEFB     , 0x14},
//  276 {OV7725_LC_COEFR     , 0x17},
//  277 {OV7725_LC_CTR       , 0x05},
//  278 {OV7725_BDBase       , 0x99},
//  279 {OV7725_BDMStep      , 0x03},
//  280 {OV7725_SDE          , 0x04},
//  281 {OV7725_BRIGHT       , 0x00},
//  282 {OV7725_CNST         , 0x29},//0x38
//  283 {OV7725_SIGN         , 0x06},
//  284 {OV7725_UVADJ0       , 0x11},
//  285 {OV7725_UVADJ1       , 0x02},
//  286 
//  287 };
//  288 
//  289 //uint8 cfgnum = sizeof(ov7725_reg);

        SECTION `.data`:DATA:REORDER:NOROOT(0)
        DATA
//  290 uint8 cfgnum = sizeof(ov7725_reg) / sizeof(ov7725_reg[0]); /*结构体数组成员数目*/
cfgnum:
        DC8 49
//  291 
//  292 
//  293 /************************************************
//  294 * 函数名：ov7725_reg_Init
//  295 * 描述  ：Sensor 寄存器 初始化
//  296 * 输入  ：无
//  297 * 输出  ：返回1成功，返回0失败
//  298 * 注意  ：无
//  299 ************************************************/

        SECTION `.data`:DATA:REORDER:NOROOT(0)
        DATA
//  300 uint8 threshold = 56;
threshold:
        DC8 56

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  301 uint8 ov7725_reg_Init(void)
//  302 {
ov7725_reg_Init:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
//  303   uint16 i = 0;
        MOVS     R4,#+0
//  304   uint8 Sensor_IDCode = 0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
//  305   LPLD_SCCB_Init();
        BL       LPLD_SCCB_Init
//  306   
//  307   LPLD_SCCB_WriteReg(OV7725_CNST, OV_threshold);
        LDR.N    R0,??DataTable10_24
        LDRB     R1,[R0, #+0]
        MOVS     R0,#+156
        BL       LPLD_SCCB_WriteReg
//  308     
//  309   delay_ms(50);
        MOVS     R0,#+50
        BL       delay_ms
//  310   while( 0 == LPLD_SCCB_WriteReg ( OV7725_COM7, 0x80 ) ) /*复位sensor */
??ov7725_reg_Init_0:
        MOVS     R1,#+128
        MOVS     R0,#+18
        BL       LPLD_SCCB_WriteReg
        CMP      R0,#+0
        BNE.N    ??ov7725_reg_Init_1
//  311   {
//  312     i++;
        ADDS     R4,R4,#+1
//  313     if(i == 20)
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+20
        BNE.N    ??ov7725_reg_Init_0
//  314     {
//  315       return 0 ;
        MOVS     R0,#+0
        B.N      ??ov7725_reg_Init_2
//  316     }
//  317   }
//  318   delay_ms(50);
??ov7725_reg_Init_1:
        MOVS     R0,#+50
        BL       delay_ms
//  319   
//  320   if( 0 == LPLD_SCCB_ReadReg( OV7725_VER, &Sensor_IDCode, 1 ) )	 /* 读取sensor ID号*/
        MOVS     R2,#+1
        MOV      R1,SP
        MOVS     R0,#+11
        BL       LPLD_SCCB_ReadReg
        CMP      R0,#+0
        BNE.N    ??ov7725_reg_Init_3
//  321   {
//  322     return 0;
        MOVS     R0,#+0
        B.N      ??ov7725_reg_Init_2
//  323   }
//  324   
//  325   if(Sensor_IDCode == OV7725_ID)          //若ID正确，则配置所有寄存器
??ov7725_reg_Init_3:
        LDRB     R0,[SP, #+0]
        CMP      R0,#+33
        BNE.N    ??ov7725_reg_Init_4
//  326   {
//  327     LPLD_SCCB_WriteReg(OV7725_CNST, threshold);
        LDR.N    R0,??DataTable10_25
        LDRB     R1,[R0, #+0]
        MOVS     R0,#+156
        BL       LPLD_SCCB_WriteReg
//  328     for( i = 0 ; i < cfgnum ; i++ )
        MOVS     R4,#+0
        B.N      ??ov7725_reg_Init_5
??ov7725_reg_Init_6:
        ADDS     R4,R4,#+1
??ov7725_reg_Init_5:
        MOVS     R0,R4
        LDR.N    R1,??DataTable10_26
        LDRB     R1,[R1, #+0]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R0,R1
        BCS.N    ??ov7725_reg_Init_7
//  329     {
//  330       if( 0 == LPLD_SCCB_WriteReg(ov7725_reg[i].Address, ov7725_reg[i].Value) )
        LDR.N    R0,??DataTable10_27
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        ADD      R0,R0,R4, LSL #+1
        LDRB     R1,[R0, #+1]
        LDR.N    R0,??DataTable10_27
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        LDRB     R0,[R0, R4, LSL #+1]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       LPLD_SCCB_WriteReg
        CMP      R0,#+0
        BNE.N    ??ov7725_reg_Init_6
//  331       {
//  332         return 0;
        MOVS     R0,#+0
        B.N      ??ov7725_reg_Init_2
//  333       }
//  334     }
//  335   }
//  336   else
//  337   {
//  338     return 0;
//  339   }
//  340    
//  341   return 1;
??ov7725_reg_Init_7:
        MOVS     R0,#+1
        B.N      ??ov7725_reg_Init_2
??ov7725_reg_Init_4:
        MOVS     R0,#+0
??ov7725_reg_Init_2:
        POP      {R1,R2,R4,PC}    ;; return
//  342 }
//  343 
//  344 
//  345 //srclen 是二值化图像的占用空间大小

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  346 void img_extract(uint8 *dst, uint8 *src, uint32 srclen)
//  347 {
img_extract:
        PUSH     {R3-R5}
//  348     uint8 colour[2] = {255, 0}; //0 和 1 分别对应的颜色
        LDR.N    R3,??DataTable10_28
        LDRH     R3,[R3, #+0]
        STRH     R3,[SP, #+0]
        B.N      ??img_extract_0
//  349     //注：山外的摄像头 0 表示 白色，1表示 黑色
//  350     uint8 tmpsrc;
//  351     while(srclen --)
//  352     {
//  353         tmpsrc = *src++;
??img_extract_1:
        LDRB     R3,[R1, #+0]
        ADDS     R1,R1,#+1
//  354         *dst++ = colour[ (tmpsrc >> 7 ) & 0x01 ];
        MOV      R4,SP
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        ASRS     R5,R3,#+7
        LDRB     R4,[R4, R5]
        STRB     R4,[R0, #+0]
        ADDS     R0,R0,#+1
//  355         *dst++ = colour[ (tmpsrc >> 6 ) & 0x01 ];
        MOV      R4,SP
        UBFX     R5,R3,#+6,#+1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDRB     R4,[R4, R5]
        STRB     R4,[R0, #+0]
        ADDS     R0,R0,#+1
//  356         *dst++ = colour[ (tmpsrc >> 5 ) & 0x01 ];
        MOV      R4,SP
        UBFX     R5,R3,#+5,#+1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDRB     R4,[R4, R5]
        STRB     R4,[R0, #+0]
        ADDS     R0,R0,#+1
//  357         *dst++ = colour[ (tmpsrc >> 4 ) & 0x01 ];
        MOV      R4,SP
        UBFX     R5,R3,#+4,#+1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDRB     R4,[R4, R5]
        STRB     R4,[R0, #+0]
        ADDS     R0,R0,#+1
//  358         *dst++ = colour[ (tmpsrc >> 3 ) & 0x01 ];
        MOV      R4,SP
        UBFX     R5,R3,#+3,#+1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDRB     R4,[R4, R5]
        STRB     R4,[R0, #+0]
        ADDS     R0,R0,#+1
//  359         *dst++ = colour[ (tmpsrc >> 2 ) & 0x01 ];
        MOV      R4,SP
        UBFX     R5,R3,#+2,#+1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDRB     R4,[R4, R5]
        STRB     R4,[R0, #+0]
        ADDS     R0,R0,#+1
//  360         *dst++ = colour[ (tmpsrc >> 1 ) & 0x01 ];
        MOV      R4,SP
        UBFX     R5,R3,#+1,#+1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDRB     R4,[R4, R5]
        STRB     R4,[R0, #+0]
        ADDS     R0,R0,#+1
//  361         *dst++ = colour[ (tmpsrc >> 0 ) & 0x01 ];
        MOV      R4,SP
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        ANDS     R3,R3,#0x1
        LDRB     R3,[R4, R3]
        STRB     R3,[R0, #+0]
        ADDS     R0,R0,#+1
//  362     }
??img_extract_0:
        MOVS     R3,R2
        SUBS     R2,R3,#+1
        CMP      R3,#+0
        BNE.N    ??img_extract_1
//  363 }
        POP      {R0,R4,R5}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10:
        DC32     0xe000e100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_1:
        DC32     0xe000e180

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_2:
        DC32     V_Cnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_3:
        DC32     Is_DispPhoto

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_4:
        DC32     0x400490a0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_5:
        DC32     Pix_Data

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_6:
        DC32     Pix_TURE_Data

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_7:
        DC32     0x400ea000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_8:
        DC32     `send_image::i`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_9:
        DC32     0x400ff0c0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_10:
        DC32     ptd_init

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_11:
        DC32     0x400ff040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_12:
        DC32     ptb_init

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_13:
        DC32     0x90012

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_14:
        DC32     0x400ff000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_15:
        DC32     pta_init

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_16:
        DC32     0x400ff100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_17:
        DC32     pte_init

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_18:
        DC32     dma_init_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_19:
        DC32     0x400ff0d0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_20:
        DC32     0x40009010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_21:
        DC32     0x4004a0a0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_22:
        DC32     pit_init_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_23:
        DC32     0x4000800c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_24:
        DC32     OV_threshold

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_25:
        DC32     threshold

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_26:
        DC32     cfgnum

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_27:
        DC32     ov7725_reg

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_28:
        DC32     ?_0
//  364 
//  365 /*
//  366  * 延时一段时间
//  367  */

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  368 void delay()
//  369 {
//  370   uint16 i, n;
//  371   for(i=0;i<30000;i++)
delay:
        MOVS     R0,#+0
        B.N      ??delay_0
//  372   {
//  373     for(n=0;n<200;n++)
//  374     {
//  375       asm("nop");
??delay_1:
        nop
//  376     }
        ADDS     R1,R1,#+1
??delay_2:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+200
        BLT.N    ??delay_1
        ADDS     R0,R0,#+1
??delay_0:
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        MOVW     R1,#+30000
        CMP      R0,R1
        BGE.N    ??delay_3
        MOVS     R1,#+0
        B.N      ??delay_2
//  377   }
//  378 }
??delay_3:
        BX       LR               ;; return

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(1)
        DATA
?_0:
        DC8 255, 0

        END
// 
// 3 914 bytes in section .bss
//   102 bytes in section .data
//     2 bytes in section .rodata
// 1 124 bytes in section .text
// 
// 1 124 bytes of CODE  memory
//     2 bytes of CONST memory
// 4 016 bytes of DATA  memory
//
//Errors: none
//Warnings: none
