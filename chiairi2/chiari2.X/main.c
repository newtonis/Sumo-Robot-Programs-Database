/*
 * File:   main.c
 * Author: Chiari-note
 *
 * Created on 13 de junio de 2025, 23:48
 */


#include <xc.h>
#include <stdio.h>
#include <stdlib.h>


#pragma config VREGEN = OFF	        // Voltage regulat USB , is  Suspended
#pragma config WDT    = OFF	        // Watchdog timer is suspended
#pragma config PLLDIV = 5               // Internal Oscillator engaged 
#pragma config MCLRE  = OFF
#pragma config WDTPS  = 32768
#pragma config CCP2MX = OFF // Set PWM2 on Pin RB3
#pragma config PBADEN = OFF
#pragma config CPUDIV = OSC1_PLL2 /// Divide 96 MHz PLL frequency by 2 => Fosc=48Mhz
#pragma config USBDIV = 2
#pragma config FOSC   = HSPLL_HS // HS oscillator, PLL enabled, HS used by USB. PLL Frequency: 96 MHz
#pragma config FCMEN  = OFF
#pragma config IESO   = OFF
#pragma config PWRT   = OFF
#pragma config BOR    = OFF
#pragma config BORV   = 3
#pragma config LPT1OSC= OFF
#pragma config STVREN = ON
#pragma config LVP    = OFF
#pragma config ICPRT  = OFF
#pragma config XINST  = OFF
#pragma config DEBUG  = OFF
#pragma config CP0    = OFF, CP1 = OFF, CP2 = OFF, CP3 = OFF
#pragma config CPB    = OFF 	// CPB off
#pragma config CPD    = OFF
#pragma config WRT0   = OFF, WRT1 = OFF, WRT2 = OFF, WRT3 = OFF
#pragma config WRTC   = OFF
#pragma config WRTB   = OFF
#pragma config WRTD   = OFF
#pragma config EBTR0  = OFF, EBTR1 = OFF, EBTR2 = OFF, EBTR3 = OFF
#pragma config EBTRB  = OFF

// Input Output
#define LED_1 PORTBbits.RB0
#define LED_2 PORTBbits.RB1
#define LED_3 PORTBbits.RB2
#define LED_4 PORTBbits.RB4
#define LED_5 PORTBbits.RB5

// Buttons
#define BUTTON_1 PORTDbits.RD2
#define BUTTON_2 PORTDbits.RD3

// Motors
#define M1_A PORTDbits.RD1
#define M1_B PORTDbits.RD0
#define M2_A PORTCbits.RC1
#define M2_B PORTCbits.RC0

// 5 available general propouse counters
long long int counter[5]; 
// 7 analog inputs
int an_input[10]; 
// max 128 ints (16 bits) for persisted data
unsigned int persisted_data[128];
// motor power to apply (-1000 to 1000)
int pwm[2];

