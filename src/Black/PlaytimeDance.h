#ifndef BW1_DECOMP_PLAYTIME_DANCE_INCLUDED_H
#define BW1_DECOMP_PLAYTIME_DANCE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "GameThing.h" /* For struct GameThing */

// Forward Declares

class Base;
class Dance;
class GPlaytimeInfo;
class MultiMapFixed;
class Town;

class PlaytimeElement : public GameThing
{
public:
	uint8_t              field_0x14[0x20];
	MultiMapFixed*       Structure;
	const GPlaytimeInfo* info;
	Town*                town;
	Dance*               CurrentDance;

	// Override methods

	// BW1W120 0066c3f0 BW1M119 inlined
	virtual ~PlaytimeElement();
	// BW1W120 0066c6b0 BW1M119 inlined
	virtual void ToBeDeleted(int param_1);
	// BW1W120 0066c3e0 BW1M119 inlined
	virtual Town* GetTown();
	// BW1W120 0066c810 BW1M119 inlined
	virtual bool32_t IsFunctional();

	// Non-virtual methods

	// BW1W120 0066c9d0 BW1M119 0111f460
	MultiMapFixed* GetStructure();
};

#endif /* BW1_DECOMP_PLAYTIME_DANCE_INCLUDED_H */
