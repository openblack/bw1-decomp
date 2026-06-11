#ifndef BW1_DECOMP_HAND_STATE_PLAY_ANIM_INCLUDED_H
#define BW1_DECOMP_HAND_STATE_PLAY_ANIM_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "HandState.h" /* For struct HandState */

// Forward Declares

class CHand;
struct LHMatrix;

class HandStatePlayAnim: public HandState
{
public:
    uint8_t field_0x8[0x10];
    uint32_t field_0x18;
    uint32_t field_0x1C;

    // Override methods

    // win1.41 005b7510 mac 1033cb10 HandStatePlayAnim::Enter(void)
    virtual void Enter();
    // win1.41 005b7520 mac 1033c970 HandStatePlayAnim::Update(float, LHMatrix *)
    virtual void Update(float param_1, LHMatrix* param_2);

    // Constructors

    // win1.41 005b74f0 mac 1033cb50 HandStatePlayAnim::HandStatePlayAnim(CHand*)
    HandStatePlayAnim(CHand* hand);
};

#endif /* BW1_DECOMP_HAND_STATE_PLAY_ANIM_INCLUDED_H */
