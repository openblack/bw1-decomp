#ifndef BW1_DECOMP_MAGIC_WATER_INFO_INCLUDED_H
#define BW1_DECOMP_MAGIC_WATER_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "MagicInfo.h" /* For struct GMagicInfo */

// Forward Declares

class Base;
class GameThing;
class Spell;

class GMagicWaterInfo : public GMagicInfo
{
public:
	// Override methods

	// BW1W120 005fac70 BW1M119 013b4520
	virtual Spell* AllocSpell(GameThing* caster) const;
};
static_assert(sizeof(GMagicWaterInfo) == 0x58, "Data type is of wrong size");

#endif /* BW1_DECOMP_MAGIC_WATER_INFO_INCLUDED_H */
