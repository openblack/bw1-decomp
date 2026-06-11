#ifndef BW1_DECOMP_CREATURE_ACTIONS_KNOWN_ABOUT_INCLUDED_H
#define BW1_DECOMP_CREATURE_ACTIONS_KNOWN_ABOUT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "Base.h" /* For struct Base */

class CreatureActionsKnownAbout: public Base
{
public:
    uint32_t field_0x8[0x2][0x2];

    // Override methods

    // win1.41 004e2230 mac 10266a40 CreatureActionsKnownAbout::_dt(void)
    virtual ~CreatureActionsKnownAbout();
};

#endif /* BW1_DECOMP_CREATURE_ACTIONS_KNOWN_ABOUT_INCLUDED_H */
