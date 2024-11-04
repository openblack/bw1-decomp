#ifndef BW1_DECOMP_BUILDING_SITE_INCLUDED_H
#define BW1_DECOMP_BUILDING_SITE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For int32_t, uint32_t, uint8_t, uintptr_t */

#include <lionhead/lh3dlib/development/LHPoint.h> /* For struct LHPoint */
#include <lionhead/lhlib/VER5.0/LHLinkedList.h> /* For DECLARE_LH_LINKED_LIST */
#include <lionhead/lhlib/VER5.0/LHListHead.h> /* For DECLARE_LH_LIST_HEAD */

#include "GameThing.h" /* For struct GameThing, struct GameThingVftable */
#include "Villager.h" /* For struct Villager */

// Forward Declares

struct BuildingSite;
struct MapCoords;
struct MultiMapFixed;
struct Object;
struct PlannedMultiMapFixed;
struct Pot;

struct BuildingSiteVftable
{
  struct GameThingVftable super;  /* 0x0 */
  void (__fastcall* Init)(struct BuildingSite* this);  /* 0xfc */
  void (__fastcall* Process)(struct BuildingSite* this);  /* 0x100 */
  uint32_t (__fastcall* GetWoodForStats)(struct BuildingSite* this);
  struct Pot* (__fastcall* GetPileWood)(struct BuildingSite* this, const void* edx, struct MapCoords* coords);
  void (__fastcall* SetPileWood)(struct BuildingSite* this, const void* edx, struct Pot* wood_pile);
  void (__fastcall* CreatePileWood)(struct BuildingSite* this);  /* 0x110 */
  uintptr_t GetResourcePosAndYAngle;
  uintptr_t RemovePotFromStructure;
  void (__fastcall* IsLinkedToThisBuildingSite)(struct BuildingSite* this, const void* edx, struct Pot* wood_pile);
  uintptr_t GetNearestEdge;  /* 0x120 */
  uintptr_t GetNextPosFromIndex;
  void (__fastcall* GetRandomBuildPos)(struct BuildingSite* this, const void* edx, struct Object* param_1, int32_t* param_2);
};
static_assert(sizeof(struct BuildingSiteVftable) == 0x12c, "Data type is of wrong size");

union BuildingSiteBase
{
  struct GameThing super;
  struct BuildingSiteVftable* vftable;
  struct GameThingVftable* gameThing_vftable;
};
static_assert(sizeof(union BuildingSiteBase) == 0x14, "Data type is of wrong size");

struct BuildingSite
{
  union BuildingSiteBase base;  /* 0x0 */
  struct MultiMapFixed* root_building;  /* 0x14 */
  struct LHLinkedList__Villager building_worker_list;
  uint8_t field_0x20[0x14];
  struct LHPoint building_positions[0x7f];  /* 0x34 */
  uint8_t field_0x628[0x14];
  uint8_t field_0x63c[0x4];
  float life;  /* 0x640 */
};
static_assert(sizeof(struct BuildingSite) == 0x644, "Data type is of wrong size");

static struct BuildingSiteVftable* const __vt__12BuildingSite = (struct BuildingSiteVftable* const)0x008c6b6c;

// Constructors

// win1.41 0043b700 mac 100bd350 BuildingSite::BuildingSite(PlannedMultiMapFixed *)
struct BuildingSite* __fastcall __ct__12BuildingSiteFP20PlannedMultiMapFixed(struct BuildingSite* this, const void* edx, struct PlannedMultiMapFixed* param_1);
// win1.41 0043b7e0 mac 100bcec0 BuildingSite::BuildingSite(MultiMapFixed *)
struct BuildingSite* __fastcall __ct__12BuildingSiteFP13MultiMapFixed(struct BuildingSite* this, const void* edx, struct MultiMapFixed* param_1);

// Non-virtual methods

// win1.41 0043bc70 mac 1005fd40 BuildingSite::GetBuilding(void)
struct MultiMapFixed* __fastcall GetBuilding__12BuildingSiteFv(struct BuildingSite* this);
// win1.41 0043d080 mac 100b9660 BuildingSite::BuildBy(float)
void __fastcall BuildBy__12BuildingSiteFf(struct BuildingSite* this, const void* edx, float param_1);

DECLARE_LH_LINKED_LIST(BuildingSite);
DECLARE_LH_LIST_HEAD(BuildingSite);

#endif /* BW1_DECOMP_BUILDING_SITE_INCLUDED_H */
