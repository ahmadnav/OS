#include <stdio.h>
#include "../headers/kb.h"
#include "../headers/screen.h"


void kmain() { 

        clearscreen();
	for (int i = 0; i < 13; i = i + 2){
		vidmem[i] = 'K';
		vidmem[i+1] = 0x04;
	}
	kbmain();
	print("Ahmad Naveed Opersating System V1");
}
