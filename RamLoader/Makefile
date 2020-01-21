all:
	arm-none-eabi-gcc -nostdlib -o csum.elf -T csum.lds csum.c startup.s -Xlinker -Map=out.map
map:
	arm-none-eabi-nm -n csum.elf

clean:
	rm -f csum.bin csum.elf