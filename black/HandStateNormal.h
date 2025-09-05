#ifndef BW1_DECOMP_HAND_STATE_NORMAL_INCLUDED_H
#define BW1_DECOMP_HAND_STATE_NORMAL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uintptr_t */

#include "HandState.h" /* For struct HandState */

// Forward Declares

struct CHand;

struct HandStateNormal
{
  struct HandState super;  /* 0x0 */
  uintptr_t field_0x8;
  uintptr_t field_0xC;
};
static_assert(sizeof(struct HandStateNormal) == 0x10, "Data type is of wrong size");

// win1.41 00900b9c mac 1099b8cc HandStateNormal::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__15HandStateNormal asm("??_R4HandStateNormal@@6B@");

// win1.41 00900ba0 mac 1099b8d4 HandStateNormal::`vftable'
extern const struct HandStateVftable __vt__15HandStateNormal asm("??_7HandStateNormal@@6B@");

// Constructors

// win1.41 005b5c70 mac 1033c8a0 HandStateNormal::HandStateNormal(CHand*)
struct HandStateNormal* __fastcall __ct__15HandStateNormalFP5CHand(struct HandStateNormal* this, const void* edx, struct CHand* hand);

#endif /* BW1_DECOMP_HAND_STATE_NORMAL_INCLUDED_H */
