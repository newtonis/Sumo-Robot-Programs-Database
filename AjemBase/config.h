#ifndef CONFIG_H
#define CONFIG_H

#include <xc.h>
#include <stdarg.h>
#include <stdio.h>

/** Original: Buzzer.h **/

/** CONSTANTES SIMBOLICAS **/

/** PROTOIPOS **/
void beep(unsigned char, unsigned char);

/** MACROS **/
#define beep_ALIVE()	beep(8, 1);
#define beep_SI()		beep(30, 1);
#define beep_NO()		beep(30, 2);

/*** Original: display7seg.h ***/



//!<				Tabla de conversion bcd a 7 segmentos
//!<				Codigo bcd	a	b	c	d	e	f	g   dp
const char BCD_TABLE[] = {
	0x3F,	//!<	0			1	1	1	1	1	1	0   0
	0x06, 	//!<	1			0	1	1	0	0	0	0	0
	0x5B, 	//!< 	2			1	1	0	1	1	0	1	0
	0x4F, 	//!< 	3			1	1	1	1	0	0	1	0
	0x66, 	//!< 	4			0	1	1	0	0	1	1	0
	0x6D, 	//!<	5			1	0	1	1	0	1	1	0
	0x7D, 	//!<	6			1	0	1	1	1	1	1	0
	0x07, 	//!<	7			1	1	1	0	0	0	0	0
	0x7F, 	//!< 	8			1	1	1	1	1	1	1	0
	0x67,	//!<	9			1	1	1	0	0	1	1	0
	0x77, 	//!< 	10=A		1	1	1	0	1	1	1	0
	0x7C, 	//!<	11=b		0	0	1	1	1	1	1	0
	0x39, 	//!<	12=C		1	0	0	1	1	1	0	0
	0x5E, 	//!<	13=d		0	1	1	1	1	0	1	0
	0x79, 	//!< 	14=E		1	0	0	1	1	1	1	0
	0x71};	//!<	15=F		1	0	0	0	1	1	1	0

#define D7S_GUION		(0x01 << 6)
#define D7S_DER			(0x30)
#define D7S_IZQ			(0x06)

/** CONSTANTES SIMBOLICAS **/


/** VARIABLES GLOBALES **/
//short int D7S_number, D7S_time;


/** PROTOIPOS **/
void firulete(unsigned char, unsigned char);
void displayByte(unsigned char);
void Display7Seg(short int, short int);

/** MACROS **/
#define displayNum(n)		displayByte(BCD_TABLE[n])
#define loadNum(n)			Display7Seg(n , 350)

/*** original: GPIO.h ***/

#define D7SEG_INVERSO


//	DISPLAY 7 SEGMENTOS y BUZZER
#ifdef D7SEG_INVERSO
	#define PIN_LED_A		LB2
	#define TRIS_LED_A		TRISB2
	#define PIN_LED_B		LB0
	#define TRIS_LED_B		TRISB0
	#define PIN_LED_C		LB6
	#define TRIS_LED_C		TRISB6
	#define PIN_LED_D		LB5
	#define TRIS_LED_D		TRISB5
	#define PIN_LED_E		LB4
	#define TRIS_LED_E		TRISB4
	#define PIN_LED_F		LB3
	#define TRIS_LED_F		TRISB3
	#define PIN_LED_G		LB1
	#define TRIS_LED_G		TRISB1
	#define PIN_LED_DP		LB7
	#define TRIS_LED_DP		TRISB7
#else
	#define PIN_LED_A		LB5
	#define TRIS_LED_A		TRISB5
	#define PIN_LED_B		LB4
	#define TRIS_LED_B		TRISB4
	#define PIN_LED_C		LB3
	#define TRIS_LED_C		TRISB3
	#define PIN_LED_D		LB2
	#define TRIS_LED_D		TRISB2
	#define PIN_LED_E		LB0
	#define TRIS_LED_E		TRISB0
	#define PIN_LED_F		LB6
	#define TRIS_LED_F		TRISB6
	#define PIN_LED_G		LB7
	#define TRIS_LED_G		TRISB7
	#define PIN_LED_DP		LB1
	#define TRIS_LED_DP		TRISB1
#endif

#define PIN_BUZZER		PORTAbits.RA4
#define TRIS_BUZZER		TRISA4

//	PULSADORES
#define PIN_SW1			PORTAbits.RA0
#define TRIS_SW1		TRISA0
#define PIN_SW2			PORTAbits.RA2
#define TRIS_SW2		TRISA2
#define PIN_SW3			PORTAbits.RA1
#define TRIS_SW3		TRISA1

