opt subtitle "Microchip Technology Omniscient Code Generator (Lite mode) build 201502162209"

opt pagewidth 120

	opt lm

	processor	16F628A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 51 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
INDF equ 00h ;# 
# 57 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
TMR0 equ 01h ;# 
# 63 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
PCL equ 02h ;# 
# 69 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
STATUS equ 03h ;# 
# 156 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
FSR equ 04h ;# 
# 162 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
PORTA equ 05h ;# 
# 223 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
PORTB equ 06h ;# 
# 284 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
PCLATH equ 0Ah ;# 
# 303 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
INTCON equ 0Bh ;# 
# 380 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
PIR1 equ 0Ch ;# 
# 436 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
TMR1 equ 0Eh ;# 
# 442 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
TMR1L equ 0Eh ;# 
# 448 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
TMR1H equ 0Fh ;# 
# 454 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
T1CON equ 010h ;# 
# 512 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
TMR2 equ 011h ;# 
# 518 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
T2CON equ 012h ;# 
# 588 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
CCPR1 equ 015h ;# 
# 594 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
CCPR1L equ 015h ;# 
# 600 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
CCPR1H equ 016h ;# 
# 606 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
CCP1CON equ 017h ;# 
# 663 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
RCSTA equ 018h ;# 
# 733 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
TXREG equ 019h ;# 
# 739 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
RCREG equ 01Ah ;# 
# 745 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
CMCON equ 01Fh ;# 
# 814 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
OPTION_REG equ 081h ;# 
# 883 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
TRISA equ 085h ;# 
# 944 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
TRISB equ 086h ;# 
# 1005 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
PIE1 equ 08Ch ;# 
# 1061 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
PCON equ 08Eh ;# 
# 1109 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
PR2 equ 092h ;# 
# 1115 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
TXSTA equ 098h ;# 
# 1171 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
SPBRG equ 099h ;# 
# 1177 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
EEDATA equ 09Ah ;# 
# 1183 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
EEADR equ 09Bh ;# 
# 1189 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
EECON1 equ 09Ch ;# 
# 1226 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
EECON2 equ 09Dh ;# 
# 1232 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
VRCON equ 09Fh ;# 
	FNCALL	_main,_configurar_IO
	FNCALL	_main,_configurar_pwm
	FNCALL	_main,_init
	FNCALL	_main,_set
	FNCALL	_main,_store
	FNCALL	_configurar_pwm,_SetDuty
	FNCALL	_SetDuty,___awdiv
	FNROOT	_main
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	file	"main.c"
	line	52

;initializer for _valores
	retlw	01h
	retlw	02h
	retlw	06h
	retlw	08h
	retlw	0Ch
	global	_actual
	global	_ciclos
	global	_contador
	global	_estado
	global	_V
	global	_times
	global	_cnt
	global	_st
psect	nvBANK0,class=BANK0,space=1,noexec
global __pnvBANK0
__pnvBANK0:
_st:
       ds      1

	global	_CCP1CON
_CCP1CON	set	0x17
	global	_CCP1CONbits
_CCP1CONbits	set	0x17
	global	_CCPR1L
_CCPR1L	set	0x15
	global	_CMCON
_CMCON	set	0x1F
	global	_INTCONbits
_INTCONbits	set	0xB
	global	_PIR1bits
_PIR1bits	set	0xC
	global	_PORTAbits
_PORTAbits	set	0x5
	global	_PORTBbits
_PORTBbits	set	0x6
	global	_T1CONbits
_T1CONbits	set	0x10
	global	_T2CONbits
_T2CONbits	set	0x12
	global	_TMR1H
_TMR1H	set	0xF
	global	_TMR1L
_TMR1L	set	0xE
	global	_GIE
_GIE	set	0x5F
	global	_PEIE
_PEIE	set	0x5E
	global	_TMR2IF
_TMR2IF	set	0x61
	global	_OPTION_REGbits
_OPTION_REGbits	set	0x81
	global	_PIE1bits
_PIE1bits	set	0x8C
	global	_PR2
_PR2	set	0x92
	global	_TRISBbits
_TRISBbits	set	0x86
	global	_TMR2IE
_TMR2IE	set	0x461
	global	_TRISA0
