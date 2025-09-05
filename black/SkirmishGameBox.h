#ifndef BW1_DECOMP_SKIRMISH_GAME_BOX_INCLUDED_H
#define BW1_DECOMP_SKIRMISH_GAME_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

struct SkirmishGameBox
{
  struct DialogBoxBase super;  /* 0x0 */
  uint8_t field_0x10[0x22c];
};
static_assert(sizeof(struct SkirmishGameBox) == 0x23c, "Data type is of wrong size");

// win1.41 008de948 mac 109ed654 SkirmishGameBox::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__15SkirmishGameBox asm("??_R4SkirmishGameBox@@6B@");

// win1.41 008de94c mac 109ed65c SkirmishGameBox::`vftable'
extern const struct DialogBoxBaseVftable __vt__15SkirmishGameBox asm("??_7SkirmishGameBox@@6B@");

#endif /* BW1_DECOMP_SKIRMISH_GAME_BOX_INCLUDED_H */
