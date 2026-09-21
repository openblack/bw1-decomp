#ifndef BW1_DECOMP_PLANNED_CREATURE_PEN_INCLUDED_H
#define BW1_DECOMP_PLANNED_CREATURE_PEN_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "PlannedCitadelPart.h" /* For struct PlannedCitadelPart */

// Forward Declares

class Base;
class GameThingWithPos;

class PlannedCreaturePen : public PlannedCitadelPart
{
public:
	// Override methods

	// BW1W120 004ef050 BW1M119 012786b0
	virtual ~PlannedCreaturePen();
	// BW1W120 004ef040 BW1M119 01278750
	virtual const char* GetText();
};

#endif /* BW1_DECOMP_PLANNED_CREATURE_PEN_INCLUDED_H */
