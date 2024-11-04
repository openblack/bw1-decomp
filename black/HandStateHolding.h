#ifndef BW1_DECOMP_HAND_STATE_HOLDING_INCLUDED_H
#define BW1_DECOMP_HAND_STATE_HOLDING_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t, uintptr_t */

#include "HandState.h" /* For struct HandState */

// Forward Declares

struct CHand;

struct HandStateHolding
{
  struct HandState super;  /* 0x0 */
  uintptr_t field_0x8;
  uintptr_t field_0x10;
  uint8_t field_0xC[0x134];  /* 0x10 */
};
static_assert(sizeof(struct HandStateHolding) == 0x144, "Data type is of wrong size");

static struct HandStateVftable* const __vt__16HandStateHolding = (struct HandStateVftable* const)0x00900b40;

// Constructors

// win1.41 005b3aa0 mac 1033bba0 HandStateHolding::HandStateHolding(CHand*)
struct HandStateHolding* __fastcall __ct__16HandStateHoldingFP5CHand(struct HandStateHolding* this, const void* edx, struct CHand* hand);

#endif /* BW1_DECOMP_HAND_STATE_HOLDING_INCLUDED_H */
