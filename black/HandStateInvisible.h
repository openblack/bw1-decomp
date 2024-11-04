#ifndef BW1_DECOMP_HAND_STATE_INVISIBLE_INCLUDED_H
#define BW1_DECOMP_HAND_STATE_INVISIBLE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "HandState.h" /* For struct HandState */

// Forward Declares

struct CHand;

struct HandStateInvisible
{
  struct HandState super;  /* 0x0 */
};
static_assert(sizeof(struct HandStateInvisible) == 0x8, "Data type is of wrong size");

static struct HandStateVftable* __vt__18HandStateInvisible = (struct HandStateVftable*)0x008cbeb4;

// Constructors

// win1.41 inlined mac inlined HandStateInvisible::HandStateInvisible(CHand*)
struct HandStateInvisible* __fastcall __ct__18HandStateInvisibleFP5CHand(struct HandStateInvisible* this, const void* edx, struct CHand* hand);

#endif /* BW1_DECOMP_HAND_STATE_INVISIBLE_INCLUDED_H */
