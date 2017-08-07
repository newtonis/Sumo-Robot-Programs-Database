/* 
 * File:   analog.h
 * Author: newtonis
 *
 * Created on February 7, 2017, 6:11 PM
 */

#ifndef ANALOG_H
#define	ANALOG_H

#ifdef	__cplusplus
extern "C" {
#endif

extern int an[9];

extern int ls[5];

extern int maxs[9] , mins[9];
extern int lp;
extern int calval[9];

void an_init();
void init_cal();
void read_cal();
void EnhancedRead();
void line_cal();

#ifdef	__cplusplus
}
#endif

#endif	/* ANALOG_H */