//	SENSORES
#define PIN_ULTRA_T1	LATD7
#define TRIS_ULTRA_T1	TRISD7
#define PIN_ULTRA_T2	LATD6
#define TRIS_ULTRA_T2	TRISD6
#define PIN_ULTRA_T3	LATD3
#define TRIS_ULTRA_T3	TRISD3
#define PIN_ULTRA_T4	LATD2
#define TRIS_ULTRA_T4	TRISD2

#define PIN_ULTRA_E1	PORTDbits.RD5
#define TRIS_ULTRA_E1	TRISD5
#define PIN_ULTRA_E2	PORTDbits.RD4
#define TRIS_ULTRA_E2	TRISD4
#define PIN_ULTRA_E3	PORTCbits.RC5
//#define TRIS_ULTRA_E3	TRISC5
#define PIN_ULTRA_E4	PORTCbits.RC4
//#define TRIS_ULTRA_E4	TRISC4

#define PIN_LINEA1		PORTEbits.RE1
#define TRIS_LINEA1		TRISE1
#define PIN_LINEA2		PORTEbits.RE0
#define TRIS_LINEA2		TRISE0
#define PIN_LINEA3		PORTAbits.RA5
#define TRIS_LINEA3		TRISA5
#define PIN_LINEA4		PORTEbits.RE2
#define TRIS_LINEA4		TRISE2

//	MOTORES
#define PWM_I			LATC2
#define TRIS_PWM_I		TRISC2
#define PWM_D			LATC1
#define TRIS_PWM_D		TRISC1
#define DIR_MOT_I		LATD0
#define TRIS_DIR_MOT_I	TRISD0
#define DIR_MOT_D		LATD1
#define TRIS_DIR_MOT_D	TRISD1

//	SERIAL
#define PIN_TX			LATC6
#define TRIS_RX			TRISC7
#define PIN_RX			PORTCbits.RC7
#define TRIS_TX			TRISC6


/** CONSTANTES SIMBOLICAS **/
enum{	//Deben estar primeros los de proximidad, luego los de linea, y luego el resto
	PROX1,
	PROX2,
	PROX3,
	PROX4,

	LINEA1,
	LINEA2,
	LINEA3,
	LINEA4,

	LED_A,
	LED_B,
	LED_C,
	LED_D,
	LED_E,
	LED_F,
	LED_G,
	LED_DP,

	BUZZER,

	SW1,
	SW2,
	SW3,

	CANT_GPIO};


/** OTRAS CONSTANTES **/
enum{	//Tipos de Periférico
	INFRARED_CNY70,
	ULTRASONIC,
	INFRARED_TS,
	INFRARED_IRM,
	NOT_ENABLED};

const unsigned char PIN_FUNCTION[8/*PROXIMIDAD_* o LINEA_* */] = {
//	Sensores de Proximidad en orden {PROX1, PROX2, PROX3, PROX4}
	ULTRASONIC,
	ULTRASONIC,
	ULTRASONIC,
	NOT_ENABLED,
//	Sensores de Linea en orden {LINEA1, LINEA2, LINEA3, LINEA4}
	INFRARED_CNY70,
	NOT_ENABLED,
	NOT_ENABLED,
	NOT_ENABLED};

#define OUTPUT			0
#define INPUT			!OUTPUT

#define OFF				0
#define ON				!OFF

#define PULSADO			0
#define NO_PULSADO		!PULSADO

#define ERROR			0xFF

/** PROTOIPOS **/
void ConfigurarGPIO(void);
void Inicializar(void);
void setGPIO(const char, const char, const char);
unsigned char getGPIO(const char);

/** MACROS **/
#define setGPIO(output, value)									\
		(output == (LED_A)			?	PIN_LED_A = (value)		\
		:(output == (LED_B)			?	PIN_LED_B = (value)		\
		:(output == (LED_C)			?	PIN_LED_C = (value)		\
		:(output == (LED_D)			?	PIN_LED_D = (value)		\
		:(output == (LED_E)			?	PIN_LED_E = (value)		\
		:(output == (LED_F)			?	PIN_LED_F = (value)		\
		:(output == (LED_G)			?	PIN_LED_G = (value)		\
		:(output == (LED_DP)		?	PIN_LED_DP = (value)	\
		\
		:(output == (BUZZER)		?	PIN_BUZZER = (value)	\
		\
		:(output == (PROX1)			?	PIN_ULTRA_T1 = (value)	\
		:(output == (PROX2)			?	PIN_ULTRA_T2 = (value)	\
		:(output == (PROX3)			?	PIN_ULTRA_T3 = (value)	\
		:(output == (PROX4)			?	PIN_ULTRA_T4 = (value)	\
		\
		:(								ERROR					\
		))))))))))))))

