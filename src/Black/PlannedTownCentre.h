#ifndef BW1_DECOMP_PLANNED_TOWN_CENTRE_INCLUDED_H
#define BW1_DECOMP_PLANNED_TOWN_CENTRE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "PlannedAbode.h" /* For struct PlannedAbode */

// Forward Declares

class Base;
class GAbodeInfo;
class GameThing;
struct MapCoords;
class Town;
class TownCentre;

class PlannedTownCentre : public PlannedAbode
{
public:
	// Override methods

	// BW1W120 0055dc10 BW1M119 01562df0
	virtual ~PlannedTownCentre();
	// BW1W120 0055dc00 BW1M119 01562f10
	virtual char* GetDebugText();
	// BW1W120 0055dbf0 BW1M119 01562ed0
	virtual uint32_t GetSaveType();

	// Static methods

	// BW1W120 007444d0 BW1M119 015638e0
	static PlannedTownCentre* Create(const MapCoords& coords, const GAbodeInfo* info, Town* town, float param_4,
	                                 float param_5);

	// Constructors

	// BW1W120 00744460 BW1M119 015639f0
	PlannedTownCentre(const TownCentre* town_centre);
};

#endif /* BW1_DECOMP_PLANNED_TOWN_CENTRE_INCLUDED_H */
