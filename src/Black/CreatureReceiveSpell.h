#ifndef BW1_DECOMP_CREATURE_RECEIVE_SPELL_INCLUDED_H
#define BW1_DECOMP_CREATURE_RECEIVE_SPELL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <Lionhead/LHLib/ver5.0/GJVector.h>       /* For struct GJVector */
#include <Lionhead/LH3DLib/development/LHPoint.h> /* For struct LHPoint */

// Forward Declares

class Creature;

struct CreatureReceiveSpell
{
	struct TPerSpellData
	{
		uint8_t field_0x0[0x18];
	};
	struct QueueData
	{
		uint8_t field_0x0;
	};
	Creature*           creature; /* 0x0 */
	TPerSpellData       data[0x10];
	GJVector<QueueData> queueData; /* 0x184 */
	uint8_t             field_0x194[0x8];
	LHPoint             field_0x19c;
	LHPoint             field_0x1a8;
	LHPoint             field_0x1b4;
	LHPoint             field_0x1c0;
	float               field_0x1cc;
	uint32_t            field_0x1d0;
	uint8_t             field_0x1d4;

	// Constructors

	// BW1W120 004f5240 BW1M100 102802a0 CreatureReceiveSpell::CreatureReceiveSpell(Creature *)
	CreatureReceiveSpell(Creature* creature);
};

#endif /* BW1_DECOMP_CREATURE_RECEIVE_SPELL_INCLUDED_H */
