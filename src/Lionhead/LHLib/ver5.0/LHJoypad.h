#ifndef BW1_DECOMP_LH_JOYPAD_INCLUDED_H
#define BW1_DECOMP_LH_JOYPAD_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

struct LHJoypad
{
  uint32_t field_0x0;
  uint8_t field_0x4;
  uint8_t field_0x5;
  uint8_t field_0x6[0x2];
  uint8_t field_0x8[0x138];
};
static_assert(sizeof(struct LHJoypad) == 0x140, "Data type is of wrong size");

struct LHJoypads
{
  struct LHJoypad joypads[0x2];  /* 0x0 */
  uint32_t count;  /* 0x280 */
};
static_assert(sizeof(struct LHJoypads) == 0x284, "Data type is of wrong size");

#endif /* BW1_DECOMP_LH_JOYPAD_INCLUDED_H */
