#ifndef BW1_DECOMP_HAND_STATE_INCLUDED_H
#define BW1_DECOMP_HAND_STATE_INCLUDED_H

#include <assert.h> /* For static_assert */

// Forward Declares

class CHand;
struct LHMatrix;

class HandState
{
public:
    CHand* hand; /* 0x4 */

    // Override methods

    // win1.41 0046e5e0 mac 101c6110 HandState::DrawTheHeldObject(void)
    virtual void DrawTheHeldObject();
    // win1.41 005b02d0 mac 101c5590 HandState::Exit(void)
    virtual void Exit();
    // win1.41 0046be80 mac 101a6900 HandState::AllowCameraTricons(void)
    virtual bool AllowCameraTricons();

    // Constructors

    // win1.41 inlined mac inlined HandState::HandState(CHand*)
    HandState(CHand* hand);
};

#endif /* BW1_DECOMP_HAND_STATE_INCLUDED_H */
