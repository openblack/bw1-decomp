#ifndef BW1_DECOMP_BW_GAME_SPY_INCLUDED_H
#define BW1_DECOMP_BW_GAME_SPY_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "LayerCommunication.h" /* For struct LayerCommunication */

struct BWGameSpy
{
  struct LayerCommunication super;  /* 0x0 */
};
static_assert(sizeof(struct BWGameSpy) == 0x4, "Data type is of wrong size");

// win1.41 008c7058 mac 109edca4 BWGameSpy::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__9BWGameSpy asm("??_R4BWGameSpy@@6B@");

// win1.41 008c705c mac 109edcac BWGameSpy::`vftable'
extern const struct LayerCommunicationVftable __vt__9BWGameSpy asm("??_7BWGameSpy@@6B@");

// Override methods

// win1.41 0043e290 mac 105d1460 BWGameSpy::Connect(void)
uint32_t __fastcall Connect__9BWGameSpyFv(struct BWGameSpy* this);

#endif /* BW1_DECOMP_BW_GAME_SPY_INCLUDED_H */
