#ifndef BW1_DECOMP_HAND_STATE_MULTI_PICK_UP_INCLUDED_H
#define BW1_DECOMP_HAND_STATE_MULTI_PICK_UP_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "HandState.h" /* For struct HandState */

// Forward Declares

class CHand;

class HandStateMultiPickUp: public HandState
{
public:

    // Constructors

    // win1.41 005b5730 mac 1033c330 HandStateMultiPickUp::HandStateMultiPickUp(CHand*)
    HandStateMultiPickUp(CHand* hand);
};

#endif /* BW1_DECOMP_HAND_STATE_MULTI_PICK_UP_INCLUDED_H */
