#ifndef BW1_DECOMP_MULTI_MAP_FIXED_INCLUDED_H
#define BW1_DECOMP_MULTI_MAP_FIXED_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stddef.h> /* For size_t */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For enum ABODE_TYPE, enum RESOURCE_TYPE */
#include <lionhead/lhlib/ver5.0/LHLinkedList.h> /* For DECLARE_LH_LINKED_LIST */
#include <reversing_utils/re_common.h> /* For bool32_t */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "Fixed.h" /* For struct Fixed, struct FixedVftable */
#include "GameThingWithPos.h" /* For struct GameThingWithPos */
#include "MapCoords.h" /* For struct JustMapXZ */
#include "Object.h" /* For struct Object */

// Forward Declares

struct Base;
struct BuildingSite;
struct Creature;
struct GFootpath;
struct GFootpathLink;
struct GInterfaceStatus;
struct GMultiMapFixedInfo;
struct GPlayer;
struct GameOSFile;
struct GameThing;
struct GameThingVftable;
struct GameThingWithPosVftable;
struct LH3DMesh;
struct LHOSFile;
struct Living;
struct MapCell;
struct MapCoords;
struct MultiMapFixed;
struct NewCollide;
struct ObjectVftable;
struct PlannedMultiMapFixed;
struct PotStructure;
struct Town;
struct Villager;

struct MultiChild
{
  struct Object* object;  /* 0x0 */
  struct JustMapXZ coords;
};
static_assert(sizeof(struct MultiChild) == 0x8, "Data type is of wrong size");

// Constructors

// win1.41 inlined mac 100dc120 MultiChild::MultiChild(void)
struct MultiChild* __fastcall __ct__10MultiChildFv(struct MultiChild* this) asm("??0MultiChild@@QAE@XZ");

struct MultiChildList
{
  struct MultiChild* array;  /* 0x0 */
  uint32_t size;
  uint32_t capacity;
};
static_assert(sizeof(struct MultiChildList) == 0xc, "Data type is of wrong size");

