#ifndef BW1_DECOMP_DANCE_INFO_INCLUDED_H
#define BW1_DECOMP_DANCE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include "BaseInfo.h" /* For struct GBaseInfo */

struct GDanceInfo
{
  struct GBaseInfo super;  /* 0x0 */
  uint8_t field_0x10[0xa0];
};
static_assert(sizeof(struct GDanceInfo) == 0xb0, "Data type is of wrong size");

// win1.41 008d3934 mac 1099548c GDanceInfo::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__10GDanceInfo asm("??_R4GDanceInfo@@6B@");

// win1.41 008d3938 mac 10995494 GDanceInfo::`vftable'
extern const struct GBaseInfoVftable __vt__10GDanceInfo asm("??_7GDanceInfo@@6B@");

#endif /* BW1_DECOMP_DANCE_INFO_INCLUDED_H */
