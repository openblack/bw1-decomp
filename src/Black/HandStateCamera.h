#ifndef BW1_DECOMP_HAND_STATE_CAMERA_INCLUDED_H
#define BW1_DECOMP_HAND_STATE_CAMERA_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t, uintptr_t */

#include "HandState.h" /* For struct HandState */

// Forward Declares

class CHand;

class HandStateCamera: public HandState
{
public:
    uintptr_t field_0x8;
    uint8_t field_0xC[0xcc];

    // Override methods

    // win1.41 005b02f0 mac 10336de0 HandStateCamera::Enter(void)
    virtual void Enter();

    // Constructors

    // win1.41 005b02b0 mac 10336ec0 HandStateCamera::HandStateCamera(CHand*)
    HandStateCamera(CHand* hand);
};

#endif /* BW1_DECOMP_HAND_STATE_CAMERA_INCLUDED_H */
