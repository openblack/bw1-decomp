#ifndef BW1_DECOMP_CAMERA_MODE_NEW3_INCLUDED_H
#define BW1_DECOMP_CAMERA_MODE_NEW3_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <lionhead/lh3dlib/development/LHCoord.h> /* For struct LHCoord */
#include <lionhead/lh3dlib/development/LHMatrix.h> /* For struct LHMatrix */
#include <lionhead/lh3dlib/development/LHPoint.h> /* For struct LHPoint, struct Point2D */
#include <lionhead/lh3dlib/development/Zoomer.h> /* For struct Zoomer, struct Zoomer3d */
#include <reversing_utils/re_common.h> /* For bool32_t */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "CameraMode.h" /* For enum CAMERA_MODE_HAND_STATUS, enum CAMERA_MODE_MOUSE_STATUS, struct CameraMode, struct CameraModeVftable */

// Forward Declares

struct CameraExclusion;
struct GArena;
struct GCamera;

enum CameraModeNew3_fight_status_t
{
  CameraModeNew3_fight_status_t_0x0 = 0x0,
  CameraModeNew3_fight_status_t_0x1 = 0x1,
  CameraModeNew3_fight_status_t_0x2 = 0x2,
  _CameraModeNew3_fight_status_t_COUNT = 0x3
};
static_assert(sizeof(enum CameraModeNew3_fight_status_t) == 0x4, "Data type is of wrong size");

static const char* CameraModeNew3_fight_status_t_strs[_CameraModeNew3_fight_status_t_COUNT] = {
  "CameraModeNew3_fight_status_t_0x0",
  "CameraModeNew3_fight_status_t_0x1",
  "CameraModeNew3_fight_status_t_0x2",
};

struct CameraModeNew3Vftable
{
  struct CameraModeVftable super;  /* 0x0 */
  void (__fastcall* Initialise)(struct CameraMode* this);  /* 0x48 */
  void (__fastcall* Reinitialise)(struct CameraMode* this, const void* edx, bool param_2);
  void (__fastcall* FlyToPosFoc)(struct CameraMode* this, const void* edx, struct LHPoint* param_2, struct LHPoint* param_3, float param_4);  /* 0x50 */
  void (__fastcall* SetupVia)(struct CameraMode* this, const void* edx, const struct LHPoint* param_2, const struct LHPoint* param_3, const struct LHPoint* param_4, float param_5);
  uint32_t (__fastcall* GetCameraFeatures)(struct CameraMode* this);
  void (__fastcall* ForceRotateAboutPoint)(struct CameraMode* this, const void* edx, struct LHPoint* point);
};
static_assert(sizeof(struct CameraModeNew3Vftable) == 0x60, "Data type is of wrong size");

