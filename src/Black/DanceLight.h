#ifndef BW1_DECOMP_DANCE_LIGHT_INCLUDED_H
#define BW1_DECOMP_DANCE_LIGHT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <Lionhead/LH3DLib/development/LHPoint.h> /* For struct LHPoint */
#include <Lionhead/LHLib/ver5.0/LHLinkedList.h>   /* For class LHLinkedList */
#include <re_common.h>                            /* For bool32_t */

#define DANCE_LIGHT_BITMAP_SIZE        (6 * 6 * 3)
#define DANCE_LIGHT_BITMAP_NAME_LENGTH 256
#define DANCE_LIGHT_NOT_ATTACHED       0xffffffff

enum DANCE_LIGHT_BITMAP
{
	DANCE_LIGHT_BITMAP_RED,
	DANCE_LIGHT_BITMAP_GREEN,
	DANCE_LIGHT_BITMAP_YELLOW,
	DANCE_LIGHT_BITMAP_BLUE,
	DANCE_LIGHT_BITMAP_WHITE,
	DANCE_LIGHT_BITMAP_LAST
};

// Forward Declares

class GroupBehaviour;

class DanceLight
{
public:
	bool32_t           On;
	GroupBehaviour*    Behaviour;
	LHPoint            LastPos;
	LHPoint            Pos; /* 0x14 */
	uint32_t           Group;
	uint32_t           IndexInGroup;
	DANCE_LIGHT_BITMAP Bitmap;
	bool32_t           Synchronised; /* 0x2c */
	float              Brightness;

	// BW1W120 00be8414
	static char BitmapNames[DANCE_LIGHT_BITMAP_LAST][DANCE_LIGHT_BITMAP_NAME_LENGTH];
	// BW1W120 00cc5ee0
	static LHLinkedList<DanceLight*> AllLights;
	// BW1W120 00cc5ee8
	static void* Bitmaps[DANCE_LIGHT_BITMAP_LAST];

	// Static methods

	// BW1W120 0050f780 BW1M119 012b2060
	static void CloseBitmaps();
	// BW1W120 0050f7b0 BW1M119 012b1f80
	static void InitialiseBitmaps();

	// Constructors

	// BW1W120 0050f560 BW1M119 012b2370
	DanceLight(GroupBehaviour* behaviour);
	// BW1W120 0050f630 BW1M119 012b21b0
	~DanceLight();

	// Non-virtual methods

	// BW1W120 0050f6c0 BW1M119 012b2100
	void Process();
};

static_assert(sizeof(DanceLight) == 0x34, "Data type is of wrong size");

#endif /* BW1_DECOMP_DANCE_LIGHT_INCLUDED_H */
