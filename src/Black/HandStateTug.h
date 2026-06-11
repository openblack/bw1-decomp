#ifndef BW1_DECOMP_HAND_STATE_TUG_INCLUDED_H
#define BW1_DECOMP_HAND_STATE_TUG_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t, uintptr_t */

#include "HandState.h" /* For struct HandState */

// Forward Declares

class CHand;
struct LHMatrix;

class HandStateTug: public HandState
{
public:
    uintptr_t field_0x8;
    uint8_t field_0xC[0x140];

    // Override methods

    // win1.41 005b7df0 mac 1033e740 HandStateTug::Enter(void)
    virtual void Enter();
    // win1.41 005b8e40 mac 1033d5e0 HandStateTug::DrawTheHeldObject(void)
    virtual void DrawTheHeldObject();
    // win1.41 005b8070 mac 1033d650 HandStateTug::Update(float, LHMatrix *)
    virtual void Update(float param_1, LHMatrix* param_2);

    // Constructors

    // win1.41 005b7dd0 mac 1033e9e0 HandStateTug::HandStateTug(CHand*)
    HandStateTug(CHand* hand);
};

#endif /* BW1_DECOMP_HAND_STATE_TUG_INCLUDED_H */
