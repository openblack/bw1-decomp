#ifndef BW1_DECOMP_HAND_STATE_CITADEL_INCLUDED_H
#define BW1_DECOMP_HAND_STATE_CITADEL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "HandState.h" /* For struct HandState */

// Forward Declares

class CHand;
struct LHMatrix;

class HandStateCitadel: public HandState
{
public:
    uint32_t field_0x8;
    uint8_t field_0xC[0xc4];

    // Override methods

    // win1.41 005b0c10 mac 10337710 HandStateCitadel::Enter(void)
    virtual void Enter();
    // win1.41 005b0d00 mac 10336f60 HandStateCitadel::Update(float, LHMatrix *)
    virtual void Update(float param_1, LHMatrix* param_2);

    // Constructors

    // win1.41 005b0bf0 mac 103377e0 HandStateCitadel::HandStateCitadel(CHand*)
    HandStateCitadel(CHand* hand);
};

#endif /* BW1_DECOMP_HAND_STATE_CITADEL_INCLUDED_H */
