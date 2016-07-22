#include "config.h"
#include <xc.h>

/*** original: display7seg.c ***/

void Display7Seg(short int n, short int time)
{
	static char num[5];
	static short int t;
	static char i = 0;

	//Si time es mayor que cero, significa que se esta cargando un nuevo numero
	if(time > 0)
	{
		t = time;

		if(n <= 0)
		{
			if(n == 0)
				displayNum(0);
			else
			{
				n = -n;
				displayByte(D7S_GUION);
			}

			StartTimer(TIMER_DISPLAY7SEG, t);
		}
		else
			StartTimer(TIMER_DISPLAY7SEG, 0);
		
		for(i=0; n && i<5; i++)
		{
			num[i] = n % 10;
			n /= 10;
		}
	}
	else
	{
		if(TimerIsReady(TIMER_DISPLAY7SEG))
		{
			StartTimer(TIMER_DISPLAY7SEG, t);

			i--;
			if(/*i>=0 &&*/ i<5)
				displayNum(num[i]);
			else
			{
				StopTimer(TIMER_DISPLAY7SEG);
				displayByte(0x00);
			}
		}
	}
}

void displayByte(unsigned char bcd)
{
	unsigned char i, j;
	for(i=LED_A, j=0; i <= LED_G; i++, j++)
		setGPIO(i, !!(bcd & (0x01<<j)));
}

void firulete(unsigned char t, unsigned char n)
{
	unsigned int i, veces;

	for(veces=0; veces < n; veces++)
	{
		for(i=0; i < 6; i++)
		{
			displayByte(0x01 << i);
			delay(t);
		}
	}
	displayByte(0x00);
}

/*** original: gpio.c ***/


#define _XTAL_FREQ 48000000	// 48MHz/4 == 12 MIPS (Mega Instructions Per Second)

