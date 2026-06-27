#ifndef BW1_DECOMP_HAND_STATE_INVISIBLE_INCLUDED_H
#define BW1_DECOMP_HAND_STATE_INVISIBLE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "HandState.h" /* For struct HandState */

// Forward Declares

class CHand;
struct LHMatrix;

class HandStateInvisible: public HandState
{
public:

    // Override methods

    // BW1W120 0046be90 BW1M100 101c9440 HandStateInvisible::Enter(void)
    virtual void Enter();
    // BW1W120 0046bed0 BW1M100 101c9510 HandStateInvisible::Exit(void)
    virtual void Exit();
    // BW1W120 0046bee0 BW1M100 101c9570 HandStateInvisible::Update(float, LHMatrix *)
    virtual void Update(float param_1, LHMatrix* param_2);

    // Constructors

    // BW1W120 inlined BW1M100 inlined HandStateInvisible::HandStateInvisible(CHand*)
    HandStateInvisible(CHand* hand);
};

#endif /* BW1_DECOMP_HAND_STATE_INVISIBLE_INCLUDED_H */
