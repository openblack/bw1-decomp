#ifndef BW1_DECOMP_MAGIC_RESOURCE_INFO_INCLUDED_H
#define BW1_DECOMP_MAGIC_RESOURCE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "MagicObjectInfo.h" /* For struct GMagicObjectInfo */

// Forward Declares

class Base;
class GameThing;
class Object;
class Spell;

class GMagicResourceInfo : public GMagicObjectInfo
{
public:
	uint8_t field_0x5c[0x14];

	// Override methods

	// BW1W120 005fac00 BW1M119 013b4750
	virtual uint32_t CanCast(Object* object, GameThing* caster) const;
	// BW1W120 005fac20 BW1M119 013b4650
	virtual Spell* AllocSpell(GameThing* caster) const;

	// Non-virtual methods

	// TODO(#377): The original declared this class in MagicFoodInfo.h. GMagicObjectInfo has no loaders of
	// its own, so this level loads straight after GMagicInfo.
	// Out of line: LoadBinary at 0042d780, Load at 0042d720.
	INFO_DATA_BLOCK(field_0x5c, field_0x5c)
	INFO_DERIVED_LOADERS(GMagicObjectInfo, "MagicFoodInfo.h", 13)
};
static_assert(sizeof(GMagicResourceInfo) == 0x70, "Data type is of wrong size");

#endif /* BW1_DECOMP_MAGIC_RESOURCE_INFO_INCLUDED_H */
