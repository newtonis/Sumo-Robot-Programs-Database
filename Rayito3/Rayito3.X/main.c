/*
 * File:   main.c
 * Author: newtonis
 *
 * Created on February 7, 2017, 12:16 AM
 */


#include <xc.h>
#include <stdio.h>

#include "config.h"
#include "io.h"
#include "utils.h"
#include "timer.h"
#include "analog.h"
#include "twiddle.h"

enum { TEST , INIT , CAL , READY , BASIC_PID };

int status;
int old_lp;

void main(void) {
    init_tms();
    
    init_wixel();
    
    status = INIT;
    int fs = 0;
    time[1] = 0;
    mspeed(0,0);
    int faux = 0;
    int a, b;
    while (1){
        EnhancedRead();
        
        switch (status){
            case TEST:
                mspeed(0,0);
                if (BUTTON_A == 0){
                    LED_A = 1;
                    LED_C = 1;
                    a = 1000;
                }else{
                    LED_A = 0;
                    LED_C = 0;
                    a = 0;
                }
                if (BUTTON_B == 0){
                    b = 1000;
                    LED_B = 1;
                    LED_D = 1;
                }else{
                    LED_B = 0;
                    LED_D = 0;
                    b = 0;
                }
                mspeed(a,b);
                
                if (time[0] > 200 and faux == 0){
                    printf("{'COM':'plot', 'name':'a','value':%i}\n",an[0]);
                    faux = 1;
                }
                if (faux == 1 and time[0] > 400){
                    printf("{'COM':'plot', 'name':'b','value':%i}\n",an[1]);
                    time[0] = 0;
                    faux = 0;
                }
                
            break;
            
            case INIT:
                mspeed(0,0);
                if (fs == 0 and time[1] > 2000){
                    
                    fs = 1;
                }
                if (fs == 1 and time[1] > 4000){
                    printf("{'COM':'line','value':'Welcome!'}\n");
                    fs = 2;
                }
                if (time[0] < 1000) setA();
                if (time[0] > 1000 and time[0] < 2000) setB();
                if (time[0] > 2000 and time[0] < 3000) setC();
                if (time[0] > 3000 and time[0] < 4000) setD();
                if (time[0] > 4000) time[0] = 0;
                
                if (BUTTON_A == 0){
                    printf("{'COM':'line','value':'Calibration started'}\n");
                    status = CAL;
                    time[0] = 0;
                    init_cal();
                }
            break; 
            case CAL:
                mspeed(0,0);
                LED_A = time[0] % 1000 > 500;
                LED_B = 0;
                LED_C = 0;
                LED_D = 0;
                read_cal();
                
                if (BUTTON_B == 0){
                    printf("{'COM':'line','value':'Calibration finished'}\n");
                    printf("{'COM':'line','value':'Results :'}\n");
                    int i;
                    time[2] = 0;
                    for (i = 0;i < 5;i++){
                        printf("{'COM':'line','value':'%d : [%04d,%04d]'}\n",i,mins[ls[i]],maxs[ls[i]]);
                        while (time[2] < 100);
                        time[2] = 0;
                    }
                    status = READY;
                    time[0] = 0;
                }
            break;
            case READY:
                mspeed(0,0);
                LED_A = 0;
                LED_B = 1;
                LED_C = 0;
                LED_D = 0;
                line_cal();
                if (time[0] > 1000){
                    printf("{'COM':'plot', 'name':'Plot 1','value':%i}\n",lp);
                    int i;
                    for (i = 0;i < 5;i++){
                        printf("{'COM':'plot', 'name':'line %i','value':%i}\n",i,calval[ls[i]]);
                    }
                    time[0] = 0;
                }
                if (BUTTON_A == 0){
                    twidde_start();
                    status = BASIC_PID;
                    time[3] = 0;
                }
            break;
            case BASIC_PID:
               twiddle_update();
               
               line_cal();
               int speed = 1000;
               
               int der = lp - old_lp;
               double dif = (double)lp * 4 + (double)der * 100;
               if (lp > -60 and lp < 60){
                   LED_A = 0;
                   LED_B = 0;
                   LED_C = 1;
                   LED_D = 1;
               }else{
                   LED_C = 0;
                   LED_D = 0;
                   if (lp > 0){
                       LED_A = 1;
                       LED_B = 0;
                   }else{
                       LED_A = 0;
                       LED_B = 1;
                   }
               }
               if (dif > 0) mspeed(speed - dif, speed      );
               if (dif < 0) mspeed(speed      , speed + dif);
                   
               old_lp = lp;
               
               if (time[3] > 1000){
                   time[3] = 0;
                   printf("{'COM':'plot', 'name':'kd','value':%i}\n",(int)kd*1000);
                   printf("{'COM':'plot', 'name':'ckd','value':%i}\n",(int)ckd*1000);
               }
            break;
        }
       
    }
    
}
