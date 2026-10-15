#ifndef BW1_DECOMP_VILLAGER_STATES_INCLUDED_H
#define BW1_DECOMP_VILLAGER_STATES_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/GStates.h> /* For VILLAGER_STATE_LAST_STATE */
#include <re_common.h>      /* For bool32_t */

// Forward Declares

class GameOSFile;
class Villager;

struct VillagerStateTableEntry
{
	bool32_t (Villager::*State)();
	bool32_t (Villager::*EntryState)(uint8_t current, uint8_t destination);
	bool32_t (Villager::*ExitState)(uint8_t state);
	bool32_t (Villager::*SaveState)(GameOSFile& file);
	bool32_t (Villager::*LoadState)(GameOSFile& file);
	uint32_t (Villager::*ReactToTownEmergency)();
	uint32_t (Villager::*Animation)();
	uint32_t (Villager::*TransitionAnimation)(uint8_t into, uint8_t state);
	void (Villager::*Validate)();

	// BW1W120 00d09198
	static VillagerStateTableEntry StateTable[VILLAGER_STATE_LAST_STATE];
};
static_assert(sizeof(VillagerStateTableEntry) == 0x90, "Data type is of wrong size");

#endif /* BW1_DECOMP_VILLAGER_STATES_INCLUDED_H */
