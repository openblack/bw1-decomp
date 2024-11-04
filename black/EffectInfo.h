#ifndef BW1_DECOMP_EFFECT_INFO_INCLUDED_H
#define BW1_DECOMP_EFFECT_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "BaseInfo.h" /* For struct GBaseInfo */

struct GEffectInfo
{
  struct GBaseInfo super;  /* 0x0 */
  float field_0x10;
  float field_0x14;
  float field_0x18;
  float field_0x1c;
  uint32_t field_0x20;
  float field_0x24;
  uint32_t field_0x28;
  float field_0x2c;
  uint32_t field_0x30;
};
static_assert(sizeof(struct GEffectInfo) == 0x34, "Data type is of wrong size");

static struct BaseInfoVftable* __vt__11GEffectInfo = (struct BaseInfoVftable*)0x008d8b48;

// Constructors

// win1.41 00524d40 mac 100cc740 GEffectInfo::GEffectInfo(void)
struct GEffectInfo* __fastcall __ct__11GEffectInfoFv(struct GEffectInfo* this);

#endif /* BW1_DECOMP_EFFECT_INFO_INCLUDED_H */
