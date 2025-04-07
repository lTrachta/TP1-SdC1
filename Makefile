CC = gcc
AS = nasm
CFLAGS = -g -Wall

SRC_DIR = src
ASM_DIR = asm

all: programa_c

programa_c: main.o calcular_conversion.o
	$(CC) $(CFLAGS) -o programa_c main.o calcular_conversion.o

main.o: $(SRC_DIR)/main.c
	$(CC) $(CFLAGS) -c $(SRC_DIR)/main.c -o main.o

calcular_conversion.o: $(ASM_DIR)/calcular_conversion.asm
	$(AS) -f elf64 -g -F dwarf $(ASM_DIR)/calcular_conversion.asm -o calcular_conversion.o

clean:
	rm -f *.o programa_c
