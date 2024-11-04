#ifndef BW1_DECOMP_TOWN_INFO_INCLUDED_H
#define BW1_DECOMP_TOWN_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "ContainerInfo.h" /* For struct GContainerInfo */

struct GTownInfo
{
  struct GContainerInfo super;  /* 0x0 */
  float field_0x148;
  float field_0x14c;
  uint32_t field_0x150;
  float field_0x154;
  float field_0x158;
  float field_0x15c;
  uint32_t field_0x160;
  float field_0x164;
  uint32_t field_0x168;
  float field_0x16c;
  float field_0x170;
  float field_0x174;
  float field_0x178;
  float field_0x17c;
  float field_0x180;
  float field_0x184;
  float field_0x188;
};
static_assert(sizeof(struct GTownInfo) == 0x18c, "Data type is of wrong size");

static struct GBaseInfoVftable* __vt__9GTownInfo = (struct GBaseInfoVftable*)0x00999ab4;

#endif /* BW1_DECOMP_TOWN_INFO_INCLUDED_H */