/*
#pragma config FOSC=HS, WDTE=OFF, PWRTE=ON, MCLRE=OFF,  BOREN=OFF, LVP=ON, CPD=OFF, CP=OFF
#pragma config FOSC=HSPLL_HS, PLLDIV=5, CPUDIV=OSC1_PLL2 //f_crystal/PLLDIV debe dar 4MHz y salida de 48m
#pragma config IESO=OFF, FCMEN=OFF, USBDIV = 2
#pragma config PWRT=ON, BOR=OFF, VREGEN=OFF, WDT=OFF//, BORV=46
#pragma config MCLRE=OFF, XINST=OFF, LVP=OFF, PBADEN=OFF
#pragma config WDTPS =32768, LPT1OSC=OFF, DEBUG =OFF, STVREN = OFF, ICPRT =OFF
#pragma config LVP = OFF, CP0 = OFF,CP1 = OFF,CPB = OFF,WRT0 = OFF,WRT1 = OFF,WRTB = OFF
#pragma config WRTC = OFF,EBTR0 = OFF,EBTR1 = OFF,EBTRB = OFF
*/
#pragma config FOSC=HSPLL_HS, PLLDIV=5, CPUDIV=OSC1_PLL2 //f_crystal/PLLDIV debe dar 4MHz y salida de 48m
#pragma config IESO=OFF, FCMEN=OFF, USBDIV = 2
#pragma config BOR=OFF, VREGEN=OFF, WDT=OFF//, BORV=46
#pragma config MCLRE=OFF, XINST=OFF, LVP=OFF, PBADEN=OFF
#pragma config WDTPS =32768, LPT1OSC=OFF, DEBUG =OFF, STVREN = OFF, ICPRT =OFF
#pragma config LVP = OFF, CP0 = OFF,CP1 = OFF,CPB = OFF,WRT0 = OFF,WRT1 = OFF,WRTB = OFF
#pragma config WRTC = OFF,EBTR0 = OFF,EBTR1 = OFF,EBTRB = OFF
/*
void setGPIO(const char modulo, const char output, const char value)
{
	switch(modulo)
	{
		case DISPLAY7SEG:
			switch(output)
			{
				case D7SEG_A:				LED_A = value;			break;
				case D7SEG_B:				LED_B = value;			break;
				case D7SEG_C:				LED_C = value;			break;
				case D7SEG_D:				LED_D = value;			break;
				case D7SEG_E:				LED_E = value;			break;
				case D7SEG_F:				LED_F = value;			break;
				case D7SEG_G:				LED_G = value;			break;
				case D7SEG_DP:				LED_DP = value;			break;
			}
			break;

		case SENSPROXIMIDAD_T:
			switch(output)
			{
				case PROXIMIDAD_FRENTE_IZQ:		ULTRA_T1 = value;		break;
				case PROXIMIDAD_FRENTE_DER:		ULTRA_T2 = value;		break;
				case PROXIMIDAD_ATRAS_DER:		ULTRA_T3 = value;		break;
				case PROXIMIDAD_ATRAS_IZQ:		ULTRA_T4 = value;		break;
			}
			break;

//		case MOTORES:
//			switch(output)
//			{
//				case :		DIR_MOT_I = value;		break;
//				case :		DIR_MOT_D = value;		break;
//			}
//			break;
	}
}
*/
/*
unsigned char getGPIO(const char input)
{
	unsigned char ret = ERROR;
	switch(input)
	{
		case SWITCH1:				ret = (unsigned char)BOTON1;		break;
		case SWITCH2:				ret = (unsigned char)BOTON2;		break;
		case SWITCH3:				ret = (unsigned char)BOTON3;		break;

		case LINEA_FRENTE_I:		ret = (unsigned char)LINEA2;		break;
		case LINEA_FRENTE_D:		ret = (unsigned char)LINEA2;		break;
		case LINEA_ATRAS_D:			ret = (unsigned char)LINEA3;		break;
		case LINEA_ATRAS_I:			ret = (unsigned char)LINEA4;		break;

		case D7SEG_A:				ret = (unsigned char)LED_A;			break;
		case D7SEG_B:				ret = (unsigned char)LED_B;			break;
		case D7SEG_C:				ret = (unsigned char)LED_C;			break;
		case D7SEG_D:				ret = (unsigned char)LED_D;			break;
		case D7SEG_E:				ret = (unsigned char)LED_E;			break;
		case D7SEG_F:				ret = (unsigned char)LED_F;			break;
		case D7SEG_G:				ret = (unsigned char)LED_G;			break;
		case D7SEG_DP:				ret = (unsigned char)LED_DP;		break;

		case PROX_FRENTE_I:			ret = (unsigned char)ULTRA_E1;		break;
		case PROX_FRENTE_D:			ret = (unsigned char)ULTRA_E2;		break;
		case PROX_ATRAS_D:			ret = (unsigned char)ULTRA_E3;		break;
		case PROX_ATRAS_I:			ret = (unsigned char)ULTRA_E4;		break;
		default:					ret = ERROR;
	}
	return ret;
}
*/
void ConfigurarGPIO(void)
{
    OSCCONbits.IRCF = 7;    // OSCILLATOR CONTROL REGISTER -> 8MHz
    ADCON1=0x0F;            // Set all pins as digital I/O
    CMCON=0x07;             // Turn comparators off and enable pins for I/O functions
    UCONbits.USBEN = 0;		// Disable usb (1)
    UCFGbits.UTRDIS = 1;	// Disable usb (2)

    //nRBPU=0;
    //RDPU=1;

    TRIS_PWM_I = OUTPUT;
    TRIS_PWM_D = OUTPUT;
    TRIS_DIR_MOT_I = OUTPUT;
    TRIS_DIR_MOT_D = OUTPUT;

    TRIS_LED_DP	= OUTPUT;
    TRIS_LED_A	= OUTPUT;
    TRIS_LED_B	= OUTPUT;
    TRIS_LED_C	= OUTPUT;
    TRIS_LED_D	= OUTPUT;
    TRIS_LED_E	= OUTPUT;
    TRIS_LED_F	= OUTPUT;
    TRIS_LED_G	= OUTPUT;

	TRIS_BUZZER	= OUTPUT;

	TRIS_SW1	= INPUT;
	TRIS_SW2	= INPUT;
	TRIS_SW3	= INPUT;

	TRIS_LINEA1	= INPUT;
	TRIS_LINEA2	= INPUT;
	TRIS_LINEA3	= INPUT;
	TRIS_LINEA4	= INPUT;

	TRIS_ULTRA_T1 = OUTPUT;
	TRIS_ULTRA_T2 = OUTPUT;
	TRIS_ULTRA_T3 = OUTPUT;
	TRIS_ULTRA_T4 = OUTPUT;

	TRIS_ULTRA_E1 = INPUT;
	TRIS_ULTRA_E2 = INPUT;
//	TRIS_ULTRA_E3 = INPUT;
//	TRIS_ULTRA_E4 = INPUT;
}

