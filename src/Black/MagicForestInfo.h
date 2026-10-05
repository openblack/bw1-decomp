#ifndef BW1_DECOMP_MAGIC_FOREST_INFO_INCLUDED_H
#define BW1_DECOMP_MAGIC_FOREST_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "MagicInfo.h" /* For struct GMagicInfo */

// Forward Declares

class Base;
class GameThing;
class Object;
class Spell;
struct MapCoords;

class GMagicForestInfo : public GMagicInfo
{
public:
	uint8_t field_0x58[0x14];

	// Override methods

	// BW1W120 005fae80 BW1M119 013b4950
	virtual uint32_t CanCast(const MapCoords& coords, GameThing* caster) const;
	// BW1W120 0042d8e0 BW1M119 013b4900
	virtual uint32_t CanCast(Object* object, GameThing* caster) const { return 0; }
	// BW1W120 005fad90 BW1M119 013b4b10
	virtual Spell* AllocSpell(GameThing* caster) const;

	// Non-virtual methods

	// Out of line: LoadBinary at 0042d860, Load at 0042d800.
	INFO_DATA_BLOCK(field_0x58, field_0x58)
	INFO_DERIVED_LOADERS(GMagicInfo, "MagicForestInfo.h", 11)
};
static_assert(sizeof(GMagicForestInfo) == 0x6c, "Data type is of wrong size");

#endif /* BW1_DECOMP_MAGIC_FOREST_INFO_INCLUDED_H */
