#ifndef BW1_DECOMP_CAMERA_EXCLUSION_INCLUDED_H
#define BW1_DECOMP_CAMERA_EXCLUSION_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */

#include <lionhead/lh3dlib/development/LHPoint.h> /* For struct LHPoint */

struct CameraExclusion
{
  struct CameraExclusion* next;  /* 0x0 */
  struct CameraExclusion* prev;
  uint32_t field_0x8;
  struct LHPoint field_0xc;
  float field_0x18;
  float field_0x1c;
  uint32_t type;  /* 0x20 */
  uint32_t field_0x24;
};
static_assert(sizeof(struct CameraExclusion) == 0x28, "Data type is of wrong size");

// Static methods

// win1.41 00455d50 mac 10000050 CameraExclusion::InsideExclusion(LHPoint)
bool __stdcall InsideExclusion__15CameraExclusionF7LHPoint(struct LHPoint point);
// win1.41 00455e20 mac 1004f140 CameraExclusion::InsideInclusion(LHPoint, LHPoint, LHPoint *, LHPoint *)
bool __cdecl InsideInclusion__15CameraExclusionF7LHPoint7LHPointP7LHPointP7LHPoint(struct LHPoint param_1, struct LHPoint param_2, struct LHPoint* param_3, struct LHPoint* param_4) asm("?InsideInclusion@CameraExclusion@@SA_NULHPoint@@0PAU2@1@Z");

#endif /* BW1_DECOMP_CAMERA_EXCLUSION_INCLUDED_H */
