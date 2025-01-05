#ifndef BW1_DECOMP_PUZZLE_GAME_INCLUDED_H
#define BW1_DECOMP_PUZZLE_GAME_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include <lionhead/lhlib/ver5.0/LHListHead.h> /* For DECLARE_LH_LIST_HEAD */

#include "GameThingWithPos.h" /* For struct GameThingWithPos */

struct PuzzleGame
{
  struct GameThingWithPos super;  /* 0x0 */
  uint8_t field_0x0x28[0x560];
};
static_assert(sizeof(struct PuzzleGame) == 0x588, "Data type is of wrong size");

static struct GameThingWithPosVftable* const __vt__10PuzzleGame = (struct GameThingWithPosVftable* const)0x008f2338;

DECLARE_LH_LIST_HEAD(PuzzleGame);

#endif /* BW1_DECOMP_PUZZLE_GAME_INCLUDED_H */
