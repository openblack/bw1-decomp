#ifndef BW1_DECOMP_MAGIC_SHIELD_INFO_INCLUDED_H
#define BW1_DECOMP_MAGIC_SHIELD_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "MagicRadiusSpellInfo.h" /* For struct GMagicRadiusSpellInfo */

// Forward Declares

class Base;
class GameThing;
class Spell;

class GMagicShieldInfo : public GMagicRadiusSpellInfo
{
public:
	uint8_t field_0x64[0x10];

	// Override methods

	// BW1W120 005fba70 BW1M119 013b6b20
	virtual Spell* AllocSpell(GameThing* caster) const;

	// Non-virtual methods

	// Out of line: LoadBinary at 0042d990, Load at 0042d8f0.
	INFO_DATA_BLOCK(field_0x64, field_0x64)
	INFO_DERIVED_LOADERS(GMagicRadiusSpellInfo, "MagicShieldInfo.h", 17)
};
static_assert(sizeof(GMagicShieldInfo) == 0x74, "Data type is of wrong size");

#endif /* BW1_DECOMP_MAGIC_SHIELD_INFO_INCLUDED_H */
