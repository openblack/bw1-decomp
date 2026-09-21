#ifndef BW1_DECOMP_PLANNED_CITADEL_HEART_INCLUDED_H
#define BW1_DECOMP_PLANNED_CITADEL_HEART_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "PlannedCitadelPart.h" /* For struct PlannedCitadelPart */

// Forward Declares

class Base;
class GameThingWithPos;
class MultiMapFixed;
class PlannedMultiMapFixed;

class PlannedCitadelHeart : public PlannedCitadelPart
{
public:
	// Override methods

	// BW1W120 004655a0 BW1M119 011c9a10
	virtual ~PlannedCitadelHeart();
	// BW1W120 00468df0 BW1M119 011c4100
	virtual uint32_t CreateBuildingSite();
	// BW1W120 00465a20 BW1M119 011c6f50
	virtual MultiMapFixed* CreatePlanned(float param_1);
};

#endif /* BW1_DECOMP_PLANNED_CITADEL_HEART_INCLUDED_H */
