#ifndef BW1_DECOMP_MPFE_HAS_CREATURE_INCLUDED_H
#define BW1_DECOMP_MPFE_HAS_CREATURE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

class MPFEHasCreature: public MPFEMessageObject
{
public:

    // Override methods

    // win1.41 00628010 mac inlined MPFEHasCreature::_dt(void)
    virtual ~MPFEHasCreature();
};

#endif /* BW1_DECOMP_MPFE_HAS_CREATURE_INCLUDED_H */
