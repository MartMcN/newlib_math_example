CC=c:\gnu_tools_arm\gcc-arm-none-eabi-8-2019-q3-update-win32\bin\arm-none-eabi-gcc.exe

CFLAGS = -c -mcpu=cortex-m0plus
LFLAGS = -mcpu=cortex-m0plus -nostartfiles -Tgcc.ld -Wl,-Map=math_test.map -Wl,-lm


all:
	$(CC) $(CFLAGS) math_test.c -o math_test.o
	$(CC) math_test.o $(LFLAGS) -o math_test.elf


	

