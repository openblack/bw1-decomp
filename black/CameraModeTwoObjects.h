#ifndef BW1_DECOMP_CAMERA_MODE_TWO_OBJECTS_INCLUDED_H
#define BW1_DECOMP_CAMERA_MODE_TWO_OBJECTS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "CameraMode.h" /* For struct CameraMode */

struct CameraModeTwoObjects
{
  struct CameraMode super;  /* 0x0 */
};
static_assert(sizeof(struct CameraModeTwoObjects) == 0x8, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009ce790 mac inlined CameraModeTwoObjects::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__20CameraModeTwoObjects asm("??_R0?AVCameraModeTwoObjects@@@8");
// win1.41 009a8d00 mac inlined CameraModeTwoObjects::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__20CameraModeTwoObjects asm("??_R1A@?0A@A@CameraModeTwoObjects@@8");
// win1.41 009a8d18 mac inlined CameraModeTwoObjects::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__20CameraModeTwoObjects asm("??_R2CameraModeTwoObjects@@8");
// win1.41 009a8d28 mac inlined CameraModeTwoObjects::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__20CameraModeTwoObjects asm("??_R3CameraModeTwoObjects@@8");
// win1.41 008c7dcc mac 109c3938 CameraModeTwoObjects::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__20CameraModeTwoObjects asm("??_R4CameraModeTwoObjects@@6B@");
// win1.41 008c7dd0 mac 106fa538 CameraModeTwoObjects::`vftable'
extern const struct CameraModeVftable __vt__20CameraModeTwoObjects asm("??_7CameraModeTwoObjects@@6B@");

// Override methods

// win1.41 00461c70 mac 101aa520 CameraModeTwoObjects::_dt(void)
struct CameraMode* __fastcall __dt__20CameraModeTwoObjectsFv(struct CameraMode* this, const void* edx, uint32_t param_1) asm("??_GCameraModeTwoObjects@@UAEPAXI@Z");
// win1.41 0044a290 mac inlined CameraModeTwoObjects::CanPlayerGestureWhenCameraMoving(void)
bool __fastcall CanPlayerGestureWhenCameraMoving__20CameraModeTwoObjectsFv(struct CameraMode* this) asm("?CanPlayerGestureWhenCameraMoving@CameraModeTwoObjects@@UAE_NXZ");
// win1.41 00461de0 mac 101aa880 CameraModeTwoObjects::Update(void)
void __fastcall Update__20CameraModeTwoObjectsFv(struct CameraMode* this) asm("?Update@CameraModeTwoObjects@@UAEXXZ");
// win1.41 0044a2b0 mac inlined CameraModeTwoObjects::Validate(void)
void __fastcall Validate__20CameraModeTwoObjectsFv(struct CameraMode* this) asm("?Validate@CameraModeTwoObjects@@UAEXXZ");
// win1.41 0044a390 mac inlined CameraModeTwoObjects::Restart(void)
void __fastcall Restart__20CameraModeTwoObjectsFv(struct CameraMode* this) asm("?Restart@CameraModeTwoObjects@@UAEXXZ");
// win1.41 00461d90 mac 101aac60 CameraModeTwoObjects::IsStillValid(void)
bool __fastcall IsStillValid__20CameraModeTwoObjectsFv(struct CameraMode* this) asm("?IsStillValid@CameraModeTwoObjects@@UAE_NXZ");
// win1.41 0044a2d0 mac inlined CameraModeTwoObjects::Cleanup(void)
void __fastcall Cleanup__20CameraModeTwoObjectsFv(struct CameraMode* this) asm("?Cleanup@CameraModeTwoObjects@@UAEXXZ");
// win1.41 0044a2e0 mac inlined CameraModeTwoObjects::CanExist(void)
bool __fastcall CanExist__20CameraModeTwoObjectsFv(struct CameraMode* this) asm("?CanExist@CameraModeTwoObjects@@UAE_NXZ");

#endif /* BW1_DECOMP_CAMERA_MODE_TWO_OBJECTS_INCLUDED_H */
