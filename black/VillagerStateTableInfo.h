#ifndef BW1_DECOMP_VILLAGER_STATE_TABLE_INFO_INCLUDED_H
#define BW1_DECOMP_VILLAGER_STATE_TABLE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_common.h> /* For bool32_t */

#include "BaseInfo.h" /* For struct GBaseInfo */

struct GVillagerStateTableInfo
{
  struct GBaseInfo super;  /* 0x0 */
  uint32_t field_0x10;
  int field_0x14;
  float field_0x18;
  bool32_t isFinalState;
  int field_0x20;
  uint32_t field_0x24;
  uint32_t isScriptState;
  uint32_t isScriptInterruptableState;
  int field_0x30;
  uint32_t field_0x34;
  char name[0x80];
  int field_0xb8;
  uint32_t field_0xbc;
  uint32_t field_0xc0;
  uint32_t field_0xc4;
  int field_0xc8;
  uint32_t field_0xcc;
  int field_0xd0;
  int field_0xd4;
  float field_0xd8;
  float field_0xdc;
  uint32_t field_0xe0;
  uint32_t field_0xe4;
  uint32_t field_0xe8;
  int field_0xec;
  uint32_t field_0xf0;
  uint32_t field_0xf4;
  uint32_t field_0xf8;
  uint32_t field_0xfc;
  uint32_t field_0x100;
  uint32_t field_0x104;
  float field_0x108;
  uint32_t field_0x10c;
  uint32_t field_0x110;
};
static_assert(sizeof(struct GVillagerStateTableInfo) == 0x114, "Data type is of wrong size");

static struct BaseVftable* const __vt__23GVillagerStateTableInfo = (struct BaseVftable* const)0x0099aa24;

// Static methods

// win1.41 inlined mac 1004aff0 GVillagerStateTableInfo::GetInfo(void)
struct GVillagerStateTableInfo* __cdecl GetInfo__23GVillagerStateTableInfoFv(void);

#endif /* BW1_DECOMP_VILLAGER_STATE_TABLE_INFO_INCLUDED_H */
