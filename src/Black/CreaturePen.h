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

class CreaturePen: public CitadelPart
{
public:

    // Override methods

    // win1.41 004eeed0 mac 10275140 CreaturePen::_dt(void)
    virtual ~CreaturePen();
    // win1.41 004ef100 mac 10274980 CreaturePen::SaveObject(LHOSFile &, MapCoords const &)
    virtual uint32_t SaveObject(LHOSFile* param_1, const MapCoords* param_2);
    // win1.41 004eefc0 mac 10274e70 CreaturePen::ConvertToPlanned(void)
    virtual PlannedMultiMapFixed* ConvertToPlanned();
};

#endif /* BW1_DECOMP_CREATURE_PEN_INCLUDED_H */
