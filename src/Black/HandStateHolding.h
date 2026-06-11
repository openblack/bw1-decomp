#ifndef BW1_DECOMP_HAND_STATE_HOLDING_INCLUDED_H
#define BW1_DECOMP_HAND_STATE_HOLDING_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t, uintptr_t */

#include "HandState.h" /* For struct HandState */

// Forward Declares

class CHand;

class HandStateHolding: public HandState
{
public:
    uintptr_t field_0x8;
    uintptr_t field_0x10;
    uint8_t field_0xC[0x134]; /* 0x10 */

    // Constructors

    // win1.41 005b3aa0 mac 1033bba0 HandStateHolding::HandStateHolding(CHand*)
    HandStateHolding(CHand* hand);
};

#endif /* BW1_DECOMP_HAND_STATE_HOLDING_INCLUDED_H */