#define getGPIO(input)									\
		(input == (LINEA1)			?	PIN_LINEA1		\
		:(input == (LINEA2)			?	PIN_LINEA2		\
		:(input == (LINEA3)			?	PIN_LINEA3		\
		:(input == (LINEA4)			?	PIN_LINEA4		\
		\
		:(input == (PROX1)			?	PIN_ULTRA_E1	\
		:(input == (PROX2)			?	PIN_ULTRA_E2	\
		:(input == (PROX3)			?	PIN_ULTRA_E3	\
		:(input == (PROX4)			?	PIN_ULTRA_E4	\
		\
		:(input == (SW1)			?	PIN_SW1			\
		:(input == (SW2)			?	PIN_SW2			\
		:(input == (SW3)			?	PIN_SW3			\
		\
		:(								ERROR			\
		))))))))))))

/*** original: main.h ***/

void loop(void);
void testeo_sensores(void);
void test(void);
void testeo_CNY(void);
void testeo_US(void);

/*** original: motores.h ***/


/** PROTOIPOS **/
void set_motor_izq(int);
void set_motor_der(int);
void Configurar_Duty(unsigned char, unsigned int);

/** OTRAS CONSTANTES **/
#define MOTOR_AD		0			//No modificar
#define MOTOR_AT		!MOTOR_AD	//No modificar

#define MOTOR_REVERSO	0	//Modificable: 0 para marcha directa, 1 para marcha inversa

#define MOTOR_IZQ		1	//Modificable: es el canal del PWM
#define MOTOR_DER		2	//Modificable: es el canal del PWM

/** MACROS **/
#if MOTOR_IZQ == 1 //El lado derecho es negativo porque en el PCB esta hecho al reves
	#if MOTOR_REVERSO == 0
		#define set_motores(izq, der)		set_motor_izq(izq);  set_motor_der(-(der));
	#else
		#define set_motores(izq, der)		set_motor_izq(-(izq)); set_motor_der(der);
	#endif
#else
	#if MOTOR_REVERSO == 0
		#define set_motores(izq, der)		set_motor_izq(der);  set_motor_der(-(izq));
	#else
		#define set_motores(izq, der)		set_motor_izq(-(der)); set_motor_der(izq);
	#endif
#endif

/*** original: SensLinea.h ***/

/** CONSTANTES SIMBOLICAS **/
#define LINEA_FRENTE_I	LINEA1
#define LINEA_FRENTE_D	LINEA2
#define LINEA_ATRAS_D	LINEA3
#define LINEA_ATRAS_I	LINEA4

#define BLANCO			0
#define NEGRO			!BLANCO

#define LINEA			BLANCO

#define MAX_MUESTRAS	5

#define CANT_SENS_LINEA	4

/** VARIABLES GLOBALES **/
unsigned char sensLinea[CANT_SENS_LINEA];

/** PROTOIPOS **/
void LeerSensLinea(void);

/** MACROS **/
#define readCNY(i)			(PIN_FUNCTION[i] == INFRARED_CNY70 ? (getGPIO(i) == LINEA) : 0)
#define CNYisDetecting(i)	(PIN_FUNCTION[i] == INFRARED_CNY70 ? (sensLinea[i - LINEA1]) : 0)

/*** original: sensproximidad.h ***/


/**CONSTANTES FILTRO INTERRUPCIONES ULTRA**/
#define CANT_VALORES 3
#define CANT_ELIMINADOS 1

/** CONSTANTES SIMBOLICAS **/
#define CANT_SENS_PROX	4

#define PROX_FRENTE_I	PROX1
#define PROX_FRENTE_D	PROX2
#define PROX_D			PROX3
#define PROX_I			PROX4


// T clock interno = 1/12MHz = 83.33 nSeg
// T Timer0 = 0.5 * 1/38kHz = 13.16 uSeg
// Cada 158 ciclos de reloj debe interrumpir el Timer0
#define T_38KHZ			144	//256 - 158; //NO SE POR QUE PERO ASI FUNCIONA
#define CUENTAS_600uS	46	//46 = 600uS/13.16uS
#define FLANCOS_IRM		20	//20 flancos * CUENTAS_600uS * 13.16 uS = 12.107 mS
#define T_ANALIZAR_IRM	50	// +/- 1 mS
enum {
	IRM_0,
	IRM_38K};

enum {
	IRM_INICIO,
	IRM_RESET,
	IRM_CONTANDO,
	IRM_ANALIZAR};

