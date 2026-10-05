#ifndef BW1_DECOMP_MAGIC_TELEPORT_INFO_INCLUDED_H
#define BW1_DECOMP_MAGIC_TELEPORT_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "MagicInfo.h" /* For struct GMagicInfo */

// Forward Declares

class Base;
class GameThing;
class Spell;
struct MapCoords;

class GMagicTeleportInfo : public GMagicInfo
{
public:
	uint32_t field_0x58;

	// Override methods

	// BW1W120 005fbe50 BW1M119 013b9660
	virtual uint32_t CanCast(const MapCoords& coords, GameThing* caster) const;
	// BW1W120 005fbdf0 BW1M119 013b97a0
	virtual Spell* AllocSpell(GameThing* caster) const;

	// Non-virtual methods

	// TODO(#377): The original declared this class in MagicTeleport.h.
	// Out of line: LoadBinary at 0042dee0, Load at 0042de80.
	INFO_DATA_BLOCK(field_0x58, field_0x58)
	INFO_DERIVED_LOADERS(GMagicInfo, "MagicTeleport.h", 19)
};
static_assert(sizeof(GMagicTeleportInfo) == 0x5c, "Data type is of wrong size");

#endif /* BW1_DECOMP_MAGIC_TELEPORT_INFO_INCLUDED_H */
