#ifndef BW1_DECOMP_PLAYTIME_INCLUDED_H
#define BW1_DECOMP_PLAYTIME_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For PLAYTIME_INFO_LAST */

#include "GameThing.h"     /* For struct GameThing */
#include "PlaytimeDance.h" /* For class PlaytimeElement */

// Forward Declares

class Base;
class MultiMapFixed;
class Villager;

class Playtime : public GameThing
{
public:
	PlaytimeElement Elements[PLAYTIME_INFO_LAST];

	// Override methods

	// BW1W120 0066c410 BW1M119 inlined
	virtual ~Playtime();

	// Non-virtual methods

	// Windows-only: BW1M119's Playtime has no counterpart. Calls a stub returning 0 on each
	// of the five elements (stride 0x44 from +0x14).
	// BW1W120 0066c5c0 BW1M119 null
	void FUN_0066c5c0();
	// BW1W120 0066c5e0 BW1M119 0111f6f0
	void AddStructure(MultiMapFixed* structure);
	// BW1W120 0066c610 BW1M119 0111f650
	void RemoveStructure(MultiMapFixed* structure);
	// BW1W120 0066c640 BW1M119 null
	bool32_t AddPlaytimeVillager(Villager* villager);
};

#endif /* BW1_DECOMP_PLAYTIME_INCLUDED_H */
