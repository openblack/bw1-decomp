#ifndef BW1_DECOMP_JC_MISC_INCLUDED_H
#define BW1_DECOMP_JC_MISC_INCLUDED_H

#include <stdint.h> /* For uint8_t */

#include <Lionhead/LH3DLib/development/LHPoint.h> /* For struct LHPoint */

#define FLYING_OBJECTS_LIST_SIZE 14

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

struct FlyingObjects
{
	LHPoint Pos;    /* 0x0 */
	float   Radius; /* 0xc */

	// Static data

	// BW1W120 00d19a48 BW1M119 null
	static FlyingObjects g_list[FLYING_OBJECTS_LIST_SIZE];

	// Static methods

	// BW1W120 inlined BW1M119 01003700
	static FlyingObjects* Getg_list() { return g_list; }
	// BW1W120 005df1b0 BW1M119 0102d0b0
	static void Add(LHPoint* pos, long index, float radius);
};

#endif /* BW1_DECOMP_JC_MISC_INCLUDED_H */
