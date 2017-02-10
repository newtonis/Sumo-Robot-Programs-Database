#include <xc.h>
#include "wixel.h"

void init_wixel(void){
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
}
void putch(char data){
    while( ! TXIF)
    continue;
    TXREG = data;
}

