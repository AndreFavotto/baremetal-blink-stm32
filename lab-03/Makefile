CC = arm-none-eabi-gcc
CFLAGS = -c -mcpu=cortex-m4 -mthumb -Wall -O0

main.o: main.c
	$(CC) $(CFLAGS) -o $@ $^
clean:
	rm -f *.o

