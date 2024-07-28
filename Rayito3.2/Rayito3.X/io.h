/* 
 * File:   io.h
 * Author: newtonis
 *
 * Created on February 7, 2017, 12:22 AM
 */

#ifndef IO_H
#define	IO_H

#ifdef	__cplusplus
extern "C" {
#endif

/** Basic leds*/
#define LED_A PORTBbits.RB4
#define LED_B PORTCbits.RC1
#define LED_C PORTDbits.RD2
#define LED_D PORTAbits.RA4    
   
/** Motor direction pins **/    
#define DIR_B PORTBbits.RB1
#define DIR_A PORTBbits.RB0

/** Button pins **/
#define BUTTON_A PORTDbits.RD0
#define BUTTON_B PORTDbits.RD1
    
void init_io();


#ifdef	__cplusplus
}
#endif

#endif	/* IO_H */

