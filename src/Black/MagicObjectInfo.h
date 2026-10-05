#ifndef BW1_DECOMP_MAGIC_OBJECT_INFO_INCLUDED_H
#define BW1_DECOMP_MAGIC_OBJECT_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "MagicInfo.h" /* For struct GMagicInfo */

// Forward Declares

class Base;
class GameThing;
struct MapCoords;

class GMagicObjectInfo : public GMagicInfo
{
public:
	// Not part of the loaded data block.
	uint32_t field_0x58;

	// Override methods

	// BW1W120 005fba00 BW1M119 013b63e0
	virtual uint32_t CanCast(const MapCoords& coords, GameThing* caster) const;
};
static_assert(sizeof(GMagicObjectInfo) == 0x5c, "Data type is of wrong size");

#endif /* BW1_DECOMP_MAGIC_OBJECT_INFO_INCLUDED_H */
