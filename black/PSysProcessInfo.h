#ifndef BW1_DECOMP_P_SYS_PROCESS_INFO_INCLUDED_H
#define BW1_DECOMP_P_SYS_PROCESS_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <lionhead/lh3dlib/development/LHPoint.h> /* For struct LHPoint */

struct PSysProcessInfo
{
  struct LHPoint interface_position;  /* 0x0 */
  struct LHPoint field_0xc;
  struct LHPoint camera_forward_unit_vector;  /* 0x18 */
  struct LHPoint hand_velocity;  /* 0x24 */
  float field_0x30;
  uint32_t field_0x34;
  uint8_t field_0x38;
};
static_assert(sizeof(struct PSysProcessInfo) == 0x3c, "Data type is of wrong size");

#endif /* BW1_DECOMP_P_SYS_PROCESS_INFO_INCLUDED_H */