void Inicializar(void)
{
	unsigned char i;

	ConfigurarGPIO();
	DIR_MOT_I = DIR_MOT_D = PWM_I = PWM_D = OFF;
	for(i=0; i < CANT_GPIO; i++)
		setGPIO(i, OFF);

	Configurar_UART();
	Configurar_Timer2();//PWM y MAQUINA_TIMERS
    Configurar_Timer1();//ULTRASONIC
	Configurar_Timer0();//POR AHORA NO SE USA
	Configurar_PWM();
	Configurar_Duty(1,0);
	Configurar_Duty(2,0);
	Configurar_Interrupciones();
    //Configurar_AD();
	ResetTimers();

	setTimer0Value(0x0000);
	//TMR0ON = 1; //Starts Timer0


	set_motores(0, 0);
	beep(30, 2);
	firulete(30, 2);
	beep(30, 5);
	printf("\n\n\n\rIncializacion completa\n\r");
}

/*** original: motores.c ***/


void set_motor_izq(int duty)
{
	if(duty < 0)
	{
		DIR_MOT_I = MOTOR_AT;

		if(duty < -1000)
			duty = -1000;

		duty = 1000 + duty; //duty es negativa
	}
	else
	{
		DIR_MOT_I = MOTOR_AD;

		if(duty > 1000)
			duty = 1000;
	}

	CCPR1L = duty / 4;
	CCP1CONbits.DC1B = duty % 4;
}

void set_motor_der(int duty)
{
	if(duty < 0)
	{
		DIR_MOT_D = MOTOR_AT;

		if(duty < -1000)
			duty = -1000;

		duty = 1000 + duty; //duty es negativa
	}
	else
	{
		DIR_MOT_D = MOTOR_AD;

		if(duty > 1000)
			duty = 1000;
	}

	CCPR2L = duty / 4;
	CCP2CONbits.DC2B = duty % 4;
}

void Configurar_Duty(unsigned char canal, unsigned int duty)
{
	if(duty > 1000)
		duty = 1000;

	switch(canal)
	{
		case 1:
			CCPR1L = duty / 4;
			CCP1CONbits.DC1B = duty % 4;
			break;

		case 2:
			CCPR2L = duty / 4;
			CCP2CONbits.DC2B = duty % 4;
			break;
	}
}

/*** original: senslinea.c ***/


void LeerSensLinea(void)
{
	static unsigned char lecturas[CANT_SENS_LINEA];
	static unsigned char cant_lecturas = 0;
	char i;

	cant_lecturas++;
	if(cant_lecturas <= MAX_MUESTRAS)
	{
		for(i=LINEA1; i <= LINEA4; i++)
		{
			lecturas[i - LINEA1] += readCNY(i);
			//ret += readCNY(s) * (i + 1);
		}
	}
	else
	{
		cant_lecturas = 0;
		for(i=0; i<CANT_SENS_LINEA; i++)
		{
			sensLinea[i] = ((lecturas[i] > MAX_MUESTRAS/2) ? 1 : 0); //Queda 1 si el promedio dio mayor que la mitad, 0 si dio menor a la mitad
			lecturas[i] = 0;
		}
	}


}

/*** original: sensProximidad.c ***/

unsigned char TSisDetecting(unsigned char n)
{
	if(isINFRARED_TS(n) && getGPIO(n) == 0)
		return ON;
	else
		return OFF;
}

/**					ULTRASONIC Driver					**/

