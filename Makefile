CC = gcc
AS = nasm
CFLAGS = -g -Wall

all: programa_c

programa_c: main.o calcular_conversion.o
    $(CC) $(CFLAGS) -o programa_c main.o calcular_conversion.o

main.o: main.c
    $(CC) $(CFLAGS) -c main.c

calcular_conversion.o: calcular_conversion.asm
    $(AS) -f elf64 -g -F dwarf calcular_conversion.asm -o calcular_conversion.o

clean:
    rm -f *.o programa_c
