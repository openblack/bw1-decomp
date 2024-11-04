#ifndef BW1_DECOMP_CITADEL_PART_INFO_INCLUDED_H
#define BW1_DECOMP_CITADEL_PART_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "MultiMapFixedInfo.h" /* For struct GMultiMapFixedInfo */

struct GCitadelPartInfo
{
  struct GMultiMapFixedInfo super;  /* 0x0 */
  uint32_t field_0x120;
  uint32_t field_0x124;
  float life;
  uint32_t field_0x12c;
  float field_0x130;
};
static_assert(sizeof(struct GCitadelPartInfo) == 0x134, "Data type is of wrong size");

#endif /* BW1_DECOMP_CITADEL_PART_INFO_INCLUDED_H */
