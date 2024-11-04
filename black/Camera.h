#ifndef BW1_DECOMP_CAMERA_INCLUDED_H
#define BW1_DECOMP_CAMERA_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <lionhead/lh3dlib/development/LHPoint.h> /* For struct LHPoint */
#include <lionhead/lh3dlib/development/Zoomer.h> /* For struct Zoomer, struct Zoomer3d */

#include "GameThingWithPos.h" /* For struct GameThingWithPos */

// Forward Declares

struct CameraMode;
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

static struct GameThingWithPosVftable* __vt__7GCamera = (struct GameThingWithPosVftable*)0x008c7110;

// Static methods

// win1.41 00441f20 mac 1019a070 GCamera::GetThingViewingDistance(GameThingWithPos *)
float __cdecl GetThingViewingDistance__7GCameraFP16GameThingWithPos(struct GameThingWithPos* target);
// win1.41 00442810 mac 10032670 GCamera::SetPointFromPointDistanceHeadingAndPitch(LHPoint *, LHPoint const &, float, float, float)
void __cdecl SetPointFromPointDistanceHeadingAndPitch__7GCameraFP7LHPointRC7LHPointfff(struct LHPoint* param_1, const struct LHPoint* point, float distance, float heading, float pitch);
// win1.41 004428d0 mac 1007dbf0 GCamera::GetHeadingAndPitchFromPoints(LHPoint const &, LHPoint const &, float *, float *)
void __cdecl GetHeadingAndPitchFromPoints__7GCameraFRC7LHPointRC7LHPointPfPf(struct LHPoint* origin, struct LHPoint* heading, float* pitch, float* yaw);

// Constructors

// win1.41 00441870 mac 1019a720 GCamera::Camera(MapCoords&)
struct GCamera* __fastcall __ct__7GCameraFR9MapCoords(struct GCamera* this, const void* edx, struct MapCoords* coords);

// Non-virtual methods

// win1.41 00441b70 mac 1019a650 GCamera::CantExitCurrentMode(void)
bool __fastcall CantExitCurrentMode__7GCameraFv(struct GCamera* this);
// win1.41 00441cd0 mac 1019a420 GCamera::SwitchToViewMode(CameraMode *)
void __fastcall SwitchToViewMode__7GCameraFP10CameraMode(struct GCamera* this, const void* edx, struct CameraMode* mode);
// win1.41 00441d40 mac 1008de30 GCamera::CheckStackedModesForValidity(void)
void __fastcall CheckStackedModesForValidity__7GCameraFv(struct GCamera* this);
// win1.41 00441f50 mac 1008f7f0 GCamera::Validate(void)
void __fastcall Validate__7GCameraFv(struct GCamera* this);
// win1.41 00441f80 mac 1002cbd0 GCamera::Update(void)
void __fastcall Update__7GCameraFv(struct GCamera* this);
// win1.41 00442ef0 mac 1002b280 GCamera::UpdateGameThingWithPosData(void)
void __fastcall UpdateGameThingWithPosData__7GCameraFv(struct GCamera* this);
// win1.41 00443680 mac 10198790 GCamera::SetCameraFov(float, float)
void __fastcall SetCameraFov__7GCameraFff(struct GCamera* this, const void* edx, float fov, float time);

#endif /* BW1_DECOMP_CAMERA_INCLUDED_H */
