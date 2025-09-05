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

// win1.41 008cbeb0 mac 1077db84 HandStateInvisible::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__18HandStateInvisible asm("??_R4HandStateInvisible@@6B@");

// win1.41 008cbeb4 mac 1077db8c HandStateInvisible::`vftable'
extern const struct HandStateVftable __vt__18HandStateInvisible asm("??_7HandStateInvisible@@6B@");

// Constructors

// win1.41 inlined mac inlined HandStateInvisible::HandStateInvisible(CHand*)
struct HandStateInvisible* __fastcall __ct__18HandStateInvisibleFP5CHand(struct HandStateInvisible* this, const void* edx, struct CHand* hand);

#endif /* BW1_DECOMP_HAND_STATE_INVISIBLE_INCLUDED_H */
