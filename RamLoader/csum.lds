SensorDataLen = 0x1FFF;
_MaxLoaderSize = SensorDataLen;


MEMORY
{
	/* Define each memory region */
	Flash (rx) : ORIGIN = 0x000000, LENGTH = 0x0FFFF /* 64k */
	InRam (rwx) : ORIGIN = 0x010000, LENGTH = 0x07FFF /* 36k */
	ExRam (rw) : ORIGIN = 0x110000, LENGTH = 0x1FFFF /* 128k */
}


SECTIONS {
	. = 0x00000000;
	.text : { 
	      * (vectors);
	      * (.text); 
	}
	.rodata : {
	      * (.rodata);
	}
	flash_sdata = .;

	. = 0xA0000000;
	ram_sdata = .;
	.data : AT (flash_sdata) { 
	      * (.data); 
	}
	ram_edata = .;
	data_size = ram_edata - ram_sdata;

	sbss = .;
	.bss : { 
	     * (.bss);
	}
	ebss = .;
	bss_size = ebss - sbss;


	Special (NOLOAD): {
		_SensorData = .; 		/* address of data buffer */
		. = . + SensorDataLen;  /* increment memory pointer to leave a gap */
	} > InRam
}