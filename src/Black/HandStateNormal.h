#ifndef BW1_DECOMP_HAND_STATE_NORMAL_INCLUDED_H
#define BW1_DECOMP_HAND_STATE_NORMAL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uintptr_t */

#include "HandState.h" /* For struct HandState */

// Forward Declares

class CHand;
struct LHMatrix;

class HandStateNormal: public HandState
{
public:
    uintptr_t field_0x8;
    uintptr_t field_0xC;

    // Override methods

    // win1.41 005b5d00 mac 1033c7a0 HandStateNormal::Enter(void)
    virtual void Enter();
    // win1.41 005b71a0 mac 100792d0 HandStateNormal::Update(float, LHMatrix *)
    virtual void Update(float param_1, LHMatrix* param_2);

    // Constructors

    // win1.41 005b5c70 mac 1033c8a0 HandStateNormal::HandStateNormal(CHand*)
    HandStateNormal(CHand* hand);
};

#endif /* BW1_DECOMP_HAND_STATE_NORMAL_INCLUDED_H */
