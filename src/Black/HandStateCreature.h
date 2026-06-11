#ifndef BW1_DECOMP_HAND_STATE_CREATURE_INCLUDED_H
#define BW1_DECOMP_HAND_STATE_CREATURE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include "HandState.h" /* For struct HandState */

// Forward Declares

class CHand;

class HandStateCreature: public HandState
{
public:
    uint8_t field_0x8[0x118];

    // Override methods

    // win1.41 005b13f0 mac 10338c40 HandStateCreature::Enter(void)
    virtual void Enter();

    // Constructors

    // win1.41 005b13d0 mac 10338f00 HandStateCreature::HandStateCreature(CHand*)
    HandStateCreature(CHand* hand);
};

#endif /* BW1_DECOMP_HAND_STATE_CREATURE_INCLUDED_H */
