#ifndef BW1_DECOMP_RANK_INCLUDED_H
#define BW1_DECOMP_RANK_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "Base.h" /* For struct Base */

struct Rank
{
  struct Base super;  /* 0x0 */
};
static_assert(sizeof(struct Rank) == 0x8, "Data type is of wrong size");

// Override methods

// win1.41 006e0b80 mac inlined Rank::_dt(void)
void __fastcall __dt__4RankFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GRank@@UAEPAXI@Z");

#endif /* BW1_DECOMP_RANK_INCLUDED_H */
