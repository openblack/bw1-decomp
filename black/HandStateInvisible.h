#ifndef BW1_DECOMP_HAND_STATE_INVISIBLE_INCLUDED_H
#define BW1_DECOMP_HAND_STATE_INVISIBLE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "HandState.h" /* For struct HandState */

// Forward Declares

struct CHand;
struct LHMatrix;

struct HandStateInvisible
{
  struct HandState super;  /* 0x0 */
};
static_assert(sizeof(struct HandStateInvisible) == 0x8, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009cecf8 mac inlined HandStateInvisible::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__18HandStateInvisible asm("??_R0?AVHandStateInvisible@@@8");
// win1.41 009a9308 mac inlined HandStateInvisible::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__18HandStateInvisible asm("??_R1A@?0A@A@HandStateInvisible@@8");
// win1.41 009a9320 mac inlined HandStateInvisible::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__18HandStateInvisible asm("??_R2HandStateInvisible@@8");
// win1.41 009a9330 mac inlined HandStateInvisible::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__18HandStateInvisible asm("??_R3HandStateInvisible@@8");
// win1.41 008cbeb0 mac 1077db84 HandStateInvisible::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__18HandStateInvisible asm("??_R4HandStateInvisible@@6B@");
// win1.41 008cbeb4 mac 1077db8c HandStateInvisible::`vftable'
extern const struct HandStateVftable __vt__18HandStateInvisible asm("??_7HandStateInvisible@@6B@");

// Constructors

// win1.41 inlined mac inlined HandStateInvisible::HandStateInvisible(CHand*)
struct HandStateInvisible* __fastcall __ct__18HandStateInvisibleFP5CHand(struct HandStateInvisible* this, const void* edx, struct CHand* hand) asm("??0HandStateInvisible@@QAE@PAVCHand@@@Z");

// Override methods

// win1.41 0046be90 mac 101c9440 HandStateInvisible::Enter(void)
void __fastcall Enter__18HandStateInvisibleFv(struct HandState* this) asm("?Enter@HandStateInvisible@@UAEXXZ");
// win1.41 0046bed0 mac 101c9510 HandStateInvisible::Exit(void)
void __fastcall Exit__18HandStateInvisibleFv(struct HandState* this) asm("?Exit@HandStateInvisible@@UAEXXZ");
// win1.41 0046bee0 mac 101c9570 HandStateInvisible::Update(float, LHMatrix *)
void __fastcall Update__18HandStateInvisibleFfP8LHMatrix(struct HandState* this, const void* edx, float param_1, struct LHMatrix* param_2) asm("?Update@HandStateInvisible@@UAEXMPAULHMatrix@@@Z");

#endif /* BW1_DECOMP_HAND_STATE_INVISIBLE_INCLUDED_H */
