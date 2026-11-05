#ifndef BW1_DECOMP_CREATURE_ISLES_BUILDING_INFO_INCLUDED_H
#define BW1_DECOMP_CREATURE_ISLES_BUILDING_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <chlasm/Enum.h> /* For enum CREATURE_ISLES_BUILDINGS_INFO */

#include "FeatureInfo.h" /* For class GFeatureInfo */

class GCreatureIslesBuldingsInfo : public GFeatureInfo
{
public:
	uint32_t field_0x128;

	// Static data

	// BW1WCI 00cfa098 BW1MCI119 null
	static GCreatureIslesBuldingsInfo Infos[CREATURE_ISLES_BUILDINGS_INFO_LAST];

	// Static methods

	// BW1WCI inlined BW1MCI119 0162a240
	static GCreatureIslesBuldingsInfo* GetInfo() { return Infos; }
};
static_assert(sizeof(GCreatureIslesBuldingsInfo) == 0x12C, "Data type is of wrong size");

#endif /* BW1_DECOMP_CREATURE_ISLES_BUILDING_INFO_INCLUDED_H */
