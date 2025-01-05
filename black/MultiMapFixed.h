#ifndef BW1_DECOMP_MULTI_MAP_FIXED_INCLUDED_H
#define BW1_DECOMP_MULTI_MAP_FIXED_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For int32_t, uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For enum ABODE_TYPE, enum RESOURCE_TYPE */
#include <lionhead/lhlib/ver5.0/LHLinkedList.h> /* For DECLARE_LH_LINKED_LIST */

#include "Fixed.h" /* For struct FixedObject, struct FixedObjectVftable */
#include "GameThingWithPos.h" /* For struct GameThingWithPos */
#include "MapCoords.h" /* For struct JustMapXZ */
#include "Object.h" /* For struct Object */

// Forward Declares

struct BuildingSite;
struct GFootpath;
struct GFootpathLink;
struct GInterfaceStatus;
struct GMultiMapFixedInfo;
struct GameOSFile;
struct GameThingVftable;
struct GameThingWithPosVftable;
struct LH3DMesh;
struct MapCell;
struct MapCoords;
struct MultiMapFixed;
struct NewCollide;
struct ObjectVftable;
struct PlannedMultiMapFixed;
struct PotStructure;
struct Villager;

struct MultiChild
{
  struct Object* object;  /* 0x0 */
  struct JustMapXZ coords;
};
static_assert(sizeof(struct MultiChild) == 0x8, "Data type is of wrong size");

// Constructors

// win1.41 inlined mac 100dc120 MultiChild::MultiChild(void)
struct MultiChild* __fastcall __ct__10MultiChildFv(struct MultiChild* this);

struct MultiChildList
{
  struct MultiChild* array;  /* 0x0 */
  uint32_t size;
  uint32_t capacity;
};
static_assert(sizeof(struct MultiChildList) == 0xc, "Data type is of wrong size");

