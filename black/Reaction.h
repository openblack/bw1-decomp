#ifndef BW1_DECOMP_REACTION_INCLUDED_H
#define BW1_DECOMP_REACTION_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For enum REACTION */
#include <lionhead/lhlib/ver5.0/LHListHead.h> /* For DECLARE_LH_LIST_HEAD */

#include "GameThing.h" /* For struct GameThing */

// Forward Declares

struct GPlayer;
struct GameThingWithPos;
struct ReactionInfo;

struct Reaction
{
  struct GameThing super;  /* 0x0 */
  struct GameThingWithPos* target;  /* 0x14 */
  uint32_t field_0x18;
  uint32_t field_0x1c;
  uint32_t field_0x20;
  enum REACTION type;
  uint32_t field_0x28;
  uint32_t field_0x2c;
  uint32_t field_0x30;
  uint32_t field_0x34;
  struct GPlayer* player;
  float field_0x3c;
  struct Reaction* next;  /* 0x40 */
};
static_assert(sizeof(struct Reaction) == 0x44, "Data type is of wrong size");

static struct GameThingVftable* const __vt__8Reaction = (struct GameThingVftable* const)0x008f3674;

// Static methods

// win1.41 006e3d70 mac 10136010 Reaction::CreateReaction(GameThingWithPos *, unsigned char, GPlayer *, int)
struct Reaction* __cdecl CreateReaction__8ReactionFP16GameThingWithPosUcP7GPlayeri(struct GameThingWithPos* param_1, uint8_t param_2, struct GPlayer* player, int param_4);

// Non-virtual methods

// win1.41 006e4700 mac 1008c230 Reaction::GetInfo(void) const
struct ReactionInfo* __fastcall GetInfo__8ReactionCFv(struct Reaction* this);

DECLARE_LH_LIST_HEAD(Reaction);

struct ReactionDoneWhen
{
  enum REACTION reaction;  /* 0x0 */
  uint32_t start_turn;
};
static_assert(sizeof(struct ReactionDoneWhen) == 0x8, "Data type is of wrong size");

DECLARE_LH_LIST_HEAD(ReactionDoneWhen);

#endif /* BW1_DECOMP_REACTION_INCLUDED_H */
