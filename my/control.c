#include "control.h"
#include "math.h"



#define DATA_LENGTH 4

static void renew();



//上位机设定值
extern float P,D,P1,I1,I,KD,KD2;
extern float P2,D2,P12,I12,I2;
extern float angle;
extern float angle2;



char KO,KI;
//float  KI1;
char KO2,KI2;
//float  KI12;
int8 j,j2;
float x;
float y;
float x_sit;
float y_sit;
float xf=2678,yf=2990;




float adress;
float adress_err[DATA_LENGTH];
float adress_err_all;
float angle_err;
float angle_err_all;
float adress2;
float adress_err2[DATA_LENGTH];
float adress_err_all2;
float angle_err2;
float angle_err_all2;
float F;//x输出
float F2;//y输出
float A; 
float A2;








void control()
{ 
      renew();
      if(0<F2<10&&angle2>0)
      xf=2360-F2-angle2*0;
      else 
        if(0>F2>-10&&angle2<0)
              xf=2360-F2-angle2*0;
        else
              xf=2360-F2;
      if(xf>2660)
        xf=2660;
      if(xf<2060)
        xf=2060;
      if(10>F>0&&angle<0)
     yf=2480+F-angle*0;
      else 
        if(0>F>-10&&angle>0)
              yf=2480+F-angle*0; 
        else
              yf=2480+F;
      if(yf>2780)
        yf=2780;
      if(yf<2160)
        yf=2160;
      LPLD_FTM_PWM_ChangeDuty(FTM0,FTM_Ch1,(uint16)(xf));
      LPLD_FTM_PWM_ChangeDuty(FTM1,FTM_Ch1,(uint16)(yf));

}





void renew()
{

  //计算
  if(y>35&&y<45)
  {
    A = (float)(P * adress_err[0] 
             + KD*D * (adress_err[0] -adress_err[1])
             +KI*I*adress_err_all);//
  }
  else
    A=(float)(P * adress_err[0] 
             + D * (adress_err[0] -adress_err[1])
             +KI*I*adress_err_all);//
  F=A*4.222;
  


  //计算
  if(x>35&&x<45)
  {
    A2 = (float)(P2 * adress_err2[0] 
               + KD2*D2 * (adress_err2[0] -adress_err2[1])
               +KI2*I2*adress_err_all2);//
  }
  else
     A2 = (float)(P2 * adress_err2[0] 
               + D2 * (adress_err2[0] -adress_err2[1])
               +KI2*I2*adress_err_all2);//
  F2=A2*4.222;


  

//  angle_err=A-angle;
//  
//
//  angle_err_all+=KI1*angle_err;
//  if(angle_err_all>30)
//    angle_err_all=30;
//  if(angle_err_all<-30)
//    angle_err_all=-30;
//
//  F=P1 * angle_err 
//    + KI1*I1 * angle_err_all ;
  
  if(F>350)
    F=350;
  else 
    if(F<-350)
       F=-350;
  
//   angle_err2=A2-angle2;
//  
//
//  angle_err_all2+=KI1*angle_err2;
//
//   if(angle_err_all2>30)
//    angle_err_all2=30;
//  if(angle_err_all2<-30)
//    angle_err_all2=-30;
//  
//  F2=P12 * angle_err2 
//    + KI12*I1 * angle_err_all2 ;
  if(F2>350)
    F2=350;
  else 
    if(F2<-350)
       F2=-350;

  
}



  

    
    
  