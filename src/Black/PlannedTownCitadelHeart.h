#ifndef BW1_DECOMP_PLANNED_TOWN_CITADEL_HEART_INCLUDED_H
#define BW1_DECOMP_PLANNED_TOWN_CITADEL_HEART_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum ABODE_TYPE */

#include "MapCoords.h"            /* For struct MapCoords */
#include "PlannedMultiMapFixed.h" /* For struct PlannedMultiMapFixed */

// Forward Declares

class Base;
class GCitadelHeartInfo;
class GameOSFile;
class GameThing;
class GameThingWithPos;
class MultiMapFixed;
class Town;

class PlannedTownCitadelHeart : public PlannedMultiMapFixed
{
public:
	Town* town;

	// Static data

	// BW1W120 00c5e258
	static MapCoords ScriptPos;

	// Override methods

	// BW1W120 00467e10 BW1M119 011c98a0
	virtual bool32_t IsCivic() { return false; }
	// BW1W120 00467e20 BW1M119 011c98e0
	virtual bool32_t IsWonder() { return false; }
	// BW1W120 00467e30 BW1M119 011c9920
	virtual ABODE_TYPE GetAbodeType() { return ABODE_TYPE_CITADEL; }
	// BW1W120 00467e40 BW1M119 011c9970
	virtual uint32_t GetSaveType() { return GAME_THING_TYPE_PLANNED_TOWN_CITADEL_HEART; }
	// BW1W120 00467e50 BW1M119 011c99c0
	virtual char* GetDebugText() { return "PlannedTownCitadelHeart:"; }
	// BW1W120 00467e80 BW1M119 011c5830
	virtual void ToBeDeleted(int delete_now);
	// BW1W120 00467ea0 BW1M119 011c5740
	virtual MultiMapFixed* CreatePlanned(float food);
	// BW1W120 00467ef0 BW1M119 011c5530
	virtual MultiMapFixed* CreatePlannedNoFixedCheck(float food);
	// BW1W120 00467fc0 BW1M119 011c5490
	virtual bool32_t Save(GameOSFile& file);
	// BW1W120 00467ff0 BW1M119 011c53f0
	virtual bool32_t Load(GameOSFile& file);

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	PlannedTownCitadelHeart() {}
	// BW1W120 00467dd0 BW1M119 011c58c0
	PlannedTownCitadelHeart(const MapCoords& coords, const GCitadelHeartInfo* info, Town* town, float y_angle,
	                        float scale);
};

#endif /* BW1_DECOMP_PLANNED_TOWN_CITADEL_HEART_INCLUDED_H */
