
	; Microchip MPLAB XC8 C Compiler V1.38
	; Copyright (C) 1984-2016 HI-TECH Software

	; Auto-generated runtime startup code for final link stage.

	;
	; Compiler options:
	;
	; --chip=16f628a /home/newtonis/Robots/TooSimple/Sensors/main.c
	;


	processor	16F628A

	global	_main,start,reset_vec
	fnroot	_main
	psect	config,class=CONFIG,delta=2,noexec
	psect	idloc,class=IDLOC,delta=2,noexec
	psect	code,class=CODE,delta=2
	psect	powerup,class=CODE,delta=2
	psect	reset_vec,class=CODE,delta=2
	psect	maintext,class=CODE,delta=2
	C	set	0
	Z	set	2
	PCL	set	2
	INDF	set	0

	STATUS	equ	3
	PCLATH	equ	0Ah

	psect	eeprom_data,class=EEDATA,delta=2,space=3,noexec
	psect	intentry,class=CODE,delta=2
	psect	functab,class=CODE,delta=2
	global	intlevel0,intlevel1,intlevel2, intlevel3, intlevel4, intlevel5
intlevel0:
intlevel1:
intlevel2:
intlevel3:
intlevel4:
intlevel5:
	psect	init,class=CODE,delta=2
	psect	cinit,class=CODE,delta=2
	psect	text,class=CODE,delta=2
	psect	end_init,class=CODE,delta=2
	psect	clrtext,class=CODE,delta=2
	FSR	set	4
	psect	strings,class=CODE,delta=2,reloc=256

	global stacklo, stackhi
	stacklo	equ	0
	stackhi	equ	0


	psect	stack,class=STACK,space=2,noexec
	global ___sp,___int_sp
	___sp:
	___int_sp:
	psect	reset_vec
reset_vec:
	; No powerup routine
	global start

; jump to start
	goto	start & 0x7FF | (reset_vec & not 0x7FF)



	psect	init
start
	psect	end_init
	global start_initialization
	ljmp start_initialization	;jump to C runtime clear & initialization

; Config register CONFIG @ 0x2007
;	Oscillator Selection bits
;	FOSC = INTOSCIO, INTOSC oscillator: I/O function on RA6/OSC2/CLKOUT pin, I/O function on RA7/OSC1/CLKIN
;	Watchdog Timer Enable bit
;	WDTE = OFF, WDT disabled
;	Power-up Timer Enable bit
;	PWRTE = OFF, PWRT disabled
;	RA5/MCLR/VPP Pin Function Select bit
;	MCLRE = OFF, RA5/MCLR/VPP pin function is digital input, MCLR internally tied to VDD
;	Brown-out Detect Enable bit
;	BOREN = OFF, BOD disabled
;	Low-Voltage Programming Enable bit
;	LVP = OFF, RB4/PGM pin has digital I/O function, HV on MCLR must be used for programming
;	Data EE Memory Code Protection bit
;	CPD = OFF, Data memory code protection off
;	Flash Program Memory Code Protection bit
;	CP = OFF, Code protection off

	psect	config
		org 0x0
		dw 0xFF18


psect common,class=COMMON,space=1
psect bank0,class=BANK0,space=1
psect bank1,class=BANK1,space=1
psect bank2,class=BANK2,space=1
psect bank3,class=BANK3,space=1
psect ram,class=RAM,space=1
psect abs1,class=ABS1,space=1
psect sfr0,class=SFR0,space=1
psect sfr1,class=SFR1,space=1
psect sfr2,class=SFR2,space=1
psect sfr3,class=SFR3,space=1


	end	start
