#ifndef BW1_DECOMP_HAND_STATE_HOLDING_INCLUDED_H
#define BW1_DECOMP_HAND_STATE_HOLDING_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t, uintptr_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

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

// Object Oriented datastructures

// win1.41 00bf0158 mac inlined HandStateHolding::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__16HandStateHolding asm("??_R0?AVHandStateHolding@@@8");
// win1.41 009b0f78 mac inlined HandStateHolding::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__16HandStateHolding asm("??_R1A@?0A@A@HandStateHolding@@8");
// win1.41 009b0fe0 mac inlined HandStateHolding::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__16HandStateHolding asm("??_R2HandStateHolding@@8");
// win1.41 009b0ff0 mac inlined HandStateHolding::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__16HandStateHolding asm("??_R3HandStateHolding@@8");
// win1.41 00900b3c mac 1099b3a4 HandStateHolding::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__16HandStateHolding asm("??_R4HandStateHolding@@6B@");
// win1.41 00900b40 mac 1099b3b4 HandStateHolding::`vftable'
extern const struct HandStateVftable __vt__16HandStateHolding asm("??_7HandStateHolding@@6B@");

// Constructors

// win1.41 005b3aa0 mac 1033bba0 HandStateHolding::HandStateHolding(CHand*)
struct HandStateHolding* __fastcall __ct__16HandStateHoldingFP5CHand(struct HandStateHolding* this, const void* edx, struct CHand* hand) asm("??0HandStateHolding@@QAE@PAVCHand@@@Z");

#endif /* BW1_DECOMP_HAND_STATE_HOLDING_INCLUDED_H */
