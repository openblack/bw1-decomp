#ifndef BW1_DECOMP_BUBBLE_INCLUDED_H
#define BW1_DECOMP_BUBBLE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

struct Bubble
{
  uint8_t field_0x0[0x1c];
  uint32_t field_0x1c;
  float field_0x20[0xc];
  uint8_t field_0x50[0x2c];
  uint32_t field_0x7c;
  uint32_t field_0x80;
  uint8_t field_0x84[0x10];
  uint8_t field_0x94;
  uint8_t field_0x95;
  uint32_t field_0x98;
  uint32_t field_0x9c;
  uint32_t field_0xa0;
  uint32_t field_0xa4;
  uint32_t field_0xa8;
  uint32_t field_0xac;
};
static_assert(sizeof(struct Bubble) == 0xb0, "Data type is of wrong size");

#endif /* BW1_DECOMP_BUBBLE_INCLUDED_H */
