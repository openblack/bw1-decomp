#ifndef BW1_DECOMP_BELIEF_INCLUDED_H
#define BW1_DECOMP_BELIEF_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For NUM_REACTION_FUNCTIONS */

#include "Base.h" /* For struct Base */

// Forward Declares

class GPlayer;

class GBelief: public Base
{
public:
    float belief_in_player[0x8]; /* 0x8 */
    uint32_t field_0x28[0x8];
    float field_0x48[0x8];
    float belief_in_player_max[0x8]; /* 0x68 */
    uint32_t field_0x88[0x8];
    float field_0xa8[0x8];
    float field_0xc8[0x8];
    float boredom_multiplier[NUM_REACTION_FUNCTIONS]; /* 0xe8 */
    float field_0x18c[0x11];

    // Override methods

    // win1.41 00739320 mac 105581c0 GBelief::_dt(void)
    virtual ~GBelief();

    // Non-virtual methods

    // win1.41 00437e70 mac 00437e70 GBelief::GetBeliefInPlayer(unsigned long)
    float GetBeliefInPlayer(unsigned long param_1);
    // win1.41 00438770 mac 100b1810 GBelief::DistanceChangeToBelief(float, float)
    float DistanceChangeToBelief(float param_1, float param_2);
    // win1.41 004387d0 mac 100b1700 GBelief::SetBelief(unsigned long, float)
    void SetBelief(int index, float value);
    // win1.41 00438a00 mac 100b13e0 GBelief::SetBeliefInPlayerCap(GPlayer *, float)
    void SetBeliefInPlayerCap(GPlayer* player, float cap);
};

#endif /* BW1_DECOMP_BELIEF_INCLUDED_H */
