#ifndef BW1_DECOMP_CREATURE_SUB_ACTION_INCLUDED_H
#define BW1_DECOMP_CREATURE_SUB_ACTION_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <limits.h> /* For ULONG_MAX */
#include <stddef.h> /* For NULL */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <Lionhead/LH3DLib/development/LHPoint.h> /* For struct LHPoint */

#include "Base.h"           /* For struct Base */
#include "CreatureAction.h" /* For enum CREATURE_SUB_STATE_ACTIONS */
#include "MapCoords.h"      /* For struct MapCoords */

// Forward Declares

class Creature;
class CreatureBelief;
class GameOSFile;
class GameThing;
class GInterfaceStatus;
class SubArgument;

class CreatureSubAction : public Base
{
public:
	CREATURE_SUB_STATE_ACTIONS Action;
	CreatureBelief*            Belief;
	uint32_t                   Integer;
	LHPoint                    Point;
	float                      Float;
	uint32_t                   Spell;
	uint32_t                   SecondInteger;
	GameThing*                 OrderTarget;
	unsigned long              OrderAction;
	int (Creature::*LookFunction)(MapCoords* destination);
	void (Creature::*FaceFunction)();

	// Constructors

	// BW1W120 00473db0 BW1M119 011e7e10
	CreatureSubAction()
	{
		Belief = NULL;
		OrderTarget = NULL;
	}
};
static_assert(sizeof(CreatureSubAction) == 0x60, "Data type is of wrong size");

// NextPart moves on to the next sub-action once SubActionState reaches this.
#define CREATURE_SUB_ACTION_PARTS   3
#define CREATURE_SUB_ACTION_NO_MAIN ULONG_MAX

class CreatureSubActionAgenda : public Base
{
public:
	bool32_t          IsNewSubAction;
	uint32_t          CurrentSubAction;
	int               SubActionState;
	uint32_t          NumSubActions;
	uint32_t          field_0x18;
	uint32_t          MainSubAction;
	uint32_t          field_0x20;
	CreatureSubAction SubActions[0x20];
	Creature*         creature; /* 0xc28 */
	bool32_t          GoesOutsideConfinedArea;
	bool32_t          PotResourcesTransferred;
	int               TurnsInPart;
	uint32_t          field_0xc38;
	bool32_t          AskedToPlayGame;
	Creature*         Partner;
	GInterfaceStatus* HandStatus;
	float             GestureFraction;

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	CreatureSubActionAgenda() {}
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
	// BW1W120 inlined BW1M119 inlined
	CreatureSubAction* GetCurrentSubAction() { return &SubActions[CurrentSubAction]; }
	// BW1W120 inlined BW1M119 01299260
	CreatureBelief* GetObjectArgument() { return SubActions[CurrentSubAction].Belief; }
	// BW1W120 inlined BW1M119 01249450
	LHPoint* GetPositionArgument() { return &SubActions[CurrentSubAction].Point; }
	// BW1W120 inlined BW1M119 012992c0
	uint32_t GetIntegerArgument() { return SubActions[CurrentSubAction].Integer; }
	// BW1W120 inlined BW1M119 01299320
	float GetFloatArgument() { return SubActions[CurrentSubAction].Float; }
	// BW1W120 inlined BW1M119 01299380
	uint32_t GetSpellArgument() { return SubActions[CurrentSubAction].Spell; }
	// BW1W120 004ff5b0 BW1M119 inlined
	void ResetPart();
	// BW1W120 004ff570 BW1M119 012903d0
	bool32_t NextPart(Creature* creature);
	// BW1W120 004ff540 BW1M119 01290480
	bool32_t NextIndex();
	// BW1W120 004ff5c0 BW1M119 012902d0
	void ClearSubActionAgenda();
	// BW1W120 004e5940 BW1M119 012702f0
	bool32_t Save(GameOSFile& file);
	// BW1W120 004e5c80 BW1M119 0126fdf0
	bool32_t Load(GameOSFile& file);
#ifdef VERSION_BW1WCI
	// BW1WCI inlined BW1MCI119 inlined
	bool32_t CheckGoesOutsideConfinedArea(SubArgument* argument);
#endif
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
