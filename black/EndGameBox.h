#ifndef BW1_DECOMP_END_GAME_BOX_INCLUDED_H
#define BW1_DECOMP_END_GAME_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

struct EndGameBox
{
  struct DialogBoxBase super;  /* 0x0 */
  uint8_t field_0x10[0xac];
};
static_assert(sizeof(struct EndGameBox) == 0xbc, "Data type is of wrong size");

// win1.41 008de9e8 mac 1099ad1c EndGameBox::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__10EndGameBox asm("??_R4EndGameBox@@6B@");

// win1.41 008de9ec mac 1099ad24 EndGameBox::`vftable'
extern const struct DialogBoxBaseVftable __vt__10EndGameBox asm("??_7EndGameBox@@6B@");

#endif /* BW1_DECOMP_END_GAME_BOX_INCLUDED_H */
