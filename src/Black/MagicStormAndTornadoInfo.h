#ifndef BW1_DECOMP_MAGIC_STORM_AND_TORNADO_INFO_INCLUDED_H
#define BW1_DECOMP_MAGIC_STORM_AND_TORNADO_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "MagicRadiusSpellInfo.h" /* For struct GMagicRadiusSpellInfo */

// Forward Declares

class Base;
class GameThing;
class Spell;

class GMagicStormAndTornadoInfo : public GMagicRadiusSpellInfo
{
public:
	uint8_t field_0x64[0x8];

	// Override methods

	// BW1W120 005fbab0 BW1M119 013b6a40
	virtual Spell* AllocSpell(GameThing* caster) const;

	// Non-virtual methods

	// TODO(#377): The original declared this class in MagicShieldInfo.h.
	// Out of line: LoadBinary at 0042daf0, Load at 0042da60.
	INFO_DATA_BLOCK(field_0x64, field_0x64)
	INFO_DERIVED_LOADERS(GMagicRadiusSpellInfo, "MagicShieldInfo.h", 29)
};
static_assert(sizeof(GMagicStormAndTornadoInfo) == 0x6c, "Data type is of wrong size");

#endif /* BW1_DECOMP_MAGIC_STORM_AND_TORNADO_INFO_INCLUDED_H */
