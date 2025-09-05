#ifndef BW1_DECOMP_REWARD_INCLUDED_H
#define BW1_DECOMP_REWARD_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include <lionhead/lhlib/ver5.0/LHLinkedList.h> /* For DECLARE_LH_LINKED_LIST */

#include "MobileObject.h" /* For struct MobileObject */

struct Reward
{
  struct MobileObject super;  /* 0x0 */
  uint8_t field_0x68[0x40];
};
static_assert(sizeof(struct Reward) == 0xa8, "Data type is of wrong size");

// win1.41 00941890 mac 10759768 Reward::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__6Reward asm("??_R4Reward@@6B@");

// win1.41 00941894 mac 10759770 Reward::`vftable'
extern const struct MobileObjectVftable __vt__6Reward asm("??_7Reward@@6B@");

DECLARE_LH_LINKED_LIST(Reward);

#endif /* BW1_DECOMP_REWARD_INCLUDED_H */
