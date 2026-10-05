#ifndef BW1_DECOMP_MAGIC_HEAL_INFO_INCLUDED_H
#define BW1_DECOMP_MAGIC_HEAL_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "MagicInfo.h" /* For struct GMagicInfo */

// Forward Declares

class Base;
class GameThing;
class Spell;
struct MapCoords;

class GMagicHealInfo : public GMagicInfo
{
public:
	uint8_t field_0x58[0x8];

	// Override methods

	// BW1W120 005fbd20 BW1M119 013b65f0
	virtual uint32_t CanCast(const MapCoords& coords, GameThing* caster) const;
	// BW1W120 005fbd40 BW1M119 013b6500
	virtual Spell* AllocSpell(GameThing* caster) const;

	// Non-virtual methods

	// TODO(#377): The original declared this class in MagicShieldInfo.h.
	// Out of line: LoadBinary at 0042dc20, Load at 0042dbb0.
	INFO_DATA_BLOCK(field_0x58, field_0x58)
	INFO_DERIVED_LOADERS(GMagicInfo, "MagicShieldInfo.h", 40)
};
static_assert(sizeof(GMagicHealInfo) == 0x60, "Data type is of wrong size");

#endif /* BW1_DECOMP_MAGIC_HEAL_INFO_INCLUDED_H */
