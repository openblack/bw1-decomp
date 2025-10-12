#ifndef BW1_DECOMP_CAMERA_MODE_INCLUDED_H
#define BW1_DECOMP_CAMERA_MODE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint16_t, uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

// Forward Declares

struct CameraMode;
struct GCamera;
struct GameOSFile;
struct LHCoord;

enum CAMERA_MODE_HAND_STATUS
{
  CAMERA_MODE_HAND_STATUS_NORMAL = 0x0,
  CAMERA_MODE_HAND_STATUS_ZOOMING = 0x1,
  CAMERA_MODE_HAND_STATUS_TILT_ON = 0x2,
  CAMERA_MODE_HAND_STATUS_GRABBING_LAND = 0x3,
  CAMERA_MODE_HAND_STATUS_PANNING = 0x4,
  CAMERA_MODE_HAND_STATUS_TILTING = 0x5,
  CAMERA_MODE_HAND_STATUS_0x6 = 0x6,
  CAMERA_MODE_HAND_STATUS_0x7 = 0x7,
  CAMERA_MODE_HAND_STATUS_0x8 = 0x8,
  _CAMERA_MODE_HAND_STATUS_COUNT = 0x9
};
static_assert(sizeof(enum CAMERA_MODE_HAND_STATUS) == 0x4, "Data type is of wrong size");

static const char* CAMERA_MODE_HAND_STATUS_strs[_CAMERA_MODE_HAND_STATUS_COUNT] = {
  "CAMERA_MODE_HAND_STATUS_NORMAL",
  "CAMERA_MODE_HAND_STATUS_ZOOMING",
  "CAMERA_MODE_HAND_STATUS_TILT_ON",
  "CAMERA_MODE_HAND_STATUS_GRABBING_LAND",
  "CAMERA_MODE_HAND_STATUS_PANNING",
  "CAMERA_MODE_HAND_STATUS_TILTING",
  "CAMERA_MODE_HAND_STATUS_0x6",
  "CAMERA_MODE_HAND_STATUS_0x7",
  "CAMERA_MODE_HAND_STATUS_0x8",
};

enum CAMERA_MODE_MOUSE_STATUS
{
  CAMERA_MODE_MOUSE_STATUS_NONE = 0x0,
  CAMERA_MODE_MOUSE_STATUS_LEFT = 0x1,
  CAMERA_MODE_MOUSE_STATUS_MIDDLE = 0x2,
  _CAMERA_MODE_MOUSE_STATUS_COUNT = 0x3
};
static_assert(sizeof(enum CAMERA_MODE_MOUSE_STATUS) == 0x4, "Data type is of wrong size");

static const char* CAMERA_MODE_MOUSE_STATUS_strs[_CAMERA_MODE_MOUSE_STATUS_COUNT] = {
  "CAMERA_MODE_MOUSE_STATUS_NONE",
  "CAMERA_MODE_MOUSE_STATUS_LEFT",
  "CAMERA_MODE_MOUSE_STATUS_MIDDLE",
};

struct CameraModeVftable
{
  struct CameraMode* (__fastcall* __dt)(struct CameraMode* this, const void* edx, uint32_t param_2);  /* 0x0 */
  bool (__fastcall* CanPlayerGestureWhenCameraMoving)(struct CameraMode* this);
  void (__fastcall* Update)(struct CameraMode* this);
  void (__fastcall* Validate)(struct CameraMode* this);
  void (__fastcall* Restart)(struct CameraMode* this);  /* 0x10 */
  bool (__fastcall* IsStillValid)(struct CameraMode* this);
  void (__fastcall* Cleanup)(struct CameraMode* this);
  bool (__fastcall* CanExist)(struct CameraMode* this);
  bool (__fastcall* MouseIsLocked)(struct CameraMode* this);  /* 0x20 */
  void (__fastcall* GetMousePos)(struct CameraMode* this, const void* edx, struct LHCoord* pos);
  void (__fastcall* ProcessKeyMovement)(struct CameraMode* this, const void* edx, uint16_t param_2);
  void (__fastcall* ProcessMouseMovement)(struct CameraMode* this);
  void (__fastcall* Delete)(struct CameraMode* this);  /* 0x30 */
  bool (__fastcall* Arrived)(struct CameraMode* this);
  uint32_t (__fastcall* GetSaveID)(struct CameraMode* this);
  void (__fastcall* Load)(struct CameraMode* this, const void* edx, struct GameOSFile* param_2);
  void (__fastcall* Save)(struct CameraMode* this, const void* edx, struct GameOSFile* param_2);  /* 0x40 */
  const char* (__fastcall* GetDebugName)(struct CameraMode* this);
};
static_assert(sizeof(struct CameraModeVftable) == 0x48, "Data type is of wrong size");

struct CameraMode
{
  struct CameraModeVftable* vftable;  /* 0x0 */
  struct GCamera* camera;
};
static_assert(sizeof(struct CameraMode) == 0x8, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009cd390 mac inlined CameraMode::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__10CameraMode asm("??_R0?AVCameraMode@@@8");
// win1.41 009a88a8 mac inlined CameraMode::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__10CameraMode asm("??_R1A@?0A@A@CameraMode@@8");
// win1.41 009a890c mac inlined CameraMode::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__10CameraMode asm("??_R2CameraMode@@8");
// win1.41 009a8918 mac inlined CameraMode::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__10CameraMode asm("??_R3CameraMode@@8");
// win1.41 008c76dc mac 10732dcc CameraMode::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__10CameraMode asm("??_R4CameraMode@@6B@");
// win1.41 008c76e0 mac 106f5b10 CameraMode::`vftable'
extern const struct CameraModeVftable __vt__10CameraMode asm("??_7CameraMode@@6B@");

#endif /* BW1_DECOMP_CAMERA_MODE_INCLUDED_H */
