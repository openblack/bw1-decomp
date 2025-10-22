#ifndef BW1_DECOMP_HAND_STATE_NORMAL_INCLUDED_H
#define BW1_DECOMP_HAND_STATE_NORMAL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uintptr_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "HandState.h" /* For struct HandState */

// Forward Declares

struct CHand;
struct LHMatrix;

struct HandStateNormal
{
  struct HandState super;  /* 0x0 */
  uintptr_t field_0x8;
  uintptr_t field_0xC;
};
static_assert(sizeof(struct HandStateNormal) == 0x10, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bf01e0 mac inlined HandStateNormal::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__15HandStateNormal asm("??_R0?AVHandStateNormal@@@8");
// win1.41 009b1068 mac inlined HandStateNormal::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__15HandStateNormal asm("??_R1A@?0A@A@HandStateNormal@@8");
// win1.41 009b1080 mac inlined HandStateNormal::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__15HandStateNormal asm("??_R2HandStateNormal@@8");
// win1.41 009b1090 mac inlined HandStateNormal::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__15HandStateNormal asm("??_R3HandStateNormal@@8");
// win1.41 00900b9c mac 1099b8cc HandStateNormal::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__15HandStateNormal asm("??_R4HandStateNormal@@6B@");
// win1.41 00900ba0 mac 1099b8d4 HandStateNormal::`vftable'
extern const struct HandStateVftable __vt__15HandStateNormal asm("??_7HandStateNormal@@6B@");

// Constructors

// win1.41 005b5c70 mac 1033c8a0 HandStateNormal::HandStateNormal(CHand*)
struct HandStateNormal* __fastcall __ct__15HandStateNormalFP5CHand(struct HandStateNormal* this, const void* edx, struct CHand* hand) asm("??0HandStateNormal@@QAE@PAVCHand@@@Z");

// Override methods

// win1.41 005b5d00 mac 1033c7a0 HandStateNormal::Enter(void)
void __fastcall Enter__15HandStateNormalFv(struct HandState* this) asm("?Enter@HandStateNormal@@UAEXXZ");
// win1.41 005b71a0 mac 100792d0 HandStateNormal::Update(float, LHMatrix *)
void __fastcall Update__15HandStateNormalFfP8LHMatrix(struct HandState* this, const void* edx, float param_1, struct LHMatrix* param_2) asm("?Update@HandStateNormal@@UAEXMPAULHMatrix@@@Z");

#endif /* BW1_DECOMP_HAND_STATE_NORMAL_INCLUDED_H */
