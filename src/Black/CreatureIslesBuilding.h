#ifndef BW1_DECOMP_CREATURE_ISLES_BUILDING_INCLUDED_H
#define BW1_DECOMP_CREATURE_ISLES_BUILDING_INCLUDED_H

#include <chlasm/Enum.h> /* For enum CREATURE_ISLES_BUILDINGS_INFO */

#include "Feature.h" /* For class Feature */

// Forward Declares

class GCreatureIslesBuldingsInfo;
struct MapCoords;

class CreatureIslesBuilding : public Feature
{
public:
	// Static methods

	// BW1WCI 004ddc80 BW1MCI119 01629e70
	static CreatureIslesBuilding* Create(const MapCoords& coords, const GCreatureIslesBuldingsInfo* info, float y_angle,
	                                     float scale);
	// BW1WCI 004de7f0 BW1MCI119 01628c50
	static CREATURE_ISLES_BUILDINGS_INFO GetInfoFromText(char* text);
};

#endif /* BW1_DECOMP_CREATURE_ISLES_BUILDING_INCLUDED_H */