void UltraSonic(void)
{
	static char state = ULTRA_RESET;
	unsigned char i, n;
    //static unsigned char j=CANT_VALORES-1;

	switch(state)
	{
		case ULTRA_RESET:

			for(n = PROX1; n <= PROX4; n++)
			{
				if(isULTRASONIC(n))
				{
					setGPIO(n, OFF);
					stSensProx[n].last_input = OFF;
					stSensProx[n].detected = 0;
//					stSensProx[n].count[0]= 0;
					//printf("ULTRA_RESET: Sensor %d: Trigger OFF; Detected = %04d\n\r", n+1, stSensProx[n].detected);
				}
			}

                //printf("interup ultra\r");
                state = ULTRA_TRIGGER_ON;

                //TMR0ON=1;
                TMR1ON=0;
            break;

		case ULTRA_TRIGGER_ON:
			//printf("ULTRA_TRIGGER_ON: Sensor %d: Trigger ON\n\r", n+1);
            for(n = PROX1; n <= PROX4; n++)
				if(isULTRASONIC(n))
					setGPIO(n, ON);

			for(i=0; i<15; i++);	//Delay bloqueante de 10 uS

			for(n = PROX1; n <= PROX4; n++)
				if(isULTRASONIC(n))
					setGPIO(n, OFF);
			//printf("ULTRA_TRIGGER_ON: Sensor %d: Trigger OFF\n\r", n+1);

			/*
			US_lecturas++;
			if(US_lecturas>=CANT_VALORES)
				US_lecturas=0;
			*/

			US_lecturas = 0;
            stSensProx[PROX1].count[US_lecturas] = 0;
            stSensProx[PROX2].count[US_lecturas] = 0;
            stSensProx[PROX3].count[US_lecturas] = 0;
            stSensProx[PROX4].count[US_lecturas] = 0;

			TMR1ON=1;
			setTimer0Value(0x0000);
			StartTimer(TIMER_US, T_ULTRA_MAX_DELAY);
			state = ULTRA_ECHO_CHECK;
			break;

		case ULTRA_ECHO_CHECK:
			//if(getTimerValue(0) > T_ULTRA_MAX_DELAY) //Si estoy fuera del tiempo de medicion
			if(TimerIsReady(TIMER_US))
			{
                /*if(TimerIsReady(TIMER_RESET))
				{
					setGPIO(LED_DP, !PIN_LED_DP);
					StartTimer(TIMER_RESET, 200);
                    //printf("2FB:%05u\n\r", stSensProx[0].count);
                    //printf("1FB:%05u\n\r", stSensProx[1].count);
				}*/

				//printf("ULTRA_ECHO_CHECK: Timeout!!\n\r");
				TMR1ON=0; //Deshabilito la lectura de los ECHO
				for(n = PROX1; n <= PROX4; n++)
				{
					if(isULTRASONIC(n)&&(US_lecturas==0))
					{
						//printf("ULTRA_ECHO_CHECK: Sensor%u: detected = %05u\n\r", n+1, stSensProx[n].detected);
						//printf(">>TO: det:%05u\ttmr:%05u\n\r", stSensProx[n].detected, getTimerValue(0));
						stSensProx[n].detected = (unsigned short int)(stSensProx[n].count[0] * T_ULTRA_CONVERSION); //Hago la conversion a milimetros
						//FiltroUS();
						//printf("1:%05u\n\r", stSensProx[n].count[j]);
					}
				}

				//printf("FIN DE CICLO\n\n\r");

				state = ULTRA_TRIGGER_ON;
			}
    		break;
	}
}

void LecturaFlancosUS(void)
{
    stSensProx[PROX1].count[US_lecturas] += getGPIO(PROX1);
    stSensProx[PROX2].count[US_lecturas] += getGPIO(PROX2);
    stSensProx[PROX3].count[US_lecturas] += getGPIO(PROX3);
    stSensProx[PROX4].count[US_lecturas] += getGPIO(PROX4);
}

void FiltroUS(void)
{
	unsigned char n=0, j=0, flag;
	unsigned int aux, prom;

	for(n = PROX1; n <= PROX4; n++)
	{
		prom=0;
		//stSensProx[n].detected=stSensProx[n].count[(CANT_VALORES-1)];
		do
		{
			flag=0;
			for(j=0; j < (CANT_VALORES-1); j++)
			{
				if(stSensProx[n].count[j] > stSensProx[n].count[j+1])
				{
					aux=stSensProx[n].count[j];
					stSensProx[n].count[j]=stSensProx[n].count[j+1];
					stSensProx[n].count[j+1]=aux;
					flag=1;
				}
			}
		} while(flag==1);

		for(j=CANT_ELIMINADOS; j < (CANT_VALORES-CANT_ELIMINADOS); j++)
			prom=prom+stSensProx[n].count[j];

		stSensProx[n].detected = (unsigned short int)((prom/(CANT_VALORES-(2*CANT_ELIMINADOS))) * 3.5);
		/*
		if(stSensProx[n].detected-stSensProx[n].anterior>4000)
		{
			aux=stSensProx[n].detected;
			stSensProx[n].detected=stSensProx[n].anterior;
			stSensProx[n].anterior=aux;
		}
		else
			stSensProx[n].anterior=stSensProx[n].detected;
		*/

		//stSensProx[n].detected=stSensProx[n].count[(CANT_VALORES-3)];
	}
}