_TRISA0	set	0x428
	global	_TRISA1
_TRISA1	set	0x429
	global	_TRISA2
_TRISA2	set	0x42A
	global	_TRISA3
_TRISA3	set	0x42B
	global	_TRISA4
_TRISA4	set	0x42C
	global	_TRISA7
_TRISA7	set	0x42F
	global	_TRISB0
_TRISB0	set	0x430
	global	_TRISB3
_TRISB3	set	0x433
	global	_TRISB4
_TRISB4	set	0x434
	global	_TRISB5
_TRISB5	set	0x435
	global	_TRISB6
_TRISB6	set	0x436
; #config settings
global __CFG_WDTE$OFF
__CFG_WDTE$OFF equ 0x0
global __CFG_PWRTE$OFF
__CFG_PWRTE$OFF equ 0x0
global __CFG_CP$OFF
__CFG_CP$OFF equ 0x0
global __CFG_BOREN$OFF
__CFG_BOREN$OFF equ 0x0
global __CFG_LVP$OFF
__CFG_LVP$OFF equ 0x0
global __CFG_MCLRE$OFF
__CFG_MCLRE$OFF equ 0x0
global __CFG_CPD$OFF
__CFG_CPD$OFF equ 0x0
global __CFG_FOSC$INTOSCIO
__CFG_FOSC$INTOSCIO equ 0x0
	file	"main.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_actual:
       ds      1

_ciclos:
       ds      1

_contador:
       ds      1

_estado:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_V:
       ds      5

_sensor:
       ds      5

_times:
       ds      4

_cnt:
       ds      2

psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"main.c"
	line	52
_valores:
       ds      5

	file	"main.as"
	line	#
psect clrtext,class=CODE,delta=2
global clear_ram0
;	Called with FSR containing the base address, and
;	W with the last address+1
clear_ram0:
	clrwdt			;clear the watchdog before getting into this loop
clrloop0:
	clrf	indf		;clear RAM location pointed to by FSR
	incf	fsr,f		;increment pointer
	xorwf	fsr,w		;XOR with final address
	btfsc	status,2	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
	xorwf	fsr,w		;XOR again to restore value
	goto	clrloop0		;do the next byte

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	movlw	low(__pbssCOMMON)
	movwf	fsr
	movlw	low((__pbssCOMMON)+04h)
	fcall	clear_ram0
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+010h)
	fcall	clear_ram0
	line	#
; Initialize objects allocated to BANK0
	global __pidataBANK0
psect cinit,class=CODE,delta=2,merge=1
	fcall	__pidataBANK0+0		;fetch initializer
	movwf	__pdataBANK0+0&07fh		
	fcall	__pidataBANK0+1		;fetch initializer
	movwf	__pdataBANK0+1&07fh		
	fcall	__pidataBANK0+2		;fetch initializer
	movwf	__pdataBANK0+2&07fh		
	fcall	__pidataBANK0+3		;fetch initializer
	movwf	__pdataBANK0+3&07fh		
	fcall	__pidataBANK0+4		;fetch initializer
	movwf	__pdataBANK0+4&07fh		
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_init:	; 0 bytes @ 0x0
?_configurar_IO:	; 0 bytes @ 0x0
?_configurar_pwm:	; 0 bytes @ 0x0
?_store:	; 0 bytes @ 0x0
?_set:	; 0 bytes @ 0x0
?_ISR:	; 0 bytes @ 0x0
??_ISR:	; 0 bytes @ 0x0
	ds	4
??_init:	; 0 bytes @ 0x4
??_configurar_IO:	; 0 bytes @ 0x4
??_store:	; 0 bytes @ 0x4
??_set:	; 0 bytes @ 0x4
??___awdiv:	; 0 bytes @ 0x4
	global	set@j
set@j:	; 2 bytes @ 0x4
	ds	1
??_configurar_pwm:	; 0 bytes @ 0x5
	ds	1
??_main:	; 0 bytes @ 0x6
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	_store$318
_store$318:	; 1 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	ds	1
	global	_store$319
_store$319:	; 1 bytes @ 0x1
	ds	1
	global	_store$320
_store$320:	; 1 bytes @ 0x2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	ds	1
	global	_store$321
