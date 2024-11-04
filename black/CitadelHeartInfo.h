#ifndef BW1_DECOMP_CITADEL_HEART_INFO_INCLUDED_H
#define BW1_DECOMP_CITADEL_HEART_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "CitadelPartInfo.h" /* For struct GCitadelPartInfo */

struct GCitadelHeartInfo
{
  struct GCitadelPartInfo super;  /* 0x0 */
  uint32_t field_0x134;
  uint32_t field_0x138;
  uint32_t field_0x13c;
  float field_0x140;
  float field_0x144;
  float field_0x148;
  float field_0x14c;
  float field_0x150;
  float field_0x154;
};
static_assert(sizeof(struct GCitadelHeartInfo) == 0x158, "Data type is of wrong size");

#endif /* BW1_DECOMP_CITADEL_HEART_INFO_INCLUDED_H */
