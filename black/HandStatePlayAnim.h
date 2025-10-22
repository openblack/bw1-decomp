#ifndef BW1_DECOMP_HAND_STATE_PLAY_ANIM_INCLUDED_H
#define BW1_DECOMP_HAND_STATE_PLAY_ANIM_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "HandState.h" /* For struct HandState */

// Forward Declares

struct CHand;
struct LHMatrix;

struct HandStatePlayAnim
{
  struct HandState super;  /* 0x0 */
  uint8_t field_0x8[0x10];
  uint32_t field_0x18;
  uint32_t field_0x1C;
};
static_assert(sizeof(struct HandStatePlayAnim) == 0x20, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bf0220 mac inlined HandStatePlayAnim::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__17HandStatePlayAnim asm("??_R0?AVHandStatePlayAnim@@@8");
// win1.41 009b10b8 mac inlined HandStatePlayAnim::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__17HandStatePlayAnim asm("??_R1A@?0A@A@HandStatePlayAnim@@8");
// win1.41 009b10d0 mac inlined HandStatePlayAnim::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__17HandStatePlayAnim asm("??_R2HandStatePlayAnim@@8");
// win1.41 009b10e0 mac inlined HandStatePlayAnim::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__17HandStatePlayAnim asm("??_R3HandStatePlayAnim@@8");
// win1.41 00900bc0 mac 1099b904 HandStatePlayAnim::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__17HandStatePlayAnim asm("??_R4HandStatePlayAnim@@6B@");
// win1.41 00900bc4 mac 1099b90c HandStatePlayAnim::`vftable'
extern const struct HandStateVftable __vt__17HandStatePlayAnim asm("??_7HandStatePlayAnim@@6B@");

// Constructors

// win1.41 005b74f0 mac 1033cb50 HandStatePlayAnim::HandStatePlayAnim(CHand*)
struct HandStatePlayAnim* __fastcall __ct__17HandStatePlayAnimFP5CHand(struct HandStatePlayAnim* this, const void* edx, struct CHand* hand) asm("??0HandStatePlayAnim@@QAE@PAVCHand@@@Z");

// Override methods

// win1.41 005b7510 mac 1033cb10 HandStatePlayAnim::Enter(void)
void __fastcall Enter__17HandStatePlayAnimFv(struct HandState* this) asm("?Enter@HandStatePlayAnim@@UAEXXZ");
// win1.41 005b7520 mac 1033c970 HandStatePlayAnim::Update(float, LHMatrix *)
void __fastcall Update__17HandStatePlayAnimFfP8LHMatrix(struct HandState* this, const void* edx, float param_1, struct LHMatrix* param_2) asm("?Update@HandStatePlayAnim@@UAEXMPAULHMatrix@@@Z");

#endif /* BW1_DECOMP_HAND_STATE_PLAY_ANIM_INCLUDED_H */