void config_micro(){
    // Interal oscillator default 8 MHZ
    OSCCONbits.IRCF = 7;
    
    // Desactivo comparadores para poder usar los pines RA0:RA3
    CMCON=0x07;
    
    // Disable USB
    UCONbits.USBEN = 0;
    UCFGbits.UTRDIS = 1;
    
    // Connfiguracion Timer 0
    T0CONbits.TMR0ON = 0; //timer0 empieza off
    T0CONbits.T08BIT = 0; //timer 0 a 16 bit
    T0CONbits.T0CS   = 0; //timer0 en modo interno
    T0CONbits.PSA    = 0; // activo prescaler
    T0CONbits.T0PS = 0b101; // prescaler 1:64 para el timer0
    
    
    INTCON2bits.TMR0IP = 1; // Timer0 interrupt level
    INTCONbits.TMR0IE  = 1; // Timer0 interrupt enable
    RCONbits.IPEN      = 0; // Disable priority levels on interrupts
    
    // Timer 0 start value
    TMR0H = 0xF8;
    TMR0L = 0xAC; //f8ac = 63660 = 65535 - 1875 -> timer0 a interrumpir cada 1875 * 64 = 12000 ciclos
    // clock interrupt period = 1 / (48 / 4) ) * 120000 = 10000 us = 10 ms = 1 segundo / 100
    // en 1 segundo => 100 interrupciones

    // Configuracion Timer 1
    T1CONbits.TMR1ON = 0;
    T1CONbits.T1RD16 = 0;
    T1CONbits.T1RUN = 0;
    T1CONbits.T1CKPS = 0;
    T1CONbits.T1OSCEN = 0;
    T1CONbits.TMR1CS = 0;
    
    // Global interrupt enable
    INTCONbits.GIE = 1; 
    T0CONbits.TMR0ON = 1; // arranco timer0
    T1CONbits.TMR1ON = 1; // arranco timer1
    
    TMR1H = 0xF8;
    TMR1L = 0x2F; // timer1 interrumpir cada 2000 ciclos
    
    // PWM config (With Timer 2) 
       
    // Configuracion Timer 2
    T2CONbits.TMR2ON=0; // Desactivar timer 2
    T2CONbits.TOUTPS=0b01; // Timer 2 postcale default value 1:1 (not used for PWM)
    T2CONbits.T2CKPS=0b01; // Timer 2 prescaler 1:4
            
    // PWM mode configuration
    CCP1CONbits.CCP1M = 0b1100;
    CCP2CONbits.CCP2M = 0b1100;
    PR2=149; // PWM Freq = 1 / ((149 + 1) * 4 * (1 / 48Mhz) * 4) = 20Khz
    // Max duty cycle = (PR2 + 1) * 4 = 600
    
    // Start with duty = 0
    CCP1CONbits.DC1B = 0;
    CCP2CONbits.DC2B = 0;
    CCPR1L = 0;
    CCPR2L = 0;
    
    T2CONbits.TMR2ON=1; // Enable timer 2
    
    // Analog inputs
    ADCON0bits.CHS=0; // Analog channel 0
    ADCON0bits.GODONE=0; // A/D iddle start status
    ADCON0bits.ADON=1; // Disable A/D Module
    
    ADCON1bits.VCFG = 0;  // Vss fror voltage reference
    ADCON1bits.PCFG = 0b1001; // Use AN0, AN1, AN2, AN3, AN4, AN5
    
    ADCON2bits.ADFM=0; // Result Left justified
    ADCON2bits.ACQT=7; // Acquisition time 20tads
    ADCON2bits.ADCS=6; // fosc/64 Conversion clock: 48 Mhz / 64
    
    // Wixel (for debug)
    
    // Start tris value for wixel ports
    TRISCbits.RC6 = 1;
    TRISCbits.RC7 = 1;
    
    BAUDCONbits.RXDTP=0; //Asynchronous mode: 1 = RX data is inverted 0 = RX data received is not inverted
    BAUDCONbits.TXCKP=0; //XCKP: Clock and Data Polarity Select bit Asynchronous mode: 1 = TX data is inverted 0 = TX
    BAUDCONbits.BRG16=1; //BRG16: 16-Bit Baud Rate Register Enable bit 1 = 16-bit Baud Rate Generator ? SPBRGH and
    //SPBRG 0 = 8-bit Baud Rate Generator ? SPBRG only (Compatible mode), SPBRGH value ignored
    BAUDCONbits.WUE=0; //WUE: Wake-up Enable bit
    BAUDCONbits.ABDEN=0; //Auto-Baud Detect Enable bit
    SPBRG=51; // a 48MHZ da 57600 bps
    SPBRGH=0;
    TXSTAbits.CSRC=0;
    TXSTAbits.TX9=0; //1 = Selects 9-bit transmission 0 = Selects 8-bit transmission
    TXSTAbits.TXEN=1; //1 = Transmit enabled 0 = Transmit disabled
    TXSTAbits.SYNC=0; //1 = Synchronous mode 0 = Asynchronous modeSync Break on next transmission (cleared by hardware upon completion) 0 = Sync
    //Break transmission completed
    TXSTAbits.BRGH=0; //1 = High speed 0 = Low speed
    RCSTAbits.RX9=0;
    RCSTAbits.CREN=1; // CREN: Continuous Receive Enable bit Asynchronous mode: 1 = Enables receiver 0 = Disables
    RCSTAbits.SPEN=1; //1 = Serial port enabled (configures RX/DT and TX/CK pins as serial port pins) 0 = Serial port
    //disabled (held in Reset)
    
    // Input Output
    
    // Leds
    TRISBbits.RB0 = 0;
    TRISBbits.RB1 = 0;
    TRISBbits.RB2 = 0;
    TRISBbits.RB4 = 0;
    TRISBbits.RB5 = 0;
    
    // Buttons
    TRISDbits.RD2 = 1;
    TRISDbits.RD3 = 1;
    
    // Analog inputs
    TRISAbits.RA0 = 1;
    TRISAbits.RA1 = 1;
    TRISAbits.RA2 = 1;
    TRISAbits.RA3 = 1;
    TRISAbits.RA4 = 1;
    TRISEbits.RE0 = 1;
    
    // Motors
    TRISDbits.RD1 = 0;
    TRISDbits.RD0 = 0;
    TRISCbits.RC1 = 0;
    TRISCbits.RC0 = 0;
    TRISBbits.RB3 = 0;
    TRISCbits.RC2 = 0;
    
}

