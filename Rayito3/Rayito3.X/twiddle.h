/* 
 * File:   twiddle.h
 * Author: adrian
 *
 * Created on February 9, 2017, 10:12 AM
 */

#ifndef TWIDDLE_H
#define	TWIDDLE_H

#ifdef	__cplusplus
extern "C" {
#endif
    
extern double kp, kd;
extern double ckd;

void twidde_start();
void twiddle_update();


#ifdef	__cplusplus
}
#endif

#endif	/* TWIDDLE_H */

