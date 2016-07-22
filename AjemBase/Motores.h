/**
	*
	* Project PCB_Alan
	*
*/

#ifndef MOTORES_H
#define	MOTORES_H

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



#endif	/* MOTORES_H */
