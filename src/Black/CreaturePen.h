#ifndef BW1_DECOMP_CREATURE_PEN_INCLUDED_H
#define BW1_DECOMP_CREATURE_PEN_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "CitadelPart.h" /* For struct CitadelPart */

// Forward Declares

class Base;
class LHOSFile;
struct MapCoords;
class MultiMapFixed;
class Object;
class PlannedMultiMapFixed;

class CreaturePen : public CitadelPart
{
public:
	// Override methods

	// BW1W120 004eeed0 BW1M119 01278f50
	virtual ~CreaturePen();
	// BW1W120 004ef100 BW1M119 01278790
	virtual uint32_t SaveObject(LHOSFile& param_1, const MapCoords& param_2);
	// BW1W120 004eefc0 BW1M119 01278c80
	virtual PlannedMultiMapFixed* ConvertToPlanned();
};

#endif /* BW1_DECOMP_CREATURE_PEN_INCLUDED_H */
