#ifndef BW1_DECOMP_HAND_STATE_MULTI_PICK_UP_INCLUDED_H
#define BW1_DECOMP_HAND_STATE_MULTI_PICK_UP_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "HandState.h" /* For struct HandState */

// Forward Declares

struct CHand;

struct HandStateMultiPickUp
{
  struct HandState super;  /* 0x0 */
};
static_assert(sizeof(struct HandStateMultiPickUp) == 0x8, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bf01a8 mac inlined HandStateMultiPickUp::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__20HandStateMultiPickUp asm("??_R0?AVHandStateMultiPickUp@@@8");
// win1.41 009b1018 mac inlined HandStateMultiPickUp::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__20HandStateMultiPickUp asm("??_R1A@?0A@A@HandStateMultiPickUp@@8");
// win1.41 009b1030 mac inlined HandStateMultiPickUp::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__20HandStateMultiPickUp asm("??_R2HandStateMultiPickUp@@8");
// win1.41 009b1040 mac inlined HandStateMultiPickUp::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__20HandStateMultiPickUp asm("??_R3HandStateMultiPickUp@@8");
// win1.41 00900b68 mac 1099b58c HandStateMultiPickUp::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__20HandStateMultiPickUp asm("??_R4HandStateMultiPickUp@@6B@");
// win1.41 00900b6c mac 1099b594 HandStateMultiPickUp::`vftable'
extern const struct HandStateVftable __vt__20HandStateMultiPickUp asm("??_7HandStateMultiPickUp@@6B@");

// Constructors

// win1.41 005b5730 mac 1033c330 HandStateMultiPickUp::HandStateMultiPickUp(CHand*)
struct HandStateMultiPickUp* __fastcall __ct__20HandStateMultiPickUpFP5CHand(struct HandStateMultiPickUp* this, const void* edx, struct CHand* hand) asm("??0HandStateMultiPickUp@@QAE@PAVCHand@@@Z");

#endif /* BW1_DECOMP_HAND_STATE_MULTI_PICK_UP_INCLUDED_H */
