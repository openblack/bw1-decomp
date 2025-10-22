#ifndef BW1_DECOMP_HAND_STATE_CAMERA_INCLUDED_H
#define BW1_DECOMP_HAND_STATE_CAMERA_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t, uintptr_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "HandState.h" /* For struct HandState */

// Forward Declares

struct CHand;

struct HandStateCamera
{
  struct HandState super;  /* 0x0 */
  uintptr_t field_0x8;
  uint8_t field_0xC[0xcc];
};
static_assert(sizeof(struct HandStateCamera) == 0xd8, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bf00a0 mac inlined HandStateCamera::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__15HandStateCamera asm("??_R0?AVHandStateCamera@@@8");
// win1.41 009b0e88 mac inlined HandStateCamera::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__15HandStateCamera asm("??_R1A@?0A@A@HandStateCamera@@8");
// win1.41 009b0ea0 mac inlined HandStateCamera::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__15HandStateCamera asm("??_R2HandStateCamera@@8");
// win1.41 009b0eb0 mac inlined HandStateCamera::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__15HandStateCamera asm("??_R3HandStateCamera@@8");
// win1.41 00900a50 mac 1099b154 HandStateCamera::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__15HandStateCamera asm("??_R4HandStateCamera@@6B@");
// win1.41 00900a54 mac 1099b15c HandStateCamera::`vftable'
extern const struct HandStateVftable __vt__15HandStateCamera asm("??_7HandStateCamera@@6B@");

// Constructors

// win1.41 005b02b0 mac 10336ec0 HandStateCamera::HandStateCamera(CHand*)
struct HandStateCamera* __fastcall __ct__15HandStateCameraFP5CHand(struct HandStateCamera* this, const void* edx, struct CHand* hand) asm("??0HandStateCamera@@QAE@PAVCHand@@@Z");

// Override methods

// win1.41 005b02f0 mac 10336de0 HandStateCamera::Enter(void)
void __fastcall Enter__15HandStateCameraFv(struct HandState* this) asm("?Enter@HandStateCamera@@UAEXXZ");

#endif /* BW1_DECOMP_HAND_STATE_CAMERA_INCLUDED_H */
