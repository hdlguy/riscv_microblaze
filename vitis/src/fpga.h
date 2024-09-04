#define 	REG_BASEADDR 		XPAR_M00_AXI_BASEADDR

// define AXI registers
#define     Nreg                64  // number of 32 bit AXI registers

#define 	FPGA_VERSION		0	// currently 0x07010100
#define		FPGA_ID				1	// currently 0xdeadbeef

#define		LED_CONTROL			2	// [3:0] = [blue, green, yellow, red].

#define		ADC_START_0			4	// first address of the nine ADC data, packed two 16-bit values per word
#define		GPIO_REV_0          9   // {gpio[15:0], rev[15:0]}

#define		ADC_START_1         10	// first address of the nine ADC data, packed two 16-bit values per word
#define		GPIO_REV_1          15  // {gpio[15:0], rev[15:0]}

#define     DAC_START_0			16	// first address of the eight DAC data, packed two 16-bit values per word

#define     DAC_START_1			20	// first address of the eight DAC data, packed two 16-bit values per word
