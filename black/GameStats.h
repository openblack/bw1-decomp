#ifndef BW1_DECOMP_GAME_STATS_INCLUDED_H
#define BW1_DECOMP_GAME_STATS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "GameThing.h" /* For struct GameThing */

struct GameStats
{
  struct GameThing super;  /* 0x0 */
  uint8_t field_0x14[0x94];
  uint32_t wood_used;  /* 0xa8 */
  uint8_t graph_0[0x1f4];
  uint8_t field_0x2a0[0x5e8];
  uint8_t graph_1[0x1f4];  /* 0x888 */
  uint8_t field_0xa7c[0x6ac];
};
static_assert(sizeof(struct GameStats) == 0x1128, "Data type is of wrong size");

static struct GameThingVftable* const __vt__9GameStats = (struct GameThingVftable* const)0x008ffdc0;

// Constructors

// win1.41 00564a40 mac 1031b7d0 GameStats::GameStats(void)
struct GameStats* __fastcall __ct__9GameStatsFv(struct GameStats* this);

#endif /* BW1_DECOMP_GAME_STATS_INCLUDED_H */
