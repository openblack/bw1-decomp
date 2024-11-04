#ifndef BW1_DECOMP_HAND_STATE_GRAIN_INCLUDED_H
#define BW1_DECOMP_HAND_STATE_GRAIN_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include "HandStateHolding.h" /* For struct HandStateHolding */

// Forward Declares

struct CHand;

struct HandStateGrain
{
  struct HandStateHolding super;  /* 0x0 */
  uint8_t field_0x8[0xe4];  /* 0x144 */
};
static_assert(sizeof(struct HandStateGrain) == 0x228, "Data type is of wrong size");

static struct HandStateVftable* __vt__14HandStateGrain = (struct HandStateVftable*)0x00900b00;

// Constructors

// win1.41 005b2b80 mac 10339d60 HandStateGrain::HandStateGrain(CHand*)
struct HandStateGrain* __fastcall __ct__14HandStateGrainFP5CHand(struct HandStateGrain* this, const void* edx, struct CHand* hand);

#endif /* BW1_DECOMP_HAND_STATE_GRAIN_INCLUDED_H */
