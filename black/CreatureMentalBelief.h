#ifndef BW1_DECOMP_CREATURE_MENTAL_BELIEF_INCLUDED_H
#define BW1_DECOMP_CREATURE_MENTAL_BELIEF_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include "Base.h" /* For struct Base */

struct CreatureBelief
{
  struct Base super;  /* 0x0 */
  uint8_t field_0x8[0x44];
};
static_assert(sizeof(struct CreatureBelief) == 0x4c, "Data type is of wrong size");

static struct BaseVftable* __vt__14CreatureBelief = (struct BaseVftable*)0x008cfe10;

#endif /* BW1_DECOMP_CREATURE_MENTAL_BELIEF_INCLUDED_H */
