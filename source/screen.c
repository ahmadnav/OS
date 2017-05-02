#include <stdio.h>
#include "../headers/screen.h"

maxlines = 25;
charperline = 80;
char* vidmem =(char*)0xb8000;


void mscreen(){
	for (int i = 274; i < 285; i = i + 2){
			vidmem[i] = 'B';
			vidmem[i+1] = 0x04;
		}
}


void clearscreen(){
	for (int i = 0; i < (maxlines *2* charperline ) ;  i = i + 2) 
	{
		vidmem[i]  = ' ';
	}
	
}

void print(char* string){
	
	int i = 0;
	int k = 0;
	while(string[k] != '\0')
	{
		vidmem[i] = string[k];
		i = i +2;
		k++;
	}
}

void scan(){

}