struct MultiMapFixedVftable
{
  struct FixedObjectVftable super;  /* 0x0 */
  struct MapCoords* (__fastcall* GetDoorPos)(struct MultiMapFixed* this, const void* edx, struct MapCoords* pos);  /* 0x864 */
  float (__fastcall* GetInfluence)(struct MultiMapFixed* this);
  bool (__fastcall* IsPlaytimeStructure)(struct MultiMapFixed* this);
  bool (__fastcall* IsPlaytimeStarted)(struct MultiMapFixed* this);  /* 0x870 */
  void (__fastcall* AddPlaytimeVillager)(struct MultiMapFixed* this, const void* edx, struct Villager* villager);
  void (__fastcall* CheckMapObject)(struct MultiMapFixed* this);
  void (__fastcall* GetResourceDropPosForComputerPlayer)(struct MultiMapFixed* this, const void* edx, struct MapCoords* drop_pos);
  float (__fastcall* GetPercentBuilt)(struct MultiMapFixed* this);  /* 0x880 */
  float (__fastcall* GetPercentRepaired)(struct MultiMapFixed* this);
  float (__fastcall* GetPercentRepairedFromWhenDamaged)(struct MultiMapFixed* this);
  bool (__fastcall* IsRepaired)(struct MultiMapFixed* this);
  bool (__fastcall* IsBuilt)(struct MultiMapFixed* this);  /* 0x890 */
  float (__fastcall* GetPercentRepairedForNonFunctional)(struct MultiMapFixed* this);
  float (__fastcall* GetPercentForDrawBuilding)(struct MultiMapFixed* this);
  float (__fastcall* GetPercentAbodeFullWithAdults)(struct MultiMapFixed* this);
  float (__fastcall* GetPercentAbodeFullWithChildren)(struct MultiMapFixed* this);  /* 0x8a0 */
  bool (__fastcall* IsDrawBuilding)(struct MultiMapFixed* this);
  bool (__fastcall* Built)(struct MultiMapFixed* this);
  bool (__fastcall* Repaired)(struct MultiMapFixed* this);
  uint32_t (__fastcall* GetBuildingSiteWood)(struct MultiMapFixed* this, const void* edx, uint32_t* param_1);  /* 0x8b0 */
  struct LH3DMesh* (__fastcall* GetDestructionMesh)(struct MultiMapFixed* this);
  void (__fastcall* RemoveDamage)(struct MultiMapFixed* this);
  void* (__fastcall* GetBuildingObject)(struct MultiMapFixed* this);
  bool (__fastcall* IsCivic)(struct MultiMapFixed* this);  /* 0x8c0 */
  enum ABODE_TYPE (__fastcall* GetAbodeType)(struct MultiMapFixed* this);
  void (__fastcall* SetPower)(struct MultiMapFixed* this, const void* edx, float power);
  struct MapCoords* (__fastcall* GetResourcePos)(struct MultiMapFixed* this, const void* edx, enum RESOURCE_TYPE type, int32_t param_2);
  bool (__fastcall* IsPoisonedResource)(struct MultiMapFixed* this);  /* 0x8d0 */
  struct MapCoords* (__fastcall* GetResourceNearestEdge)(struct MultiMapFixed* this, const void* edx, struct MapCoords* coords, enum RESOURCE_TYPE type, struct Object* param_3, int param_4);
  float (__fastcall* GetDesireToBeRepaired)(struct MultiMapFixed* this);
  void (__fastcall* AddToPlayer)(struct MultiMapFixed* this);
  void (__fastcall* RemoveFromPlayer)(struct MultiMapFixed* this);  /* 0x8e0 */
  uint32_t (__fastcall* DoResourceAdding)(struct MultiMapFixed* this, const void* edx, enum RESOURCE_TYPE type, struct GInterfaceStatus* iface, bool param_3, struct MapCoords* param_4, int param_5);
  uint32_t (__fastcall* DoResourceRemoving)(struct MultiMapFixed* this, const void* edx, enum RESOURCE_TYPE type, uint32_t param_2, struct GInterfaceStatus* iface, bool param_4);
  int (__fastcall* CalulateAmountOverMaximum)(struct MultiMapFixed* this, const void* edx, enum RESOURCE_TYPE type);
  bool (__fastcall* IsAbode)(struct MultiMapFixed* this);  /* 0x8f0 */
  void (__fastcall* RemovePotFromStructure)(struct MultiMapFixed* this, const void* edx, struct PotStructure* structure);
  bool (__fastcall* GetShouldNotBeAddedToPlanned)(struct MultiMapFixed* this);
  void (__fastcall* SetShouldNotBeAddedToPlanned)(struct MultiMapFixed* this, const void* edx, bool value);
  void (__fastcall* BuildBy)(struct MultiMapFixed* this, const void* edx, float param_1);  /* 0x900 */
  struct PlannedMultiMapFixed* (__fastcall* ConvertToPlanned)(struct MultiMapFixed* this);
  void (__fastcall* CreateCollideData)(struct MultiMapFixed* this);
};
static_assert(sizeof(struct MultiMapFixedVftable) == 0x90c, "Data type is of wrong size");

union MultiMapFixedBase
{
  struct FixedObject super;
  struct Object super_object;
  struct GameThingWithPos super_gamethingwithpos;
  struct ObjectVftable* object_vftable;
  struct MultiMapFixedVftable* multiMapFixed_vftable;
  struct GameThingVftable* gameThing_vftable;
  struct GameThingWithPosVftable* gameThingWithPos_vftable;
};
static_assert(sizeof(union MultiMapFixedBase) == 0x58, "Data type is of wrong size");

struct MultiMapFixed
{
  union MultiMapFixedBase base;  /* 0x0 */
  uint8_t field_0x58;
  float field_0x5c;
  uint32_t field_0x60;
  struct GFootpathLink* footpath_link;
  struct MultiChildList multi_children_array;
  struct BuildingSite* building_site;  /* 0x74 */
  struct NewCollide* collide_data;
};
static_assert(sizeof(struct MultiMapFixed) == 0x7c, "Data type is of wrong size");

static struct MultiMapFixedVftable* const __vt__13MultiMapFixed = (struct MultiMapFixedVftable* const)0x008dbf84;

// Static methods

