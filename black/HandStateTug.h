#ifndef BW1_DECOMP_HAND_STATE_TUG_INCLUDED_H
#define BW1_DECOMP_HAND_STATE_TUG_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t, uintptr_t */

#include "HandState.h" /* For struct HandState */

// Forward Declares

struct CHand;

struct HandStateTug
{
  struct HandState super;  /* 0x0 */
  uintptr_t field_0x8;
  uint8_t field_0xC[0x140];
};
static_assert(sizeof(struct HandStateTug) == 0x14c, "Data type is of wrong size");

static struct HandStateVftable* __vt__12HandStateTug = (struct HandStateVftable*)0x00900c1c;

// Constructors

// win1.41 005b7dd0 mac 1033e9e0 HandStateTug::HandStateTug(CHand*)
struct HandStateTug* __fastcall __ct__12HandStateTugFP5CHand(struct HandStateTug* this, const void* edx, struct CHand* hand);

#endif /* BW1_DECOMP_HAND_STATE_TUG_INCLUDED_H */
