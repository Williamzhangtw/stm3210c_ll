//#include "core_cm3.h"

#include "stdint.h"


uint32_t value = 0;

void entry (void)
{
	uint32_t a = 0x12;
	uint32_t b = 0x34;
	value = a + b;
//	*(uint32_t*)0x2000008 = value;
}
