#ifndef BW1_DECOMP_JC_MISC_INCLUDED_H
#define BW1_DECOMP_JC_MISC_INCLUDED_H

#include <stdint.h> /* For uint8_t */

// Forward Declares

struct LH3DTexture;

struct TattooInfo
{
	uint8_t Type : 4;
	uint8_t Slot : 4;
	uint8_t Blue;
	uint8_t Green;
	uint8_t Red;
};

class GTattoo
{
public:
	// Static methods

	// BW1W120 005df310 BW1M119 0137a190
	static void Draw(long flip, long rotate, LH3DTexture* skin, float x, float y, float scale, long player,
	                 TattooInfo* info, int index, unsigned char* data);
};

#endif /* BW1_DECOMP_JC_MISC_INCLUDED_H */
