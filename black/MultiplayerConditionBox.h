#ifndef BW1_DECOMP_MULTIPLAYER_CONDITION_BOX_INCLUDED_H
#define BW1_DECOMP_MULTIPLAYER_CONDITION_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

struct MultiplayerConditionBox
{
  struct DialogBoxBase super;  /* 0x0 */
  uint8_t field_0x10[0x2c];
};
static_assert(sizeof(struct MultiplayerConditionBox) == 0x3c, "Data type is of wrong size");

// win1.41 008de9c0 mac inlined MultiplayerConditionBox::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__23MultiplayerConditionBox asm("??_R4MultiplayerConditionBox@@6B@");

// win1.41 008de9c4 mac inlined MultiplayerConditionBox::`vftable'
extern const struct DialogBoxBaseVftable __vt__23MultiplayerConditionBox asm("??_7MultiplayerConditionBox@@6B@");

#endif /* BW1_DECOMP_MULTIPLAYER_CONDITION_BOX_INCLUDED_H */
