#ifndef BW1_DECOMP_CAMERA_MODE_FOLLOW_INCLUDED_H
#define BW1_DECOMP_CAMERA_MODE_FOLLOW_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For int32_t, uint8_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "CameraMode.h" /* For struct CameraMode */

// Forward Declares

struct GCamera;
struct GameThingWithPos;

struct CameraModeFollow
{
  struct CameraMode super;  /* 0x0 */
  struct GameThingWithPos* target;
  float pitch;
  float yaw;  /* 0x10 */
  float viewing_distance;
  float field_0x18;
  int field_0x1c;
  int field_0x20;
  uint8_t field_0x24[0x18];
  int32_t field_0x3c;
  int32_t field_0x40;
  int32_t field_0x44;
};
static_assert(sizeof(struct CameraModeFollow) == 0x48, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009cda20 mac inlined CameraModeFollow::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__16CameraModeFollow asm("??_R0?AVCameraModeFollow@@@8");
// win1.41 009a8a30 mac inlined CameraModeFollow::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__16CameraModeFollow asm("??_R1A@?0A@A@CameraModeFollow@@8");
// win1.41 009a8a48 mac inlined CameraModeFollow::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__16CameraModeFollow asm("??_R2CameraModeFollow@@8");
// win1.41 009a8a58 mac inlined CameraModeFollow::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__16CameraModeFollow asm("??_R3CameraModeFollow@@8");
// win1.41 008c7880 mac 1077789c CameraModeFollow::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__16CameraModeFollow asm("??_R4CameraModeFollow@@6B@");
// win1.41 008c7884 mac 106f67fc CameraModeFollow::`vftable'
extern const struct CameraModeVftable __vt__16CameraModeFollow asm("??_7CameraModeFollow@@6B@");

// Constructors

// win1.41 0044b800 mac 101a00c0 CameraModeFollow::CameraModeFollow(GCamera *, GameThingWithPos *, float, int, int)
struct CameraModeFollow* __fastcall __ct__16CameraModeFollowFP7GCameraP16GameThingWithPosfii(struct CameraModeFollow* this, const void* edx, struct GCamera* camera, struct GameThingWithPos* target, float param_3, int param_4, int param_5) asm("??0CameraModeFollow@@QAE@PAVGCamera@@PAVGameThingWithPos@@MHH@Z");

// Non-virtual methods

// win1.41 0044ba00 mac 1019ff80 CameraModeFollow::Set(GameThingWithPos *)
void __fastcall Set__16CameraModeFollowFP16GameThingWithPos(struct CameraModeFollow* this, const void* edx, struct GameThingWithPos* target) asm("?Set@CameraModeFollow@@QAEXPAVGameThingWithPos@@@Z");

#endif /* BW1_DECOMP_CAMERA_MODE_FOLLOW_INCLUDED_H */
