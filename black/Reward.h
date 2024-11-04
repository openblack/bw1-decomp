#ifndef BW1_DECOMP_REWARD_INCLUDED_H
#define BW1_DECOMP_REWARD_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include <lionhead/lhlib/VER5.0/LHLinkedList.h> /* For DECLARE_LH_LINKED_LIST */

#include "MobileObject.h" /* For struct MobileObject */

struct Reward
{
  struct MobileObject super;  /* 0x0 */
  uint8_t field_0x68[0x40];
};
static_assert(sizeof(struct Reward) == 0xa8, "Data type is of wrong size");

static struct MobileObjectVftable* __vt__6Reward = (struct MobileObjectVftable*)0x00941894;

DECLARE_LH_LINKED_LIST(Reward);

#endif /* BW1_DECOMP_REWARD_INCLUDED_H */