struct CameraModeNew3
{
  struct CameraMode super;  /* 0x0 */
  uint32_t field_0x8;
  struct LHPoint origin;
  struct LHPoint heading;  /* 0x18 */
  struct LHPoint field_0x24;
  struct LHPoint field_0x30;
  uint32_t field_0x3c;
  uint32_t field_0x40;
  bool32_t has_fight;
  struct GArena* arena;
  uint8_t field_0x4c;
  uint8_t field_0x4d;
  uint8_t field_0x4e;
  uint8_t field_0x4f;
  float yaw_0;  /* 0x50 */
  float pitch_0;
  float fight_distance;
  int fight_time_left;
  int time_in_arena;  /* 0x60 */
  enum CameraModeNew3_fight_status_t fight_status;
  struct LHPoint field_0x68;
  float field_0x74;
  float elapsed_time;
  struct LHPoint rotate_point;
  bool rotate_around_point;  /* 0x88 */
  enum CAMERA_MODE_MOUSE_STATUS mouse_buttons;
  uint32_t tricon_0x90;
  uint32_t tricon_0x94;
  struct Point2D from_screen_centre;
  struct Point2D from_screen_centre_abs;  /* 0xa0 */
  struct LHCoord mouse_delta;
  struct LHCoord mouse_pos_current;  /* 0xb0 */
  struct LHCoord rotate_around_mouse_pos;
  struct LHCoord mouse_pos_1;  /* 0xc0 */
  bool screen_centre_hit;
  struct LHPoint mouse_hit_point;
  struct LHPoint last_grab_mouse_hit_point;  /* 0xd8 */
  float yaw_1;  /* 0xe4 */
  float pitch_1;
  float perp_distance_0xec;
  struct LHPoint screen_centre_hit_point;  /* 0xf0 */
  float distance_0xfc;
  uint8_t field_0x100;
  uint8_t field_0x101;
  uint8_t field_0x102;
  uint8_t field_0x103;
  struct LHPoint field_0x104;
  struct LHPoint field_0x110;
  struct LHPoint field_0x11c;
  int field_0x128;
  struct LHPoint heading_0x12c;
  struct LHPoint field_0x138;
  bool hand_hit;  /* 0x144 */
  uint8_t field_0x145;
  uint8_t field_0x146;
  uint8_t field_0x147;
  bool hit_0x148;
  struct LHPoint field_0x14c;
  double field_0x158;
  struct LHPoint field_0x160;
  struct LHPoint field_0x16c;
  struct LHMatrix field_0x178;
  float distance_0x1a8;
  enum CAMERA_MODE_HAND_STATUS hand_status;
  struct LHCoord field_0x1b0;
  struct Point2D field_0x1b8;
  float length_0x1c0;
  float vertical_distance;
  struct LHPoint fallback_origin;
  struct LHPoint fallback_heading;  /* 0x1d4 */
  struct LHPoint field_0x1e0;
  struct LHPoint origin_0x1ec;
  struct LHPoint field_0x1f8;
  struct LHPoint heading_0x204;
  struct Zoomer field_0x210;
  struct Zoomer3d field_0x240;
  bool field_0x2d0;
  uint8_t field_0x2d1;
  uint8_t field_0x2d2;
  uint8_t field_0x2d3;
  struct LHCoord mouse_pos_previous;
  struct LHCoord field_0x2dc;
  float heading_distance;  /* 0x2e4 */
  float idle_time;
  int field_0x2ec;
  int field_0x2f0;
  struct CameraExclusion* camera_exclusion;
  uint32_t field_0x2f8;
  uint32_t field_0x2fc;
};
static_assert(sizeof(struct CameraModeNew3) == 0x300, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009cd3b0 mac inlined CameraModeNew3::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__14CameraModeNew3 asm("??_R0?AVCameraModeNew3@@@8");
// win1.41 009a8c10 mac inlined CameraModeNew3::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__14CameraModeNew3 asm("??_R1A@?0A@A@CameraModeNew3@@8");
// win1.41 009a8c28 mac inlined CameraModeNew3::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__14CameraModeNew3 asm("??_R2CameraModeNew3@@8");
// win1.41 009a8c38 mac inlined CameraModeNew3::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__14CameraModeNew3 asm("??_R3CameraModeNew3@@8");
// win1.41 008c7bf8 mac 10732de0 CameraModeNew3::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__14CameraModeNew3 asm("??_R4CameraModeNew3@@6B@");
// win1.41 008c7bfc mac 106f5b14 CameraModeNew3::`vftable'
extern const struct CameraModeNew3Vftable __vt__14CameraModeNew3 asm("??_7CameraModeNew3@@6B@");

// Static methods

// win1.41 00458db0 mac 1007c250 CameraModeNew3::CalcPerpDistance(LHPoint &, LHPoint &, LHPoint &)
float __stdcall CalcPerpDistance__14CameraModeNew3FR7LHPointR7LHPointR7LHPoint(struct LHPoint* param_1, struct LHPoint* param_2, struct LHPoint* param_3);
// win1.41 00458f40 mac 10062a70 CameraModeNew3::FindBestAngle(float, float, LHPoint &, float &, float *)
float __cdecl FindBestAngle__14CameraModeNew3FffR7LHPointRfPf(float param_1, float param_2, float* param_3, float* param_4, float* param_5) asm("?FindBestAngle@CameraModeNew3@@SAMMMAAULHPoint@@AAMPAM@Z");

// Constructors

// win1.41 004572e0 mac 101a6040 CameraModeNew3::CameraModeNew3(GCamera *)
struct CameraModeNew3* __fastcall __ct__14CameraModeNew3FP7GCamera(struct CameraModeNew3* this, const void* edx, struct GCamera* camera) asm("??0CameraModeNew3@@QAE@PAVGCamera@@@Z");

// Non-virtual methods

// win1.41 00459230 mac 10025a60 CameraModeNew3::UpdateTricons(void)
void __fastcall UpdateTricons__14CameraModeNew3Fv(struct CameraModeNew3* this) asm("?UpdateTricons@CameraModeNew3@@QAEXXZ");
// win1.41 00459610 mac 101a4670 CameraModeNew3::UpdateClickParams(LHPoint &, LHPoint &, bool)
void __fastcall UpdateClickParams__14CameraModeNew3FR7LHPointR7LHPointb(struct CameraModeNew3* this, const void* edx, const struct LHPoint* param_1, const struct LHPoint* param_2, bool param_3) asm("?UpdateClickParams@CameraModeNew3@@QAEXAAULHPoint@@0_N@Z");
// win1.41 00459c30 mac 10037970 CameraModeNew3::
float __fastcall GetAltitude__14CameraModeNew3FR7LHPoint(struct CameraModeNew3* this, const void* edx, struct LHPoint* param_1) asm("?GetAltitude@CameraModeNew3@@QAEMAAULHPoint@@@Z");
// win1.41 00459d20 mac 101a4380 CameraModeNew3::SetAltitudeAndNormal(LHPoint &, LHPoint &)
void __fastcall SetAltitudeAndNormal__14CameraModeNew3FR7LHPointR7LHPoint(struct CameraModeNew3* this, const void* edx, struct LHPoint* param_1, struct LHPoint* normal) asm("?SetAltitudeAndNormal@CameraModeNew3@@QAEXAAULHPoint@@0@Z");
// win1.41 00459f10 mac 1007e670 CameraModeNew3::DragFocusOntoLand(LHPoint &, LHPoint &)
void __fastcall DragFocusOntoLand__14CameraModeNew3FR7LHPointR7LHPoint(struct CameraModeNew3* this, const void* edx, struct LHPoint* param_1, struct LHPoint* param_2) asm("?DragFocusOntoLand@CameraModeNew3@@QAEXAAULHPoint@@0@Z");
// win1.41 0045a080 mac 101a3db0 CameraModeNew3::UpdateStrafe(LHPoint &, LHPoint &, float &, float &, float, unsigned long)
bool __fastcall UpdateStrafe__14CameraModeNew3FR7LHPointR7LHPointRfRffUl(struct CameraModeNew3* this, const void* edx, struct LHPoint* param_1, struct LHPoint* param_2, float* param_3, float* param_4, float param_5, uint32_t param_6) asm("?UpdateStrafe@CameraModeNew3@@QAE_NAAULHPoint@@0AAM1MK@Z");
// win1.41 0045a390 mac 100098e0 CameraModeNew3::WantToQuitFight(LHPoint, LHPoint, float)
bool __fastcall WantToQuitFight__14CameraModeNew3F7LHPoint7LHPointf(struct CameraModeNew3* this, const void* edx, struct LHPoint param_1, struct LHPoint param_2, float param_3) asm("?WantToQuitFight@CameraModeNew3@@QAE_NULHPoint@@0M@Z");
// win1.41 0045a4d0 mac 101a3910 CameraModeNew3::StartFight(GArena *)
void __fastcall StartFight__14CameraModeNew3FP6GArena(struct CameraModeNew3* this, const void* edx, struct GArena* arena) asm("?StartFight@CameraModeNew3@@QAEXPAVGArena@@@Z");
// win1.41 0045a830 mac inlined CameraModeNew3::EndFightNow(int)
void __fastcall EndFightNow__14CameraModeNew3Fi(struct CameraModeNew3* this, const void* edx, int param_1) asm("?EndFightNow@CameraModeNew3@@QAEXH@Z");

// Override methods

// win1.41 0045a960 mac 1003a4f0 CameraModeNew3::Update(void)
void __fastcall Update__14CameraModeNew3Fv(struct CameraMode* this) asm("?Update@CameraModeNew3@@UAEXXZ");

#endif /* BW1_DECOMP_CAMERA_MODE_NEW3_INCLUDED_H */
