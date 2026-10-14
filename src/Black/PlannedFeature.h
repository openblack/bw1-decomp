#ifndef BW1_DECOMP_PLANNED_FEATURE_INCLUDED_H
#define BW1_DECOMP_PLANNED_FEATURE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "PlannedMultiMapFixed.h" /* For struct PlannedMultiMapFixed */

// Forward Declares

class Base;
class GFeatureInfo;
class GameOSFile;
class GameThing;
struct MapCoords;
class MultiMapFixed;

class PlannedFeature : public PlannedMultiMapFixed
{
public:
	GameThing* Owner;

	// Override methods

	// BW1W120 00527490 BW1M119 010d61e0
	virtual char* GetDebugText();
	// BW1W120 00527580 BW1M119 010d5980
	virtual bool32_t Load(GameOSFile& file);
	// BW1W120 00527550 BW1M119 010d5a10
	virtual bool32_t Save(GameOSFile& file);
	// BW1W120 00527480 BW1M119 010d61a0
	virtual uint32_t GetSaveType();
	// BW1W120 005274d0 BW1M119 010d5aa0
	virtual MultiMapFixed* CreatePlanned(float param_1);

	// BW1W120 inlined BW1M119 inlined
	PlannedFeature() {}
	// BW1W120 00527440 BW1M119 010d5c10
	PlannedFeature(const MapCoords& coords, const GFeatureInfo* info, GameThing* owner, float y_angle, float scale);
};

#endif /* BW1_DECOMP_PLANNED_FEATURE_INCLUDED_H */
