#ifndef BW1_DECOMP_HAND_STATE_MULTI_PICK_UP_INCLUDED_H
#define BW1_DECOMP_HAND_STATE_MULTI_PICK_UP_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "HandState.h" /* For struct HandState */

// Forward Declares

struct CHand;

struct HandStateMultiPickUp
{
  struct HandState super;  /* 0x0 */
};
static_assert(sizeof(struct HandStateMultiPickUp) == 0x8, "Data type is of wrong size");

// win1.41 00900b68 mac 1099b58c HandStateMultiPickUp::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__20HandStateMultiPickUp asm("??_R4HandStateMultiPickUp@@6B@");

// win1.41 00900b6c mac 1099b594 HandStateMultiPickUp::`vftable'
extern const struct HandStateVftable __vt__20HandStateMultiPickUp asm("??_7HandStateMultiPickUp@@6B@");

// Constructors

// win1.41 005b5730 mac 1033c330 HandStateMultiPickUp::HandStateMultiPickUp(CHand*)
struct HandStateMultiPickUp* __fastcall __ct__20HandStateMultiPickUpFP5CHand(struct HandStateMultiPickUp* this, const void* edx, struct CHand* hand);

#endif /* BW1_DECOMP_HAND_STATE_MULTI_PICK_UP_INCLUDED_H */
