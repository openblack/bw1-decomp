#ifndef BW1_DECOMP_PLANNED_CITADEL_PART_INCLUDED_H
#define BW1_DECOMP_PLANNED_CITADEL_PART_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "LHPTR.h"                /* For class LHPTR */
#include "PlannedMultiMapFixed.h" /* For struct PlannedMultiMapFixed */

// Forward Declares

class Base;
class Citadel;
class GameOSFile;
class GameThing;

class PlannedCitadelPart : public PlannedMultiMapFixed
{
public:
	LHPTR<Citadel> citadel;

	// Override methods

	// BW1W120 00469670 BW1M119 011c7900
	virtual ~PlannedCitadelPart();
	// BW1W120 00469690 BW1M119 011ca790
	virtual void ToBeDeleted(int param_1);
	// BW1W120 00465590 BW1M119 011c9af0
	virtual char* GetDebugText();
	// BW1W120 00469720 BW1M119 011ca650
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 004696f0 BW1M119 011ca6f0
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 00465580 BW1M119 011c9ab0
	virtual uint32_t GetSaveType();

	// BW1W120 inlined BW1M119 inlined
	PlannedCitadelPart() {}
};

#endif /* BW1_DECOMP_PLANNED_CITADEL_PART_INCLUDED_H */
