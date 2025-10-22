#ifndef BW1_DECOMP_HAND_STATE_GRAIN_INCLUDED_H
#define BW1_DECOMP_HAND_STATE_GRAIN_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "HandStateHolding.h" /* For struct HandStateHolding */

// Forward Declares

struct CHand;

struct HandStateGrain
{
  struct HandStateHolding super;  /* 0x0 */
  uint8_t field_0x8[0xe4];  /* 0x144 */
};
static_assert(sizeof(struct HandStateGrain) == 0x228, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bf0178 mac inlined HandStateGrain::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__14HandStateGrain asm("??_R0?AVHandStateGrain@@@8");
// win1.41 009b0f90 mac inlined HandStateGrain::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__14HandStateGrain asm("??_R1A@?0A@A@HandStateGrain@@8");
// win1.41 009b0fa8 mac inlined HandStateGrain::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__14HandStateGrain asm("??_R2HandStateGrain@@8");
// win1.41 009b0fb8 mac inlined HandStateGrain::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__14HandStateGrain asm("??_R3HandStateGrain@@8");
// win1.41 00900afc mac 1099b3c0 HandStateGrain::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__14HandStateGrain asm("??_R4HandStateGrain@@6B@");
// win1.41 00900b00 mac 1099b3c8 HandStateGrain::`vftable'
extern const struct HandStateVftable __vt__14HandStateGrain asm("??_7HandStateGrain@@6B@");

// Constructors

// win1.41 005b2b80 mac 10339d60 HandStateGrain::HandStateGrain(CHand*)
struct HandStateGrain* __fastcall __ct__14HandStateGrainFP5CHand(struct HandStateGrain* this, const void* edx, struct CHand* hand) asm("??0HandStateGrain@@QAE@PAVCHand@@@Z");

#endif /* BW1_DECOMP_HAND_STATE_GRAIN_INCLUDED_H */
