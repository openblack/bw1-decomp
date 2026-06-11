#ifndef BW1_DECOMP_HAND_STATE_TOTEM_INCLUDED_H
#define BW1_DECOMP_HAND_STATE_TOTEM_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include "HandState.h" /* For struct HandState */

// Forward Declares

class CHand;
struct LHMatrix;

class HandStateTotem: public HandState
{
public:
    uint8_t field_0x8[0xa4];

    // Override methods

    // win1.41 005b7690 mac 1033d350 HandStateTotem::Enter(void)
    virtual void Enter();
    // win1.41 005b7790 mac 1033d310 HandStateTotem::Exit(void)
    virtual void Exit();
    // win1.41 005b77a0 mac 1033cd20 HandStateTotem::Update(float, LHMatrix *)
    virtual void Update(float param_1, LHMatrix* param_2);

    // Constructors

    // win1.41 005b7670 mac 1033d4c0 HandStateTotem::HandStateTotem(CHand*)
    HandStateTotem(CHand* hand);
};

#endif /* BW1_DECOMP_HAND_STATE_TOTEM_INCLUDED_H */
