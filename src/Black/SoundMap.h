#ifndef BW1_DECOMP_SOUND_MAP_INCLUDED_H
#define BW1_DECOMP_SOUND_MAP_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t, uint32_t, uint8_t */

#include <Lionhead/LH3DLib/development/LHPoint.h> /* For struct LHPoint */

#include "Base.h"      /* For struct Base */
#include "MapCoords.h" /* For struct MapCoords */
#include <string.h>

class GSoundMap : public Base
{
public:
	struct Entry
	{
		uint16_t Count;
		float    Distance;
		int16_t  NearestX;
		int16_t  NearestZ;
	};
	Entry     Entries[0xe];
	uint16_t  field_0xb0;
	uint32_t  field_0xb4[0xe];
	LHPoint   field_0xec;
	MapCoords field_0xf8;
	float     Radius;
	float     HeightAboveLand;
	float     ReceiverHeight;

	// Override methods

	// BW1W120 0054ba10 BW1M100 100cb590 GSoundMap::_dt(void)
	virtual ~GSoundMap();
	// BW1W120 0071d990 BW1M100 10068330 GSoundMap::Dump(void)
	virtual void Dump();

	// Non-virtual methods
	// BW1W120 0071d6f0 BW1M100 10078d50 GSoundMap::Update(void)
	void Update();
	// BW1W120 0071d800 BW1M100 1006a980 GSoundMap::CalculateRadiusPointAndDistance(void)
	void CalculateRadiusPointAndDistance();
	// BW1W120 0071d720 BW1M100 100432f0 GSoundMap::UpdateFromMap(MapCoords const &)
	void UpdateFromMap(const MapCoords& coords);
	// BW1W120 inlined BW1M100 10362f90 GSoundMap::GetReceiverPos(void)
	LHPoint GetReceiverPos() { return field_0xec; }

	// Constructors

	// BW1W120 0054b9d0 BW1M100 inlined GSoundMap::GSoundMap(void)
	GSoundMap();
	// BW1W120 0071d6d0 BW1M100 10018580 GSoundMap::Reset(void)
	void Reset();
};

#endif /* BW1_DECOMP_SOUND_MAP_INCLUDED_H */
