#ifndef BW1_DECOMP_CREATURE_COMMAND_STATE_INCLUDED_H
#define BW1_DECOMP_CREATURE_COMMAND_STATE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <Lionhead/LHLib/ver5.0/LHLinkedList.h> /* For struct LHLinkedList */
#include <re_common.h>                          /* For bool32_t */

#include "Base.h"      /* For struct Base */
#include "MapCoords.h" /* For struct MapCoords */

class CreatureCommand;

class CreatureCommandState : public Base
{
public:
	uint32_t                       field_0x8;
	MapCoords                      Destination;
	bool32_t                       ControlledByTeleport;
	bool32_t                       Commanded;
	bool32_t                       ForcedByPlayerAction;
	LHLinkedList<CreatureCommand*> Commands;
};
static_assert(sizeof(CreatureCommandState) == 0x2c, "Data type is of wrong size");

#endif /* BW1_DECOMP_CREATURE_COMMAND_STATE_INCLUDED_H */
