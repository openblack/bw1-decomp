#ifndef BW1_DECOMP_LH_TGA_INCLUDED_H
#define BW1_DECOMP_LH_TGA_INCLUDED_H

#include <assert.h>    /* For static_assert */
#include <stdint.h>    /* For int16_t, uint8_t */
#include <re_common.h> /* For bool32_t */

#define LHTGA_FOOTER_SIZE     26
#define LHTGA_FORMAT_ARGB4444 0

struct LHTGA
{
	uint8_t IdLength;        /* 0x00 */
	uint8_t ColourMapType;   /* 0x01 */
	uint8_t ImageType;       /* 0x02 */
	uint8_t ColourMap[5];    /* 0x03 */
	int16_t XOrigin;         /* 0x08 */
	int16_t YOrigin;         /* 0x0a */
	int16_t Width;           /* 0x0c */
	int16_t Height;          /* 0x0e */
	uint8_t PixelDepth;      /* 0x10 */
	uint8_t ImageDescriptor; /* 0x11 */

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
