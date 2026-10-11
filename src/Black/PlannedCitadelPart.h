#ifndef BW1_DECOMP_PLANNED_CITADEL_PART_INCLUDED_H
#define BW1_DECOMP_PLANNED_CITADEL_PART_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "LHPTR.h"                /* For class LHPTR */
#include "PlannedMultiMapFixed.h" /* For struct PlannedMultiMapFixed */

// Forward Declares

class Base;
class Citadel;
class GCitadelPartInfo;
struct MapCoords;
class GameOSFile;
class GameThing;

class PlannedCitadelPart : public PlannedMultiMapFixed
{
public:
	LHPTR<Citadel> citadel;

	// Override methods

	// BW1W120 00469690 BW1M119 011ca790
	virtual void ToBeDeleted(int param_1);
	// BW1W120 00465590 BW1M119 011c9af0
	virtual char* GetDebugText() { return "PlannedCitadelPart:"; }
	// BW1W120 00469720 BW1M119 011ca650
	virtual bool32_t Load(GameOSFile& file);
	// BW1W120 004696f0 BW1M119 011ca6f0
	virtual bool32_t Save(GameOSFile& file);
	// BW1W120 00465580 BW1M119 011c9ab0
	virtual uint32_t GetSaveType() { return GAME_THING_TYPE_PLANNED_CITADEL_PART; }

	// BW1W120 inlined BW1M119 inlined
	PlannedCitadelPart() {}
	// BW1W120 00469610 BW1M119 011ca8e0
	PlannedCitadelPart(const MapCoords& coords, const GCitadelPartInfo* info, Citadel* citadel, float y_angle,
	                   float scale);
};

#endif /* BW1_DECOMP_PLANNED_CITADEL_PART_INCLUDED_H */
