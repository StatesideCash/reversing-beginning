CC = gcc
CC_BUILD_ASM = $(CC) -S -masm=intel
CC_BUILD_BIN = $(CC) -Wall -Wextra -g
CC_BUILD_BIN_UNOPTIMIZED = $(CC) -Wall -Wextra -O0 -g

helloworld: helloworld.c
	$(CC_BUILD_ASM) helloworld.c -o helloworld.asm
	$(CC_BUILD_BIN) helloworld.c -o helloworld.bin
	$(CC_BUILD_BIN_UNOPTIMIZED) helloworld.c -o helloworld_opt.bin

all: helloworld

clean:
	rm -f *.bin *.asm

rebuild: clean all