/*** original: serial.c ***/


void serialprint(const char *fmt, ...)
{
	#ifdef SERIAL_ENABLED
	printf(fmt);
/*
		char buff[50];
		va_list args;
		va_start(args, fmt);
		sprintf(buff, fmt, args);
		va_end(args);

		printf(buff);
*/
	#endif
}


void putch(char data)
{
	while(!TXIF)
		continue;
	TXREG = data;
}

void Configurar_UART(void)
{
	TRIS_RX = INPUT;		//The EUSART control will automatically reconfigure the pin from input to output as needed.
    TRIS_TX = INPUT;		//The EUSART control will automatically reconfigure the pin from input to output as needed.

    TXSTAbits.CSRC	= 0;	//Clock Source Select bit. Asynchronous mode: Don?t care.
    TXSTAbits.TX9	= 0;	//1 = Selects 9-bit transmission. 0 = Selects 8-bit transmission
    TXSTAbits.TXEN	= 1;	//1 = Transmit enabled. 0 = Transmit disabled
    TXSTAbits.SYNC	= 0;	//1 = Synchronous mode. 0 = Asynchronous mode
    TXSTAbits.SENDB	= 0;	//1 = Send Sync Break on next transmission (cleared by hardware upon completion). 0 = Sync Break transmission completed
    TXSTAbits.BRGH	= 0;	//1 = High speed. 0 = Low speed

    RCSTAbits.SPEN	= 1;	//1 = Serial port enabled (configures RX/DT and TX/CK pins as serial port pins). 0 = Serial port disabled (held in Reset)
    RCSTAbits.RX9	= 0;	//1 = Selects 9-bit reception. 0 = Selects 8-bit reception
    RCSTAbits.CREN	= 1;	//Continuous Receive Enable bit. Asynchronous mode: 1 = Enables receiver. 0 = Disables receiver

	BAUDCONbits.RXDTP	= 0;	//1 = RX data is inverted. 0 = RX data received is not inverted
    BAUDCONbits.TXCKP	= 0;	//1 = TX data is inverted  0 = TX data is not inverted
    BAUDCONbits.BRG16	= 1;	//1 = 16-bit Baud Rate Generator – SPBRGH and SPBRG. 0 = 8-bit Baud Rate Generator – SPBRG only (Compatible mode), SPBRGH value ignored
    BAUDCONbits.WUE		= 0;	//0 = RX pin not monitored or rising edge detected
    BAUDCONbits.ABDEN	= 0;	//0 = Baud rate measurement disabled or completed
    SPBRG				= 25;	//51 a 48MHZ da 57600 bps; o bien 25 a 48MHz da 115200 baudios
    SPBRGH				= 0;	//Baud Rate Formula = FOSC/[16 (n + 1)], with n = value of SPBRGH:SPBRG register pair
}

/*** original: timers.c ***/


/**						PRIMITIVAS (PORTABLE)   					**/
void TimersHandler(void)
{
	unsigned int i;
	for(i=0; i<CANT_TIMERS; i++)
	{
		if(Timer[i].state == RUNNING_TIMER)
		{
			if(Timer[i].count <= 1)
			{
				Timer[i].count = 0;
				Timer[i].state = READY_TIMER;
			}
			else
				Timer[i].count--;
		}
	}
}

void ResetTimers(void)
{
	unsigned int i;
	for(i=0; i<CANT_TIMERS; i++)
	{
		Timer[i].state = STOPPED_TIMER;
		Timer[i].count = 0;
	}
}

void StartTimer(unsigned char nTimer, unsigned int value)
{
	Timer[nTimer].count = value;
	Timer[nTimer].state = RUNNING_TIMER;
}

void StopTimer(unsigned char nTimer)
{
	Timer[nTimer].state = STOPPED_TIMER;
}

