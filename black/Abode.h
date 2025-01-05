#ifndef BW1_DECOMP_ABODE_INCLUDED_H
#define BW1_DECOMP_ABODE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t, uint8_t, uintptr_t */

#include <chlasm/Enum.h> /* For RESOURCE_TYPE_LAST, enum TRIBE_TYPE */
#include <lionhead/lhlib/ver5.0/LHListHead.h> /* For DECLARE_LH_LIST_HEAD */

#include "GameThingWithPos.h" /* For struct GameThingWithPos */
#include "MapCoords.h" /* For struct MapCoords */
#include "MultiMapFixed.h" /* For struct MultiMapFixed, struct MultiMapFixedVftable */
#include "Object.h" /* For struct Object */
#include "Villager.h" /* For struct Villager */

// Forward Declares

struct Abode;
struct GAbodeInfo;
struct GPlayer;
struct GTribeInfo;
struct GameThingVftable;
struct GameThingWithPosVftable;
struct LH3DMesh;
struct LH3DSmoke;
struct LHPoint;
struct ObjectVftable;
struct Town;

enum ABODE_EPP
{
  ABODE_EPP_LANTERN = 0x0,
  ABODE_EPP_SCRIPT_HIGHLIGHT = 0x1,
  _ABODE_EPP_COUNT = 0x2
};
static_assert(sizeof(enum ABODE_EPP) == 0x4, "Data type is of wrong size");

static const char* ABODE_EPP_strs[_ABODE_EPP_COUNT] = {
  "ABODE_EPP_LANTERN",
  "ABODE_EPP_SCRIPT_HIGHLIGHT",
};

struct AbodeVftable
{
  struct MultiMapFixedVftable super;  /* 0x0 */
  uintptr_t MoveAbodeToPlannedAbodes;  /* 0x90c */
  void (__fastcall* DeleteDependancys)(struct Abode* this);  /* 0x910 */
  void (__fastcall* MakeFunctional)(struct Abode* this);
  void (__fastcall* StopBeingFunctional)(struct Abode* this, const void* edx, struct GPlayer* param_1);
  uintptr_t RestartBeingFunctional;
  bool (__fastcall* CausesTownEmergencyIfDamaged)(struct Abode* this);  /* 0x920 */
  bool (__fastcall* CanBeHiddenIn)(struct Abode* this);
  struct GTribeInfo* (__fastcall* GetTribe)(struct Abode* this);
};
static_assert(sizeof(struct AbodeVftable) == 0x92c, "Data type is of wrong size");

union AbodeBase
{
  struct MultiMapFixed super;
  struct Object super_object;
  struct GameThingWithPos super_gamethingwithpos;
  struct AbodeVftable* abode_vftable;
  struct ObjectVftable* object_vftable;
  struct MultiMapFixedVftable* multiMapFixed_vftable;
  struct GameThingVftable* gameThing_vftable;
  struct GameThingWithPosVftable* gameThingWithPos_vftable;
};
static_assert(sizeof(union AbodeBase) == 0x7c, "Data type is of wrong size");

struct Abode
{
  union AbodeBase base;  /* 0x0 */
  uint32_t field_0x7c;
  struct MapCoords drinking_water;  /* 0x80 */
  struct LH3DSmoke* smoke;
  struct LH3DMesh* destruction_mesh;  /* 0x90 */
  uint32_t field_0x94;
  struct Town* town;
  struct Abode* next;
  struct LHListHead__Villager villagers;  /* 0xa0 */
  struct Villager* male_female_villagers[0x2];
  uint32_t field_0xb0;
  uint8_t adult_count;
  uint8_t field_0xb5;
  uint8_t field_0xb6;
  uint8_t field_0xb7;
  uint8_t index;
  uint8_t field_0xb9;
  uint32_t resources[RESOURCE_TYPE_LAST];
};
static_assert(sizeof(struct Abode) == 0xc4, "Data type is of wrong size");

static struct AbodeVftable* const __vt__5Abode = (struct AbodeVftable* const)0x008a9a64;

// Static methods

