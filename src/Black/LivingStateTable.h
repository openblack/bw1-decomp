#ifndef BW1_DECOMP_LIVING_STATE_TABLE_INCLUDED_H
#define BW1_DECOMP_LIVING_STATE_TABLE_INCLUDED_H

#include <re_common.h>

#include <chlasm/GStates.h> /* For VILLAGER_STATE_LAST_STATE, ANIMAL_STATE_LAST_STATE */

class Animal;
class GameOSFile;
class Villager;

template <typename T> struct LivingStateTableEntry
{
	bool32_t (T::*state)();
	bool32_t (T::*EntryState)(uint8_t, uint8_t);
	bool32_t (T::*ExitState)(uint8_t);
	bool32_t (T::*SaveState)(GameOSFile&);
	bool32_t (T::*LoadState)(GameOSFile&);
	uint32_t (T::*ReactToTownEmergency)();
	uint32_t (T::*Animation)();
	uint32_t (T::*TransitionAnimation)(uint8_t, uint8_t);
	void (T::*validate)();
};

// TODO(bwrsandman): Replace this extern with Villager::GetStateTable() as on Mac.
// BW1W120 00d09198
extern LivingStateTableEntry<Villager> g_VillagerStateTable[VILLAGER_STATE_LAST_STATE];

#endif /* BW1_DECOMP_LIVING_STATE_TABLE_INCLUDED_H */
