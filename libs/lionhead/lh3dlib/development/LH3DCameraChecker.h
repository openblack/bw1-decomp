#ifndef BW1_DECOMP_LH3D_CAMERA_CHECKER_INCLUDED_H
#define BW1_DECOMP_LH3D_CAMERA_CHECKER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */

#include "LHPoint.h" /* For struct LHPoint */

struct LH3DCameraChecker
{
  struct LH3DCameraChecker* next;  /* 0x0 */
  float max_dist;
  struct LHPoint point;
  float field_0x14;
  uint32_t field_0x18;
  uint32_t field_0x1c;
  bool y_only;  /* 0x20 */
};
static_assert(sizeof(struct LH3DCameraChecker) == 0x24, "Data type is of wrong size");

// Static methods

// win1.41 00821050 mac 100c4df0 LH3DCameraChecker::Create(float, LHPoint, float, long, bool)
void __cdecl Create__17LH3DCameraCheckerFf7LHPointflb(float max_distance, struct LHPoint point, float param_3, long param_4, bool y_only) asm("?Create@LH3DCameraChecker@@SAXMULHPoint@@MJ_N@Z");

#endif /* BW1_DECOMP_LH3D_CAMERA_CHECKER_INCLUDED_H */
