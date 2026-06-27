#ifndef BW1_DECOMP_CREATURE_DIRECT_CONTROL_INCLUDED_H
#define BW1_DECOMP_CREATURE_DIRECT_CONTROL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "Base.h" /* For struct Base */

class CreatureCommand: public Base
{
public:

    // Override methods

    // BW1W120 004c7420 BW1M100 inlined CreatureCommand::_dt(void)
    virtual ~CreatureCommand();
};

#endif /* BW1_DECOMP_CREATURE_DIRECT_CONTROL_INCLUDED_H */
