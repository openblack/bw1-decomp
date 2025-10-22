#ifndef BW1_DECOMP_HAND_STATE_CITADEL_INCLUDED_H
#define BW1_DECOMP_HAND_STATE_CITADEL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "HandState.h" /* For struct HandState */

// Forward Declares

struct CHand;
struct LHMatrix;

struct HandStateCitadel
{
  struct HandState super;  /* 0x0 */
  uint32_t field_0x8;
  uint8_t field_0xC[0xc4];
};
static_assert(sizeof(struct HandStateCitadel) == 0xd0, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bf00c0 mac inlined HandStateCitadel::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__16HandStateCitadel asm("??_R0?AVHandStateCitadel@@@8");
// win1.41 009b0ed8 mac inlined HandStateCitadel::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__16HandStateCitadel asm("??_R1A@?0A@A@HandStateCitadel@@8");
// win1.41 009b0ef0 mac inlined HandStateCitadel::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__16HandStateCitadel asm("??_R2HandStateCitadel@@8");
// win1.41 009b0f00 mac inlined HandStateCitadel::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__16HandStateCitadel asm("??_R3HandStateCitadel@@8");
// win1.41 00900a7c mac 1099b18c HandStateCitadel::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__16HandStateCitadel asm("??_R4HandStateCitadel@@6B@");
// win1.41 00900a80 mac 1099b194 HandStateCitadel::`vftable'
extern const struct HandStateVftable __vt__16HandStateCitadel asm("??_7HandStateCitadel@@6B@");

// Constructors

// win1.41 005b0bf0 mac 103377e0 HandStateCitadel::HandStateCitadel(CHand*)
struct HandStateCitadel* __fastcall __ct__16HandStateCitadelFP5CHand(struct HandStateCitadel* this, const void* edx, struct CHand* hand) asm("??0HandStateCitadel@@QAE@PAVCHand@@@Z");

// Override methods

// win1.41 005b0c10 mac 10337710 HandStateCitadel::Enter(void)
void __fastcall Enter__16HandStateCitadelFv(struct HandState* this) asm("?Enter@HandStateCitadel@@UAEXXZ");
// win1.41 005b0d00 mac 10336f60 HandStateCitadel::Update(float, LHMatrix *)
void __fastcall Update__16HandStateCitadelFfP8LHMatrix(struct HandState* this, const void* edx, float param_1, struct LHMatrix* param_2) asm("?Update@HandStateCitadel@@UAEXMPAULHMatrix@@@Z");

#endif /* BW1_DECOMP_HAND_STATE_CITADEL_INCLUDED_H */
