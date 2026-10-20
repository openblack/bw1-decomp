#ifndef BW1_DECOMP_CREATURE_SUB_ACTION_INCLUDED_H
#define BW1_DECOMP_CREATURE_SUB_ACTION_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <limits.h> /* For ULONG_MAX */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <Lionhead/LH3DLib/development/LHPoint.h> /* For struct LHPoint */

#include "Base.h"           /* For struct Base */
#include "CreatureAction.h" /* For enum CREATURE_SUB_STATE_ACTIONS */
#include "MapCoords.h"      /* For struct MapCoords */

// Forward Declares

class Creature;
class CreatureBelief;
class SubArgument;

class CreatureSubAction : public Base
{
public:
	CREATURE_SUB_STATE_ACTIONS Action;
	CreatureBelief*            Belief;
	uint8_t                    field_0x10[0x4];
	LHPoint                    field_0x14;
	uint8_t                    field_0x20[0xc];
	uint32_t                   field_0x2c;
	uint8_t                    field_0x30[0x10];
	int (Creature::*LookFunction)(MapCoords* destination);
	void (Creature::*FaceFunction)();

	// Constructors

	// BW1W120 00473db0 BW1M119 011e7e10
	CreatureSubAction();
};
static_assert(sizeof(CreatureSubAction) == 0x60, "Data type is of wrong size");

// NextPart moves on to the next sub-action once SubActionState reaches this.
#define CREATURE_SUB_ACTION_PARTS   3
#define CREATURE_SUB_ACTION_NO_MAIN ULONG_MAX

class CreatureSubActionAgenda : public Base
{
public:
	uint32_t          field_0x8;
	unsigned long     CurrentSubAction;
	int               SubActionState;
	unsigned long     NumSubActions;
	uint32_t          field_0x18;
	unsigned long     MainSubAction;
	uint32_t          field_0x20;
	uint32_t          field_0x24;
	CreatureSubAction SubActions[0x20];
	Creature*         creature; /* 0xc28 */
	bool32_t          GoesOutsideConfinedArea;
	uint32_t          field_0xc30;
	uint32_t          field_0xc34;
	uint32_t          field_0xc38;
	bool32_t          AskedToPlayGame;
	Creature*         Partner;
	uint32_t          field_0xc44;
	uint32_t          field_0xc48;
	uint32_t          field_0xc4c;

	// Constructors

	// BW1W120 004ff1b0 BW1M119 01290b00
	CreatureSubActionAgenda(Creature* creature);

	// Non-virtual methods

	// BW1W120 inlined BW1M119 011d7d00
	bool IsValid()
	{
		return NumSubActions > 0 && CurrentSubAction < NumSubActions && SubActionState < CREATURE_SUB_ACTION_PARTS;
	}
	// BW1W120 inlined BW1M119 0129acc0
	unsigned long GetSubActionIndex() const { return CurrentSubAction; }
	// BW1W120 004ff5c0 BW1M119 012902d0
	void ClearSubActionAgenda();
	// BW1W120 004ff240 BW1M119 012908a0
	void AddSubAction(CREATURE_SUB_STATE_ACTIONS action, SubArgument* argument,
	                  int (Creature::*look_function)(MapCoords* destination), void (Creature::*face_function)());
	// BW1W120 004ff4b0 BW1M119 01290510
	void AddCastSpellSubAction(CreatureBelief* belief, unsigned long magic_type);
	// BW1W120 004ff3a0 BW1M119 012907a0
	void AddMainSubAction(CREATURE_SUB_STATE_ACTIONS action, SubArgument* argument,
	                      int (Creature::*look_function)(MapCoords* destination), void (Creature::*face_function)());
	// BW1W120 004ff420 BW1M119 01290630
	void AddOrder(Creature* creature, CREATURE_SUB_STATE_ACTIONS action, SubArgument* argument,
	              int (Creature::*look_function)(MapCoords* destination), void (Creature::*face_function)());
};
static_assert(sizeof(CreatureSubActionAgenda) == 0xc50, "Data type is of wrong size");

#endif /* BW1_DECOMP_CREATURE_SUB_ACTION_INCLUDED_H */
