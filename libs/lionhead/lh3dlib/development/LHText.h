#ifndef BW1_DECOMP_LH_TEXT_INCLUDED_H
#define BW1_DECOMP_LH_TEXT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "LH3DSprite.h" /* For struct LHSpriteList */

struct LHText
{
  struct LHSpriteList sprite_list;  /* 0x0 */
  uint32_t field_0xc;
  uint32_t field_0x10;
  uint32_t field_0x14;
  uint32_t field_0x18;
  int field_0x1c;
  uint8_t field_0x20;
};
static_assert(sizeof(struct LHText) == 0x24, "Data type is of wrong size");

#endif /* BW1_DECOMP_LH_TEXT_INCLUDED_H */
