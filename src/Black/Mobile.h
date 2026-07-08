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

	// BW1W120 004748e0 BW1M100 100c0800 Mobile::_dt(void)
	virtual ~Mobile();
	// BW1W120 00606c70 BW1M100 103ba4e0 Mobile::Load(GameOSFile &)
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00606c10 BW1M100 103ba5b0 Mobile::Save(GameOSFile &)
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 00606cd0 BW1M100 103ba4a0 Mobile::BlocksTownClearArea( const(void))
	virtual bool BlocksTownClearArea();
	// BW1W120 00425b00 BW1M100 100adca0 Mobile::ValidForPlaceInHand(GInterfaceStatus *)
	virtual uint32_t ValidForPlaceInHand(GInterfaceStatus* param_1);
	// BW1W120 00416f50 BW1M100 100adcf0 Mobile::ValidToApplyThisToMapCoord(GInterfaceStatus *, MapCoords const &)
	virtual uint32_t ValidToApplyThisToMapCoord(GInterfaceStatus* param_1, const MapCoords* param_2);
	// BW1W120 00606bf0 BW1M100 103ba690 Mobile::ApplyThisToMapCoord(GInterfaceStatus *, MapCoords const &, GestureSystemPacketData *)
	virtual uint32_t ApplyThisToMapCoord(GInterfaceStatus* param_1, const MapCoords* param_2,
	                                     GestureSystemPacketData* param_3);
	// BW1W120 00416f60 BW1M100 100add50 Mobile::ApplyOnlyAfterReleased(void)
	virtual uint32_t ApplyOnlyAfterReleased();

	// Constructors

	// BW1W120 0055c790 BW1M100 100c0890 Mobile::Mobile(void)
	Mobile();
	// BW1W120 005ec000 BW1M100 inlined Mobile::Mobile(MapCoords const &, GMobileInfo const *)
	Mobile(MapCoords* coords, GMobileInfo* info);
};

#endif /* BW1_DECOMP_MOBILE_INCLUDED_H */
