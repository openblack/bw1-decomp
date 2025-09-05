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

// win1.41 00900afc mac 1099b3c0 HandStateGrain::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__14HandStateGrain asm("??_R4HandStateGrain@@6B@");

// win1.41 00900b00 mac 1099b3c8 HandStateGrain::`vftable'
extern const struct HandStateVftable __vt__14HandStateGrain asm("??_7HandStateGrain@@6B@");

// Constructors

// win1.41 005b2b80 mac 10339d60 HandStateGrain::HandStateGrain(CHand*)
struct HandStateGrain* __fastcall __ct__14HandStateGrainFP5CHand(struct HandStateGrain* this, const void* edx, struct CHand* hand);

#endif /* BW1_DECOMP_HAND_STATE_GRAIN_INCLUDED_H */
