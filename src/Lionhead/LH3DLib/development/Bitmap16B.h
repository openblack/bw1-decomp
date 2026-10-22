#ifndef BW1_DECOMP_BITMAP_16B_INCLUDED_H
#define BW1_DECOMP_BITMAP_16B_INCLUDED_H

#include <assert.h>
#include <stdint.h>

struct Bitmap16B
{
	long      field_0x0;
	long      Width;
	long      Height;
	uint16_t* Data;

	// BW1W120 00822180 BW1M119 01080460 (LHCombined Release)
	void Release();
};
static_assert(sizeof(Bitmap16B) == 0x10, "Data type is of wrong size");

#endif
