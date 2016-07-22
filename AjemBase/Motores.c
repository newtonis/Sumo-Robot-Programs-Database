#include "Motores.h"
#include "GPIO.h"
#include "Timers.h"

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