void ResumeTimer(unsigned char nTimer)
{
	Timer[nTimer].state = RUNNING_TIMER;
}

unsigned char ReadTimerState(unsigned char nTimer)
{
	return Timer[nTimer].state;
}

unsigned int ReadTimerCount(unsigned char nTimer)
{
	return Timer[nTimer].count;
}

unsigned char TimerIsReady(unsigned char nTimer)
{
	if(Timer[nTimer].state == READY_TIMER)
	{
		Timer[nTimer].state = STOPPED_TIMER;
		return 1;
	}
	else
		return 0;
}

void TimerTick(void) //Cada 1 ms
{
//	ticks++;
/*
	if(ticks >= 100)	//Base de tiempo: 100 ms
	{
		ticks = 0;
		decimas++;
		if(decimas >= 10)	//Base de tiempo: 1 seg
		{
			decimas = 0;
			segundos++;
		}
	}
*/
	TimersHandler();
}



/**						NO PORTABLE   					**/
/*
void setTimerValue(unsigned char nTimer, unsigned short int value)
{
	switch(nTimer)
	{
		case 0:	//The high byte is updated with the contents of TMR0H when a write occurs to TMR0L. This allows all 16 bits of Timer0 to be updated at once
			TMR0H = (char) ((value>>8)	& 0x00FF);
			TMR0L = (char) ((value)	& 0x00FF);
			break;

		case 1:
			TMR1H = (char) ((value>>8)	& 0x00FF);
			TMR1L = (char) ((value)	& 0x00FF);
			break;

		case 2:
//			TMR2H = (char) ((value>>8)	& 0x00FF);
//			TMR2L = (char) ((value)	& 0x00FF);
			break;

		case 3:
			TMR3H = (char) ((value>>8)	& 0x00FF);
			TMR3L = (char) ((value)	& 0x00FF);
			break;
	}
}
*/
unsigned short int getTimerValue(unsigned char nTimer)
{
	unsigned short int value;
	unsigned char low, high;
	switch(nTimer)
	{
		case 0:	//TMR0H is updated with the contents of the high byte of Timer0 during a read of TMR0L.
			low = (unsigned char)TMR0L;
			high = (unsigned char)TMR0H;
			value = high<<8 | low;
			break;

		case 1:
			value = TMR1L;
			value |= TMR1H<<8;
			break;

		case 2:
//			value = TMR2L;
//			value |= TMR2H<<8;
			break;

		case 3:
			value = TMR3L;
			value |= TMR3H<<8;
			break;
	}
	return value;
}

void Configurar_Timer0(void)
{
 	T0CONbits.TMR0ON	= 0; //Stops Timer0
	T0CONbits.T08BIT	= 0; //Timer0 is configured as a 16-bit timer/counter
	T0CONbits.T0CS		= 0; //Internal instruction cycle clock (CLKO)
	T0CONbits.PSA		= 0; //Timer0 prescaler is assigned. Timer0 clock input comes from prescaler output.
	T0CONbits.T0PS2		= 1; //Timer0 Prescaler Select bits
	T0CONbits.T0PS1		= 0; //Timer0 Prescaler Select bits
	T0CONbits.T0PS0		= 1; //Timer0 Prescaler Select bits
	/*	T0PS2:T0PS0: Timer0 Prescaler Select bits
		111 = 1:256	Prescale value
		110 = 1:128	Prescale value
		101 = 1:64	Prescale value
		100 = 1:32	Prescale value
		011 = 1:16	Prescale value
		010 = 1:8	Prescale value
		001 = 1:4	Prescale value
		000 = 1:2	Prescale value	*/


	setTimer0Value(0x0000); //Set Timer0 registers to value 0x0000



/*	INTCONbits.T0IF=0;
	INTCONbits.T0IE=1;
	INTCONbits.GIE=1;

	INTCON2bits.TMR0IP = 1;	//TMR0 Overflow Interrupt Priority bit HIGH priority
	T0CONbits.PSA = 1;		//Timer0 prescaler is NOT assigned. Timer0 clock input bypasses prescaler.
	T0CONbits.T0CS = 0;		//Internal instruction cycle clock (CLKO)
	T0CONbits.T08BIT = 1;	//Timer0 is configured as a 8-bit timer/counter
	INTCONbits.TMR0IF = 0;	//Reset del Flag del Timer0
	T0CONbits.TMR0ON = 1;	//Arranco el timer
	TMR0L = T_38KHZ;
/**/
}

