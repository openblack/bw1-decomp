#ifndef BW1_DECOMP_TATTOO_INFO_INCLUDED_H
#define BW1_DECOMP_TATTOO_INFO_INCLUDED_H

#include <stdint.h> /* For uint8_t */

struct TattooInfo
{
	uint8_t Type : 4;
	uint8_t Slot : 4;
	uint8_t Blue;
	uint8_t Green;
	uint8_t Red;
};

#endif /* BW1_DECOMP_TATTOO_INFO_INCLUDED_H */
