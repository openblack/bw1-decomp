#ifndef BW1_DECOMP_HAND_STATE_GRAIN_INCLUDED_H
#define BW1_DECOMP_HAND_STATE_GRAIN_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include "HandStateHolding.h" /* For struct HandStateHolding */

// Forward Declares

class CHand;

class HandStateGrain: public HandStateHolding
{
public:
    uint8_t field_0x8[0xe4]; /* 0x144 */

    // Constructors

    // win1.41 005b2b80 mac 10339d60 HandStateGrain::HandStateGrain(CHand*)
    HandStateGrain(CHand* hand);
};

#endif /* BW1_DECOMP_HAND_STATE_GRAIN_INCLUDED_H */
