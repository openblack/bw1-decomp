#ifndef BW1_DECOMP_MOBILE_INCLUDED_H
#define BW1_DECOMP_MOBILE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t, uint32_t */

#include "Object.h" /* For struct Object, struct ObjectVftable */

// Forward Declares

class Base;
class GInterfaceStatus;
class GMobileInfo;
class GameOSFile;
class GameThing;
struct GestureSystemPacketData;
struct MapCoords;

class Mobile : public Object
{
public:
	uint16_t field_0x54;

	// Override methods

	// BW1W120 004748e0 BW1M119 010c3ce0
	virtual ~Mobile();
	// BW1W120 00606c70 BW1M119 013c26c0
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00606c10 BW1M119 013c2790
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 00606cd0 BW1M119 013c2680
	virtual bool32_t BlocksTownClearArea() const;
	// BW1W120 00425b00 BW1M119 010b0820
	virtual bool32_t ValidForPlaceInHand(GInterfaceStatus* param_1);
	// BW1W120 00416f50 BW1M119 010b0870
	virtual uint32_t ValidToApplyThisToMapCoord(GInterfaceStatus* status, const MapCoords& coords);
	// BW1W120 00606bf0 BW1M119 013c2870
	virtual uint32_t ApplyThisToMapCoord(GInterfaceStatus* status, const MapCoords& coords,
	                                     GestureSystemPacketData* param_3);
	// BW1W120 00416f60 BW1M119 010b08d0
	virtual uint32_t ApplyOnlyAfterReleased();

	// Constructors

	// BW1W120 0055c790 BW1M119 010c3d70
	Mobile();
	// BW1W120 005ec000 BW1M119 inlined
	Mobile(const MapCoords& coords, const GMobileInfo* info);
};

#endif /* BW1_DECOMP_MOBILE_INCLUDED_H */
