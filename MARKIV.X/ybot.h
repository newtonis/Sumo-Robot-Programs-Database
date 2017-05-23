/* 
 * File:   ybot.h
 * Author: newtonis
 *
 * Created on May 12, 2015, 5:28 PM
 */

#ifndef YBOT_H
#define	YBOT_H

#ifdef	__cplusplus
extern "C" {
#endif

#include <xc.h>
#include "conf.h"
 
/*** Leds ***/
#define L_ROJO PORTAbits.RA6
#define L_AMARILLO PORTEbits.RE1
#define L_VERDE PORTAbits.RA4

/** botones */
#define B_ROJO PORTDbits.RD2
#define B_AMARILLO PORTDbits.RD3
#define B_VERDE PORTCbits.RC4

/* Direccion de motores */
#define ADIR PORTCbits.RC0
#define BDIR PORTDbits.RD0

/*** Leds grandes ***/
#define BIG1 PORTDbits.RD1
#define BIG2 PORTBbits.RB0

#define IR0 PORTBbits.RB5
#define IR1 PORTBbits.RB4
#define IR2 PORTBbits.RB3
#define IR3 PORTBbits.RB2
#define IR4 PORTBbits.RB1

enum {P1=0,P2,P3,P4};
enum {A,B,C,D,E,F,G,H};
enum {CERCA,LEJOS};

typedef unsigned int ui;  
typedef unsigned char uc;
typedef long long ull;
extern char start;

typedef struct CLOCKst{
    ui seconds;
    ui miliseconds;
    ui minutes;
};

extern struct CLOCKst CLOCK;
extern int V[2];
extern int IR[5];

extern uc status;
extern uc fStatus; //flag new status
extern ull cA; //Encoder A ticks count
extern ull cB;
extern ull TIME;
extern long double  targetA; //velocidad objetivo del mtoorA medida en rps
extern long double  targetB; //velocidad objetivo del motorB medida en rp

long long millis();
void initYBOT();
void UpdateYBOT();
void InitTIMERS();
void ResetCounter();
void SetLeds();
void InitButtons();
void UpdateButtons();
char B_VERDE_PRESS();
char B_AMARILLO_PRESS();
char B_ROJO_PRESS();
ull GetCount(char w);
void ResetCount();

char ReadMem(char addr);
void WriteMem(char addr,char data);

void InitAnalog();
void ReadAnalog(char channel);
int GetAnalog(char *success);
void UpdatePiso();
void InitSP();

void MotorsStop();
void MotorsHStop();
void MotorsAdelante();
void MotorsAtras();
void MotorsDerecha();
void MotorsIzquierda();

void MAStop();
void MBStop();
void MAHStop();
void MBHStop();
void MAAdelante();
void MBAdelante();
void MAAtras();
void MBAtras();
void MotorsSpeed(int A,int B);
void MotorASpeed(int S);
void MotorBSpeed(int S);
void MotorsStart();
void MotorsUpdate();
void MotorsPWM();
void ControlSpeed();

void SetStatus(uc st);
uc NewStatus();

void Green(ui period,ui duty);
void Yellow(ui period,ui duty);
void Red(ui period,ui duty);

#ifdef	__cplusplus
}
#endif

#endif	/* YBOT_H */

