#ifndef BW1_DECOMP_SPELL_SEED_GRAPHIC_INCLUDED_H
#define BW1_DECOMP_SPELL_SEED_GRAPHIC_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum POWER_UP_TYPE, enum SPELL_SEED_TYPE */

#include "GameThingWithPos.h" /* For struct GameThingWithPos */

// Forward Declares

struct GPlayer;
struct Game3DObject;
struct MapCoords;

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

// win1.41 00981aa4 mac 109dbe4c SpellSeedGraphic::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__16SpellSeedGraphic asm("??_R4SpellSeedGraphic@@6B@");

// win1.41 00981aa8 mac 109dbe54 SpellSeedGraphic::`vftable'
extern const struct GameThingWithPosVftable __vt__16SpellSeedGraphic asm("??_7SpellSeedGraphic@@6B@");

// Static methods

// win1.41 00725ea0 mac 10101da0 SpellSeedGraphic::operator new(unsigned long)
struct SpellSeedGraphic* __cdecl __nw__16SpellSeedGraphicFUl(uint32_t size) asm("??2SpellSeedGraphic@@SAPAXI@Z");
// win1.41 00726f60 mac 10523670 SpellSeedGraphic::Create(MapCoords const &, SPELL_SEED_TYPE, GPlayer *, float, POWER_UP_TYPE)
struct SpellSeedGraphic* __cdecl Create__16SpellSeedGraphicFRC9MapCoords15SPELL_SEED_TYPEP7GPlayerf13POWER_UP_TYPE(const struct MapCoords* coords, enum SPELL_SEED_TYPE type, struct GPlayer* player, float param_4, enum POWER_UP_TYPE effect) asm("?Create@SpellSeedGraphic@@SAPAV1@PBUMapCoords@@W4SPELL_SEED_TYPE@@PAVGPlayer@@MW4POWER_UP_TYPE@@@Z");

// Non-virtual methods

// win1.41 00727060 mac 10523210 SpellSeedGraphic::SetPowerUpType(POWER_UP_TYPE)
void __fastcall SetPowerUpType__16SpellSeedGraphicF13POWER_UP_TYPE(struct SpellSeedGraphic* this, const void* edx, enum POWER_UP_TYPE type);
// win1.41 00727080 mac 10523130 SpellSeedGraphic::CreatePUBand(void)
void __fastcall CreatePUBand__16SpellSeedGraphicFv(struct SpellSeedGraphic* this);

#endif /* BW1_DECOMP_SPELL_SEED_GRAPHIC_INCLUDED_H */