// Analog read
void read_analog(){
    unsigned int aux;
    unsigned char i;
    for (i=0;i<=5;i++){
        ADCON0bits.CHS=i;
        ADCON0bits.GODONE=1;
        while (ADCON0bits.GODONE==1) {}
        aux=ADRESH*4;
        aux=aux+ADRESL/64;
        an_input[i]=aux;
    }
}

// Eeprom
void read_eeprom(){
    unsigned char addr;
    unsigned int aux;
    
    for (addr=0;addr<=100;addr++){
        // set read address
        EEADR = addr;
        // Clear CFGS control bit - to access flash program or eeprom memory - not config registers
        EECON1bits.CFGS = 0;
        // Clear EEPGD control bit - to use eeprom data memory (not flash program)
        EECON1bits.EEPGD = 0;
        // Set RD control bit - initiate eeprom read
        EECON1bits.RD = 1;
        
        if (addr & 0x01){ // address is odd
            // store lower bits
            persisted_data[addr >> 1] = EEDATA | aux << 8;
        }else{ 
            // store higher bits
            aux = EEDATA;
        }
    }    
    
}
void write_eeprom(){
    unsigned char addr; 
    // 100 physical address, 50 real address for persisted data
    for (addr=0;addr<=100;addr++){
        EEADR = addr;
        if (addr & 0x01){ // address is odd
            // write lower bits
            EEDATA = persisted_data[addr >> 1] & 0xFF;
        }else{
            // write higher bits
            EEDATA = (persisted_data[addr >> 1] >> 8) & 0xFF;
        }
        // Clear CFGS control bit - to access flash program or eeprom memory - not config registers
        EECON1bits.CFGS = 0;
        // Clear EEPGD control bit - to use eeprom data memory (not flash program)
        EECON1bits.EEPGD = 0; 
        // Enable writes
        EECON1bits.WREN = 1;
        // Clear interrupts
        INTCONbits.GIE = 0;
        // Write EECON2 codes
        EECON2 = 0x55; 
        EECON2 = 0x0AA;
        // Set WR Bits to begin write
        EECON1bits.WR = 1;
        // Enable interrupts
        INTCONbits.GIE = 1;
        // Disable writes
        EECON1bits.WREN = 0;
        
        while (! EEIF) continue;
        EEIF = 0;
    }
}

// Wixel putch function (for debug) 
void putch(char data){
    while( ! TXIF)
    continue;
    TXREG = data;
}

void __interrupt() enc(void){
    if (TMR0IF){ // Timer 0 Overflow
        // counters unity = 10 ms
        TMR0H = 0xF8;
        TMR0L = 0xAC;
        TMR0IF = 0;
        
        int i;
        for (i=0;i<5;i++){
            counter[i] ++; // increment all counters
        }
    }
}

void init_vars(){
    int i;
    for (i=0;i<5;i++){   
        counter[i] = 0; // init all counters
    }
    pwm[0] = 0; // init pwm vars
    pwm[1] = 0;
}

