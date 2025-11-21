#ifndef BW1_DECOMP_FISH_FARM_INCLUDED_H
#define BW1_DECOMP_FISH_FARM_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum RESOURCE_TYPE */
#include <lionhead/lhlib/ver5.0/LHLinkedList.h> /* For DECLARE_LH_LINKED_LIST */
#include <lionhead/lhlib/ver5.0/LHListHead.h> /* For DECLARE_LH_LIST_HEAD */
#include <reversing_utils/re_common.h> /* For bool32_t */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "MultiMapFixed.h" /* For struct MultiMapFixed */
#include "Object.h" /* For enum FOOD_TYPE */
#include "Villager.h" /* For struct Villager */

// Forward Declares

struct Base;
struct ControlHandUpdateInfo;
struct Creature;
struct GFishFarmInfo;
struct GInterfaceStatus;
struct GPlayer;
struct GameOSFile;
struct GameThing;
struct GameThingWithPos;
struct LHOSFile;
struct MapCell;
struct MapCoords;
struct Object;
struct PlannedMultiMapFixed;
struct Town;

struct FishFarm
{
  struct MultiMapFixed super;  /* 0x0 */
  struct FishFarm* next;  /* 0x7c */
  struct LHLinkedList__Villager villagers;  /* 0x80 */
  uint32_t field_0x88;
  struct Town* town;
  float field_0x90;
  float field_0x94;
};
static_assert(sizeof(struct FishFarm) == 0x98, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009d97c8 mac inlined FishFarm::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__8FishFarm asm("??_R0?AVFishFarm@@@8");
// win1.41 009ac340 mac inlined FishFarm::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__8FishFarm asm("??_R1A@?0A@A@FishFarm@@8");
// win1.41 009ac358 mac inlined FishFarm::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__8FishFarm asm("??_R2FishFarm@@8");
// win1.41 009ac378 mac inlined FishFarm::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__8FishFarm asm("??_R3FishFarm@@8");
// win1.41 008dadbc mac 107402f8 FishFarm::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__8FishFarm asm("??_R4FishFarm@@6B@");
// win1.41 008dadc0 mac 10740300 FishFarm::`vftable'
extern const struct MultiMapFixedVftable __vt__8FishFarm asm("??_7FishFarm@@6B@");

// Constructors

// win1.41 0052c360 mac 100dd070 FishFarm::FishFarm(MapCoords const &, GFishFarmInfo const *, Town *)
struct FishFarm* __fastcall __ct__8FishFarmFRC9MapCoordsPC13GFishFarmInfoP4Town(struct FishFarm* this, const void* edx, struct MapCoords* coords, struct GFishFarmInfo* info, struct Town* town) asm("??0FishFarm@@QAE@ABUMapCoords@@PBVGFishFarmInfo@@PAVTown@@@Z");

// Override methods

// win1.41 0052c5c0 mac 100dcf40 FishFarm::_dt(void)
void __fastcall __dt__8FishFarmFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GFishFarm@@UAEPAXI@Z");
// win1.41 0052c690 mac 100dced0 FishFarm::ToBeDeleted(int)
void __fastcall ToBeDeleted__8FishFarmFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@FishFarm@@UAEXH@Z");
// win1.41 0052c850 mac 100dc770 FishFarm::GetPlayer(void)
struct GPlayer* __fastcall GetPlayer__8FishFarmFv(struct GameThing* this) asm("?GetPlayer@FishFarm@@UAEPAVGPlayer@@XZ");
// win1.41 0052c450 mac 100dac20 FishFarm::GetTown(void)
struct Town* __fastcall GetTown__8FishFarmFv(struct GameThing* this) asm("?GetTown@FishFarm@@UAEPAVTown@@XZ");
// win1.41 0052c470 mac 100dc730 FishFarm::Get2DRadius(void)
float __fastcall Get2DRadius__8FishFarmFv(struct GameThing* this) asm("?Get2DRadius@FishFarm@@UAEMXZ");
// win1.41 0052cf20 mac 100dbc20 FishFarm::RemoveResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool *)
uint32_t __fastcall RemoveResource__8FishFarmF13RESOURCE_TYPEUlP16GInterfaceStatusPb(struct GameThing* this, const void* edx, enum RESOURCE_TYPE param_1, uint32_t param_2, struct GInterfaceStatus* param_3, bool* param_4) asm("?RemoveResource@FishFarm@@UAEIW4RESOURCE_TYPE@@IPAVGInterfaceStatus@@PA_N@Z");
// win1.41 0052c5b0 mac 100dd9a0 FishFarm::GetDebugText(void)
char* __fastcall GetDebugText__8FishFarmFv(struct GameThing* this) asm("?GetDebugText@FishFarm@@UAEPADXZ");
// win1.41 0052d4f0 mac 100daf80 FishFarm::Load(GameOSFile &)
uint32_t __fastcall Load__8FishFarmFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@FishFarm@@UAEIAAVGameOSFile@@@Z");
// win1.41 0052d3b0 mac 100db1a0 FishFarm::Save(GameOSFile &)
uint32_t __fastcall Save__8FishFarmFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@FishFarm@@UAEIAAVGameOSFile@@@Z");
// win1.41 0052c5a0 mac 100dd960 FishFarm::GetSaveType(void)
uint32_t __fastcall GetSaveType__8FishFarmFv(struct GameThing* this) asm("?GetSaveType@FishFarm@@UAEIXZ");
// win1.41 0052c490 mac inlined FishFarm::GetArrivePos(MapCoords *)
struct MapCoords* __fastcall GetArrivePos__8FishFarmFP9MapCoords(struct GameThingWithPos* this, const void* edx, struct MapCoords* param_1) asm("?GetArrivePos@FishFarm@@UAEPAUMapCoords@@PAU2@@Z");
// win1.41 0052c4d0 mac 100dd5a0 FishFarm::GetCreatureBeliefType(void)
uint32_t __fastcall GetCreatureBeliefType__8FishFarmFv(struct GameThingWithPos* this) asm("?GetCreatureBeliefType@FishFarm@@UAEIXZ");
// win1.41 0052c980 mac 100dc470 FishFarm::IsObjectInMap(void)
bool __fastcall IsObjectInMap__8FishFarmFv(struct GameThingWithPos* this) asm("?IsObjectInMap@FishFarm@@UAE_NXZ");
// win1.41 0052c550 mac 100dd800 FishFarm::CanBeEatenByCreature(Creature *)
uint32_t __fastcall CanBeEatenByCreature__8FishFarmFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBeEatenByCreature@FishFarm@@UAEIPAVCreature@@@Z");
// win1.41 0052c560 mac 100dd850 FishFarm::CanBeSleptNextToByCreature(Creature *)
uint32_t __fastcall CanBeSleptNextToByCreature__8FishFarmFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBeSleptNextToByCreature@FishFarm@@UAEIPAVCreature@@@Z");
// win1.41 0052c4f0 mac 100dd620 FishFarm::CanBePickedUpByCreature(Creature *)
uint32_t __fastcall CanBePickedUpByCreature__8FishFarmFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBePickedUpByCreature@FishFarm@@UAEIPAVCreature@@@Z");
// win1.41 0052c500 mac 100dd670 FishFarm::CanBeStompedOnByCreature(Creature *)
uint32_t __fastcall CanBeStompedOnByCreature__8FishFarmFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBeStompedOnByCreature@FishFarm@@UAEIPAVCreature@@@Z");
// win1.41 0052c510 mac 100dd6c0 FishFarm::CanBeGivenToVillager(Creature *)
uint32_t __fastcall CanBeGivenToVillager__8FishFarmFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBeGivenToVillager@FishFarm@@UAEIPAVCreature@@@Z");
// win1.41 0052c520 mac 100dd710 FishFarm::CanBePutInAStoragePit(Creature *)
uint32_t __fastcall CanBePutInAStoragePit__8FishFarmFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBePutInAStoragePit@FishFarm@@UAEIPAVCreature@@@Z");
// win1.41 0052c530 mac 100dd760 FishFarm::CanBeDestroyedByStoning(Creature *)
uint32_t __fastcall CanBeDestroyedByStoning__8FishFarmFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBeDestroyedByStoning@FishFarm@@UAEIPAVCreature@@@Z");
// win1.41 0052c540 mac 100dd7b0 FishFarm::CanBeExaminedByCreature(Creature *)
uint32_t __fastcall CanBeExaminedByCreature__8FishFarmFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBeExaminedByCreature@FishFarm@@UAEIPAVCreature@@@Z");
// win1.41 0052c570 mac 100dd8a0 FishFarm::IsBeingBuilt(Creature *)
uint32_t __fastcall IsBeingBuilt__8FishFarmFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?IsBeingBuilt@FishFarm@@UAEIPAVCreature@@@Z");
// win1.41 0052c580 mac 100dd8e0 FishFarm::NeedsRepair(Creature *)
uint32_t __fastcall NeedsRepair__8FishFarmFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?NeedsRepair@FishFarm@@UAEIPAVCreature@@@Z");
// win1.41 0052c4e0 mac 100dd5e0 FishFarm::CanBePoodOn(Creature *)
uint32_t __fastcall CanBePoodOn__8FishFarmFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBePoodOn@FishFarm@@UAEIPAVCreature@@@Z");
// win1.41 0052cad0 mac 1009a360 FishFarm::GetMapChild(MapCell const &)
struct Object* __fastcall GetMapChild__8FishFarmFRC7MapCell(struct Object* this, const void* edx, const struct MapCell* param_1) asm("?GetMapChild@FishFarm@@UAEPAVObject@@ABUMapCell@@@Z");
// win1.41 0052cb70 mac 100dc1a0 FishFarm::SetMapChild(Object *, MapCell *)
void __fastcall SetMapChild__8FishFarmFP6ObjectP7MapCell(struct Object* this, const void* edx, struct Object* param_1, struct MapCell* param_2) asm("?SetMapChild@FishFarm@@UAEXPAVObject@@PAUMapCell@@@Z");
// win1.41 0052ca10 mac 100dc3c0 FishFarm::InsertMapObject(void)
void __fastcall InsertMapObject__8FishFarmFv(struct Object* this) asm("?InsertMapObject@FishFarm@@UAEXXZ");
// win1.41 0052ca70 mac 100dc310 FishFarm::RemoveMapObject(void)
void __fastcall RemoveMapObject__8FishFarmFv(struct Object* this) asm("?RemoveMapObject@FishFarm@@UAEXXZ");
// win1.41 0052c480 mac 100dd430 FishFarm::GetMeshRadius( const(void))
float __fastcall GetMeshRadius__8FishFarmCFv(const struct Object* this) asm("?GetMeshRadius@FishFarm@@UBEMXZ");
// win1.41 0052d130 mac 1005f370 FishFarm::Process(void)
uint32_t __fastcall Process__8FishFarmFv(struct Object* this) asm("?Process@FishFarm@@UAEIXZ");
// win1.41 0052c830 mac 10025a30 FishFarm::Draw(void)
void __fastcall Draw__8FishFarmFv(struct Object* this) asm("?Draw@FishFarm@@UAEXXZ");
// win1.41 0052d720 mac 100dacf0 FishFarm::GetDiscipleStateIfInteractedWith(GInterfaceStatus *, Villager *)
uint32_t __fastcall GetDiscipleStateIfInteractedWith__8FishFarmFP16GInterfaceStatusP8Villager(struct Object* this, const void* edx, struct GInterfaceStatus* param_1, struct Villager* param_2) asm("?GetDiscipleStateIfInteractedWith@FishFarm@@UAEIPAVGInterfaceStatus@@PAVVillager@@@Z");
// win1.41 0052c840 mac 100dc810 FishFarm::GetHeightForHandAboveInteractObject(void)
float __fastcall GetHeightForHandAboveInteractObject__8FishFarmFv(struct Object* this) asm("?GetHeightForHandAboveInteractObject@FishFarm@@UAEMXZ");
// win1.41 0052cc10 mac 100dbd10 FishFarm::CallVirtualFunctionsForCreation(MapCoords const &)
void __fastcall CallVirtualFunctionsForCreation__8FishFarmFRC9MapCoords(struct Object* this, const void* edx, const struct MapCoords* param_1) asm("?CallVirtualFunctionsForCreation@FishFarm@@UAEXABUMapCoords@@@Z");
// win1.41 0052d1e0 mac 100626c0 FishFarm::GetFoodValue(FOOD_TYPE)
float __fastcall GetFoodValue__8FishFarmF9FOOD_TYPE(struct Object* this, const void* edx, enum FOOD_TYPE param_1) asm("?GetFoodValue@FishFarm@@UAEMW4FOOD_TYPE@@@Z");
// win1.41 0052d760 mac 100dac50 FishFarm::GetResourceType(void)
enum RESOURCE_TYPE __fastcall GetResourceType__8FishFarmFv(struct Object* this) asm("?GetResourceType@FishFarm@@UAE?AW4RESOURCE_TYPE@@XZ");
// win1.41 0052c590 mac 100dd920 FishFarm::IsLockedInInteract(void)
bool __fastcall IsLockedInInteract__8FishFarmFv(struct Object* this) asm("?IsLockedInInteract@FishFarm@@UAE_NXZ");
// win1.41 0052d750 mac 100dac90 FishFarm::ValidForLockedSelectProcess(GInterfaceStatus *)
bool32_t __fastcall ValidForLockedSelectProcess__8FishFarmFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1) asm("?ValidForLockedSelectProcess@FishFarm@@UAE_NPAVGInterfaceStatus@@@Z");
// win1.41 0052d770 mac 100da990 FishFarm::NetworkFriendlyStartLockedSelect(GInterfaceStatus *)
bool32_t __fastcall NetworkFriendlyStartLockedSelect__8FishFarmFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1) asm("?NetworkFriendlyStartLockedSelect@FishFarm@@UAE_NPAVGInterfaceStatus@@@Z");
// win1.41 0052d880 mac 100da930 FishFarm::NetworkUnfriendlyLockedSelect(ControlHandUpdateInfo *)
uint32_t __fastcall NetworkUnfriendlyLockedSelect__8FishFarmFP21ControlHandUpdateInfo(struct Object* this, const void* edx, struct ControlHandUpdateInfo* param_1) asm("?NetworkUnfriendlyLockedSelect@FishFarm@@UAEIPAUControlHandUpdateInfo@@@Z");
// win1.41 0052d890 mac 100da8e0 FishFarm::NetworkUnfriendlyEndLockedSelect(void)
uint32_t __fastcall NetworkUnfriendlyEndLockedSelect__8FishFarmFv(struct Object* this) asm("?NetworkUnfriendlyEndLockedSelect@FishFarm@@UAEIXZ");
// win1.41 0052d8a0 mac 100da7c0 FishFarm::NetworkFriendlyEndLockedSelect(GInterfaceStatus *)
uint32_t __fastcall NetworkFriendlyEndLockedSelect__8FishFarmFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1) asm("?NetworkFriendlyEndLockedSelect@FishFarm@@UAEIPAVGInterfaceStatus@@@Z");
// win1.41 0052d670 mac 100daed0 FishFarm::ValidForPlaceInHand(GInterfaceStatus *)
uint32_t __fastcall ValidForPlaceInHand__8FishFarmFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1) asm("?ValidForPlaceInHand@FishFarm@@UAEIPAVGInterfaceStatus@@@Z");
// win1.41 0052d6b0 mac 100dadc0 FishFarm::InterfaceSetInMagicHand(GInterfaceStatus *)
uint32_t __fastcall InterfaceSetInMagicHand__8FishFarmFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1) asm("?InterfaceSetInMagicHand@FishFarm@@UAEIPAVGInterfaceStatus@@@Z");
// win1.41 0052c4b0 mac 100dd510 FishFarm::InteractsWithPhysicsObjects(void)
bool __fastcall InteractsWithPhysicsObjects__8FishFarmFv(struct Object* this) asm("?InteractsWithPhysicsObjects@FishFarm@@UAE_NXZ");
// win1.41 0052c460 mac 100dd3e0 FishFarm::CreatureMustAvoid(Creature *)
bool __fastcall CreatureMustAvoid__8FishFarmFP8Creature(struct Object* this, const void* edx, struct Creature* param_1) asm("?CreatureMustAvoid@FishFarm@@UAE_NPAVCreature@@@Z");
// win1.41 0052d950 mac 100da4d0 FishFarm::ProcessInInteract(GInterfaceStatus *)
uint32_t __fastcall ProcessInInteract__8FishFarmFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1) asm("?ProcessInInteract@FishFarm@@UAEIPAVGInterfaceStatus@@@Z");
// win1.41 0052cf90 mac 100db980 FishFarm::SaveObject(LHOSFile &, MapCoords const &)
uint32_t __fastcall SaveObject__8FishFarmFR8LHOSFileRC9MapCoords(struct Object* this, const void* edx, struct LHOSFile* param_1, const struct MapCoords* param_2) asm("?SaveObject@FishFarm@@UAEIAAULHOSFile@@ABUMapCoords@@@Z");
// win1.41 0052cf40 mac inlined FishFarm::GetDoorPos(MapCoords *)
struct MapCoords* __fastcall GetDoorPos__8FishFarmFP9MapCoords(struct MultiMapFixed* this, const void* edx, struct MapCoords* param_1) asm("?GetDoorPos@FishFarm@@UAEPAUMapCoords@@PAU2@@Z");
// win1.41 0052c4c0 mac 100dd560 FishFarm::ConvertToPlanned(void)
struct PlannedMultiMapFixed* __fastcall ConvertToPlanned__8FishFarmFv(struct MultiMapFixed* this) asm("?ConvertToPlanned@FishFarm@@UAEPAVPlannedMultiMapFixed@@XZ");

DECLARE_LH_LINKED_LIST(FishFarm);

DECLARE_LH_LIST_HEAD(FishFarm);

#endif /* BW1_DECOMP_FISH_FARM_INCLUDED_H */
