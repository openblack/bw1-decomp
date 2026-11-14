#ifndef BW1_DECOMP_JC_MISC_INCLUDED_H
#define BW1_DECOMP_JC_MISC_INCLUDED_H

#include <stdint.h> /* For uint8_t */

#include <Lionhead/LH3DLib/development/LHPoint.h> /* For struct LHPoint */

#include "TattooInfo.h" /* For struct TattooInfo */

#define FLYING_OBJECTS_LIST_SIZE 14

// Forward Declares

class Creature;
struct HBITMAP__;
struct LH3DTexture;

class GTattoo
{
public:
	// Static methods

	// BW1W120 005df310 BW1M119 0137a190
	static void Draw(long flip, long rotate, LH3DTexture* skin, float x, float y, float scale, long player,
	                 TattooInfo* info, int index, unsigned char* data);
};

class CompressTattoo
{
public:
	// BW1W120 005de010 BW1M119 0137c530
	static uint32_t* Create(Creature* creature);
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

// BW1W120 005de490 BW1M119 0137bcd0
void LoadBMPSymbol(HBITMAP__* bitmap, uint8_t* symbol);

#endif /* BW1_DECOMP_JC_MISC_INCLUDED_H */
