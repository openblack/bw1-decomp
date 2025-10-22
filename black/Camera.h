#ifndef BW1_DECOMP_CAMERA_INCLUDED_H
#define BW1_DECOMP_CAMERA_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <lionhead/lh3dlib/development/LHPoint.h> /* For struct LHPoint */
#include <lionhead/lh3dlib/development/Zoomer.h> /* For struct Zoomer, struct Zoomer3d */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "GameThingWithPos.h" /* For struct GameThingWithPos */

// Forward Declares

struct Base;
struct CameraMode;
struct GameOSFile;
struct GameThing;
struct MapCoords;

struct GCamera
{
  struct GameThingWithPos super;  /* 0x0 */
  struct CameraMode* modes[0xc];  /* 0x28 */
  int mode_current_index;  /* 0x58 */
  struct LHPoint pos;
  float time;  /* 0x68 */
  float time_delta;
  uint32_t field_0x70;
  uint32_t camera_dirty;
  uint8_t field_0x78;
  uint8_t field_0x79;
  uint8_t field_0x7a;
  uint8_t field_0x7b;
  uint32_t field_0x7c;
  uint8_t field_0x8c[0x8];  /* 0x80 */
  struct Zoomer3d camera_heading_zoomer;
  struct Zoomer3d camera_origin_zoomer;  /* 0x118 */
  struct Zoomer fov_zoomer;  /* 0x1a8 */
};
static_assert(sizeof(struct GCamera) == 0x1d8, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009cd9c0 mac inlined GCamera::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__7GCamera asm("??_R0?AVGCamera@@@8");
// win1.41 009a87e8 mac inlined GCamera::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__7GCamera asm("??_R1A@?0A@A@GCamera@@8");
// win1.41 009a8800 mac inlined GCamera::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__7GCamera asm("??_R2GCamera@@8");
// win1.41 009a8818 mac inlined GCamera::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__7GCamera asm("??_R3GCamera@@8");
// win1.41 008c710c mac 107770e8 GCamera::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__7GCamera asm("??_R4GCamera@@6B@");
// win1.41 008c7110 mac 107770f0 GCamera::`vftable'
extern const struct GameThingWithPosVftable __vt__7GCamera asm("??_7GCamera@@6B@");

// Static methods

// win1.41 00441f20 mac 1019a070 GCamera::GetThingViewingDistance(GameThingWithPos *)
float __cdecl GetThingViewingDistance__7GCameraFP16GameThingWithPos(struct GameThingWithPos* target) asm("?GetThingViewingDistance@GCamera@@SAMPAVGameThingWithPos@@@Z");
// win1.41 00442810 mac 10032670 GCamera::SetPointFromPointDistanceHeadingAndPitch(LHPoint *, LHPoint const &, float, float, float)
void __cdecl SetPointFromPointDistanceHeadingAndPitch__7GCameraFP7LHPointRC7LHPointfff(struct LHPoint* param_1, const struct LHPoint* point, float distance, float heading, float pitch) asm("?SetPointFromPointDistanceHeadingAndPitch@GCamera@@SAXPAULHPoint@@ABU2@MMM@Z");
// win1.41 004428d0 mac 1007dbf0 GCamera::GetHeadingAndPitchFromPoints(LHPoint const &, LHPoint const &, float *, float *)
void __cdecl GetHeadingAndPitchFromPoints__7GCameraFRC7LHPointRC7LHPointPfPf(struct LHPoint* origin, struct LHPoint* heading, float* pitch, float* yaw) asm("?GetHeadingAndPitchFromPoints@GCamera@@SAXABULHPoint@@0PAM1@Z");

// Constructors

// win1.41 00441870 mac 1019a720 GCamera::Camera(MapCoords&)
struct GCamera* __fastcall __ct__7GCameraFR9MapCoords(struct GCamera* this, const void* edx, struct MapCoords* coords) asm("??0GCamera@@QAE@AAUMapCoords@@@Z");

// Non-virtual methods

// win1.41 00441b70 mac 1019a650 GCamera::CantExitCurrentMode(void)
bool __fastcall CantExitCurrentMode__7GCameraFv(struct GCamera* this) asm("?CantExitCurrentMode@GCamera@@QAE_NXZ");
// win1.41 00441cd0 mac 1019a420 GCamera::SwitchToViewMode(CameraMode *)
void __fastcall SwitchToViewMode__7GCameraFP10CameraMode(struct GCamera* this, const void* edx, struct CameraMode* mode) asm("?SwitchToViewMode@GCamera@@QAEXPAVCameraMode@@@Z");
// win1.41 00441d40 mac 1008de30 GCamera::CheckStackedModesForValidity(void)
void __fastcall CheckStackedModesForValidity__7GCameraFv(struct GCamera* this) asm("?CheckStackedModesForValidity@GCamera@@QAEXXZ");
// win1.41 00441f50 mac 1008f7f0 GCamera::Validate(void)
void __fastcall Validate__7GCameraFv(struct GCamera* this) asm("?Validate@GCamera@@QAEXXZ");
// win1.41 00441f80 mac 1002cbd0 GCamera::Update(void)
void __fastcall Update__7GCameraFv(struct GCamera* this) asm("?Update@GCamera@@QAEXXZ");
// win1.41 00442ef0 mac 1002b280 GCamera::UpdateGameThingWithPosData(void)
void __fastcall UpdateGameThingWithPosData__7GCameraFv(struct GCamera* this) asm("?UpdateGameThingWithPosData@GCamera@@QAEXXZ");
// win1.41 00443680 mac 10198790 GCamera::SetCameraFov(float, float)
void __fastcall SetCameraFov__7GCameraFff(struct GCamera* this, const void* edx, float fov, float time) asm("?SetCameraFov@GCamera@@QAEXMM@Z");

// Override methods

// win1.41 00441b30 mac 10378450 GCamera::_dt(void)
void __fastcall __dt__7GCameraFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGCamera@@UAEPAXI@Z");
// win1.41 00441ee0 mac 1019a0f0 GCamera::ToBeDeleted(int)
void __fastcall ToBeDeleted__7GCameraFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@GCamera@@UAEXH@Z");
// win1.41 00443840 mac 10198640 GCamera::GetDebugText(void)
char* __fastcall GetDebugText__7GCameraFv(struct GameThing* this) asm("?GetDebugText@GCamera@@UAEPADXZ");
// win1.41 004433a0 mac 10198870 GCamera::Load(GameOSFile &)
uint32_t __fastcall Load__7GCameraFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@GCamera@@UAEIAAVGameOSFile@@@Z");
// win1.41 004430e0 mac 10198d40 GCamera::Save(GameOSFile &)
uint32_t __fastcall Save__7GCameraFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@GCamera@@UAEIAAVGameOSFile@@@Z");
// win1.41 00441b20 mac 101982e0 GCamera::GetSaveType(void)
uint32_t __fastcall GetSaveType__7GCameraFv(struct GameThing* this) asm("?GetSaveType@GCamera@@UAEIXZ");
// win1.41 00441b00 mac 10086270 GCamera::IsMoving( const(void))
bool __fastcall IsMoving__7GCameraCFv(const struct GameThingWithPos* this) asm("?IsMoving@GCamera@@UBE_NXZ");
// win1.41 00441af0 mac 101980f0 GCamera::GetText(void)
const char* __fastcall GetText__7GCameraFv(struct GameThingWithPos* this) asm("?GetText@GCamera@@UAEPBDXZ");
// win1.41 00441b10 mac 101982b0 GCamera::GetHeight(void)
float __fastcall GetHeight__7GCameraFv(struct GameThingWithPos* this) asm("?GetHeight@GCamera@@UAEMXZ");

#endif /* BW1_DECOMP_CAMERA_INCLUDED_H */
