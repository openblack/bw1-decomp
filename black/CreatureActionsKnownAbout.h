#ifndef BW1_DECOMP_CREATURE_ACTIONS_KNOWN_ABOUT_INCLUDED_H
#define BW1_DECOMP_CREATURE_ACTIONS_KNOWN_ABOUT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "Base.h" /* For struct Base */

struct CreatureActionsKnownAbout
{
  struct Base super;  /* 0x0 */
  uint32_t field_0x8[0x2][0x2];
};
static_assert(sizeof(struct CreatureActionsKnownAbout) == 0x18, "Data type is of wrong size");

#endif /* BW1_DECOMP_CREATURE_ACTIONS_KNOWN_ABOUT_INCLUDED_H */
