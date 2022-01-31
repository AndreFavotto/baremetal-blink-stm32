arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -specs=nano.specs -specs=nosys.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -fmessage-length=0 -ffunction-sections -c demo_02.c -o demo_02.o
arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -specs=nano.specs -specs=nosys.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -fmessage-length=0 -ffunction-sections -c startup.S -o startup.o
arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -specs=nano.specs -specs=nosys.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -Wl,--gc-sections -T"linker.ld" -Wl,-Map=memmap.map demo_02.o startup.o -o demo_02.elf
echo " Processo de compilacao concluido \n"
arm-none-eabi-size demo_02.elf