#ifndef BW1_DECOMP_MAGIC_CREATURE_SPELL_INFO_INCLUDED_H
#define BW1_DECOMP_MAGIC_CREATURE_SPELL_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "MagicInfo.h" /* For struct GMagicInfo */

// Forward Declares

class Base;
class GameThing;
class Object;
class Spell;
struct MapCoords;

class GMagicCreatureSpellInfo : public GMagicInfo
{
public:
	uint8_t field_0x58[0x44];

	// Override methods

	// BW1W120 005fa7e0 BW1M119 013b3ad0
	virtual uint32_t CanCast(const MapCoords& coords, GameThing* caster) const;
	// BW1W120 005fa7f0 BW1M119 013b3a20
	virtual uint32_t CanCast(Object* object, GameThing* caster) const;
	// BW1W120 005fa790 BW1M119 013b3bb0
	virtual Spell* AllocSpell(GameThing* caster) const;
	// BW1W120 005fa830 BW1M119 013b3980
	virtual const GMagicCreatureSpellInfo* AsMagicCreatureSpellInfo() const;
	// BW1W120 005fa840 BW1M119 013b39d0
	virtual GMagicCreatureSpellInfo* AsMagicCreatureSpellInfo();

	// Non-virtual methods

	// Out of line: LoadBinary at 0042dd10, Load at 0042dcb0.
	INFO_DATA_BLOCK(field_0x58, field_0x58)
	INFO_DERIVED_LOADERS(GMagicInfo, "MagicCreatureSpellInfo.h", 19)
};
static_assert(sizeof(GMagicCreatureSpellInfo) == 0x9c, "Data type is of wrong size");

#endif /* BW1_DECOMP_MAGIC_CREATURE_SPELL_INFO_INCLUDED_H */
