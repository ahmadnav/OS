#include <stdio.h>
#include "../headers/screen.h"


void kbmain(){
 	
	for (int i = 174; i < 179; i = i + 2){
		vidmem[i] = 'B';
		vidmem[i+1] = 0x04;
	}
}