// win1.41 00402e20 mac 103bf260 Abode::Create(MapCoords const &, GAbodeInfo const *, Town *, float, float, unsigned long, unsigned long, float, int, int)
struct Abode* __cdecl Create__5AbodeFRC9MapCoordsPC10GAbodeInfoP4TownffUlUlfii(const struct MapCoords* coords, const struct GAbodeInfo* info, struct Town* town, float y_angle, float scale, uint32_t param_6, uint32_t param_7, float food, int wood, int param_10);

// Constructors

// win1.41 00401350 mac 1033b330 Abode::Abode(MapCoords const &, GAbodeInfo const *, Town *, float, float, float, int)
struct Abode* __fastcall __ct__5AbodeFRC9MapCoordsPC10GAbodeInfoP4Townfffi(struct Abode* this, const void* edx, const struct MapCoords* coords, const struct GAbodeInfo* info, struct Town* town, float y_angle, float scale, float food, int wood);

// Non-virtual methods

// win1.41 00402bc0 mac inlined Abode::SetZero(void)
void __fastcall SetZero__5AbodeFv(struct Abode* this);
// win1.41 00403130 mac 1033b920 Abode::Init(int, unsigned long, unsigned long)
void __fastcall Init__5AbodeFiUlUl(struct Abode* this, const void* edx, int param_1, uint32_t food_amount, uint32_t wood_amount);
// win1.41 00403590 mac 103602f0 Abode::GetNewEp(ABODE_EPP, MapCoords*)
bool __fastcall GetNewEp__5AbodeF8ABODE_EPP7LHPoint(struct Abode* this, const void* edx, enum ABODE_EPP index, struct LHPoint* point);
// win1.41 00403e00 mac 10494a10 Abode::CreateAbodeSurroundingObjects(void)
void __fastcall CreateAbodeSurroundingObjects__5AbodeFv(struct Abode* this);
// win1.41 00404060 mac 100d2ca0 Abode::AddVillagerToAbode(Villager *)
void __fastcall AddVillagerToAbode__5AbodeFP8Villager(struct Abode* this, const void* edx, struct Villager* villager);
// win1.41 00404220 mac 1033b0e0 Abode::RemoveDeletedVillagerFromAbode(Villager *)
void __fastcall RemoveDeletedVillagerFromAbode__5AbodeFP8Villager(struct Abode* this, const void* edx, struct Villager* villager);
// win1.41 00404660 mac 1032c3e0 Abode::GetRoomLeftForAdults(void)
int __fastcall GetRoomLeftForAdults__5AbodeFv(struct Abode* this);
// win1.41 00404b40 mac 10329410 Abode::CalculateScoreForAddingVillagerToAbode(Villager *)
float __fastcall CalculateScoreForAddingVillagerToAbode__5AbodeFP8Villager(struct Abode* this, const void* edx, struct Villager* villager);
// win1.41 00405f40 mac 10177200 Abode::GetTribeType(void) const
enum TRIBE_TYPE __fastcall GetTribeType__5AbodeCFv(struct Abode* this);
// win1.41 00407020 mac inlined Abode::FindNearestDrinkingWater(float)
void __fastcall FindNearestDrinkingWater__5AbodeFf(struct Abode* this, const void* edx, float max_dist);
// win1.41 004072e0 mac 1000cd50 Abode::GetPosOutside(float, float, float)
struct MapCoords* __fastcall GetPosOutside__5AbodeFfff(struct Abode* this, const void* edx, struct MapCoords* coords, float param_2, float param_3, float param_4);

// Override methods

// win1.41 00403ee0 mac 1036edb0 Abode::InsertMapObject(void)
void __fastcall InsertMapObject__5AbodeFv(struct Abode* this);
// win1.41 00403200 mac 10576c70 Abode::CallVirtualFunctionsForCreation(const MapCoords&)
void __fastcall CallVirtualFunctionsForCreation__5AbodeFRC9MapCoords(struct Abode* this, const void* edx, const struct MapCoords* coords);
// win1.41 004047e0 mac 103c1e30 Abode::MakeFunctional(void)
void __fastcall MakeFunctional__5AbodeFv(struct Abode* this);

DECLARE_LH_LIST_HEAD(Abode);

#endif /* BW1_DECOMP_ABODE_INCLUDED_H */
