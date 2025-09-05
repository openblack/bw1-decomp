#ifndef BW1_DECOMP_SINGLE_MAP_FIXED_INFO_INCLUDED_H
#define BW1_DECOMP_SINGLE_MAP_FIXED_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "ObjectInfo.h" /* For struct GObjectInfo, struct GObjectInfoVftable */

struct GSingleMapFixedInfoVftable
{
  struct GObjectInfoVftable super;  /* 0x0 */
};
static_assert(sizeof(struct GSingleMapFixedInfoVftable) == 0x3c, "Data type is of wrong size");

union GSingleMapFixedInfoBase
{
  struct GObjectInfo super;
  struct GSingleMapFixedInfoVftable* vftable;
};
static_assert(sizeof(union GSingleMapFixedInfoBase) == 0x100, "Data type is of wrong size");

struct GSingleMapFixedInfo
{
  union GSingleMapFixedInfoBase base;  /* 0x0 */
};
static_assert(sizeof(struct GSingleMapFixedInfo) == 0x100, "Data type is of wrong size");

// win1.41 008db6d8 mac 10740ce8 GSingleMapFixedInfo::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__19GSingleMapFixedInfo asm("??_R4GSingleMapFixedInfo@@6B@");

// win1.41 008db6dc mac 10740cf0 GSingleMapFixedInfo::`vftable'
extern const struct GSingleMapFixedInfoVftable __vt__19GSingleMapFixedInfo asm("??_7GSingleMapFixedInfo@@6B@");

#endif /* BW1_DECOMP_SINGLE_MAP_FIXED_INFO_INCLUDED_H */
