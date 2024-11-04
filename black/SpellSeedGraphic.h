#ifndef BW1_DECOMP_SPELL_SEED_GRAPHIC_INCLUDED_H
#define BW1_DECOMP_SPELL_SEED_GRAPHIC_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum POWER_UP_TYPE */

#include "GameThingWithPos.h" /* For struct GameThingWithPos */

// Forward Declares

struct Game3DObject;

struct SpellSeedGraphic
{
  struct GameThingWithPos super;  /* 0x0 */
  uint32_t field_0x28;
  int* field_0x2c;
  struct Game3DObject* obj;  /* 0x30 */
  float field_0x34;
  float field_0x38;
  float field_0x3c;
  float field_0x40;
  float field_0x44;
  int field_0x48;
  uint32_t field_0x4c;
  int* field_0x50;
  float field_0x54;
  float field_0x58;
  char field_0x5c;
  enum POWER_UP_TYPE power_up_type;  /* 0x60 */
  uint32_t field_0x64;
  uint32_t field_0x68;
  uint32_t field_0x6c;
  uint32_t field_0x70;
};
static_assert(sizeof(struct SpellSeedGraphic) == 0x74, "Data type is of wrong size");

static struct GameThingWithPosVftable* __vt__16SpellSeedGraphic = (struct GameThingWithPosVftable*)0x00981aa8;

// Non-virtual methods

// win1.41 00727060 mac 10523210 SpellSeedGraphic::SetPowerUpType(POWER_UP_TYPE)
void __fastcall SetPowerUpType__16SpellSeedGraphicF13POWER_UP_TYPE(struct SpellSeedGraphic* this, const void* edx, enum POWER_UP_TYPE type);
// win1.41 00727080 mac 10523130 SpellSeedGraphic::CreatePUBand(void)
void __fastcall CreatePUBand__16SpellSeedGraphicFv(struct SpellSeedGraphic* this);

#endif /* BW1_DECOMP_SPELL_SEED_GRAPHIC_INCLUDED_H */
