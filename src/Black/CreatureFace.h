#ifndef BW1_DECOMP_CREATURE_FACE_INCLUDED_H
#define BW1_DECOMP_CREATURE_FACE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

struct CreatureFaceState
{
  int field_0x0;
  float field_0x4;
  uint32_t field_0xc;
};
static_assert(sizeof(struct CreatureFaceState) == 0xc, "Data type is of wrong size");

#endif /* BW1_DECOMP_CREATURE_FACE_INCLUDED_H */
