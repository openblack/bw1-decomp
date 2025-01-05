#ifndef BW1_DECOMP_SPELL_INCLUDED_H
#define BW1_DECOMP_SPELL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For int32_t, uint32_t, uint8_t, uintptr_t */

#include <chlasm/Enum.h> /* For enum MAGIC_TYPE */
#include <lionhead/lh3dlib/development/LHPoint.h> /* For struct LHPoint */
#include <lionhead/lhlib/ver5.0/LHListHead.h> /* For DECLARE_LH_LIST_HEAD */

#include "GameThingWithPos.h" /* For struct GameThingWithPos, struct GameThingWithPosVftable */
#include "MapCoords.h" /* For struct MapCoords */

// Forward Declares

struct GInterfaceStatus;
struct GameThing;
struct Object;
struct PSysProcessInfo;
struct Spell;
struct SpellCastData;
struct SpellEventInfo;

struct SpellVftable
{
  struct GameThingWithPosVftable super;  /* 0x0 */
  void (__fastcall* ProcessSpellSeed)(struct Spell* this);  /* 0x500 */
  void (__fastcall* GetParticleType)(struct Spell* this);
  void (__fastcall* DrawSpellSeed)(struct Spell* this);
  void (__fastcall* Draw)(struct Spell* this);
  void (__fastcall* DebugDraw)(struct Spell* this);  /* 0x510 */
  bool (__fastcall* NeedsContinualPackets)(struct Spell* this, const void* edx, const struct GInterfaceStatus* param_1);
  void (__fastcall* HasEnoughChantsAndLifeForRecast)(struct Spell* this);
  void (__fastcall* UpdateStruckReaction)(struct Spell* this);
  void (__fastcall* SetUpDestroyedReaction)(struct Spell* this);  /* 0x520 */
  uintptr_t (__fastcall* GetCreatureCastOn)(struct Spell* this);
  uint32_t (__fastcall* Process)(struct Spell* this);
  void (__fastcall* SpellEvent)(struct Spell* this, const void* edx, const struct SpellEventInfo* param_1);
  void (__fastcall* CloseDown)(struct Spell* this);  /* 0x530 */
  int32_t (__fastcall* InitWithPos)(struct Spell* this, const void* edx, struct GameThing* param_1, struct MapCoords* param_2, struct SpellCastData* param_3, const struct PSysProcessInfo* param_4);
  int32_t (__fastcall* InitWithObject)(struct Spell* this, const void* edx, struct GameThing* param_1, struct Object* param_2, struct SpellCastData* param_3, const struct PSysProcessInfo* param_4);
  float (__fastcall* CalculateCostToMaintain)(struct Spell* this);
  void (__fastcall* AdjustSpellSeedPos)(struct Spell* this, const void* edx, struct MapCoords* pos);  /* 0x540 */
  bool (__fastcall* IsSpellCreature)(struct Spell* this);
  bool (__fastcall* IsSpellStormAndTornado)(struct Spell* this);
  void (__fastcall* SetMaxObjectsToCreate)(struct Spell* this, const void* edx, int32_t value);
  int32_t (__fastcall* GetMaxObjectsToCreate)(struct Spell* this);  /* 0x550 */
};
static_assert(sizeof(struct SpellVftable) == 0x554, "Data type is of wrong size");

struct Spell
{
  struct GameThingWithPos super;  /* 0x0 */
  uint32_t field_0x28;
  float field_0x2c;
  uint32_t field_0x30;
  uint32_t field_0x34;
  uint32_t field_0x38;
  uint32_t field_0x3c;
  uint32_t field_0x40;
  uint32_t field_0x44;
  uint32_t field_0x48;
  uint32_t field_0x4c;
  float field_0x50;
  float field_0x54;
  float field_0x58;
  uint8_t field_0x5c;
  uint8_t field_0x5d;
  uint32_t field_0x60;
  struct LHPoint field_0x64;
  struct LHPoint field_0x70;
  struct LHPoint field_0x7c;
  struct LHPoint field_0x88;
  float field_0x94;
  uint32_t field_0x98;
  uint8_t field_0x9c;
  struct GameThing* creator;  /* 0xa0 */
  struct GameThing* field_0xa4;
  struct GameThing* interface_status;
  struct GameThing* field_0xac;
  uint32_t field_0xb0;
  enum MAGIC_TYPE magic_type;
  float field_0xb8;
  float field_0xbc;
  struct MapCoords field_0xc0;
  struct MapCoords field_0xcc;
  uint32_t field_0xd8;
  uint32_t field_0xdc;
  uint32_t field_0xe0;
  float field_0xe4;
  struct Spell* next;
};
static_assert(sizeof(struct Spell) == 0xec, "Data type is of wrong size");

static struct SpellVftable* const __vt__5Spell = (struct SpellVftable* const)0x009805b0;

// Constructors

// win1.41 0071fa30 mac 10519bb0 Spell::Spell(void)
struct Spell* __fastcall __ct__5SpellFv(struct Spell* this);
// win1.41 0071fb40 mac 105198a0 Spell::Spell(MAGIC_TYPE, GameThing *)
struct Spell* __fastcall __ct__5SpellF10MAGIC_TYPEP9GameThing(struct Spell* this, const void* edx, enum MAGIC_TYPE type, struct GameThing* creator);

DECLARE_LH_LIST_HEAD(Spell);

#endif /* BW1_DECOMP_SPELL_INCLUDED_H */
