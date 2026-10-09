#ifndef BW1_DECOMP_CREATURE_RECEIVE_SPELL_INCLUDED_H
#define BW1_DECOMP_CREATURE_RECEIVE_SPELL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For offsetof */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <Lionhead/LH3DLib/development/LHPoint.h> /* For struct LHPoint */

#include "GJBaseUtils.h" /* For GJVector */

// Forward Declares

class Creature;
class GameThing;

struct CreatureReceiveSpell
{
	class TPerSpellData
	{
	public:
		uint32_t   SpellType;
		uint32_t   State;
		uint32_t   StartTime;
		uint32_t   Intensity;
		uint32_t   Duration;
		GameThing* Caster;
	};

	class QueueData
	{
	public:
		uint32_t   SpellType;
		uint32_t   Intensity;
		GameThing* Caster;
	};

	Creature*           creature;
	TPerSpellData       data[0x10];
	GJVector<QueueData> queueData;
	uint32_t            field_0x198;
	LHPoint             field_0x19c;
	LHPoint             field_0x1a8;
	LHPoint             field_0x1b4;
	LHPoint             field_0x1c0;
	float               field_0x1cc;
	uint32_t            field_0x1d0;
	uint8_t             field_0x1d4;

	// Constructors

	// BW1W120 004f5240 BW1M119 01284020
	CreatureReceiveSpell(Creature* creature);

	// Non-virtual methods

	// BW1W120 004f4c50 BW1M119 01284d30
	void Draw();
};

// Constructor stores: 004f5240; allocation of 0x1d8 bytes: 0047472c.
static_assert(offsetof(CreatureReceiveSpell, queueData) == 0x184, "CreatureReceiveSpell queue offset is incorrect");
static_assert(offsetof(CreatureReceiveSpell, field_0x198) == 0x198, "CreatureReceiveSpell scalar offset is incorrect");
static_assert(offsetof(CreatureReceiveSpell, field_0x19c) == 0x19c, "CreatureReceiveSpell point offset is incorrect");
static_assert(offsetof(CreatureReceiveSpell, field_0x1d4) == 0x1d4, "CreatureReceiveSpell flag offset is incorrect");
static_assert(sizeof(CreatureReceiveSpell) == 0x1d8, "CreatureReceiveSpell size is incorrect");

#endif /* BW1_DECOMP_CREATURE_RECEIVE_SPELL_INCLUDED_H */
