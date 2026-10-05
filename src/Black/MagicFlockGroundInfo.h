#ifndef BW1_DECOMP_MAGIC_FLOCK_GROUND_INFO_INCLUDED_H
#define BW1_DECOMP_MAGIC_FLOCK_GROUND_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "MagicInfo.h" /* For struct GMagicInfo */

// Forward Declares

class Base;
class GameThing;
class Spell;

class GMagicFlockGroundInfo : public GMagicInfo
{
public:
	uint8_t field_0x58[0x10];

	// Override methods

	// BW1W120 00723180 BW1M119 01526100
	virtual Spell* AllocSpell(GameThing* caster) const;

	// Non-virtual methods

	// TODO(#377): The original declared this class in SpellFlock.h.
	// Out of line: LoadBinary at 0042f3b0, Load at 0042f340.
	INFO_DATA_BLOCK(field_0x58, field_0x58)
	INFO_DERIVED_LOADERS(GMagicInfo, "SpellFlock.h", 26)
};
static_assert(sizeof(GMagicFlockGroundInfo) == 0x68, "Data type is of wrong size");

#endif /* BW1_DECOMP_MAGIC_FLOCK_GROUND_INFO_INCLUDED_H */
