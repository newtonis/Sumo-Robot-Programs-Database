
#include "analog.h"
#include "timer.h"

#define fabs(a) a > 0 ? (a) : (-a)

double kp = 4, kd = 100;
double ckp = 0.1 , ckd = 0.1;

int best_err;

enum { CHANGE_KD, CHANGE_KP };

int status = CHANGE_KP;

int intern = 0;

void twidde_start(){
    time[2] = 0;
    intern = 0;
    best_err = lp;
}

void twiddle_update(){
    if (intern == 0){
        intern = 1;
        kd += ckd;
    }else if(intern == 1){
        if (time[2] > 500){
            if (fabs(lp) > best_err){
                best_err = fabs(lp);
                ckd *= 1.1;
                intern = 0;
            }else{        
                kd -= 2 * ckd; // the other direction
                intern = 2;
            }
        }
    }else if(intern == 2){
        if (time[2] > 1000){
            if (fabs(lp) > best_err){
                best_err = fabs(lp);
                ckd *= 1.05;
            }else{
                kd += ckd;
                ckd *= 0.95;
            }
        }
    }
    
    
}