void update_pwm(){
    int pwm0, pwm1;
    
    if (pwm[0] > 600){
        pwm0 = 600;
    }else if (pwm[0] < -600){
        pwm0 = -600;
    }else{
        pwm0 = pwm[0];
    }
    
    M1_A = pwm0 > 0 ? 0 : 1;
    M1_B = pwm0 < 0 ? 0 : 1;
    pwm0 = pwm0 > 0 ? pwm0 : (-pwm0);
    
    CCP1CONbits.DC1B = pwm0 % 4;
    CCPR1L = pwm0 / 4;

    if (pwm[1] > 600){
        pwm1 = 600;
    }else if (pwm[1] < -600){
        pwm1 = -600;
    }else{
        pwm1 = pwm[1];
    }
    
    M2_A = pwm1 > 0 ? 0 : 1;
    M2_B = pwm1 < 0 ? 0 : 1;
    pwm1 = pwm1 > 0 ? pwm1 : (-pwm1);
    
    CCP2CONbits.DC2B = pwm1 % 4;
    CCPR2L = pwm1 / 4;
}

/*** Button software ***/

char last_b[5];
long long b_counter[5]; 
char b_state[5];
char press_evt[5];
char release_evt[5];
char b[5];
long long state_counter[5];
int combination_state[5];

char single_click_evt[5];
char double_click_evt[5];
char triple_click_evt[5];

/* to delete this debug variables: */
long long iterations;
long long sum_iterations;
long long amount_cycles;
char initial_state;

void buttons_init(){
    int i;
    for (i = 0;i < 2;i++){
        b_state[i] = 0;
        b[i] = 0;
        last_b[i] = 0;

        b_counter[i] = 0;
        state_counter[i] = 0;
        combination_state[i] = 0;
        single_click_evt[i] = 0;
        double_click_evt[i] = 0;
        triple_click_evt[i] = 0;
    }
    initial_state = 1;
    
    /** To delete this variables **/
    iterations = 0;
    sum_iterations = 0;
    amount_cycles = 0;                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   
}

void buttons_loop(){
    if (b_state[0] == 0){
        if (BUTTON_1){ 
            b[0] = 0; // there is at least one iteration with the button released
        }
    }else if(b_state[0] == 1 || initial_state){
        if (!BUTTON_1){
            b[0] = 1; // there is at least one iteration with the button pressed
        }
    }
    if (b_state[1] == 0){
        if (BUTTON_2){ 
            b[1] = 0; // there is at least one iteration with the button released
        }
    }else if(b_state[1] == 1){
        if (!BUTTON_2){
            b[1] = 1; // there is at least one iteration with the button pressed
        }
    }
    int i;
    if (initial_state){
        if (counter[0] >= 20){ // check if there is at least 200 miliseconds of stable button signals
            counter[0] = 0;
            if (!b[0]){ // last 200 miliseconds signal all 0s
                initial_state = 0;
                counter[0] = 0;
                for (i = 0;i < 2;i++){
                    b_state[i] = 0;
                    b[i] = 0;
                    last_b[i] = 0;

                    b_counter[i] = 0;
                    state_counter[i] = 0;
                    combination_state[i] = 0;
                    single_click_evt[i] = 0;
                    double_click_evt[i] = 0;
                    triple_click_evt[i] = 0;
                }
            }
            b[0] = 0; // set button as released
        }
    }else if (counter[0] >= 1){ // review button status every 10 miliseconds
        counter[0] = 0;

        sum_iterations += iterations;
        amount_cycles ++;
        iterations = 0;
        
        /// Layer 1 -> glitch filter
        for (i = 0;i < 2;i++){
            if (b_state[i] == 0){
                if (b[i]){ // all iterations had the button state as pressed
                    b_counter[i] ++;
                    if (b_counter[i] >= 2){ // at least 20 ms of press time (recomended minimum press duration: 60 ms)
                        b_state[i] = 1; // button is now in state pressed
                        b_counter[i] = 0;
                    }
                }else{
                    b[i] = 1; // set button as pressed, waiting for at least one release iteration
                    b_counter[i] = 0;
                }
            }else if (b_state[i] == 1){
                if (!b[i]){ // all iterations had the button state as released
                    b_counter[i] ++;
                    if (b_counter[i] >= 2){ // at least 20 ms of no press time (recomended minimum release duration: 60 ms)
                        b_state[i] = 0;
                        b_counter[i] = 0;
                    }
                }else{
                    b[i] = 0; // set button as released, waiting for at least one press iteration
                    b_counter[i] = 0;
                }
            }
        }

        /// Layer 2 -> press and release event detection
        char click_evt[5];
        
        for (i = 0;i < 2;i++){
            click_evt[i] = 0;
            
            if (last_b[i] == 0 && b_state[i] == 1){
                /// button 1 is now pressed
                press_evt[i] ++; 
                click_evt[i] = 1;

                last_b[i] = 1;
            }else if (last_b[i] == 1 && b_state[i] == 0){
                /// button 1 is now released
                release_evt[i] ++;

                last_b[i] = 0;
            }
        }

        /// Layer 3 -> simple, double and triple click detection
        int i;
        
        for (i = 0;i < 2;i++){
            if (combination_state[i] == 0){
                /// no recorded previous clicks
                if (click_evt[i]){ /// click evt
                    state_counter[i] = 0; /// reset click counter
                    combination_state[i] = 1;
                }

            }else if (combination_state[i] != -1 && combination_state[i] != 0){ 
                if (click_evt[i]){ // click evt
                    combination_state[i] ++;
                }
                if (state_counter[i] >= 30){ /// 300 miliseconds time since first click
                    /// generate single, double or triple click event
                    if (combination_state[i] == 1){
                        single_click_evt[i] ++;
                    }else if (combination_state[i] == 2){
                        double_click_evt[i] ++;
                    }else if(combination_state[i] == 3){
                        triple_click_evt[i] ++;
                    }
                    state_counter[i] = 0;
                    combination_state[i] = -1; /// wait status
                }else{
                    state_counter[i] ++;
                }
            }else if (combination_state[i] == -1){
                if (state_counter[i] >= 10){
                    // wait at least 100 miliseconds since last generated event
                    combination_state[i] = 0;
                    state_counter[i] = 0;
                }else{
                    state_counter[i] ++;
                }
            }
        }
    }

}

