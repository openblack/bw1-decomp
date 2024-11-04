#ifndef BW1_DECOMP_SPECIAL_VILLAGER_INFO_INCLUDED_H
#define BW1_DECOMP_SPECIAL_VILLAGER_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "BaseInfo.h" /* For struct GBaseInfo */

struct GSpecialVillagerInfo
{
  struct GBaseInfo super;  /* 0x0 */
  char name[0x30];  /* 0x10 */
  uint32_t field_0x40;
  uint32_t field_0x44;
  uint32_t field_0x48;
  uint32_t field_0x4c;
  uint32_t field_0x50;
  int field_0x54;
  uint32_t field_0x58;
  uint32_t field_0x5c;
};
static_assert(sizeof(struct GSpecialVillagerInfo) == 0x60, "Data type is of wrong size");

static struct GBaseInfoVftable* const __vt__20GSpecialVillagerInfo = (struct GBaseInfoVftable* const)0x00980568;

#endif /* BW1_DECOMP_SPECIAL_VILLAGER_INFO_INCLUDED_H */
