#ifndef BW1_DECOMP_GJ_BITMAP_INCLUDED_H
#define BW1_DECOMP_GJ_BITMAP_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h>

#define GJ_BITMAP_RGB_DEPTH 3

class GJBitmap
{
public:
	// BW1W120 0057ca40 BW1M119 012c4c50
	~GJBitmap();

	// BW1W120 0057ca50 BW1M119 inlined
	void FreeBuffers();
	// BW1W120 0057ca90 BW1M119 012c4af0
	void LoadBitmapFromFile(char* path, long width, uint8_t depth, long file_frames, long frames);
	// BW1W120 0057cb40 BW1M119 012c4950
	void CopyFromOrigData();
	// BW1W120 0057cc50 BW1M119 null
	void SetColour(uint32_t colour);

	uint8_t  Depth; /* 0x0 */
	uint8_t* Data;  /* 0x4 */
	uint8_t* OrigData;
	uint32_t Width;
	uint16_t Frames; /* 0x10 */
	int32_t  PixelCount;
	uint32_t Colour;
	long     FileFrames; /* 0x1c */
};
static_assert(sizeof(GJBitmap) == 0x20, "Data type is of wrong size");

#endif /* BW1_DECOMP_GJ_BITMAP_INCLUDED_H */