struct MultiMapFixedVftable
{
  struct FixedVftable super;  /* 0x0 */
  struct MapCoords* (__fastcall* GetDoorPos)(struct MultiMapFixed* this, const void* edx, struct MapCoords* pos);  /* 0x864 */
  float (__fastcall* GetInfluence)(struct MultiMapFixed* this);
  bool (__fastcall* IsPlaytimeStructure)(struct MultiMapFixed* this);
  bool (__fastcall* IsPlaytimeStarted)(struct MultiMapFixed* this);  /* 0x870 */
  bool (__fastcall* AddPlaytimeVillager)(struct MultiMapFixed* this, const void* edx, struct Villager* villager);
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
  struct MapCoords* (__fastcall* GetResourcePos)(struct MultiMapFixed* this, const void* edx, enum RESOURCE_TYPE type, int param_2);
  bool (__fastcall* IsPoisonedResource)(struct MultiMapFixed* this);  /* 0x8d0 */
  struct MapCoords* (__fastcall* GetResourceNearestEdge)(struct MultiMapFixed* this, const void* edx, struct MapCoords* coords, enum RESOURCE_TYPE type, struct Object* param_3, int param_4);
  float (__fastcall* GetDesireToBeRepaired)(struct MultiMapFixed* this);
  void (__fastcall* AddToPlayer)(struct MultiMapFixed* this);
  void (__fastcall* RemoveFromPlayer)(struct MultiMapFixed* this);  /* 0x8e0 */
  uint32_t (__fastcall* DoResourceAdding)(struct MultiMapFixed* this, const void* edx, enum RESOURCE_TYPE type, struct GInterfaceStatus* iface, bool param_3, struct MapCoords* param_4, int param_5);
  uint32_t (__fastcall* DoResourceRemoving)(struct MultiMapFixed* this, const void* edx, enum RESOURCE_TYPE type, uint32_t param_2, struct GInterfaceStatus* iface, bool param_4);
  int (__fastcall* CalulateAmountOverMaximum)(struct MultiMapFixed* this, const void* edx, enum RESOURCE_TYPE type);
  void (__fastcall* SetTown)(struct MultiMapFixed* this, const void* edx, struct Town* town);  /* 0x8f0 */
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
  struct Fixed super;
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
  float percent_built;
  uint32_t field_0x60;
  struct GFootpathLink* footpath_link;
  struct MultiChildList multi_children_array;
  struct BuildingSite* building_site;  /* 0x74 */
  struct NewCollide* collide_data;
};
static_assert(sizeof(struct MultiMapFixed) == 0x7c, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009c7f80 mac inlined MultiMapFixed::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__13MultiMapFixed asm("??_R0?AVMultiMapFixed@@@8");
// win1.41 009a6420 mac inlined MultiMapFixed::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__13MultiMapFixed asm("??_R1A@?0A@A@MultiMapFixed@@8");
// win1.41 009ac438 mac inlined MultiMapFixed::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__13MultiMapFixed asm("??_R2MultiMapFixed@@8");
// win1.41 009ac458 mac inlined MultiMapFixed::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__13MultiMapFixed asm("??_R3MultiMapFixed@@8");
// win1.41 008dbf80 mac 107339b0 MultiMapFixed::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__13MultiMapFixed asm("??_R4MultiMapFixed@@6B@");
// win1.41 008dbf84 mac 107339e0 MultiMapFixed::`vftable'
extern const struct MultiMapFixedVftable __vt__13MultiMapFixed asm("??_7MultiMapFixed@@6B@");

// Static methods

// win1.41 0052dbc0 mac 10038060 MultiMapFixed::CompareMultiChilds(void const *, void const *)
int __cdecl CompareMultiChilds__13MultiMapFixedFPCvPCv(struct MultiChild* param_1, struct MultiChild* param_2) asm("?CompareMultiChilds@MultiMapFixed@@SAHPBX0@Z");

// Constructors

// win1.41 0052e1a0 mac 100e16a0 MultiMapFixed::MultiMapFixed(void)
struct MultiMapFixed* __fastcall __ct__13MultiMapFixedFv(struct MultiMapFixed* this) asm("??0MultiMapFixed@@QAE@XZ");
// win1.41 0052e1e0 mac 100e1460 MultiMapFixed::MultiMapFixed(MapCoords const &, GMultiMapFixedInfo const *, float, float, float, int)
struct MultiMapFixed* __fastcall __ct__13MultiMapFixedFRC9MapCoordsPC18GMultiMapFixedInfofffi(struct MultiMapFixed* this, const void* edx, const struct MapCoords* coords, const struct GMultiMapFixedInfo* info, float y_angle, float scale, float param_5, int param_6) asm("??0MultiMapFixed@@QAE@ABUMapCoords@@PBVGMultiMapFixedInfo@@MMMH@Z");

// Non-virtual Destructors

// win1.41 0052e1c0 mac 100e13a0 MultiMapFixed::_dt(void)
struct Base* __fastcall __dt__13MultiMapFixedFv(struct MultiMapFixed* this, const void* edx, uint8_t param_1) asm("??_DMultiMapFixed@@QAEXXZ");

// Non-virtual methods

// win1.41 0052dc10 mac inlined MultiMapFixed::SortChildren(void)
void __fastcall SortChildren__13MultiMapFixedFv(struct MultiMapFixed* this) asm("?SortChildren@MultiMapFixed@@QAEXXZ");
// win1.41 0052dc30 mac 100380f0 MultiMapFixed::SortedMultiChildFind(MapCell const &)
struct MultiChild* __fastcall SortedMultiChildFind__13MultiMapFixedFRC7MapCell(struct MultiMapFixed* this, const void* edx, const struct MapCell* cell) asm("?SortedMultiChildFind@MultiMapFixed@@QAEPAUMultiChild@@ABUMapCell@@@Z");
// win1.41 0052ea50 mac 100e0160 MultiMapFixed::AllocateMultiChild(void)
void __fastcall AllocateMultiChild__13MultiMapFixedFv(struct MultiMapFixed* this) asm("?AllocateMultiChild@MultiMapFixed@@QAEXXZ");
// win1.41 0052f6d0 mac 100ddab0 MultiMapFixed::ReleaseCollideData(void)
void __fastcall ReleaseCollideData__13MultiMapFixedFv(struct MultiMapFixed* this) asm("?ReleaseCollideData@MultiMapFixed@@QAEXXZ");

// Override methods

// win1.41 0052e2b0 mac 100e1160 MultiMapFixed::ToBeDeleted(int)
void __fastcall ToBeDeleted__13MultiMapFixedFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@MultiMapFixed@@UAEXH@Z");
// win1.41 004220a0 mac 100a5880 MultiMapFixed::GetTown(void)
struct Town* __fastcall GetTown__13MultiMapFixedFv(struct GameThing* this) asm("?GetTown@MultiMapFixed@@UAEPAVTown@@XZ");
// win1.41 00401610 mac 101481c0 MultiMapFixed::IsFootpathLink(void)
bool32_t __fastcall IsFootpathLink__13MultiMapFixedFv(struct GameThing* this) asm("?IsFootpathLink@MultiMapFixed@@UAE_NXZ");
// win1.41 00401620 mac 1009b630 MultiMapFixed::GetFootpathLink(void)
struct GFootpathLink* __fastcall GetFootpathLink__13MultiMapFixedFv(struct GameThing* this) asm("?GetFootpathLink@MultiMapFixed@@UAEPAVGFootpathLink@@XZ");
// win1.41 0052eeb0 mac 100defc0 MultiMapFixed::GetNearestPathTo(MapCoords const &, float, int)
uint32_t __fastcall GetNearestPathTo__13MultiMapFixedFRC9MapCoordsfi(struct GameThing* this, const void* edx, const struct MapCoords* param_1, float param_2, int param_3) asm("?GetNearestPathTo@MultiMapFixed@@UAEIPAUMapCoords@@MH@Z");
// win1.41 0052eec0 mac 1009b530 MultiMapFixed::UseFootpathIfNecessary(Living *, MapCoords const &, unsigned char)
void __fastcall UseFootpathIfNecessary__13MultiMapFixedFP6LivingRC9MapCoordsUc(struct GameThing* this, const void* edx, struct Living* param_1, const struct MapCoords* param_2, unsigned char param_3) asm("?UseFootpathIfNecessary@MultiMapFixed@@UAEXPAVLiving@@PBUMapCoords@@E@Z");
// win1.41 0052ee10 mac 100df0c0 MultiMapFixed::AddFootpath(GFootpath *)
uint32_t __fastcall AddFootpath__13MultiMapFixedFP9GFootpath(struct GameThing* this, const void* edx, struct GFootpath* footpath) asm("?AddFootpathLink@MultiMapFixed@@QAEXPAVGFootpath@@@Z");
// win1.41 0052ee80 mac 100df010 MultiMapFixed::RemoveFootpath(GFootpath *)
uint32_t __fastcall RemoveFootpath__13MultiMapFixedFP9GFootpath(struct GameThing* this, const void* edx, struct GFootpath* param_1) asm("?RemoveFootpath@MultiMapFixed@@UAEIPAVGFootpath@@@Z");
// win1.41 0052f180 mac 100de800 MultiMapFixed::AddResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool, MapCoords const &, int)
uint32_t __fastcall AddResource__13MultiMapFixedF13RESOURCE_TYPEUlP16GInterfaceStatusbRC9MapCoordsi(struct GameThing* this, const void* edx, enum RESOURCE_TYPE type, uint32_t param_2, struct GInterfaceStatus* param_3, bool param_4, const struct MapCoords* coords, int param_6) asm("?AddResource@MultiMapFixed@@UAEIW4RESOURCE_TYPE@@IPAVGInterfaceStatus@@_NPBUMapCoords@@H@Z");
// win1.41 0052f1c0 mac 100de760 MultiMapFixed::RemoveResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool *)
uint32_t __fastcall RemoveResource__13MultiMapFixedF13RESOURCE_TYPEUlP16GInterfaceStatusPb(struct GameThing* this, const void* edx, enum RESOURCE_TYPE type, uint32_t param_2, struct GInterfaceStatus* param_3, bool* param_4) asm("?RemoveResource@MultiMapFixed@@UAEIEEE@Z");
// win1.41 00401540 mac 10569bb0 MultiMapFixed::CastMultiMapFixed(void)
struct MultiMapFixed* __fastcall CastMultiMapFixed__13MultiMapFixedFv(struct GameThing* this) asm("?CastMultiMapFixed@MultiMapFixed@@UAEPAV1@XZ");
// win1.41 0052ef70 mac 1005fb60 MultiMapFixed::IsFunctional(void)
bool __fastcall IsFunctional__13MultiMapFixedFv(struct GameThing* this) asm("?IsFunctional@MultiMapFixed@@UAE_NXZ");
// win1.41 0052f310 mac 100de310 MultiMapFixed::Load(GameOSFile &)
uint32_t __fastcall Load__13MultiMapFixedFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* file) asm("?Load@MultiMapFixed@@UAEIAAVGameOSFile@@@Z");
// win1.41 0052f250 mac 100de470 MultiMapFixed::Save(GameOSFile &)
uint32_t __fastcall Save__13MultiMapFixedFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* file) asm("?Save@MultiMapFixed@@UAEIPAVGameOSFile@@@Z");
// win1.41 00421fe0 mac 105b8ff0 MultiMapFixed::GetArrivePos(void)
struct MapCoords* __fastcall GetArrivePos__13MultiMapFixedFv(struct GameThingWithPos* this, const void* edx, struct MapCoords* coords) asm("?GetArrivePos@MultiMapFixed@@UAEPAUMapCoords@@PAU2@@Z");
// win1.41 0052e480 mac 100e0e80 MultiMapFixed::IsObjectInMap(void)
bool __fastcall IsObjectInMap__13MultiMapFixedFv(struct GameThingWithPos* this) asm("?IsObjectInMap@MultiMapFixed@@UAE_NXZ");
// win1.41 004015e0 mac 10570a50 MultiMapFixed::IsBeingBuilt(Creature *)
bool32_t __fastcall IsBeingBuilt__13MultiMapFixedFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?IsBeingBuilt@MultiMapFixed@@UAE_NPAVCreature@@@Z");
// win1.41 00401600 mac 100dc2a0 MultiMapFixed::NeedsRepair(Creature *)
bool32_t __fastcall NeedsRepair__13MultiMapFixedFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?NeedsRepair@MultiMapFixed@@UAE_NPAVCreature@@@Z");
// win1.41 004e41c0 mac 105e5c20 MultiMapFixed::IsBuildingWhichIsBeingBuilt(Creature *)
bool32_t __fastcall IsBuildingWhichIsBeingBuilt__13MultiMapFixedFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?IsBuildingWhichIsBeingBuilt@MultiMapFixed@@UAE_NPAVCreature@@@Z");
// win1.41 00422050 mac 100a56e0 MultiMapFixed::IsWonder(void)
bool32_t __fastcall IsWonder__13MultiMapFixedFv(struct GameThingWithPos* this) asm("?IsWonder@MultiMapFixed@@UAE_NXZ");
// win1.41 0052f590 mac 100ddc50 MultiMapFixed::CreateBuildingSite(void)
bool32_t __fastcall CreateBuildingSite__13MultiMapFixedFv(struct GameThingWithPos* this) asm("?CreateBuildingSite@MultiMapFixed@@UAE_NXZ");
// win1.41 0052e400 mac 10033c30 MultiMapFixed::GetMapChild(MapCell const &)
struct Object* __fastcall GetMapChild__13MultiMapFixedFRC7MapCell(struct Object* this, const void* edx, const struct MapCell* cell) asm("?GetMapChild@MultiMapFixed@@UAEPAVObject@@PBUMapCell@@@Z");
// win1.41 0052e420 mac 100e0ec0 MultiMapFixed::SetMapChild(Object *, MapCell *)
void __fastcall SetMapChild__13MultiMapFixedFP6ObjectP7MapCell(struct Object* this, const void* edx, struct Object* child, struct MapCell* cell) asm("?SetMapChild@MultiMapFixed@@UAEXPAVObject@@PAUMapCell@@@Z");
// win1.41 0052e650 mac 100e0690 MultiMapFixed::InsertMapObject(void)
void __fastcall InsertMapObject__13MultiMapFixedFv(struct Object* this) asm("?InsertMapObject@MultiMapFixed@@UAEXXZ");
// win1.41 0052e7b0 mac 100e0580 MultiMapFixed::RemoveMapObject(void)
void __fastcall RemoveMapObject__13MultiMapFixedFv(struct Object* this) asm("?RemoveMapObject@MultiMapFixed@@UAEXXZ");
// win1.41 0052e4f0 mac 100e0cd0 MultiMapFixed::MoveMapObject(MapCoords const &)
int __fastcall MoveMapObject__13MultiMapFixedFRC9MapCoords(struct Object* this, const void* edx, const struct MapCoords* param_2) asm("?MoveMapObject@MultiMapFixed@@UAEHPAUMapCoords@@@Z");
// win1.41 0052f5e0 mac 10099940 MultiMapFixed::ReduceLife(float, GPlayer *)
void __fastcall ReduceLife__13MultiMapFixedFfP7GPlayer(struct Object* this, const void* edx, float value, struct GPlayer* player) asm("?ReduceLife@MultiMapFixed@@UAEXMPAVGPlayer@@@Z");
// win1.41 0052f700 mac 10050020 MultiMapFixed::Process(void)
uint32_t __fastcall Process__13MultiMapFixedFv(struct Object* this) asm("?Process@MultiMapFixed@@UAEIXZ");
// win1.41 00518090 mac 10044a70 MultiMapFixed::Draw(void)
void __fastcall Draw__13MultiMapFixedFv(struct Object* this) asm("?Draw@MultiMapFixed@@UAEXXZ");
// win1.41 0052f0d0 mac 100de940 MultiMapFixed::GetDiscipleStateIfInteractedWith(GInterfaceStatus *, Villager *)
uint32_t __fastcall GetDiscipleStateIfInteractedWith__13MultiMapFixedFP16GInterfaceStatusP8Villager(struct Object* this, const void* edx, struct GInterfaceStatus* status, struct Villager* villager) asm("?GetDiscipleStateIfInteractedWith@MultiMapFixed@@UAEIPAVGInterfaceStatus@@PAVVillager@@@Z");
// win1.41 0052e890 mac 100e0240 MultiMapFixed::CallVirtualFunctionsForCreation(const MapCoords&)
void __fastcall CallVirtualFunctionsForCreation__13MultiMapFixedFRC9MapCoords(struct Object* this, const void* edx, const struct MapCoords* coords) asm("?CallVirtualFunctionsForCreation@MultiMapFixed@@UAEXABUMapCoords@@@Z");
// win1.41 00401490 mac 1056ea60 MultiMapFixed::AsMultiMapFixed(void)
struct MultiMapFixed* __fastcall AsMultiMapFixed__13MultiMapFixedFv(struct Object* this) asm("?AsMultiMapFixed@MultiMapFixed@@UAEPAV1@XZ");
// win1.41 0052f1f0 mac 100de6f0 MultiMapFixed::IsResourceStore(RESOURCE_TYPE)
bool __fastcall IsResourceStore__13MultiMapFixedF13RESOURCE_TYPE(struct Object* this, const void* edx, enum RESOURCE_TYPE type) asm("?IsResourceStore@MultiMapFixed@@UAE_NW4RESOURCE_TYPE@@@Z");
// win1.41 0052f460 mac 100de000 MultiMapFixed::DeleteObjectAndTakeResource(Object *, GInterfaceStatus *)
bool __fastcall DeleteObjectAndTakeResource__13MultiMapFixedFP6ObjectP16GInterfaceStatus(struct Object* this, const void* edx, struct Object* param_1, struct GInterfaceStatus* param_2) asm("?DeleteObjectAndTakeResource@MultiMapFixed@@UAE_NPAVObject@@PAVGInterfaceStatus@@@Z");
// win1.41 0052f210 mac 100de5e0 MultiMapFixed::DoCreatureMimicAfterAddingResource(RESOURCE_TYPE, GInterfaceStatus &)
bool __fastcall DoCreatureMimicAfterAddingResource__13MultiMapFixedF13RESOURCE_TYPER16GInterfaceStatus(struct Object* this, const void* edx, enum RESOURCE_TYPE type, struct GInterfaceStatus* status) asm("?DoCreatureMimicAfterAddingResource@MultiMapFixed@@UAE_NW4RESOURCE_TYPE@@PAVGInterfaceStatus@@@Z");
// win1.41 0052ec60 mac 100dfd40 MultiMapFixed::StartOnFire(void)
void __fastcall StartOnFire__13MultiMapPFixedFv(struct Object* this) asm("?StartOnFire@MultiMapFixed@@UAEXXZ");
// win1.41 0052f3d0 mac 100de230 MultiMapFixed::InteractsWithPhysicsObjects(void)
bool __fastcall InteractsWithPhysicsObjects__13MultiMapFixedFv(struct Object* this) asm("?InteractsWithPhysicsObjects@MultiMapFixed@@UAE_NXZ");
// win1.41 0052f490 mac 100dded0 MultiMapFixed::CreatureMustAvoid(Creature *)
bool __fastcall CreatureMustAvoid__13MultiMapFixedFP8Creature(struct Object* this, const void* edx, struct Creature* param_1) asm("?CreatureMustAvoid@MultiMapFixed@@UAE_NPAVCreature@@@Z");
// win1.41 00401530 mac 100a0e40 MultiMapFixed::IsSolidToNewAbode(void)
bool32_t __fastcall IsSolidToNewAbode__13MultiMapFixedFv(struct Object* this) asm("?IsSolidToNewAbode@MultiMapFixed@@UAE_NXZ");
// win1.41 0052ef10 mac 100dee90 MultiMapFixed::SaveObject(LHOSFile &, MapCoords const &)
size_t __fastcall SaveObject__13MultiMapFixedFR8LHOSFileRC9MapCoords(struct Object* this, const void* edx, struct LHOSFile* param_1, const struct MapCoords* param_2) asm("?SaveObject@MultiMapFixed@@UAEIPAVLHOSFile@@PBUMapCoords@@@Z");
// win1.41 00401630 mac inlined MultiMapFixed::GetCollideData(void)
struct NewCollide* __fastcall GetCollideData__13MultiMapFixedFv(const struct Object* this) asm("?GetCollideData@MultiMapFixed@@UAEPAVNewCollide@@XZ");
// win1.41 0052e490 mac 100e0d80 MultiMapFixed::IsObjectFullyInMap(void)
bool __fastcall IsObjectFullyInMap__13MultiMapFixedFv(struct Fixed* this) asm("?IsObjectFullyInMap@MultiMapFixed@@UAE_NXZ");
// win1.41 0052e370 mac 1002c2e0 MultiMapFixed::GetDoorPos(void)
struct MapCoords* __fastcall GetDoorPos__13MultiMapFixedFv(struct MultiMapFixed* this, const void* edx, struct MapCoords* position) asm("?GetDoorPos@MultiMapFixed@@UAEPAUMapCoords@@PAU2@@Z");
// win1.41 0052eca0 mac 1004af20 MultiMapFixed::GetInfluence(void)
float __fastcall GetInfluence__13MultiMapFixedFv(struct MultiMapFixed* this) asm("?GetInfluence@MultiMapFixed@@UAEMXZ");
// win1.41 004014a0 mac 103dc840 MultiMapFixed::IsPlaytimeStructure(void)
bool __fastcall IsPlaytimeStructure__13MultiMapFixedFv(struct MultiMapFixed* this) asm("?IsPlaytimeStructure@MultiMapFixed@@UAE_NXZ");
// win1.41 004014b0 mac 103e2190 MultiMapFixed::IsPlaytimeStarted(void)
bool __fastcall IsPlaytimeStarted__13MultiMapFixedFv(struct MultiMapFixed* this) asm("?IsPlaytimeStarted@MultiMapFixed@@UAE_NXZ");
// win1.41 004014c0 mac 1037fbf0 MultiMapFixed::AddPlaytimeVillager(Villager *)
bool __fastcall AddPlaytimeVillager__13MultiMapFixedFP8Villager(struct MultiMapFixed* this, const void* edx, struct Villager* villager) asm("?AddPlaytimeVillager@MultiMapFixed@@UAE_NPAVVillager@@@Z");
// win1.41 0052e840 mac 100e04f0 MultiMapFixed::CheckMapObject(void)
void __fastcall CheckMapObject__13MultiMapFixedFv(struct MultiMapFixed* this) asm("?CheckMapObject@MultiMapFixed@@UAEXXZ");
// win1.41 004014d0 mac 1016ecd0 MultiMapFixed::GetResourceDropPosForComputerPlayer(RESOURCE_TYPE)
void __fastcall GetResourceDropPosForComputerPlayer__13MultiMapFixedF13RESOURCE_TYPE(struct MultiMapFixed* this, const void* edx, struct MapCoords* drop_pos) asm("?GetResourceDropPosForComputerPlayer@MultiMapFixed@@UAEXPAUMapCoords@@@Z");
// win1.41 004014f0 mac 100531e0 MultiMapFixed::GetPercentBuilt(void)
float __fastcall GetPercentBuilt__13MultiMapFixedFv(struct MultiMapFixed* this) asm("?GetPercentBuilt@MultiMapFixed@@UAEMXZ");
// win1.41 00401500 mac 1004b0a0 MultiMapFixed::GetPercentRepaired(void)
float __fastcall GetPercentRepaired__13MultiMapFixedFv(struct MultiMapFixed* this) asm("?GetPercentRepaired@MultiMapFixed@@UAEMXZ");
// win1.41 0052f010 mac 100debc0 MultiMapFixed::GetPercentRepairedFromWhenDamaged(void)
float __fastcall GetPercentRepairedFromWhenDamaged__13MultiMapFixedFv(struct MultiMapFixed* this) asm("?GetPercentRepairedFromWhenDamaged@MultiMapFixed@@UAEMXZ");
// win1.41 00438d70 mac 10368f30 MultiMapFixed::IsRepaired(void)
bool __fastcall IsRepaired__13MultiMapFixedFv(struct MultiMapFixed* this) asm("?IsRepaired@MultiMapFixed@@UAE_NXZ");
// win1.41 00438d80 mac 10570e90 MultiMapFixed::IsBuilt(void)
bool __fastcall IsBuilt__13MultiMapFixedFv(struct MultiMapFixed* this) asm("?IsBuilt@MultiMapFixed@@UAE_NXZ");
// win1.41 0052efc0 mac 100dedd0 MultiMapFixed::GetPercentRepairedForNonFunctional(void)
float __fastcall GetPercentRepairedForNonFunctional__13MultiMapFixedFv(struct MultiMapFixed* this) asm("?GetPercentRepairedForNonFunctional@MultiMapFixed@@UAEMXZ");
// win1.41 0052efd0 mac 100ded00 MultiMapFixed::GetPercentForDrawBuilding(void)
float __fastcall GetPercentForDrawBuilding__13MultiMapFixedFv(struct MultiMapFixed* this) asm("?GetPercentForDrawBuilding@MultiMapFixed@@UAEMXZ");
// win1.41 00422000 mac 100a5570 MultiMapFixed::GetPercentAbodeFullWithAdults(void)
float __fastcall GetPercentAbodeFullWithAdults__13MultiMapFixedFv(struct MultiMapFixed* this) asm("?GetPercentAbodeFullWithAdults@MultiMapFixed@@UAEMXZ");
// win1.41 00422010 mac 100a55c0 MultiMapFixed::GetPercentAbodeFullWithChildren(void)
float __fastcall GetPercentAbodeFullWithChildren__13MultiMapFixedFv(struct MultiMapFixed* this) asm("?GetPercentAbodeFullWithChildren@MultiMapFixed@@UAEMXZ");
// win1.41 0052f0c0 mac 10040f00 MultiMapFixed::IsDrawBuilding(void)
bool __fastcall IsDrawBuilding__13MultiMapFixedFv(struct MultiMapFixed* this) asm("?IsDrawBuilding@MultiMapFixed@@UAE_NXZ");
// win1.41 0052ebb0 mac 100dfda0 MultiMapFixed::Built(void)
bool __fastcall Built__13MultiMapFixedFv(struct MultiMapFixed* this) asm("?Built@MultiMapFixed@@UAE_NXZ");
// win1.41 0052ec70 mac 100dfca0 MultiMapFixed::Repaired(void)
bool __fastcall Repaired__13MultiMapFixedFv(struct MultiMapFixed* this) asm("?Repaired@MultiMapFixed@@UAE_NXZ");
// win1.41 00401510 mac 100ddc00 MultiMapFixed::GetBuildingSiteWood(unsigned long *)
uint32_t __fastcall GetBuildingSiteWood__13MultiMapFixedFPUl(struct MultiMapFixed* this, const void* edx, uint32_t* param_1) asm("?GetBuildingSiteWood@MultiMapFixed@@UAEIPAI@Z");
// win1.41 00422020 mac 100a5620 MultiMapFixed::GetDestructionMesh(void)
struct LH3DMesh* __fastcall GetDestructionMesh__13MultiMapFixedFv(struct MultiMapFixed* this) asm("?GetDestructionMesh@MultiMapFixed@@UAEPAVLH3DMesh@@XZ");
// win1.41 00422030 mac 100a5660 MultiMapFixed::RemoveDamage(void)
void __fastcall RemoveDamage__13MultiMapFixedFv(struct MultiMapFixed* this) asm("?RemoveDamage@MultiMapFixed@@UAEXXZ");
// win1.41 00401520 mac 1005fe80 MultiMapFixed::GetBuildingObject(void)
void* __fastcall GetBuildingObject__13MultiMapFixedFv(struct MultiMapFixed* this) asm("?GetBuildingObject@MultiMapFixed@@UAEPAXXZ");
// win1.41 00422040 mac 100a56a0 MultiMapFixed::IsCivic(void)
bool __fastcall IsCivic__13MultiMapFixedFv(struct MultiMapFixed* this) asm("?IsCivic@MultiMapFixed@@UAE_NXZ");
// win1.41 00422060 mac 100a5720 MultiMapFixed::GetAbodeType(void)
enum ABODE_TYPE __fastcall GetAbodeType__13MultiMapFixedFv(struct MultiMapFixed* this) asm("?GetAbodeType@MultiMapFixed@@UAE?AW4ABODE_TYPE@@XZ");
// win1.41 00401550 mac 102ff050 MultiMapFixed::SetPower(float)
void __fastcall SetPower__13MultiMapFixedFf(struct MultiMapFixed* this, const void* edx, float power) asm("?SetPower@MultiMapFixed@@UAEXM@Z");
// win1.41 00401560 mac 10369300 MultiMapFixed::GetResourcePos(RESOURCE_TYPE, long)
struct MapCoords* __fastcall GetResourcePos__13MultiMapFixedF13RESOURCE_TYPEl(struct MultiMapFixed* this, const void* edx, enum RESOURCE_TYPE type, int param_2) asm("?GetResourcePos@MultiMapFixed@@UAEPAUMapCoords@@W4RESOURCE_TYPE@@H@Z");
// win1.41 00401580 mac 1035b520 MultiMapFixed::IsPoisonedResource(RESOURCE_TYPE)
bool __fastcall IsPoisonedResource__13MultiMapFixedF13RESOURCE_TYPE(struct MultiMapFixed* this) asm("?IsPoisonedResource@MultiMapFixed@@UAE_NXZ");
// win1.41 00401590 mac 10368ea0 MultiMapFixed::GetResourceNearestEdge(RESOURCE_TYPE, Object *, int)
struct MapCoords* __fastcall GetResourceNearestEdge__13MultiMapFixedF13RESOURCE_TYPEP6Objecti(struct MultiMapFixed* this, const void* edx, struct MapCoords* coords, enum RESOURCE_TYPE type, struct Object* param_3, int param_4) asm("?GetResourceNearestEdge@MultiMapFixed@@UAEPAUMapCoords@@PAU2@W4RESOURCE_TYPE@@PAVObject@@H@Z");
// win1.41 0052ece0 mac 100df410 MultiMapFixed::GetDesireToBeRepaired(void)
float __fastcall GetDesireToBeRepaired__13MultiMapFixedFv(struct MultiMapFixed* this) asm("?GetDesireToBeRepaired@MultiMapFixed@@UAEMXZ");
// win1.41 004015b0 mac 101a93f0 MultiMapFixed::AddToPlayer(void)
void __fastcall AddToPlayer__13MultiMapFixedFv(struct MultiMapFixed* this) asm("?AddToPlayer@MultiMapFixed@@UAEXXZ");
// win1.41 004015c0 mac 1019fe20 MultiMapFixed::RemoveFromPlayer(void)
void __fastcall RemoveFromPlayer__13MultiMapFixedFv(struct MultiMapFixed* this) asm("?RemoveFromPlayer@MultiMapFixed@@UAEXXZ");
// win1.41 00422070 mac 100a5760 MultiMapFixed::DoResourceAdding(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool, MapCoords const &, int)
uint32_t __fastcall DoResourceAdding__13MultiMapFixedF13RESOURCE_TYPEUlP16GInterfaceStatusbRC9MapCoordsi(struct MultiMapFixed* this, const void* edx, enum RESOURCE_TYPE type, struct GInterfaceStatus* iface, bool param_3, struct MapCoords* param_4, int param_5) asm("?DoResourceAdding@MultiMapFixed@@UAEIW4RESOURCE_TYPE@@PAVGInterfaceStatus@@_NPAUMapCoords@@H@Z");
// win1.41 00422080 mac 100a57d0 MultiMapFixed::DoResourceRemoving(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool *)
uint32_t __fastcall DoResourceRemoving__13MultiMapFixedF13RESOURCE_TYPEUlP16GInterfaceStatusPb(struct MultiMapFixed* this, const void* edx, enum RESOURCE_TYPE type, uint32_t param_2, struct GInterfaceStatus* iface, bool param_4) asm("?DoResourceRemoving@MultiMapFixed@@UAEIW4RESOURCE_TYPE@@IPAVGInterfaceStatus@@_N@Z");
// win1.41 004015d0 mac 101aa2d0 MultiMapFixed::CalulateAmountOverMaximum(RESOURCE_TYPE)
int __fastcall CalulateAmountOverMaximum__13MultiMapFixedF13RESOURCE_TYPE(struct MultiMapFixed* this, const void* edx, enum RESOURCE_TYPE type) asm("?CalulateAmountOverMaximum@MultiMapFixed@@UAEHW4RESOURCE_TYPE@@@Z");
// win1.41 00422090 mac inlined MultiMapFixed::SetTown(void)
bool __fastcall SetTown__13MultiMapFixedFP4Town(struct MultiMapFixed* this, const void* edx, struct Town* town) asm("?SetTown@MultiMapFixed@@UAEXPAVTown@@@Z");
// win1.41 0052f160 mac 100de8b0 MultiMapFixed::RemovePotFromStructure(PotStructure *)
void __fastcall RemovePotFromStructure__13MultiMapFixedFP12PotStructure(struct MultiMapFixed* this, const void* edx, struct PotStructure* structure) asm("?RemovePotFromStructure@MultiMapFixed@@UAEXPAVPotStructure@@@Z");
// win1.41 004220b0 mac 100a58c0 MultiMapFixed::GetShouldNotBeAddedToPlanned(void)
bool __fastcall GetShouldNotBeAddedToPlanned__13MultiMapFixedFv(struct MultiMapFixed* this) asm("?GetShouldNotBeAddedToPlanned@MultiMapFixed@@UAE_NXZ");
// win1.41 004220c0 mac 100a5910 MultiMapFixed::SetShouldNotBeAddedToPlanned(int)
void __fastcall SetShouldNotBeAddedToPlanned__13MultiMapFixedFi(struct MultiMapFixed* this, const void* edx, bool value) asm("?SetShouldNotBeAddedToPlanned@MultiMapFixed@@UAEX_N@Z");
// win1.41 0052ed40 mac 100df2d0 MultiMapFixed::BuildBy(float)
void __fastcall BuildBy__13MultiMapFixedFf(struct MultiMapFixed* this, const void* edx, float param_1) asm("?BuildBy@MultiMapFixed@@UAEXM@Z");
// win1.41 00438d90 mac 100b25f0 MultiMapFixed::ConvertToPlanned(void)
struct PlannedMultiMapFixed* __fastcall ConvertToPlanned__13MultiMapFixedFv(struct MultiMapFixed* this) asm("?ConvertToPlanned@MultiMapFixed@@UAEPAVPlannedMultiMapFixed@@XZ");
// win1.41 0052f550 mac 100ddd70 MultiMapFixed::CreateCollideData(void)
void __fastcall CreateCollideData__13MultiMapFixedFv(struct MultiMapFixed* this) asm("?CreateCollideData@MultiMapFixed@@UAEXXZ");

DECLARE_LH_LINKED_LIST(MultiMapFixed);

#endif /* BW1_DECOMP_MULTI_MAP_FIXED_INCLUDED_H */