_store$321:	; 1 bytes @ 0x3
	ds	1
	global	_store$322
_store$322:	; 1 bytes @ 0x4
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x4
	ds	1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x5
	ds	1
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x6
	ds	2
?_SetDuty:	; 0 bytes @ 0x8
	global	SetDuty@S
SetDuty@S:	; 2 bytes @ 0x8
	ds	2
??_SetDuty:	; 0 bytes @ 0xA
	ds	2
?_main:	; 2 bytes @ 0xC
main@argc:	; 2 bytes @ 0xC
	ds	2
main@argv:	; 2 bytes @ 0xE
	ds	2
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        5
;!    BSS         20
;!    Persistent  1
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      6      10
;!    BANK0            80     16      38
;!    BANK1            80      0       0
;!    BANK2            48      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->_set
;!    _SetDuty->___awdiv
;!
;!Critical Paths under _ISR in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _configurar_pwm->_SetDuty
;!    _SetDuty->___awdiv
;!
;!Critical Paths under _ISR in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK2
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 4     0      4    1176
;!                                             12 BANK0      4     0      4
;!                      _configurar_IO
;!                     _configurar_pwm
;!                               _init
;!                                _set
;!                              _store
;! ---------------------------------------------------------------------------------
;! (1) _store                                                8     8      0     185
;!                                              4 COMMON     1     1      0
;!                                              0 BANK0      5     5      0
;! ---------------------------------------------------------------------------------
;! (1) _set                                                  2     2      0      68
;!                                              4 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _init                                                 0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _configurar_pwm                                       0     0      0     923
;!                            _SetDuty
;! ---------------------------------------------------------------------------------
;! (2) _SetDuty                                              4     2      2     923
;!                                              8 BANK0      4     2      2
;!                            ___awdiv
;! ---------------------------------------------------------------------------------
;! (3) ___awdiv                                              9     5      4     753
;!                                              4 COMMON     1     1      0
;!                                              0 BANK0      8     4      4
;! ---------------------------------------------------------------------------------
;! (1) _configurar_IO                                        0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (4) _ISR                                                  4     4      0       0
;!                                              0 COMMON     4     4      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 4
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _configurar_IO
;!   _configurar_pwm
;!     _SetDuty
;!       ___awdiv
;!   _init
;!   _set
;!   _store
;!
;! _ISR (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!SFR3                 0      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!BANK2               30      0       0       9        0.0%
;!BITBANK2            30      0       0       8        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!BANK1               50      0       0       7        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!BANK0               50     10      26       3       47.5%
;!BITBANK0            50      0       0       5        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      6       A       1       71.4%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      30      10        0.0%
;!ABS                  0      0      30       4        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%
;!EEDATA              80      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 99 in file "main.c"
;; Parameters:    Size  Location     Type
;;  argc            2   12[BANK0 ] int 
;;  argv            2   14[BANK0 ] PTR PTR unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2   12[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       4       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       4       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_configurar_IO
;;		_configurar_pwm
;;		_init
;;		_set
;;		_store
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"main.c"
	line	99
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"main.c"
	line	99
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 4
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	100
	
l1212:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_st)
	incf	(_st),f
	line	101
	
l1214:	
	movlw	high highword(0)
	movwf	(_times+3)
	movlw	low highword(0)
	movwf	(_times+2)
	movlw	high(0)
	movwf	(_times+1)
	movlw	low(0)
	movwf	(_times)

	line	102
	
l1216:	
	fcall	_init
	line	103
	fcall	_configurar_IO
	line	104
	
l1218:	
	fcall	_configurar_pwm
	line	105
	
l1220:	
	fcall	_set
	line	106
	
l1222:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1121/8)^080h,(1121)&7	;volatile
	line	107
	
l1224:	
	bsf	(94/8),(94)&7	;volatile
	line	108
	
l1226:	
	bsf	(95/8),(95)&7	;volatile
	goto	l1228
	line	112
	
l115:	
	line	113
	
l1228:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(_times+3),7
	goto	u1091
	movf	(_times+3),w
	btfss	status,2
	goto	u1090
	movf	(_times+2),w
	btfss	status,2
	goto	u1090
	movlw	2
	subwf	(_times+1),w
	skipz
	goto	u1093
	movlw	29
	subwf	(_times),w
	skipz
	goto	u1093
