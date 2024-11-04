#ifndef BW1_DECOMP_LIVING_INFO_INCLUDED_H
#define BW1_DECOMP_LIVING_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "MobileWallHugInfo.h" /* For struct GMobileWallHugInfo */

struct GLivingInfo
{
  struct GMobileWallHugInfo super;  /* 0x0 */
  uint32_t field_0x120;
  uint8_t move_to_state;
  float life;
  float field_0x12c;
  float field_0x130;
  int field_0x134;
  uint32_t teen_age;
  uint32_t middle_age;
  uint32_t old_age;  /* 0x140 */
  uint32_t field_0x144;
  uint32_t field_0x148;
  uint32_t field_0x14c;
  uint32_t field_0x150;
  uint32_t field_0x154;
  uint32_t field_0x158;
  uint32_t field_0x15c;
  uint32_t field_0x160;
  uint32_t field_0x164;
  uint32_t field_0x168;
  uint32_t field_0x16c;
  uint8_t field_0x170[0x8];
  uint32_t field_0x178;
  uint8_t field_0x17c[0x34];
  uint32_t field_0x1b0;
  uint32_t field_0x1b4;
  uint8_t field_0x1b8[0x3c];
};
static_assert(sizeof(struct GLivingInfo) == 0x1f4, "Data type is of wrong size");

#endif /* BW1_DECOMP_LIVING_INFO_INCLUDED_H */
