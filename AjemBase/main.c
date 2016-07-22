/**
	* Project AJEMv15.8
*/
#include <xc.h>
#include "config.h"
#include <stdio.h>
#include <stdlib.h>
	
#define and &&
#define or ||
#define not !
#define true 1
#define false 0

#define B1 (getGPIO(SW1) == PULSADO)
#define B2 (getGPIO(SW2) == PULSADO)
#define B3 (getGPIO(SW3) == PULSADO)


enum {	RESET,
		MENU,
		CUENTA_REGRESIVA,
		ARRANQUE,
		ANDANDO,
		DETENIDO,
		GIRO_DER,
		GIRO_IZQ,
		MOSTRAR};

/** VARIABLES GLOBALES **/
/*volatile unsigned char ticks;
volatile unsigned char decimas;			// Tiempo de actualizacion (una decima de segundo)
volatile unsigned char segundos;
//TmrRun[MAX];
*/

#define RAPIDEZ			5					//Todos los tiempos y velocidades deberian estar refernciados a este parametro

#define VEL_GIRO_90			(RAPIDEZ * 100)
#define T_GIRO_90			(2500 / RAPIDEZ)

#define VEL_PRE_ADELANTE	(RAPIDEZ * 150)
#define T_PRE_ADELANTE		(250 / RAPIDEZ)

#define VEL_POST_ADELANTE	(RAPIDEZ * 150)
#define T_POST_ADELANTE		(250 / RAPIDEZ)
		
/** PROTOIPOS **/
void loop(void);
void testeo_sensores(void);
void test(void);
void testeo_CNY(void);
void testeo_US(void);


int s1 , s2 ;
int f1 , f2 ;
void main(void)
{   
	Inicializar();
    s1 = 0, s2 = 0,f1 = 0,f2 = 0;
    
	//test();
	while(1)
	{
//		UltraSonic();
		Display7Seg(0, 0);
		LeerSensLinea();
		loop();
    }
}

void loop(void)
{
	static unsigned int i;
	static int vel_der, vel_izq;
	static char Estado = RESET;

    //set_motor_izq( (getGPIO(SW1) == PULSADO) * 1000 );
    //set_motor_der( (getGPIO(SW2) == PULSADO) * 1000 );
    
    set_motor_izq(1000);
     set_motor_der(1000);
    
    /*if (B1 and not f1){
        f1 = true;
        s1 = s1 != 1 ? s1 + 1 : -1;
    }
    if (not B1 and f1) f1 = false;
    
    if (B2 and not f2){
        f2 = true;
        s2 = s2 != 1 ? s2 + 1 : -1;
    }
    if (not B2 and f2) f2 = false;
    
    if (not s1 and not s2){
        displayNum(0);
    }else{
        displayNum(1);
    }
  
*/   
    return;
	switch(Estado)
	{
		case RESET:
			vel_izq = -500;
			vel_der = 500;
			StartTimer(TIMER_GENERAL, 500);
			StartTimer(TIMER_TESTEO, 500);
			loadNum(123);
			i = LINEA1;

			Estado = MENU;
			break;

		case MENU:
			if(TimerIsReady(TIMER_GENERAL))
			{
				StartTimer(TIMER_GENERAL, 100);

				setGPIO(LED_DP, !PIN_LED_DP);
				testeo_CNY();
				testeo_US();
				//testeo_sensores();
				//loadNum(USisDetecting(PROX4));
			}

			if(getGPIO(SW1) == PULSADO || getGPIO(SW3) == PULSADO)
			{
				beep_NO();
			}

			if(getGPIO(SW2) == PULSADO)
			{
				StopTimer(TIMER_GENERAL);
				StartTimer(TIMER_CUENTA_REGRESIVA, 0);
				beep_SI();
				i = 5;
				Estado = CUENTA_REGRESIVA;
			}
			break;

		case CUENTA_REGRESIVA:
			if(TimerIsReady(TIMER_CUENTA_REGRESIVA))
			{
				StartTimer(TIMER_CUENTA_REGRESIVA, 980);
				beep_ALIVE();
				displayNum(i);
				if(!i)
				{
					StartTimer(TIMER_PWM, 10);
					displayByte(D7S_GUION);

					Estado = ANDANDO;
				}
				i--;
			}
			break;

		case ANDANDO:
			//if(USisDetecting(PROX1) < 20)
			//if(USisDetecting(PROX2) < 20)


			if(TimerIsReady(TIMER_PWM))
			{
				StartTimer(TIMER_PWM, 10);

				vel_izq += 10;
				if(vel_izq >= 1000)
					vel_izq = -1000;

				vel_der += 10;
				if(vel_der >= 1000)
					vel_der = -1000;

				set_motores(vel_izq, vel_der);
			}

			if(getGPIO(SW3) == PULSADO)
			{
				vel_izq += 25;
				vel_der += 25;
				set_motores(vel_izq, vel_der);
				beep_SI();
				firulete(30, 1);
			}

			if(getGPIO(SW2) == PULSADO)
			{
				beep_SI();

				Estado = RESET;
			}

			if(getGPIO(SW1) == PULSADO)
			{
				vel_izq -= 25;
				vel_der -= 25;
				beep_SI();
				set_motores(vel_izq, vel_der);
				firulete(30, 1);
			}
			break;

		default:
			Estado = RESET;
			break;
	}
}

