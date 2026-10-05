#ifndef BW1_DECOMP_MAGIC_FLOCK_FLYING_INFO_INCLUDED_H
#define BW1_DECOMP_MAGIC_FLOCK_FLYING_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "MagicInfo.h" /* For struct GMagicInfo */

// Forward Declares

class Base;
class GameThing;
class Spell;

class GMagicFlockFlyingInfo : public GMagicInfo
{
public:
	uint8_t field_0x58[0xc];

	// Override methods

	// BW1W120 00723100 BW1M119 01526240
	virtual Spell* AllocSpell(GameThing* caster) const;

	// Non-virtual methods

	// TODO(#377): The original declared this class in SpellFlock.h.
	// Out of line: LoadBinary at 0042f2b0, Load at 0042f240.
	INFO_DATA_BLOCK(field_0x58, field_0x58)
	INFO_DERIVED_LOADERS(GMagicInfo, "SpellFlock.h", 14)
};
static_assert(sizeof(GMagicFlockFlyingInfo) == 0x64, "Data type is of wrong size");

#endif /* BW1_DECOMP_MAGIC_FLOCK_FLYING_INFO_INCLUDED_H */
