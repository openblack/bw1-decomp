#ifndef BW1_DECOMP_BELIEF_INCLUDED_H
#define BW1_DECOMP_BELIEF_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For NUM_REACTION_FUNCTIONS */

#include "Base.h" /* For struct Base */

// Forward Declares

struct GPlayer;

struct GBelief
{
  struct Base super;  /* 0x0 */
  float belief_in_player[0x8];
  uint32_t field_0x28[0x8];
  float field_0x48[0x8];
  float belief_in_player_max[0x8];  /* 0x68 */
  uint32_t field_0x88[0x8];
  float field_0xa8[0x8];
  float field_0xc8[0x8];
  float boredom_multiplier[NUM_REACTION_FUNCTIONS];  /* 0xe8 */
  float field_0x18c[0x11];
};
static_assert(sizeof(struct GBelief) == 0x1d0, "Data type is of wrong size");

// Non-virtual methods

// win1.41 004387d0 mac 100b1700 GBelief::SetBelief(unsigned long, float)
void __fastcall SetBelief__7GBeliefFUlf(struct GBelief* this, const void* edx, int index, float value);
// win1.41 00438a00 mac 100b13e0 GBelief::SetBeliefInPlayerCap(GPlayer *, float)
void __fastcall SetBeliefInPlayerCap__7GBeliefFP7GPlayerf(struct GBelief* this, const void* edx, struct GPlayer* player, float cap);

#endif /* BW1_DECOMP_BELIEF_INCLUDED_H */
