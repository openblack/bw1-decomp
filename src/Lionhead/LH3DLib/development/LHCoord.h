#ifndef BW1_DECOMP_LH_COORD_INCLUDED_H
#define BW1_DECOMP_LH_COORD_INCLUDED_H

#include <assert.h> /* For static_assert */

struct LHCoord
{
    int x; /* 0x0 */
    int y;

    // Constructors

    // win1.41 inlined mac 1006ebc0 LHCoord::LHCoord(LHCoord const &)
    LHCoord(const LHCoord* other);
};

#endif /* BW1_DECOMP_LH_COORD_INCLUDED_H */
