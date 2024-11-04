#ifndef BW1_DECOMP_HAND_STATE_CREATURE_INCLUDED_H
#define BW1_DECOMP_HAND_STATE_CREATURE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include "HandState.h" /* For struct HandState */

// Forward Declares

struct CHand;

struct HandStateCreature
{
  struct HandState super;  /* 0x0 */
  uint8_t field_0x8[0x118];
};
static_assert(sizeof(struct HandStateCreature) == 0x120, "Data type is of wrong size");

static struct HandStateVftable* __vt__17HandStateCreature = (struct HandStateVftable*)0x00900aac;

// Constructors

// win1.41 005b13d0 mac 10338f00 HandStateCreature::HandStateCreature(CHand*)
struct HandStateCreature* __fastcall __ct__17HandStateCreatureFP5CHand(struct HandStateCreature* this, const void* edx, struct CHand* hand);

#endif /* BW1_DECOMP_HAND_STATE_CREATURE_INCLUDED_H */
