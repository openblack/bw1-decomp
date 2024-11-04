#ifndef BW1_DECOMP_ONE_OFF_SPELL_SEED_INCLUDED_H
#define BW1_DECOMP_ONE_OFF_SPELL_SEED_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include "MobileObject.h" /* For struct MobileObject */

struct OneOffSpellSeed
{
  struct MobileObject super;  /* 0x0 */
  uint8_t field_0x68[0x14];
};
static_assert(sizeof(struct OneOffSpellSeed) == 0x7c, "Data type is of wrong size");

static struct ObjectVftable* const __vt__15OneOffSpellSeed = (struct ObjectVftable* const)0x008f3774;

#endif /* BW1_DECOMP_ONE_OFF_SPELL_SEED_INCLUDED_H */