enum {
	ULTRA_RESET,
	ULTRA_TRIGGER_ON,
	ULTRA_ECHO_CHECK};

#define TPI_uS				(64.0 / 12)				//Tiempo por Incremento [uSeg/Incremento] (del timer_value)
#define T_ULTRA_MAX_DELAY	200//este valor es directo en ms, los sig comentarios son para cuentas del timer//37502//(200 / TPI_uS)	//200 mS == 37502 incrementos
#define T_ULTRA_CONVERSION	3.5//(TPI_uS / 58.0)	//58 cm por uSeg, esta programa para que sean 1 cuentas por cada 20 uSeg => 3.5 mm por cuenta
/*
#define T_ULTRA_TRIGGER_ON	(12.0 / TPI_uS)		//12 uS
#define T_ULTRA_MAX_COUNT	0x005F				//45 mS
*/


/** TIPOS DE DATOS **/
typedef struct
{
	unsigned char		input;
	unsigned char		last_input;
	unsigned short int	count[CANT_VALORES];
	unsigned short int	detected;
    unsigned short int	anterior;
} ProximityStruct;

/** VARIABLES GLOBALES **/
ProximityStruct stSensProx[CANT_SENS_PROX];
unsigned char US_lecturas;
unsigned char flag;
//unsigned char contadorIRM, IRM_38kHz, IRM_1ms;
//unsigned int contadorULTRA;


/** PROTOIPOS **/
void emitirIRM(void);
void detectarIRM(void);
unsigned char IRMisDetecting(unsigned char);
unsigned char TSisDetecting(unsigned char);
void UltraSonic(void);
void LecturaFlancosUS(void);
void FiltroUS(void);

/** MACROS **/
#define isULTRASONIC(i)		(PIN_FUNCTION[i] == ULTRASONIC	? 1 : 0)
#define isINFRARED_TS(i)	(PIN_FUNCTION[i] == INFRARED_TS	? 1 : 0)

#define USisDetecting(n)	(isULTRASONIC(n) ? stSensProx[n].detected : 0xFFFF)

/*** original: serial.h **/

#define SERIAL_ENABLED

/** VARIABLES GLOBALES **/
char datoserie;

/** PROTOIPOS **/
void putch(char data);
void Configurar_UART(void);
void serialprint(const char *, ...);

/*** original: timers.h ***/


/** CONSTANTES PARA LA APLICACION **/
enum {
	TIMER_DELAY,		//NO USAR
	TIMER_DISPLAY7SEG,	//NO USAR
	TIMER_US,			//NO USAR
	TIMER_RESET,
	TIMER_TESTEO,
	TIMER_FIRULETE,
	TIMER_CUENTA_REGRESIVA,
	TIMER_PWM,
    TIMER_X,
    TIMER_INCREMENTO,
    TIMER_GENERAL,
    CANT_TIMERS};

/** CONSTANTES SIMBOLICAS **/
enum {
	RUNNING_TIMER,
	READY_TIMER,
	STOPPED_TIMER};

/** TIPOS DE DATOS **/
typedef struct
{
	unsigned char	state;
	unsigned int	count;
} TimerStruct;

/** VARIABLES GLOBALES **/
TimerStruct Timer[CANT_TIMERS];

/** PROTOTIPOS **/
void ResetTimers(void);
void StartTimer(unsigned char, unsigned int);
void StopTimer(unsigned char);
void ResumeTimer(unsigned char);
unsigned char ReadTimerState(unsigned char);
unsigned int ReadTimerCount(unsigned char);
void InitTimer(unsigned char);
void TimersHandler(void);
unsigned char TimerIsReady(unsigned char);
void TimerTick(void);
/****/
unsigned short int getTimerValue(unsigned char);
//void setTimerValue(unsigned char, unsigned short int);
void Configurar_PWM(void);
void Configurar_Duty(unsigned char,unsigned int);
void Configurar_Interrupciones(void);
void Configurar_Timer0(void);
void Configurar_Timer1(void);
void Configurar_Timer2(void);


//--------- MACROS ----------//
//void setTimerValue(unsigned char, unsigned short int);
//The high byte is updated with the contents of TMR0H when a write occurs to TMR0L. This allows all 16 bits of Timer0 to be updated at once
#define setTimer0Value(value)			\
	TMR0H = ((value) >> 8) & 0x00FF;	\
	TMR0L = (value) & 0x00FF;

#define delay(t)	StartTimer(TIMER_DELAY, t);		\
					while(!TimerIsReady(TIMER_DELAY));

#endif