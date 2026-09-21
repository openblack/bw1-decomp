#ifndef BW1_DECOMP_PLANNED_TOWN_CITADEL_HEART_INCLUDED_H
#define BW1_DECOMP_PLANNED_TOWN_CITADEL_HEART_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum ABODE_TYPE */

#include "PlannedMultiMapFixed.h" /* For struct PlannedMultiMapFixed */

// Forward Declares

class Base;
class GameOSFile;
class GameThing;
class GameThingWithPos;
class MultiMapFixed;

class PlannedTownCitadelHeart : public PlannedMultiMapFixed
{
public:
	// Override methods

	// BW1W120 00467e60 BW1M119 011c9800
	virtual ~PlannedTownCitadelHeart();
	// BW1W120 00467e80 BW1M119 011c5830
	virtual void ToBeDeleted(int param_1);
	// BW1W120 00467e50 BW1M119 011c99c0
	virtual char* GetDebugText();
	// BW1W120 00467ff0 BW1M119 011c53f0
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00467fc0 BW1M119 011c5490
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 00467e40 BW1M119 011c9970
	virtual uint32_t GetSaveType();
	// BW1W120 00467e20 BW1M119 011c98e0
	virtual uint32_t IsWonder();
	// BW1W120 00467ea0 BW1M119 011c5740
	virtual MultiMapFixed* CreatePlanned(float param_1);
	// BW1W120 00467ef0 BW1M119 011c5530
	virtual MultiMapFixed* CreatePlannedNoFixedCheck(float param_1);
	// BW1W120 00467e10 BW1M119 011c98a0
	virtual bool32_t IsCivic();
	// BW1W120 00467e30 BW1M119 011c9920
	virtual ABODE_TYPE GetAbodeType();
};

#endif /* BW1_DECOMP_PLANNED_TOWN_CITADEL_HEART_INCLUDED_H */