u1093:
	btfss	status,0
	goto	u1091
	goto	u1090

u1091:
	goto	l1234
u1090:
	
l1230:	
	btfsc	(_times+3),7
	goto	u1100
	movf	(_times+3),w
	btfss	status,2
	goto	u1101
	movf	(_times+2),w
	btfss	status,2
	goto	u1101
	movlw	2
	subwf	(_times+1),w
	skipz
	goto	u1103
	movlw	48
	subwf	(_times),w
	skipz
	goto	u1103
u1103:
	btfsc	status,0
	goto	u1101
	goto	u1100

u1101:
	goto	l1234
u1100:
	line	114
	
l1232:	
	fcall	_store
	line	115
	goto	l1228
	
l116:	
	line	116
	
l1234:	
	fcall	_set
	goto	l1228
	line	117
	
l117:	
	goto	l1228
	line	124
	
l118:	
	line	112
	goto	l1228
	
l119:	
	line	125
	
l120:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,8314
	global	_store

;; *************** function _store *****************
;; Defined at:
;;		line 75 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    0        int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       5       0       0
;;      Temps:          1       0       0       0
;;      Totals:         1       5       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	75
global __ptext1
__ptext1:	;psect for function _store
psect	text1
	file	"main.c"
	line	75
	global	__size_of_store
	__size_of_store	equ	__end_of_store-_store
	
_store:	
;incstack = 0
	opt	stack 6
; Regs used in _store: [wreg+status,2+status,0]
	line	77
	
l1148:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_store$318)
	incf	(_store$318),f
	
l1150:	
	movf	((_V)),w
	btfss	status,2
	goto	u991
	goto	u990
u991:
	goto	l1156
u990:
	
l1152:	
	btfss	(5),0	;volatile
	goto	u1001
	goto	u1000
u1001:
	goto	l1156
u1000:
	
l1154:	
	clrf	(_store$318)
	goto	l1156
	
l97:	
	
l1156:	
	movf	(_store$318),w
	movwf	(??_store+0)+0
	movf	(??_store+0)+0,w
	movwf	(_V)
	line	78
	
l1158:	
	clrf	(_store$319)
	incf	(_store$319),f
	
l1160:	
	movf	(0+(_V)+01h),w
	btfss	status,2
	goto	u1011
	goto	u1010
u1011:
	goto	l1166
u1010:
	
l1162:	
	btfss	(5),1	;volatile
	goto	u1021
	goto	u1020
u1021:
	goto	l1166
u1020:
	
l1164:	
	clrf	(_store$319)
	goto	l1166
	
l99:	
	
l1166:	
	movf	(_store$319),w
	movwf	(??_store+0)+0
	movf	(??_store+0)+0,w
	movwf	0+(_V)+01h
	line	79
	
l1168:	
	clrf	(_store$320)
	incf	(_store$320),f
	
l1170:	
	movf	(0+(_V)+02h),w
	btfss	status,2
	goto	u1031
	goto	u1030
u1031:
	goto	l1176
u1030:
	
l1172:	
	btfss	(5),2	;volatile
	goto	u1041
	goto	u1040
u1041:
	goto	l1176
u1040:
	
l1174:	
	clrf	(_store$320)
	goto	l1176
	
l101:	
	
l1176:	
	movf	(_store$320),w
	movwf	(??_store+0)+0
	movf	(??_store+0)+0,w
	movwf	0+(_V)+02h
	line	80
	
l1178:	
	clrf	(_store$321)
	incf	(_store$321),f
	
l1180:	
	movf	(0+(_V)+03h),w
	btfss	status,2
	goto	u1051
	goto	u1050
u1051:
	goto	l1186
u1050:
	
l1182:	
	btfss	(5),3	;volatile
	goto	u1061
	goto	u1060
u1061:
	goto	l1186
u1060:
	
l1184:	
	clrf	(_store$321)
	goto	l1186
	
l103:	
	
l1186:	
	movf	(_store$321),w
	movwf	(??_store+0)+0
	movf	(??_store+0)+0,w
	movwf	0+(_V)+03h
	line	81
	
l1188:	
	clrf	(_store$322)
	incf	(_store$322),f
	
