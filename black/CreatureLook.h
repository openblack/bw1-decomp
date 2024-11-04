#ifndef BW1_DECOMP_CREATURE_LOOK_INCLUDED_H
#define BW1_DECOMP_CREATURE_LOOK_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "MapCoords.h" /* For struct MapCoords */

struct CreatureLookState
{
  uint32_t field_0x0;
  uint32_t field_0x4;
  struct MapCoords coords;
  uint32_t game_turn;  /* 0x14 */
  float field_0x18;
  uint32_t field_0x1c;
  uint32_t field_0x20;
  uint32_t field_0x24;
  uint32_t field_0x28;
  uint32_t field_0x2c;
  uint32_t field_0x30;
  uint32_t field_0x34;
};
static_assert(sizeof(struct CreatureLookState) == 0x38, "Data type is of wrong size");

#endif /* BW1_DECOMP_CREATURE_LOOK_INCLUDED_H */