/*** End button software ***/

int status_value; /* Status bar value: between 0 and 1000 */
int persisted_status; /* Persist status per iteration */

char int_status;
char status_enabled; /* Enable status bar */
char leds[5]; /* led status variable */

/***** Start status bar program ***/
void status_init(){
    status_value = 0;
    status_enabled = 0;
    int_status = 0;
    
    counter[2] = 0;
    
    int i;
    for (i = 0;i < 5;i++){
        leds[i] = 0;
    }
}

void status_loop(){
    if (status_enabled == 1){
        
        if (counter[2] >= 100){ // reset cycle every second
            counter[2] = 0;
            
            if (status_value > 1000){
                status_value = 1000;
            }
            if (status_value < 0){
                status_value = 0;
            }
            persisted_status = status_value;
        }
        
        int half_status;
        half_status = (int) (persisted_status % 200) / 2 ;
        
        if (counter[2] < half_status){
            int_status = 1;
        }else{
            int_status = 0;
        }
        
        
        int half_led;
        half_led = (int) (persisted_status / 200); 
        
        int i;
        for (i = 0;i < 5;i++){
            if (i < half_led){
                leds[i] = 1;
            }else if (i == half_led){
                leds[i] = int_status;
            }else{
                leds[i] = 0;
            }
        }
        
        /** Set leds status **/
        LED_1 = leds[0];
        LED_2 = leds[1];
        LED_3 = leds[2];
        LED_4 = leds[3];
        LED_5 = leds[4];
    }
}

/***** End status bar program ****/


/***** Start custom program *****/


/** Start test status bar program **/


void init(){
    status_enabled = 1; /** Enabled show bar on led control */
}

void loop(){
    int analog_read;
    analog_read = an_input[0];

    status_value = (int) ( (long long) analog_read * 1000 / (long long) 1024 );
}


/***** End custom program *****/

void main(void) {
    config_micro();
    init_vars(); 
    buttons_init();
    status_init();
    init();
    
    while (1){
        update_pwm();
        read_analog();
        buttons_loop();
        status_loop();
        loop();
    }
    
}