l1190:	
	movf	(0+(_V)+04h),w
	btfss	status,2
	goto	u1071
	goto	u1070
u1071:
	goto	l1196
u1070:
	
l1192:	
	btfss	(5),4	;volatile
	goto	u1081
	goto	u1080
u1081:
	goto	l1196
u1080:
	
l1194:	
	clrf	(_store$322)
	goto	l1196
	
l105:	
	
l1196:	
	movf	(_store$322),w
	movwf	(??_store+0)+0
	movf	(??_store+0)+0,w
	movwf	0+(_V)+04h
	line	82
	
l1198:	
	clrf	(_st)
	line	83
	
l106:	
	return
	opt stack 0
GLOBAL	__end_of_store
	__end_of_store:
	signat	_store,88
	global	_set

;; *************** function _set *****************
;; Defined at:
;;		line 84 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  j               2    4[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         2       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	84
global __ptext2
__ptext2:	;psect for function _set
psect	text2
	file	"main.c"
	line	84
	global	__size_of_set
	__size_of_set	equ	__end_of_set-_set
	
_set:	
;incstack = 0
	opt	stack 6
; Regs used in _set: [wreg-fsr0h+status,2+status,0+btemp+1]
	line	85
	
l976:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((_st)),w
	btfss	status,2
	goto	u661
	goto	u660
u661:
	goto	l112
u660:
	line	86
	
l978:	
	movf	(_V),w
	skipz
	bsf	(6),0	;volatile
	skipnz
	bcf	(6),0	;volatile
	line	87
	movf	0+(_V)+01h,w
	skipz
	bsf	(6),4	;volatile
	skipnz
	bcf	(6),4	;volatile
	line	88
	movf	0+(_V)+02h,w
	skipz
	bsf	(6),5	;volatile
	skipnz
	bcf	(6),5	;volatile
	line	89
	movf	0+(_V)+03h,w
	skipz
	bsf	(6),6	;volatile
	skipnz
	bcf	(6),6	;volatile
	line	90
	movf	0+(_V)+04h,w
	skipz
	bsf	(6),7	;volatile
	skipnz
	bcf	(6),7	;volatile
	line	92
	
l980:	
	clrf	(set@j)
	clrf	(set@j+1)
	
l982:	
	movf	(set@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(0)^80h
	subwf	btemp+1,w
	skipz
	goto	u675
	movlw	05h
	subwf	(set@j),w
u675:

	skipc
	goto	u671
	goto	u670
u671:
	goto	l986
u670:
	goto	l111
	
l984:	
	goto	l111
	
l110:	
	
l986:	
	movf	(set@j),w
	addlw	low(_V|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	
l988:	
	movlw	01h
	addwf	(set@j),f
	skipnc
	incf	(set@j+1),f
	movlw	0
	addwf	(set@j+1),f
	
l990:	
	movf	(set@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(0)^80h
	subwf	btemp+1,w
	skipz
	goto	u685
	movlw	05h
	subwf	(set@j),w
u685:

	skipc
	goto	u681
	goto	u680
u681:
	goto	l986
u680:
	
l111:	
	line	93
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_st)
	incf	(_st),f
	goto	l112
	line	94
	
l109:	
	line	95
	
l112:	
	return
	opt stack 0
GLOBAL	__end_of_set
	__end_of_set:
	signat	_set,88
	global	_init

;; *************** function _init *****************
;; Defined at:
;;		line 142 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	line	142
global __ptext3
__ptext3:	;psect for function _init
psect	text3
	file	"main.c"
	line	142
	global	__size_of_init
	__size_of_init	equ	__end_of_init-_init
	
_init:	
;incstack = 0
	opt	stack 6
; Regs used in _init: [wreg+status,2]
	line	143
	
l992:	
	movlw	low(07h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	144
	
l994:	
	clrf	(_contador)
	line	145
	
l996:	
	clrf	(_estado)
	line	146
	
l998:	
	clrf	(_ciclos)
	line	147
	
l1000:	
	clrf	(_actual)
	line	152
	
l129:	
	return
	opt stack 0
GLOBAL	__end_of_init
	__end_of_init:
	signat	_init,88
	global	_configurar_pwm

;; *************** function _configurar_pwm *****************
;; Defined at:
;;		line 153 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_SetDuty
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	line	153
global __ptext4
__ptext4:	;psect for function _configurar_pwm
psect	text4
	file	"main.c"
	line	153
	global	__size_of_configurar_pwm
	__size_of_configurar_pwm	equ	__end_of_configurar_pwm-_configurar_pwm
	
_configurar_pwm:	
;incstack = 0
	opt	stack 4
; Regs used in _configurar_pwm: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	154
	
l1200:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(18),2	;volatile
	line	155
	
l1202:	
	movlw	((0 & ((1<<4)-1))<<3)|not (((1<<4)-1)<<3)
	andwf	(18),f	;volatile
	line	156
	movlw	((0 & ((1<<2)-1))<<0)|not (((1<<2)-1)<<0)
	andwf	(18),f	;volatile
	line	157
	
l1204:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(134)^080h,3	;volatile
	line	158
	
l1206:	
	movlw	low(011h)
	movwf	(146)^080h	;volatile
	line	160
	
l1208:	
	movlw	low(0Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(23)	;volatile
	line	162
	
l1210:	
	movlw	0Fh
	movwf	(SetDuty@S)
	movlw	0
	movwf	((SetDuty@S))+1
	fcall	_SetDuty
	line	163
	
l132:	
	return
	opt stack 0
GLOBAL	__end_of_configurar_pwm
	__end_of_configurar_pwm:
	signat	_configurar_pwm,88
	global	_SetDuty

;; *************** function _SetDuty *****************
;; Defined at:
;;		line 67 in file "main.c"
;; Parameters:    Size  Location     Type
;;  S               2    8[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       2       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       2       0       0
;;      Totals:         0       4       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___awdiv
;; This function is called by:
;;		_configurar_pwm
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	line	67
global __ptext5
__ptext5:	;psect for function _SetDuty
psect	text5
	file	"main.c"
	line	67
	global	__size_of_SetDuty
	__size_of_SetDuty	equ	__end_of_SetDuty-_SetDuty
	
_SetDuty:	
;incstack = 0
	opt	stack 4
; Regs used in _SetDuty: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	70
	
l1142:	
	movlw	03h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(SetDuty@S),w
	movwf	(??_SetDuty+0)+0
	movlw	0
	andwf	(SetDuty@S+1),w
	movwf	1+(??_SetDuty+0)+0
	movf	1+(??_SetDuty+0)+0,w
	xorlw	80h
	movwf	btemp+1
	movlw	(0)^80h
	subwf	btemp+1,w
	skipz
	goto	u975
	movlw	02h
	subwf	0+(??_SetDuty+0)+0,w
u975:

	skipnc
	goto	u971
	goto	u970
	
u971:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(23),5	;volatile
	goto	u984
u970:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(23),5	;volatile
u984:
	line	71
	
l1144:	
	movf	(SetDuty@S),w
	andlw	01h
	movwf	(??_SetDuty+0)+0
	swapf	(??_SetDuty+0)+0,f
	movf	(23),w	;volatile
	xorwf	(??_SetDuty+0)+0,w
	andlw	not (((1<<1)-1)<<4)
	xorwf	(??_SetDuty+0)+0,w
	movwf	(23)	;volatile
	line	72
	
l1146:	
	movlw	04h
	movwf	(___awdiv@divisor)
	movlw	0
	movwf	((___awdiv@divisor))+1
	movf	(SetDuty@S+1),w
	movwf	(___awdiv@dividend+1)
	movf	(SetDuty@S),w
	movwf	(___awdiv@dividend)
	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	movwf	(21)	;volatile
	line	73
	
l93:	
	return
	opt stack 0
GLOBAL	__end_of_SetDuty
	__end_of_SetDuty:
	signat	_SetDuty,4216
	global	___awdiv

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 6 in file "/opt/microchip/xc8/v1.34/sources/common/awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK0 ] int 
;;  dividend        2    2[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    6[BANK0 ] int 
;;  sign            1    5[BANK0 ] unsigned char 
;;  counter         1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       4       0       0
;;      Locals:         0       4       0       0
;;      Temps:          1       0       0       0
;;      Totals:         1       8       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_SetDuty
;;		_DUTYSet
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1
	file	"/opt/microchip/xc8/v1.34/sources/common/awdiv.c"
	line	6
global __ptext6
__ptext6:	;psect for function ___awdiv
psect	text6
	file	"/opt/microchip/xc8/v1.34/sources/common/awdiv.c"
	line	6
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
;incstack = 0
	opt	stack 4
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	14
	
l1098:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awdiv@sign)
	line	15
	
l1100:	
	btfss	(___awdiv@divisor+1),7
	goto	u871
	goto	u870
u871:
	goto	l1106
u870:
	line	16
	
l1102:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	17
	
l1104:	
	clrf	(___awdiv@sign)
	incf	(___awdiv@sign),f
	goto	l1106
	line	18
	
l364:	
	line	19
	
l1106:	
	btfss	(___awdiv@dividend+1),7
	goto	u881
	goto	u880
u881:
	goto	l1112
u880:
	line	20
	
l1108:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	21
	
l1110:	
	movlw	low(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l1112
	line	22
	
l365:	
	line	23
	
l1112:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	24
	
l1114:	
	movf	((___awdiv@divisor)),w
iorwf	((___awdiv@divisor+1)),w
	btfsc	status,2
	goto	u891
	goto	u890
u891:
	goto	l1134
u890:
	line	25
	
l1116:	
	clrf	(___awdiv@counter)
	incf	(___awdiv@counter),f
	line	26
	goto	l1122
	
l368:	
	line	27
	
l1118:	
	movlw	01h
	
u905:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u905
	line	28
	
l1120:	
	movlw	low(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l1122
	line	29
	
l367:	
	line	26
	
l1122:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u911
	goto	u910
u911:
	goto	l1118
u910:
	goto	l1124
	
l369:	
	goto	l1124
	line	30
	
l370:	
	line	31
	
l1124:	
	movlw	01h
	
u925:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u925
	line	32
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u935
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u935:
	skipc
	goto	u931
	goto	u930
u931:
	goto	l1130
u930:
	line	33
	
l1126:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	34
	
l1128:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l1130
	line	35
	
l371:	
	line	36
	
l1130:	
	movlw	01h
	
u945:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u945
	line	37
	
l1132:	
	movlw	01h
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u951
	goto	u950
u951:
	goto	l1124
u950:
	goto	l1134
	
l372:	
	goto	l1134
	line	38
	
l366:	
	line	39
	
l1134:	
	movf	((___awdiv@sign)),w
	btfsc	status,2
	goto	u961
	goto	u960
u961:
	goto	l1138
u960:
	line	40
	
l1136:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l1138
	
l373:	
	line	41
	
l1138:	
	movf	(___awdiv@quotient+1),w
	movwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	movwf	(?___awdiv)
	goto	l374
	
l1140:	
	line	42
	
l374:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
	global	_configurar_IO

;; *************** function _configurar_IO *****************
;; Defined at:
;;		line 188 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1
	file	"main.c"
	line	188
global __ptext7
__ptext7:	;psect for function _configurar_IO
psect	text7
	file	"main.c"
	line	188
	global	__size_of_configurar_IO
	__size_of_configurar_IO	equ	__end_of_configurar_IO-_configurar_IO
	
_configurar_IO:	
;incstack = 0
	opt	stack 6
; Regs used in _configurar_IO: []
	line	189
	
l1002:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1075/8)^080h,(1075)&7	;volatile
	line	191
	bsf	(1064/8)^080h,(1064)&7	;volatile
	line	192
	bsf	(1065/8)^080h,(1065)&7	;volatile
	line	193
	bsf	(1066/8)^080h,(1066)&7	;volatile
	line	194
	bsf	(1067/8)^080h,(1067)&7	;volatile
	line	195
	bsf	(1068/8)^080h,(1068)&7	;volatile
	line	197
	bcf	(1072/8)^080h,(1072)&7	;volatile
	line	198
	bcf	(1076/8)^080h,(1076)&7	;volatile
	line	199
	bcf	(1077/8)^080h,(1077)&7	;volatile
	line	200
	bcf	(1078/8)^080h,(1078)&7	;volatile
	line	201
	bcf	(1071/8)^080h,(1071)&7	;volatile
	line	202
	
l141:	
	return
	opt stack 0
GLOBAL	__end_of_configurar_IO
	__end_of_configurar_IO:
	signat	_configurar_IO,88
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 127 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          4       0       0       0
;;      Totals:         4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1
	line	127
global __ptext8
__ptext8:	;psect for function _ISR
psect	text8
	file	"main.c"
	line	127
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
;incstack = 0
	opt	stack 4
; Regs used in _ISR: [wreg+status,2+status,0]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_ISR+0)
	movf	fsr0,w
	movwf	(??_ISR+1)
	movf	pclath,w
	movwf	(??_ISR+2)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_ISR+3)
	ljmp	_ISR
psect	text8
	line	128
	
i1l1040:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1121/8)^080h,(1121)&7	;volatile
	goto	u71_21
	goto	u71_20
u71_21:
	goto	i1l126
u71_20:
	
i1l1042:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(97/8),(97)&7	;volatile
	goto	u72_21
	goto	u72_20
u72_21:
	goto	i1l126
u72_20:
	line	130
	
i1l1044:	
	movlw	01h
	addwf	(_times),f
	movlw	0
	skipnc
movlw 1
	addwf	(_times+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(_times+2),f
	movlw	0
	skipnc
movlw 1
	addwf	(_times+3),f
	line	131
	
i1l1046:	
		movlw	248
	xorwf	((_times)),w
	skipz
	goto	u73_21
	decf	((_times+1)),w
iorwf	((_times+2)),w
iorwf	((_times+3)),w
	btfss	status,2
	goto	u73_21
	goto	u73_20
u73_21:
	goto	i1l1050
u73_20:
	line	132
	
i1l1048:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1075/8)^080h,(1075)&7	;volatile
	goto	i1l1050
	line	133
	
i1l124:	
	line	134
	
i1l1050:	
		movlw	48
	bcf	status, 5	;RP0=0, select bank0
	xorwf	((_times)),w
	movlw	2
	skipnz
	xorwf	((_times+1)),w
iorwf	((_times+2)),w
iorwf	((_times+3)),w
	btfss	status,2
	goto	u74_21
	goto	u74_20
u74_21:
	goto	i1l1056
u74_20:
	line	135
	
i1l1052:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1075/8)^080h,(1075)&7	;volatile
	line	136
	
i1l1054:	
	movlw	high highword(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_times+3)
	movlw	low highword(0)
	movwf	(_times+2)
	movlw	high(0)
	movwf	(_times+1)
	movlw	low(0)
	movwf	(_times)

	goto	i1l1056
	line	137
	
i1l125:	
	line	138
	
i1l1056:	
	bcf	(97/8),(97)&7	;volatile
	goto	i1l126
	line	139
	
i1l123:	
	line	140
	
i1l126:	
	movf	(??_ISR+3),w
	bcf	status, 5	;RP0=0, select bank0
	movwf	btemp+1
	movf	(??_ISR+2),w
	movwf	pclath
	movf	(??_ISR+1),w
	movwf	fsr0
	swapf	(??_ISR+0)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_ISR
	__end_of_ISR:
	signat	_ISR,88
global	___latbits
___latbits	equ	0
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp
	global	wtemp0
	wtemp set btemp
	wtemp0 set btemp
	global	wtemp1
	wtemp1 set btemp+2
	global	wtemp2
	wtemp2 set btemp+4
	global	wtemp3
	wtemp3 set btemp+6
	global	wtemp4
	wtemp4 set btemp+8
	global	wtemp5
	wtemp5 set btemp+10
	global	wtemp6
	wtemp6 set btemp+1
	global	ttemp
	global	ttemp0
	ttemp set btemp
	ttemp0 set btemp
	global	ttemp1
	ttemp1 set btemp+3
	global	ttemp2
	ttemp2 set btemp+6
	global	ttemp3
	ttemp3 set btemp+9
	global	ttemp4
	ttemp4 set btemp+1
	global	ltemp
	global	ltemp0
	ltemp set btemp
	ltemp0 set btemp
	global	ltemp1
	ltemp1 set btemp+4
	global	ltemp2
	ltemp2 set btemp+8
	global	ltemp3
	ltemp3 set btemp+2
	end
