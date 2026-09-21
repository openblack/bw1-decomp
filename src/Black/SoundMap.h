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

	// BW1W120 0054ba10 BW1M119 013d88d0
	virtual ~GSoundMap();
	// BW1W120 0071d990 BW1M119 0106aa90
	virtual void Dump();

	// Non-virtual methods
	// BW1W120 0071d6f0 BW1M119 0107b310
	void Update();
	// BW1W120 0071d800 BW1M119 0106d0e0
	void CalculateRadiusPointAndDistance();
	// BW1W120 0071d720 BW1M119 01045d30
	void UpdateFromMap(const MapCoords& coords);
	// BW1W120 inlined BW1M119 01362dd0
	LHPoint GetReceiverPos() { return field_0xec; }

	// Constructors

	// BW1W120 0054b9d0 BW1M119 inlined
	GSoundMap();
	// BW1W120 0071d6d0 BW1M119 0101b120
	void Reset();
};

#endif /* BW1_DECOMP_SOUND_MAP_INCLUDED_H */