void Configurar_Timer1(void)
{
	T1CON=0;
    T1CONbits.RD16=1;
//	T1CONbits.T1GINV=1;
//	T1CONbits.TMR1GE=1;
	T1CONbits.T1CKPS=0;
	T1CONbits.T1OSCEN=0;
	T1CONbits.TMR1CS=0;
	TMR1H=0xFF;//Configuro overflow con 240 cuentas
	TMR1L=0x0F;
	T1CONbits.TMR1ON=0;



//	CMCON1bits.T1GSS=0; //Timer 1 Gate Source is comparator output
//	CMCON1bits.CMSYNC=1; //Output is synchronized with falling edge of Timer1 clock

	T1CONbits.TMR1ON=0;
}

void Configurar_Timer2(void)
{
	T2CONbits.TOUTPS=11; //postscale de 1:1 (0) a 1:16 (15) NO SE USA PARA PWM
	T2CONbits.T2CKPS=1; //prescaler 0:1 ; 1:4 ; 2o3: 16
	T2CONbits.TMR2ON=0;
	PR2=249;
	T2CONbits.TMR2ON=1;	//Arranco el timer
}

void Configurar_PWM(void)
{
	CCPR1L=0;
	CCP1CONbits.DC1B=0; //These bits are the two LSbs (bit 1 and bit 0) of the 10-bit PWM duty cycle. The eight MSbs of the duty
	CCP1CONbits.CCP1M=12; //11xx = PWM mode

	CCPR2L=0;
	CCP2CONbits.DC2B=0; //These bits are the two LSbs (bit 1 and bit 0) of the 10-bit PWM duty cycle. The eight MSbs of the duty
	CCP2CONbits.CCP2M=12; //11xx = PWM mode
}

void Configurar_Interrupciones(void)
{
	//INTCON2=0;
	INTCON3=0;
	PIE1=0;
	PIE2=0;
	RCONbits.IPEN=0;
	PIE1bits.TMR2IE=1;
	INTCONbits.PEIE_GIEL=1;
	INTCONbits.GIE_GIEH=1;


    INTCONbits.GIE		= 1; //Enables all unmasked interrupts
//	INTCONbits.PEIE		= 1; //Enables all unmasked peripheral interrupts
	INTCONbits.TMR0IE	= 0; //Disables the TMR0 overflow interrupt
	INTCONbits.INT0IE	= 0; //Disables the INT0 external interrupt
	INTCONbits.TMR0IF	= 0; //TMR0IF bit must be cleared in software by the Interrupt Service Routine

	INTCON2bits.TMR0IP	= 1; //TMR0 Overflow Interrupt Priority bit HIGH priority

    PIE1bits.TMR1IE=1;
    IPR1bits.TMR1IP=1;
}

void interrupt interruptsHandler(void)
{
    if(TMR1IF)//INTERUPT PARA LECTURA ULTRASONIC
    {
        //T1CONbits.TMR1ON=0;

        TMR1IF=0;
        TMR1H=0xFF;//Configuro overflow con 240 cuentas
        TMR1L=0x0F;

        LecturaFlancosUS();

        //T1CONbits.TMR1ON=1;
    }

	if(TMR2IF)	//Timer2 interrupme cada 1 mSeg?
	{
		TMR2IF=0;
 		TimerTick();

//		IRM_1ms = !IRM_1ms;
//		detectarIRM();
	}

//	if(T0IF)	//Timer0 interrupme cada 1 uSeg? //NO ESTA HABILITADA LA INT
//	{
////		TMR0L = 0x00;
//		TMR0IF = 0;	//Reset del Flag del Timer0
//
//		//ULTRA_T4 = !ULTRA_T4;
//		//contadorIRM++;
////		IRM_38kHz = !IRM_38kHz;
////		emitirIRM();
////		ULTRA_T4 = IRM_38kHz;
////		contadorULTRA++;
//	}
}

/*** original: buzzer.c ***/

void beep(unsigned char t, unsigned char n)
{
	unsigned char i;

	for(i=0; i < n; i++)
	{
		setGPIO(BUZZER, ON);
		delay(t);
		setGPIO(BUZZER, OFF);
		delay(t);
	}
}

