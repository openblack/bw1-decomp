#ifndef BW1_DECOMP_PLANNED_WORSHIP_SITE_INCLUDED_H
#define BW1_DECOMP_PLANNED_WORSHIP_SITE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum ABODE_TYPE, enum TRIBE_TYPE */

#include "PlannedCitadelPart.h" /* For struct PlannedCitadelPart */

// Forward Declares

class Base;
class GameOSFile;
class Citadel;
class GameThing;
class GCitadelPartInfo;
struct MapCoords;
class MultiMapFixed;

class PlannedWorshipSite : public PlannedCitadelPart
{
public:
	TRIBE_TYPE Tribe; /* 0x4c */

	// Override methods

	// BW1W120 0077bf00 BW1M119 015b1fc0
	virtual char* GetDebugText();
	// BW1W120 0077bf90 BW1M119 015b7d30
	virtual bool32_t Load(GameOSFile& file);
	// BW1W120 0077bf30 BW1M119 015b7e10
	virtual bool32_t Save(GameOSFile& file);
	// BW1W120 0077bef0 BW1M119 015b1f80
	virtual uint32_t GetSaveType();
	// BW1W120 0077c070 BW1M119 015b7a10
	virtual MultiMapFixed* CreatePlanned(float percent_built);
	// BW1W120 0077bee0 BW1M119 015b1f40
	virtual ABODE_TYPE GetAbodeType();

	// Constructors

	// BW1W120 0077bea0 BW1M119 inlined
	PlannedWorshipSite(const MapCoords& coords, const GCitadelPartInfo* info, TRIBE_TYPE tribe, Citadel* citadel,
	                   float y_angle, float scale);
};

#endif /* BW1_DECOMP_PLANNED_WORSHIP_SITE_INCLUDED_H */
