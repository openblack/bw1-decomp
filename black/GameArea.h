#ifndef BW1_DECOMP_GAME_AREA_INCLUDED_H
#define BW1_DECOMP_GAME_AREA_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "Base.h" /* For struct Base */

struct GameArea
{
  struct Base super;  /* 0x0 */
};
static_assert(sizeof(struct GameArea) == 0x8, "Data type is of wrong size");

// Override methods

// win1.41 00557220 mac 102fe950 GameArea::_dt(void)
void __fastcall __dt__8GameAreaFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGameArea@@UAEPAXI@Z");

#endif /* BW1_DECOMP_GAME_AREA_INCLUDED_H */
