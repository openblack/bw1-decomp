#ifndef BW1_DECOMP_PLANNED_CITADEL_HEART_INCLUDED_H
#define BW1_DECOMP_PLANNED_CITADEL_HEART_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "CitadelHeartInfo.h"   /* For class GCitadelHeartInfo */
#include "PlannedCitadelPart.h" /* For struct PlannedCitadelPart */

// Forward Declares

class Base;
class BuildingSite;
class Citadel;
class GCitadelHeartInfo;
class GameThingWithPos;
struct MapCoords;
class MultiMapFixed;
class PlannedMultiMapFixed;

class PlannedCitadelHeart : public PlannedCitadelPart
{
public:
	// Override methods

	// BW1W120 00468df0 BW1M119 011c4100
	virtual BuildingSite* CreateBuildingSite();
	// BW1W120 00465a20 BW1M119 011c6f50
	virtual MultiMapFixed* CreatePlanned(float food);

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	PlannedCitadelHeart(const MapCoords& coords, const GCitadelHeartInfo* info, Citadel* citadel, float y_angle,
	                    float scale)
		: PlannedCitadelPart(coords, info, citadel, y_angle, scale)
	{
	}
};

#endif /* BW1_DECOMP_PLANNED_CITADEL_HEART_INCLUDED_H */