char girar(char Estado_main)
{
	static char state;
	switch(state)
	{
		case 0: //seteo adelantamiento pre-giro
			if(TimerIsReady(TIMER_GENERAL))
			{
				set_motores(VEL_PRE_ADELANTE, VEL_PRE_ADELANTE);
				StartTimer(TIMER_GENERAL, T_PRE_ADELANTE);
				state++;
			}
			break;

		case 1: //adelantamiento pre-giro y seteo del giro propiamente dicho
			if(Estado_main == GIRO_DER)
			{
				set_motores(VEL_GIRO_90, -VEL_GIRO_90);
			}
			else
			{
				set_motores(-VEL_GIRO_90, VEL_GIRO_90);
			}

			StartTimer(TIMER_GENERAL, T_GIRO_90);
			state++;
			break;

		case 2: //giro propiamente dicho y seteo del adelantamiento post giro
			if(TimerIsReady(TIMER_GENERAL))
			{
				set_motores(VEL_POST_ADELANTE, VEL_POST_ADELANTE);
				StartTimer(TIMER_GENERAL, T_POST_ADELANTE);
				state++;
			}
			break;

		default: //adelantamiento post giro y fin del giro general
			if(TimerIsReady(TIMER_GENERAL))
			{
				state = 0;
				return 1; //ya termino de girar
			}
	}

	return 0; //aun no termino
}

void testeo_sensores(void)
{
	unsigned int i;

//	aux = 0x00;
//	for(i=0; i<CANT_SENS_PROX; i++)
//		if( IRMisActivo(i) )
//			aux = aux || 0x01<<i;
//	displayByte(aux);

	if(TimerIsReady(TIMER_TESTEO))
	{ //Si ya paso un tiempo desde que se largo el trigger
		StartTimer(TIMER_TESTEO, 100);
		setGPIO(LED_DP, !PIN_LED_DP);

		for(i=PROX1; i <= PROX4; i++)
			printf("S%u:%03u\t", i + 1, USisDetecting(i));
		printf("\n\r");
	}
//	displayByte(D7S_GUION);
//	if(getGPIO(LINEA1))
//		setGPIO(LED_DP, OFF);
//	else
//		setGPIO(LED_DP, ON);
}

void test(void)
{
	unsigned int i;

	i = 0;
//	setGPIO(PROX3, OFF);
	setGPIO(LED_DP, OFF);

	StartTimer(TIMER_RESET, 500);
	while(1)
	{
		//UltraSonic();
		if(TimerIsReady(TIMER_RESET))
		{ //Si ya paso un tiempo desde que se largo el trigger
			StartTimer(TIMER_RESET, 100);
			setGPIO(LED_DP, !PIN_LED_DP);

			for(i=PROX1; i <= PROX4; i++)
				printf("S%u:%03u\t", i + 1, USisDetecting(i));
			printf("\n\r");
		}

//		if(TimerIsReady(0))
//		{ //Si ya paso un tiempo desde que se largo el trigger
//			StartTimer(1, 3);
//
//			setGPIO(PROX3, ON);
//			setGPIO(LED_DP, ON);
//		}
//
//		if(TimerIsReady(1))
//		{ //Si ya paso el tiempo en estado HIGH del sensor simualdo
//			setGPIO(PROX3, OFF);
//			setGPIO(LED_DP, OFF);
//		//	i++;
//		//	i %= 10;
//		//	displayNum(i);
//			//printf("Sensor %u: %04d\n\r", 4, USisDetecting(3));
//			//i %= CANT_SENS_PROX;
//		}
	}
}

void testeo_US(void)
{
	unsigned int i;

	for(i=PROX1; i <= PROX4; i++)
		printf("S%u:%03u\t", i + 1, USisDetecting(i));
	printf("\n\r");
}

void testeo_CNY(void)
{
	char aux, i;

	for(aux=0, i=LINEA1; i<=LINEA4; i++)
		aux += CNYisDetecting(i) * (i - LINEA1 + 1);
	
	displayNum(aux);
}

