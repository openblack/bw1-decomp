#ifndef BW1_DECOMP_CREATURE_MIMIC_INCLUDED_H
#define BW1_DECOMP_CREATURE_MIMIC_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/CreatureEnum.h> /* For enum DETECTED_PLAYER_ACTION */
#include <chlasm/Enum.h> /* For enum MAGIC_TYPE */

#include "Base.h" /* For struct Base */
#include "MapCoords.h" /* For struct MapCoords */

// Forward Declares

struct GameThingWithPos;

struct CreatureMimicState
{
  struct Base super;  /* 0x0 */
  uint32_t field_0x8;
  uint32_t field_0xc;
  enum DETECTED_PLAYER_ACTION detected_player_action;  /* 0x10 */
  enum MAGIC_TYPE magic_type;
  struct GameThingWithPos* game_thing;
  uint32_t field_0x1c;
  uint32_t field_0x20;
  uint32_t field_0x24;
  uint32_t field_0x28;
  uint32_t field_0x2c;
  struct MapCoords coords;  /* 0x30 */
};
static_assert(sizeof(struct CreatureMimicState) == 0x3c, "Data type is of wrong size");

static struct BaseVftable* const __vt__18CreatureMimicState = (struct BaseVftable* const)0x008d05f0;

// Constructors

// win1.41 004e9d20 mac 1026fe50 CreatureMimicState::CreatureMimicState(void)
void __fastcall __ct__18CreatureMimicStateFv(struct CreatureMimicState* this);

#endif /* BW1_DECOMP_CREATURE_MIMIC_INCLUDED_H */
