#ifndef BW1_DECOMP_SOUND_MAP_INCLUDED_H
#define BW1_DECOMP_SOUND_MAP_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t, uint32_t, uint8_t */

#include <Lionhead/LH3DLib/development/LHPoint.h> /* For struct LHPoint */

#include "Base.h"      /* For struct Base */
#include "MapCoords.h" /* For struct MapCoords */

class GSoundMap : public Base
{
public:
	uint8_t   field_0x8[0xc][0xe];
	uint16_t  field_0xb0;
	uint32_t  field_0xb4[0xe];
	LHPoint   field_0xec;
	MapCoords field_0xf8;
	uint8_t   field_0xfc[0xc]; /* 0x104 */

	// Override methods

	// BW1W120 0054ba10 BW1M100 100cb590 GSoundMap::_dt(void)
	virtual ~GSoundMap();
	// BW1W120 0071d990 BW1M100 10068330 GSoundMap::Dump(void)
	virtual void Dump();

	// Constructors

	// BW1W120 0054b9d0 BW1M100 inlined GSoundMap::GSoundMap(void)
	GSoundMap();
};

#endif /* BW1_DECOMP_SOUND_MAP_INCLUDED_H */
