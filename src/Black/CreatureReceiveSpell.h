#ifndef BW1_DECOMP_CREATURE_RECEIVE_SPELL_INCLUDED_H
#define BW1_DECOMP_CREATURE_RECEIVE_SPELL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For offsetof */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <Lionhead/LHLib/ver5.0/GJVector.h>       /* For struct GJVector */
#include <Lionhead/LH3DLib/development/LHPoint.h> /* For struct LHPoint */

// Forward Declares

class Creature;
class GameThing;

// Global names survive in the Mac symbols; class rather than struct is a reconstructed choice.
// The Windows serializers expose five 4-byte scalars and a GameThing-compatible pointer.
// TODO: Recover scalar types/names and the original pointer subtype.
class CreatureReceiveSpell_TPerSpellData
{
public:
	uint32_t   field_0x0;
	uint32_t   field_0x4;
	uint32_t   field_0x8;
	uint32_t   field_0xc;
	uint32_t   field_0x10;
	GameThing* field_0x14;
};

// Class tag and unresolved field types are reconstructed as above; queue stride is 0xc at 004f50e0.
class CreatureReceiveSpell_QueueData
{
public:
	uint32_t   field_0x0;
	uint32_t   field_0x4;
	GameThing* field_0x8;
};

static_assert(sizeof(CreatureReceiveSpell_TPerSpellData) == 0x18,
              "CreatureReceiveSpell_TPerSpellData size is incorrect");
static_assert(sizeof(CreatureReceiveSpell_QueueData) == 0xc, "CreatureReceiveSpell_QueueData size is incorrect");

struct CreatureReceiveSpell
{
	Creature*                                creature; /* 0x0 */
	CreatureReceiveSpell_TPerSpellData       data[0x10];
	GJVector<CreatureReceiveSpell_QueueData> queueData;   /* 0x184 */
	uint32_t                                 field_0x198; // Zeroed separately at 004f52ef.
	LHPoint                                  field_0x19c;
	LHPoint                                  field_0x1a8;
	LHPoint                                  field_0x1b4;
	LHPoint                                  field_0x1c0;
	float                                    field_0x1cc;
	uint32_t                                 field_0x1d0;
	uint8_t                                  field_0x1d4;

	// Constructors

	// BW1W120 004f5240 BW1M100 102802a0 CreatureReceiveSpell::CreatureReceiveSpell(Creature *)
	CreatureReceiveSpell(Creature* creature);
};

// Constructor stores: 004f5240; allocation of 0x1d8 bytes: 0047472c.
static_assert(offsetof(CreatureReceiveSpell, queueData) == 0x184, "CreatureReceiveSpell queue offset is incorrect");
static_assert(offsetof(CreatureReceiveSpell, field_0x198) == 0x198, "CreatureReceiveSpell scalar offset is incorrect");
static_assert(offsetof(CreatureReceiveSpell, field_0x19c) == 0x19c, "CreatureReceiveSpell point offset is incorrect");
static_assert(offsetof(CreatureReceiveSpell, field_0x1d4) == 0x1d4, "CreatureReceiveSpell flag offset is incorrect");
static_assert(sizeof(CreatureReceiveSpell) == 0x1d8, "CreatureReceiveSpell size is incorrect");

#endif /* BW1_DECOMP_CREATURE_RECEIVE_SPELL_INCLUDED_H */
