#ifndef BW1_DECOMP_PLANNED_ABODE_INCLUDED_H
#define BW1_DECOMP_PLANNED_ABODE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum ABODE_TYPE */
#include <re_common.h>   /* For bool32_t */

#include "AbodeInfo.h"            /* For struct GAbodeInfo */
#include "PlannedMultiMapFixed.h" /* For struct PlannedMultiMapFixed */

// Forward Declares

class Abode;
class Base;
class GMultiMapFixedInfo;
struct GPlannedAbodeInfo;
class GameOSFile;
class GameThing;
class GameThingWithPos;
struct MapCoords;
class MultiMapFixed;

class PlannedAbode : public PlannedMultiMapFixed
{
public:
	Town* town; /* 0x48 */

	// Override methods

	// BW1W120 00405110 BW1M119 010b3160
	virtual ~PlannedAbode();
	// BW1W120 004056b0 BW1M119 013448c0
	virtual void ToBeDeleted(int param_1);
	// BW1W120 004050e0 BW1M119 0141c550
	virtual Town* GetTown();
	// BW1W120 00405100 BW1M119 014afde0
	virtual char* GetDebugText();
	// BW1W120 00405860 BW1M119 013dc0f0
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00405830 BW1M119 013434f0
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 004050f0 BW1M119 01418a20
	virtual uint32_t GetSaveType();
	// BW1W120 004061a0 BW1M119 011d16f0
	virtual bool32_t IsWonder();
	// BW1W120 00405710 BW1M119 0157bb20
	virtual MultiMapFixed* CreatePlanned(float param_1);
	// BW1W120 00405770 BW1M119 010d7810
	virtual MultiMapFixed* CreatePlannedNoFixedCheck(float param_1);
	// BW1W120 004060c0 BW1M119 011d1450
	virtual bool32_t IsCivic();
	// BW1W120 004061e0 BW1M119 01007b50
	virtual ABODE_TYPE GetAbodeType();

	// Static methods

	// BW1W120 004055c0 BW1M119 01376860
	static PlannedAbode* CreateNoInit(const MapCoords& coords, const GAbodeInfo* info, Town* town, float param_4,
	                                  float param_5);
	// BW1W120 00405600 BW1M119 01590b90
	static PlannedAbode* Create(const MapCoords& coords, const GAbodeInfo* info, Town* town, float param_4,
	                            float param_5)
	{
		PlannedAbode* abode = CreateNoInit(coords, info, town, param_4, param_5);
		abode->Init(town);
		return abode;
	}
	// BW1W120 00405660 BW1M119 013d1920
	static PlannedAbode* Create(Abode* abode);
	// BW1W120 004056d0 BW1M119 01007b00
	static GPlannedAbodeInfo* GetInfo();

	// Constructors

	// BW1W120 00405080 BW1M119 01370320
	PlannedAbode(const MapCoords& coords, const GAbodeInfo* info, Town* town, float y_angle, float scale)
		: PlannedMultiMapFixed(coords, info, y_angle, scale), town(NULL)
	{
	}
	// BW1W120 00405580 BW1M119 01368800
	PlannedAbode(Abode* abode);

	// Non-virtual methods

	// BW1W120 004055a0 BW1M119 0149c170
	void Init(Town* town);
	// BW1W120 004056f0 BW1M119 inlined
	bool32_t FUN_004056f0(int param_1);
	// BW1W120 004057f0 BW1M119 inlined
	bool32_t IsOkToBuild();
};

#endif /* BW1_DECOMP_PLANNED_ABODE_INCLUDED_H */
