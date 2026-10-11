#ifndef BW1_DECOMP_DANCE_LIGHT_INCLUDED_H
#define BW1_DECOMP_DANCE_LIGHT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <Lionhead/LH3DLib/development/LHPoint.h> /* For struct LHPoint */
#include <re_common.h>                            /* For bool32_t */

// Forward Declares

class GroupBehaviour;

/* A light a dance shines on one of its groups, switched by the DANCE_GROUP_ACTION_TYPE_SET_LIGHT_* actions */
class DanceLight
{
public:
	bool32_t        On;
	GroupBehaviour* Behaviour;
	LHPoint         LastPos;
	LHPoint         Pos; /* 0x14 */
	unsigned long   Group;
	unsigned long   IndexInGroup;
	uint32_t        Bitmap;
	bool32_t        Synchronised; /* 0x2c */
	float           Brightness;

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
