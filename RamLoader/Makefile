all:
	arm-none-eabi-gcc -nostdlib -o csum.elf -T csum.lds csum.c startup.s
map:
	arm-none-eabi-nm -n csum.elf

clean:
	