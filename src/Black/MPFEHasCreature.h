#ifndef BW1_DECOMP_MPFE_HAS_CREATURE_INCLUDED_H
#define BW1_DECOMP_MPFE_HAS_CREATURE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

class MPFEHasCreature: public MPFEMessageObject
{
public:

    // Override methods

    // BW1W120 00628010 BW1M100 inlined MPFEHasCreature::_dt(void)
    virtual ~MPFEHasCreature();
};

#endif /* BW1_DECOMP_MPFE_HAS_CREATURE_INCLUDED_H */
