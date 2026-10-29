#ifndef BW1_DECOMP_LH_TGA_INCLUDED_H
#define BW1_DECOMP_LH_TGA_INCLUDED_H

#include <assert.h>    /* For static_assert */
#include <stdint.h>    /* For int16_t, uint8_t */
#include <re_common.h> /* For bool32_t */

#define LHTGA_FOOTER_SIZE     26
#define LHTGA_FORMAT_ARGB4444 0

struct LHTGA
{
	uint8_t IdLength;
	uint8_t ColourMapType;
	uint8_t ImageType;
	uint8_t ColourMap[5];
	int16_t XOrigin;
	int16_t YOrigin;
	int16_t Width;
	int16_t Height;
	uint8_t PixelDepth;
	uint8_t ImageDescriptor;

	// BW1W120 008207f0 BW1M119 010b1c20 (LHCombined Release)
	static LHTGA* CreateFromHD(char* name);
	// BW1W120 008208b0 BW1M119 0104be20 (LHCombined Release)
	static void GetARGB(unsigned long* a, unsigned long* r, unsigned long* g, unsigned long* b, void* data, long index,
	                    long format);
	// BW1W120 00820920 BW1M119 01070aa0 (LHCombined Release)
	static LHTGA* GetTGA(void* data, long width, long height, long format, bool32_t premultiply);
	// Inliner IL size: <= 40, always inlined and never charged
	// BW1W120 inlined BW1M119 010bb140 (LHCombined Release)
	static long GetSize(long width, long height)
	{
		return sizeof(LHTGA) + width * height * sizeof(uint32_t) + LHTGA_FOOTER_SIZE;
	}
};
static_assert(sizeof(LHTGA) == 0x12, "Data type is of wrong size");

#endif /* BW1_DECOMP_LH_TGA_INCLUDED_H */
