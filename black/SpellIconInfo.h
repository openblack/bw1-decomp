#ifndef BW1_DECOMP_SPELL_ICON_INFO_INCLUDED_H
#define BW1_DECOMP_SPELL_ICON_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "MultiMapFixedInfo.h" /* For struct GMultiMapFixedInfo */

struct GSpellIconInfo
{
  struct GMultiMapFixedInfo super;  /* 0x0 */
  uint32_t field_0x120;
  uint32_t field_0x124;
  uint32_t field_0x128;
};
static_assert(sizeof(struct GSpellIconInfo) == 0x12c, "Data type is of wrong size");

static struct GMultiMapFixedInfoVftable* const __vt__14GSpellIconInfo = (struct GMultiMapFixedInfoVftable* const)0x00981a58;

#endif /* BW1_DECOMP_SPELL_ICON_INFO_INCLUDED_H */
