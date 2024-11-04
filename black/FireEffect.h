#ifndef BW1_DECOMP_FIRE_EFFECT_INCLUDED_H
#define BW1_DECOMP_FIRE_EFFECT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <lionhead/lhlib/VER5.0/LHListHead.h> /* For DECLARE_LH_LIST_HEAD */

#include "GameThing.h" /* For struct GameThing */

// Forward Declares

struct FireGraphic;
struct GPlayer;
struct Object;

struct FireEffect
{
  struct GameThing super;  /* 0x0 */
  float temperature;  /* 0x14 */
  float temperature2;
  struct Object* source;
  struct GPlayer* player;  /* 0x20 */
  struct GameThing* thing;
  uint32_t field_0x28;
  uint32_t field_0x2c;
  uint32_t field_0x30;
  uint32_t field_0x34;
  uint8_t field_0x38;
  struct FireEffect* next;
  uint8_t field_0x40[0x8];
  uint32_t field_0x48;
  uint32_t field_0x4c;
};
static_assert(sizeof(struct FireEffect) == 0x50, "Data type is of wrong size");

static struct GameThingVftable* const __vt__10FireEffect = (struct GameThingVftable* const)0x009996d4;

// Constructors

// win1.41 0072ea80 mac 10150740 FireEffect::FireEffect(void)
struct FireEffect* __fastcall __ct__10FireEffectFv(struct FireEffect* this);

// Non-virtual methods

// win1.41 00730ad0 mac 1014c5c0 FireEffect::CreateSprites(void)
struct FireGraphic* __fastcall CreateSprites__10FireEffectFv(struct FireEffect* this);

DECLARE_LH_LIST_HEAD(FireEffect);

#endif /* BW1_DECOMP_FIRE_EFFECT_INCLUDED_H */
