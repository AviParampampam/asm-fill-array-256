build:
	nasm -f elf code.asm
	ld -m elf_i386 code.o