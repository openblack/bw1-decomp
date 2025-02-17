#ifndef BW1_DECOMP_BW_GAME_SPY_INCLUDED_H
#define BW1_DECOMP_BW_GAME_SPY_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "LayerCommunication.h" /* For struct LayerCommunication */

struct BWGameSpy
{
  struct LayerCommunication super;  /* 0x0 */
};

static struct LayerCommunicationVftable* const __vt__9BWGameSpy = (struct LayerCommunicationVftable* const)0x008c705c;

// Override methods

// win1.41 0043e290 mac 105d1460 BWGameSpy::Connect(void)
uint32_t __fastcall Connect__9BWGameSpyFv(struct BWGameSpy* this);

#endif /* BW1_DECOMP_BW_GAME_SPY_INCLUDED_H */
