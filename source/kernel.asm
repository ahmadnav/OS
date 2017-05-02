; The Kernel.asm is responsible for talking to cpu, clearing interrrupts and starting the intiial function  which is located in kernel.c in this case. It holds the information regarding what the cpu is supposed to do when there is no program running or which program to run

bits 32 ; 32 bit language
section .text

; this is purely for the bootloader (Multiboot SPecification)
align   4
        dd      0x1BADB002
        dd      0x00
        dd      - (0x1BADB002+0x00)

extern kmain    ;Externally defines kmain function (in a different object file)
global start 	;Start defined Below (Standard for asm) also start given to the linker.


start:
	cli ;Clear Interrupts
	call kmain  ; Call the kmain function
	hlt  ;halt the cpu after kmain has been called.
	

