CC = gcc
CC_BUILD_ASM = $(CC) -S -masm=intel
CC_BUILD_BIN = $(CC) -Wall -Wextra -g
CC_BUILD_BIN_UNOPTIMIZED = $(CC) -Wall -Wextra -O0 -g

helloworld: helloworld.c
	$(CC_BUILD_ASM) helloworld.c -o helloworld.asm
	$(CC_BUILD_BIN) helloworld.c -o helloworld.bin

helloworld2: helloworld2.c
	$(CC_BUILD_ASM) helloworld2.c -o helloworld2.asm
	$(CC_BUILD_BIN) helloworld2.c -o helloworld2.bin

all: helloworld helloworld2

clean:
	rm -f *.bin

realclean:
	rm -f *.asm

rebuild: clean all
