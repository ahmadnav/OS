assembler = nasm
compiler = gcc
cflags = -m32 -c -ffreestanding 
asflags = -f elf
emulator = qemu-system-i386
eflags = -kernel
linker = ld
lflags = -m elf_i386 -T source/linker.ld

obj = obj/kernel.o obj/kernelc.o obj/kb.o obj/screen.o
source = source/kernel.asm source/kernel.c source/kb.c source/screen.c



emulator: kernel.bin
	$(emulator) $(eflags) kernel.bin 

kernel.bin: $(obj)
	$(linker) $(lflags)  -o kernel.bin $(obj)

obj/kernel.o: source/kernel.asm
	$(assembler) $(asflags) source/kernel.asm -o obj/kernel.o

obj/kernelc.o: source/kernel.c
	$(compiler) $(cflags) source/kernel.c -o obj/kernelc.o

obj/kb.o: source/kb.c
	$(compiler) $(cflags) source/kb.c -o obj/kb.o

obj/screen.o: source/screen.c
	$(compiler) $(cflags) source/screen.c -o obj/screen.o
