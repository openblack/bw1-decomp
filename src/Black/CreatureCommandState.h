#ifndef BW1_DECOMP_CREATURE_COMMAND_STATE_INCLUDED_H
#define BW1_DECOMP_CREATURE_COMMAND_STATE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <Lionhead/LHLib/ver5.0/LHLinkedList.h> /* For struct LHLinkedList */
#include <re_common.h>                          /* For bool32_t */

#include "Base.h"      /* For struct Base */
#include "MapCoords.h" /* For struct MapCoords */

class Creature;
class CreatureCommand;

class CreatureCommandState : public Base
{
public:
	bool32_t  TakingFromHand;
	MapCoords Destination;
	bool32_t  ControlledByTeleport;
#ifdef VERSION_BW1WCI
	bool32_t CommandedByMaster;
#endif
	bool32_t                       Commanded;
	bool32_t                       ForcedByPlayerAction;
	LHLinkedList<CreatureCommand*> Commands;

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	CreatureCommandState() {}

	// Non-virtual methods

	// BW1W120 004c74e0 BW1M119 01237b60
	bool32_t ProcessStoredCommands(Creature* creature);
};
#ifdef VERSION_BW1WCI
static_assert(sizeof(CreatureCommandState) == 0x30, "Data type is of wrong size");
#else
static_assert(sizeof(CreatureCommandState) == 0x2c, "Data type is of wrong size");
#endif

#endif /* BW1_DECOMP_CREATURE_COMMAND_STATE_INCLUDED_H */