// win1.41 0052dbc0 mac 10038060 MultiMapFixed::CompareMultiChilds(void const *, void const *)
int __cdecl CompareMultiChilds__13MultiMapFixedFPCvPCv(struct MultiChild* param_1, struct MultiChild* param_2);

// Constructors

// win1.41 0052e1a0 mac 100e16a0 MultiMapFixed::MultiMapFixed(void)
struct MultiMapFixed* __fastcall __ct__13MultiMapFixedFv(struct MultiMapFixed* this);
// win1.41 0052e1e0 mac 100e1460 MultiMapFixed::MultiMapFixed(MapCoords const &, GMultiMapFixedInfo const *, float, float, float, int)
struct MultiMapFixed* __fastcall __ct__13MultiMapFixedFRC9MapCoordsPC18GMultiMapFixedInfofffi(struct MultiMapFixed* this, const void* edx, const struct MapCoords* coords, const struct GMultiMapFixedInfo* info, float y_angle, float scale, float param_5, int param_6);

// Non-virtual methods

// win1.41 0052dc10 mac inlined MultiMapFixed::SortChildren(void)
void __fastcall SortChildren__13MultiMapFixedFv(struct MultiMapFixed* this);
// win1.41 0052dc30 mac 100380f0 MultiMapFixed::SortedMultiChildFind(MapCell const &)
struct MultiChild* __fastcall SortedMultiChildFind__13MultiMapFixedFRC7MapCell(struct MultiMapFixed* this, const void* edx, const struct MapCell* cell);
// win1.41 0052ea50 mac 100e0160 MultiMapFixed::AllocateMultiChild(void)
void __fastcall AllocateMultiChild__13MultiMapFixedFv(struct MultiMapFixed* this);
// win1.41 0052f6d0 mac 100ddab0 MultiMapFixed::ReleaseCollideData(void)
void __fastcall ReleaseCollideData__13MultiMapFixedFv(struct MultiMapFixed* this);

// Override methods

// win1.41 0052ee10 mac 100df0c0 MultiMapFixed::AddFootpath(GFootpath *)
uint32_t __fastcall AddFootpath__13MultiMapFixedFP9GFootpath(struct MultiMapFixed* this, const void* edx, struct GFootpath* footpath);
// win1.41 0052f310 mac 100de310 MultiMapFixed::Load(GameOSFile &)
uint32_t __fastcall Load__13MultiMapFixedFR10GameOSFile(struct MultiMapFixed* this, const void* edx, struct GameOSFile* file);
// win1.41 0052e400 mac 10033c30 MultiMapFixed::GetMapChild(MapCell const &)
struct Object* __fastcall GetMapChild__13MultiMapFixedFRC7MapCell(struct MultiMapFixed* this, const void* edx, const struct MapCell* cell);
// win1.41 0052e420 mac 100e0ec0 MultiMapFixed::SetMapChild(Object *, MapCell *)
void __fastcall SetMapChild__13MultiMapFixedFP6ObjectP7MapCell(struct MultiMapFixed* this, const void* edx, struct Object* child, struct MapCell* cell);
// win1.41 0052e650 mac 100e0690 MultiMapFixed::InsertMapObject(void)
void __fastcall InsertMapObject__13MultiMapFixedFv(struct MultiMapFixed* this);
// win1.41 0052e890 mac 100e0240 MultiMapFixed::CallVirtualFunctionsForCreation(const MapCoords&)
void __fastcall CallVirtualFunctionsForCreation__13MultiMapFixedFRC9MapCoords(struct MultiMapFixed* this, const void* edx, const struct MapCoords* coords);
// win1.41 0052e370 mac 1002c2e0 MultiMapFixed::GetDoorPos(void)
void __fastcall GetDoorPos__13MultiMapFixedFv(const struct MultiMapFixed* this, const void* edx, struct MapCoords* position);
// win1.41 0052f550 mac 100ddd70 MultiMapFixed::CreateCollideData(void)
void __fastcall CreateCollideData__13MultiMapFixedFv(struct MultiMapFixed* this);

DECLARE_LH_LINKED_LIST(MultiMapFixed);

#endif /* BW1_DECOMP_MULTI_MAP_FIXED_INCLUDED_H */
