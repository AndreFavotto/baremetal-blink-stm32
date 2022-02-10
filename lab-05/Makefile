CC = arm-none-eabi-gcc
LD = arm-none-eabi-gcc
CFLAGS = -c -mcpu=cortex-m4 -mthumb -Wall -O0
LFLAGS = -nostdlib -T stm32f401cc-rom.ld -Wl,-Map=blink.map

all: main.o startup.o blink.elf

main.o: main.c
	$(CC) $(CFLAGS) -o $@ $^

startup.o: startup.c
	$(CC) $(CFLAGS) -o $@ $^

blink.elf: main.o startup.o
	$(LD) $(LFLAGS) -o $@ $^
clean:
	rm -f *.o *.map *.elf