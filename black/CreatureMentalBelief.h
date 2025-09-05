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

// win1.41 008cfe0c mac 10989878 CreatureBelief::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__14CreatureBelief asm("??_R4CreatureBelief@@6B@");

// win1.41 008cfe10 mac 10989880 CreatureBelief::`vftable'
extern const struct BaseVftable __vt__14CreatureBelief asm("??_7CreatureBelief@@6B@");

#endif /* BW1_DECOMP_CREATURE_MENTAL_BELIEF_INCLUDED_H */
