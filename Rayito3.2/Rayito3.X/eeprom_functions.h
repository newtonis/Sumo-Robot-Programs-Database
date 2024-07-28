/* 
 * File:   eeprom_functions.h
 * Author: Ariel
 *
 * Created on July 28, 2024, 11:46 AM
 */

#ifndef EEPROM_FUNCTIONS_H
#define	EEPROM_FUNCTIONS_H

#ifdef	__cplusplus
extern "C" {
#endif

typedef unsigned char uc;

/**** EEPROM FUNCTIONS ***/
void WriteMem(uc addr,uc data); ///Write eeprom register
void ReadMem(uc addr,uc *data); ///Read eeprom register

#ifdef	__cplusplus
}
#endif

#endif	/* EEPROM_FUNCTIONS_H */

