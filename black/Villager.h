#ifndef BW1_DECOMP_VILLAGER_INCLUDED_H
#define BW1_DECOMP_VILLAGER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For int16_t, uint16_t, uint32_t, uint8_t */

#include <chlasm/AllMeshes.h> /* For enum ANIM_LIST */
#include <chlasm/Enum.h> /* For RESOURCE_TYPE_LAST, enum DEATH_REASON, enum HOLD_TYPE, enum REACTION, enum RESOURCE_TYPE, enum TRIBE_TYPE, enum VILLAGER_DISCIPLE */
#include <chlasm/GStates.h> /* For VILLAGER_STATE_LAST_STATE, enum VILLAGER_STATES */
#include <chlasm/HelpTextEnums.h> /* For enum HELP_TEXT */
#include <lionhead/lhlib/ver5.0/LHLinkedList.h> /* For DECLARE_LH_LINKED_LIST */
#include <lionhead/lhlib/ver5.0/LHListHead.h> /* For DECLARE_LH_LIST_HEAD */
#include <lionhead/lhlib/ver5.0/LHOrderedLinkedList.h> /* For DECLARE_LH_ORDERED_LINKED_LIST */
#include <reversing_utils/re_common.h> /* For bool32_t */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "GameThing.h" /* For struct GameThing */
#include "GameThingWithPos.h" /* For struct GameThingWithPos */
#include "Living.h" /* For struct Living, struct LivingVftable */
#include "LivingAction.h" /* For enum LIVING_ACTION_INDEX, struct Living__StateTableEntry */
#include "Object.h" /* For struct Object */
#include "ScriptDLL.h" /* For enum STATE_TYPE */

// Forward Declares

struct Abode;
struct Base;
struct BigForest;
struct BuildingSite;
struct Citadel;
struct Creature;
struct Creche;
struct EffectValues;
struct Field;
struct FireEffect;
struct FishFarm;
struct Flock;
struct Football;
struct Forest;
struct GInterfaceStatus;
struct GJobInfo;
struct GPlayer;
struct GTribeInfo;
struct GVillagerInfo;
struct GameOSFile;
struct GameThingVftable;
struct GameThingWithPosVftable;
struct GestureSystemPacketData;
struct JustWholeMapXZ;
struct LHOSFile;
struct LHPoint;
struct MagicTeleport;
struct MapCoords;
struct MissionaryControl;
struct MultiMapFixed;
struct ObjectVftable;
struct PhysOb;
struct PhysicsObject;
struct Pot;
struct Reaction;
struct StoragePit;
struct Town;
struct Tree;
struct Villager;
struct WorshipSite;

struct FootballerSubstateTableEntry
{
  char name[0x20];  /* 0x0 */
  char field_0x20[0x20];
  bool32_t (__fastcall* Precondition)(struct Villager* this, const void* edx, struct Football* football);  /* 0x40 */
  uint32_t field_0x44;
  uint32_t field_0x48;
  uint32_t field_0x4c;
  uint32_t field_0x50;
  uint32_t field_0x54;
  uint32_t field_0x58;
  int field_0x5c;
  float (__fastcall* Priority)(struct Villager* this, const void* edx, struct Football* football);  /* 0x60 */
  uint32_t field_0x64;
  uint32_t field_0x68;
  uint32_t field_0x6c;
  void (__fastcall* Process)(struct Villager* this, const void* edx, struct Football* football);  /* 0x70 */
  uint32_t field_0x74;
  uint32_t field_0x78;
  uint32_t field_0x7c;
};
static_assert(sizeof(struct FootballerSubstateTableEntry) == 0x80, "Data type is of wrong size");

struct ClearAreaPoint
{
  uint8_t field_0x0;
};
static_assert(sizeof(struct ClearAreaPoint) == 0x1, "Data type is of wrong size");

// Non-virtual methods

// win1.41 007591e0 mac 10575000 ClearAreaPoint::ProcessPoint(LHPoint const &)
bool32_t __fastcall ProcessPoint__14ClearAreaPointFRC7LHPoint(struct ClearAreaPoint* this, const void* edx, const struct LHPoint* param_1) asm("?ProcessPoint@ClearAreaPoint@@QAEIABULHPoint@@@Z");

struct Villager__StateTable
{
  struct Living__StateTableEntry entries[VILLAGER_STATE_LAST_STATE];  /* 0x0 */
};
static_assert(sizeof(struct Villager__StateTable) == 0x8f70, "Data type is of wrong size");

struct Glocation
{
  uint8_t field_0x0;
};
static_assert(sizeof(struct Glocation) == 0x1, "Data type is of wrong size");

DECLARE_LH_ORDERED_LINKED_LIST(Glocation);

// win1.41 0075a310 mac inlined LHOrderedLinkedList<Glocation>::Remove(Glocation *)
void __fastcall Remove__31LHOrderedLinkedList_9Glocation_Fv(struct LHOrderedLinkedList__Glocation* this, const void* edx, struct Glocation* param_1);

struct SortedObject
{
  uint8_t field_0x0;
};
static_assert(sizeof(struct SortedObject) == 0x1, "Data type is of wrong size");

DECLARE_LH_ORDERED_LINKED_LIST(SortedObject);

struct VillagerVftable
{
  struct LivingVftable super;  /* 0x0 */
  const char* (__fastcall* GetVillagerName)(struct Villager* this);  /* 0xb40 */
  uint32_t (__fastcall* DrawVillagerInfo)(struct Villager* this);
};
static_assert(sizeof(struct VillagerVftable) == 0xb48, "Data type is of wrong size");

union VillagerBase
{
  struct Living super;
  struct GameThing super_gamething;
  struct GameThingWithPos super_gamethingwithpos;
  struct Object super_object;
  struct VillagerVftable* villager_vftable;
  struct LivingVftable* living_vftable;
  struct ObjectVftable* vftable_object;
  struct GameThingVftable* gameThing_vftable;
  struct GameThingWithPosVftable* vftable_gameThingWithPos;
};
static_assert(sizeof(union VillagerBase) == 0xe0, "Data type is of wrong size");

struct Villager
{
  union VillagerBase base;  /* 0x0 */
  uint16_t field_0xe0;
  struct Villager* next;
  float food;
  int last_check_turn;
  bool food_speed_up;  /* 0xf0 */
  uint8_t field_0xf1;
  uint8_t disciple_type;
  uint8_t field_0xf3;
  int16_t resource_held[RESOURCE_TYPE_LAST];
  int16_t is_pregnant;
  int16_t field_0xfa;
  struct BuildingSite* building_site;
  struct Villager* mother;  /* 0x100 */
  struct GPlayer* last_player_to_interact;
  float field_0x108;
  float field_0x10c;
  uint32_t field_0x110;
  struct FireEffect* fire_effect;
  struct GameThing* target_thing;
  struct Football* football;
  uint32_t field_0x120;
  uint32_t field_0x124;
  struct Abode* home;
  struct Town* town;
};
static_assert(sizeof(struct Villager) == 0x130, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009cafc8 mac inlined Villager::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__8Villager asm("??_R0?AVVillager@@@8");
// win1.41 009ad8b8 mac inlined Villager::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__8Villager asm("??_R1A@?0A@A@Villager@@8");
// win1.41 009ad530 mac inlined Villager::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__8Villager asm("??_R2Villager@@8");
// win1.41 009ad558 mac inlined Villager::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__8Villager asm("??_R3Villager@@8");
// win1.41 008f795c mac 10732cdc Villager::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__8Villager asm("??_R4Villager@@6B@");
// win1.41 008f7960 mac 106f5ae4 Villager::`vftable'
extern const struct VillagerVftable __vt__8Villager asm("??_7Villager@@6B@");

// Static methods

// win1.41 inlined mac 1061e41c Villager::GetStateTable(void)
struct Living__StateTableEntry* __cdecl GetStateTable__8VillagerFv(enum VILLAGER_STATES state) asm("?GetStateTable@Villager@@SAPAULiving__StateTableEntry@@XZ");
// win1.41 0074fbe0 mac 10571750 Villager::Create(MapCoords const &, GVillagerInfo const *, unsigned long, int)
struct Villager* __cdecl Create__8VillagerFRC9MapCoordsPC13GVillagerInfoUli(struct MapCoords* coords, struct GVillagerInfo* info, uint32_t age, bool skeleton) asm("?Create@Villager@@SAPAV1@ABUMapCoords@@PBVGVillagerInfo@@KH@Z");
// win1.41 00756990 mac inlined Villager::FUN_00756990(void)
void __fastcall FUN_00756990__8VillagerFv(struct MissionaryControl* this) asm("?FUN_00756990@Villager@@QAEXXZ");

// Constructors

// win1.41 0055c8a0 mac 1030baa0 Villager::Villager(void)
struct Villager* __fastcall __ct__8VillagerFv(struct Villager* this) asm("??0Villager@@QAE@XZ");
// win1.41 0074f950 mac 10571a90 Villager::Villager(MapCoords const &, GVillagerInfo const *, unsigned long, int)
struct Villager* __fastcall __ct__8VillagerFRC9MapCoordsPC13GVillagerInfoUli(struct Villager* this, const void* edx, struct MapCoords* coords, struct GVillagerInfo* info, uint32_t age, bool skeleton) asm("??0Villager@@QAE@ABUMapCoords@@PBVGVillagerInfo@@KH@Z");

// Non-virtual Destructors

// win1.41 0074fbc0 mac inlined Villager::_dt(void)
void __fastcall __dt__8VillagerFv(struct Villager* this) asm("??1Villager@@UAE@XZ");

// Non-virtual methods

// win1.41 inlined mac inlined Villager::CallValidate(uchar)
uint32_t __fastcall CallValidate__8VillagerFUc(struct Villager* this, const void* edx, enum LIVING_ACTION_INDEX index) asm("?CallValidate@Villager@@QAEIE@Z");
// win1.41 00423c80 mac 100a8b10 Villager::FootballWatchMatchAnimation(void)
uint32_t __fastcall FootballWatchMatchAnimation__8VillagerFv(struct Villager* this) asm("?FootballWatchMatchAnimation@Villager@@QAEIXZ");
// win1.41 0074fb20 mac 10571a20 Villager::SetToZero(void)
void __fastcall SetToZero__8VillagerFv(struct Villager* this) asm("?SetToZero@Villager@@QAEXXZ");
// win1.41 0074fb80 mac 10571950 Villager::InitialiseScale(unsigned long)
void __fastcall InitialiseScale__8VillagerFUl(struct Villager* this, const void* edx, unsigned long param_1) asm("?InitialiseScale@Villager@@QAEXK@Z");
// win1.41 0074fd60 mac 10571210 Villager::DeleteDependancys(void)
void __fastcall DeleteDependancys__8VillagerFv(struct Villager* this) asm("?DeleteDependancys@Villager@@QAEXXZ");
// win1.41 0074fec0 mac 105710c0 Villager::UnemployedJobs(void)
bool __fastcall UnemployedJobs__8VillagerFv(struct Villager* this) asm("?UnemployedJobs@Villager@@QAE_NXZ");
// win1.41 0074ff60 mac 10571080 Villager::SetupJobLocation(void)
bool __fastcall SetupJobLocation__8VillagerFv(struct Villager* this) asm("?SetupJobLocation@Villager@@QAE_NXZ");
// win1.41 00750060 mac 1009a920 Villager::FinishedIntoOutOfAnimation(void)
void __fastcall FinishedIntoOutOfAnimation__8VillagerFv(struct Villager* this) asm("?FinishedIntoOutOfAnimation@Villager@@QAEXXZ");
// win1.41 007501a0 mac 1005ffb0 Villager::SetStateCarriedObject(void)
void __fastcall SetStateCarriedObject__8VillagerFv(struct Villager* this) asm("?SetStateCarriedObject@Villager@@QAEXXZ");
// win1.41 007502a0 mac 10570ca0 Villager::GetWoodCarriedObject(void)
uint32_t __fastcall GetWoodCarriedObject__8VillagerFv(struct Villager* this) asm("?GetWoodCarriedObject@Villager@@QAEIXZ");
// win1.41 00750330 mac 105709c0 Villager::GetSpouse(void)
struct Villager* __fastcall GetSpouse__8VillagerFv(struct Villager* this) asm("?GetSpouse@Villager@@QAEPAV1@XZ");
// win1.41 00750370 mac 10570860 Villager::LookAroundForVillagerInState(VILLAGER_STATES, unsigned long)
struct Villager* __fastcall LookAroundForVillagerInState__8VillagerF15VILLAGER_STATESUl(struct Villager* this, const void* edx, enum VILLAGER_STATES param_1, unsigned long param_2) asm("?LookAroundForVillagerInState@Villager@@QAEPAV1@W4VILLAGER_STATES@@K@Z");
// win1.41 00750410 mac 1004b510 Villager::CheckEveryTime(void)
int __fastcall CheckEveryTime__8VillagerFv(struct Villager* this) asm("?CheckEveryTime@Villager@@QAEHXZ");
// win1.41 00750670 mac 1006ec00 Villager::GetGameTurnsSinceLastChecked(void)
uint32_t __fastcall GetGameTurnsSinceLastChecked__8VillagerFv(struct Villager* this) asm("?GetGameTurnsSinceLastChecked@Villager@@QAEIXZ");
// win1.41 00750690 mac 105704c0 Villager::GetGameTurnLastChecked(void)
int __fastcall GetGameTurnLastChecked__8VillagerFv(struct Villager* this) asm("?GetGameTurnLastChecked@Villager@@QAEHXZ");
// win1.41 007506a0 mac 1006eca0 Villager::SetGameTurnLastChecked(void)
void __fastcall SetGameTurnLastChecked__8VillagerFv(struct Villager* this) asm("?SetGameTurnLastChecked@Villager@@QAEXXZ");
// win1.41 007506c0 mac 1056ff20 Villager::VillagerDead(DEATH_REASON, GPlayer *, float, int)
void __fastcall VillagerDead__8VillagerF12DEATH_REASONP7GPlayerfi(struct Villager* this, const void* edx, enum DEATH_REASON param_1, struct GPlayer* param_2, float param_3, int param_4) asm("?VillagerDead@Villager@@QAEXW4DEATH_REASON@@PAVGPlayer@@MH@Z");
// win1.41 00750940 mac 1056fc50 Villager::CreateDroppedResource(LHPoint *, LHPoint *, LHPoint *)
void __fastcall CreateDroppedResource__8VillagerFP7LHPointP7LHPointP7LHPoint(struct Villager* this, const void* edx, struct LHPoint* param_1, struct LHPoint* param_2, struct LHPoint* param_3) asm("?CreateDroppedResource@Villager@@QAEXPAULHPoint@@00@Z");
// win1.41 00750b50 mac 1056fa20 Villager::TownDeleted(void)
void __fastcall TownDeleted__8VillagerFv(struct Villager* this) asm("?TownDeleted@Villager@@QAEXXZ");
// win1.41 00750bb0 mac 1056f840 Villager::DebugText(int)
void __fastcall DebugText__8VillagerFi(struct Villager* this, const void* edx, int param_1) asm("?DebugText@Villager@@QAEXH@Z");
// win1.41 00750de0 mac 1056f7b0 Villager::SetAbode(Abode*)
void __fastcall SetAbode__8VillagerFP5Abode(struct Villager* this, const void* edx, struct Town* town) asm("?SetAbode@Villager@@QAEXPAVAbode@@@Z");
// win1.41 00750e10 mac 1056f660 Villager::GetRandomLookAhead(MapCoords *, float)
bool __fastcall GetRandomLookAhead__8VillagerFP9MapCoordsf(struct Villager* this, const void* edx, struct MapCoords* param_1, float param_2) asm("?GetRandomLookAhead@Villager@@QAE_NPAUMapCoords@@M@Z");
// win1.41 00750ed0 mac 10068820 Villager::SetSpeed__8VillagerFli(int, int)
void __fastcall SetSpeed__8VillagerFli(struct Villager* this, const void* edx, int base_speed, int scale_speed) asm("?SetSpeed@Villager@@QAEXJH@Z");
// win1.41 00751050 mac 10021a00 Villager::CheckChildGrownUp(void)
int __fastcall CheckChildGrownUp__8VillagerFv(struct Villager* this) asm("?CheckChildGrownUp@Villager@@QAEHXZ");
// win1.41 00751110 mac 1056f4c0 Villager::IsAMother(void)
bool __fastcall IsAMother__8VillagerFv(struct Villager* this) asm("?IsAMother@Villager@@QAE_NXZ");
// win1.41 00751190 mac 1056f440 Villager::StartMoveToObject(Object *, VILLAGER_STATES)
bool __fastcall StartMoveToObject__8VillagerFP6Object15VILLAGER_STATES(struct Villager* this, const void* edx, struct Object* param_1, enum VILLAGER_STATES param_2) asm("?StartMoveToObject@Villager@@QAE_NPAVObject@@W4VILLAGER_STATES@@@Z");
// win1.41 007511b0 mac 1009cd40 Villager::DropResource(RESOURCE_TYPE, unsigned short)
uint16_t __fastcall DropResource__8VillagerF13RESOURCE_TYPEUs(struct Villager* this, const void* edx, enum RESOURCE_TYPE param_1, unsigned short param_2) asm("?DropResource@Villager@@QAEGW4RESOURCE_TYPE@@G@Z");
// win1.41 007511e0 mac 1056f310 Villager::DropFood(unsigned short)
uint16_t __fastcall DropFood__8VillagerFUs(struct Villager* this, const void* edx, unsigned short param_1) asm("?DropFood@Villager@@QAEGG@Z");
// win1.41 00751240 mac 1056f220 Villager::DropWood(unsigned short)
uint16_t __fastcall DropWood__8VillagerFUs(struct Villager* this, const void* edx, unsigned short param_1) asm("?DropWood@Villager@@QAEGG@Z");
// win1.41 007512a0 mac 1056f160 Villager::IsEnoughFoodInStoragePitForDinner(void)
bool __fastcall IsEnoughFoodInStoragePitForDinner__8VillagerFv(struct Villager* this) asm("?IsEnoughFoodInStoragePitForDinner@Villager@@QAE_NXZ");
// win1.41 007512e0 mac 1056efc0 Villager::FindPotAroundToGoto(RESOURCE_TYPE, unsigned long &, int)
struct Pot* __fastcall FindPotAroundToGoto__8VillagerF13RESOURCE_TYPERUli(struct Villager* this, const void* edx, enum RESOURCE_TYPE param_1, unsigned long* param_2, int param_3) asm("?FindPotAroundToGoto@Villager@@QAEPAVPot@@W4RESOURCE_TYPE@@AAKH@Z");
// win1.41 007513f0 mac 1056ee50 Villager::PickupResource(RESOURCE_TYPE, short, unsigned char)
void __fastcall PickupResource__8VillagerF13RESOURCE_TYPEsUc(struct Villager* this, const void* edx, enum RESOURCE_TYPE param_1, short param_2, unsigned char param_3) asm("?PickupResource@Villager@@QAEXW4RESOURCE_TYPE@@FE@Z");
// win1.41 00751490 mac 1009cfd0 Villager::PickupFood(short)
void __fastcall PickupFood__8VillagerFs(struct Villager* this, const void* edx, short param_1) asm("?PickupFood@Villager@@QAEXF@Z");
// win1.41 007514b0 mac 1056ed20 Villager::PickupWood(short, unsigned char)
void __fastcall PickupWood__8VillagerFsUc(struct Villager* this, const void* edx, short param_1, unsigned char param_2) asm("?PickupWood@Villager@@QAEXFE@Z");
// win1.41 007514d0 mac 10004d10 Villager::GetFoodCapacity(void)
int __fastcall GetFoodCapacity__8VillagerFv(struct Villager* this) asm("?GetFoodCapacity@Villager@@QAEHXZ");
// win1.41 007514f0 mac 1056ec50 Villager::GetWoodCapacity(void)
int __fastcall GetWoodCapacity__8VillagerFv(struct Villager* this) asm("?GetWoodCapacity@Villager@@QAEHXZ");
// win1.41 00751520 mac 1056eb50 Villager::IsRandomlyLazy(void)
bool __fastcall IsRandomlyLazy__8VillagerFv(struct Villager* this) asm("?IsRandomlyLazy@Villager@@QAE_NXZ");
// win1.41 00751570 mac 100007e0 Villager::GetResourceHeld(RESOURCE_TYPE &)
bool __fastcall GetResourceHeld__8VillagerFR13RESOURCE_TYPE(struct Villager* this, const void* edx, enum RESOURCE_TYPE* param_1) asm("?GetResourceHeld@Villager@@QAE_NAAW4RESOURCE_TYPE@@@Z");
// win1.41 007516e0 mac 10003bb0 Villager::CheckTakeResourcesToStoragePit(void)
bool __fastcall CheckTakeResourcesToStoragePit__8VillagerFv(struct Villager* this) asm("?CheckTakeResourcesToStoragePit@Villager@@QAE_NXZ");
// win1.41 00751720 mac 1056e1f0 Villager::DiscipleDecideWhatToDo(void)
bool __fastcall DiscipleDecideWhatToDo__8VillagerFv(struct Villager* this) asm("?DiscipleDecideWhatToDo@Villager@@QAE_NXZ");
// win1.41 00751970 mac 1056e1b0 Villager::GetPrayerSite(void)
bool __fastcall GetPrayerSite__8VillagerFv(struct Villager* this) asm("?GetPrayerSite@Villager@@QAE_NXZ");
// win1.41 00751980 mac 1056e0e0 Villager::RestartDance(VILLAGER_STATES)
bool __fastcall RestartDance__8VillagerF15VILLAGER_STATES(struct Villager* this, const void* edx, enum VILLAGER_STATES param_1) asm("?RestartDance@Villager@@QAE_NW4VILLAGER_STATES@@@Z");
// win1.41 00751ab0 mac 1056dea0 Villager::GetVillagerText(char *)
char* __fastcall GetVillagerText__8VillagerFPc(struct Villager* this, const void* edx, char* param_1) asm("?GetVillagerText@Villager@@QAEPADPAD@Z");
// win1.41 00751d20 mac 1056d6a0 Villager::GetJobInfo(unsigned char) const
struct GJobInfo* __fastcall GetJobInfo__8VillagerCFUc(const struct Villager* this, const void* edx, unsigned char param_1) asm("?GetJobInfo@Villager@@QBEPAVGJobInfo@@E@Z");
// win1.41 00751d40 mac inlined Villager::FUN00751d40(void)
bool __fastcall FUN00751d40__8VillagerFv(struct Villager* this) asm("?FUN00751d40@Villager@@QAE_NXZ");
// win1.41 00751e50 mac 1056d290 Villager::PopFromPrevious(void)
void __fastcall PopFromPrevious__8VillagerFv(struct Villager* this) asm("?PopFromPrevious@Villager@@QAEXXZ");
// win1.41 00751ea0 mac 1056d250 Villager::GetFootball(void)
struct Football* __fastcall GetFootball__8VillagerFv(struct Villager* this) asm("?GetFootball@Villager@@QAEPAVFootball@@XZ");
// win1.41 00751ee0 mac 1056d170 Villager::GetTribe(void)
struct GTribeInfo* __fastcall GetTribe__8VillagerFv(struct Villager* this) asm("?GetTribe@Villager@@QAEPAVGTribeInfo@@XZ");
// win1.41 00751f10 mac 1008a5d0 Villager::GetStoragePit(void)
struct StoragePit* __fastcall GetStoragePit__8VillagerFv(struct Villager* this) asm("?GetStoragePit@Villager@@QAEPAVStoragePit@@XZ");
// win1.41 00751f40 mac 1056d040 Villager::GetVillagerAvailableState(void)
enum VILLAGER_STATES __fastcall GetVillagerAvailableState__8VillagerFv(struct Villager* this) asm("?GetVillagerAvailableState@Villager@@QAE?AW4VILLAGER_STATES@@XZ");
// win1.41 00751f70 mac inlined Villager::FUN_00751f70(void)
enum VILLAGER_STATES __fastcall FUN_00751f70__8VillagerFv(struct Villager* this) asm("?FUN_00751f70@Villager@@QAE?AW4VILLAGER_STATES@@XZ");
// win1.41 00751fa0 mac 100039f0 Villager::ArriveHome(void)
void __fastcall ArriveHome__8VillagerFv(struct Villager* this) asm("?ArriveHome@Villager@@QAEXXZ");
// win1.41 00751fd0 mac 1009fde0 Villager::LeaveHome(void)
void __fastcall LeaveHome__8VillagerFv(struct Villager* this) asm("?LeaveHome@Villager@@QAEXXZ");
// win1.41 00752120 mac 1007c3b0 Villager::CanPauseForASecond(unsigned char)
uint32_t __fastcall CanPauseForASecond__8VillagerFUc(struct Villager* this, const void* edx, enum VILLAGER_STATES state) asm("?CanPauseForASecond@Villager@@QAEIE@Z");
// win1.41 00752160 mac 1000a960 Villager::GetAbode(void)
struct Abode* __fastcall GetAbode__8VillagerFv(const struct Villager* this) asm("?GetAbode@Villager@@QAEPAVAbode@@XZ");
// win1.41 007521d0 mac 1004b330 Villager::CallState(void)
uint32_t __fastcall CallState__8VillagerFv(struct Villager* this) asm("?CallState@Villager@@QAEIXZ");
// win1.41 00752210 mac 10020260 Villager::IsPregnant(void)
bool __fastcall IsPregnant__8VillagerFv(struct Villager* this) asm("?IsPregnant@Villager@@QAE_NXZ");
// win1.41 00752240 mac 100201b0 Villager::WomanSpecial(void)
uint32_t __fastcall WomanSpecial__8VillagerFv(struct Villager* this) asm("?WomanSpecial@Villager@@QAEIXZ");
// win1.41 00752290 mac 1056c8b0 Villager::IsVillagerAvailable(void)
bool __fastcall IsVillagerAvailable__8VillagerFv(struct Villager* this) asm("?IsVillagerAvailable@Villager@@QAE_NXZ");
// win1.41 007522c0 mac 1056c7a0 Villager::IsAvailableToBeSummonedByCreature(void)
bool __fastcall IsAvailableToBeSummonedByCreature__8VillagerFv(struct Villager* this) asm("?IsAvailableToBeSummonedByCreature@Villager@@QAE_NXZ");
// win1.41 007524d0 mac 1009d4c0 Villager::IsStateEntryFunctionSameAs(unsigned long, unsigned long) const
bool __fastcall IsStateEntryFunctionSameAs__8VillagerCFUlUl(const struct Villager* this, const void* edx, unsigned long param_1, unsigned long param_2) asm("?IsStateEntryFunctionSameAs@Villager@@QBE_NKK@Z");
// win1.41 007525b0 mac 1056c220 Villager::IsReactiveState(unsigned long)
bool __fastcall IsReactiveState__8VillagerFUl(struct Villager* this, const void* edx, unsigned long param_1) asm("?IsReactiveState@Villager@@QAE_NK@Z");
// win1.41 00752600 mac 1001ff70 Villager::IsHungry(void)
bool __fastcall IsHungry__8VillagerFv(struct Villager* this) asm("?IsHungry@Villager@@QAE_NXZ");
// win1.41 00752620 mac 1006a7a0 Villager::IsWoman(void)
bool __fastcall IsWoman__8VillagerFv(struct Villager* this) asm("?IsWoman@Villager@@QAE_NXZ");
// win1.41 00752690 mac 1056bc60 Villager::MakeVillagesMeet(Villager *, VILLAGER_STATES, float)
bool __fastcall MakeVillagesMeet__8VillagerFP8Villager15VILLAGER_STATESf(struct Villager* this, const void* edx, struct Villager* param_1, enum VILLAGER_STATES param_2, float param_3) asm("?MakeVillagesMeet@Villager@@QAE_NPAV1@W4VILLAGER_STATES@@M@Z");
// win1.41 00752760 mac 1056bbd0 Villager::MakeVillagerFaceObject(Object *)
bool __fastcall MakeVillagerFaceObject__8VillagerFP6Object(struct Villager* this, const void* edx, struct Object* param_1) asm("?MakeVillagerFaceObject@Villager@@QAE_NPAVObject@@@Z");
// win1.41 007527e0 mac 1056ba70 Villager::ExitDance(unsigned char)
bool __fastcall ExitDance__8VillagerFUc(struct Villager* this, const void* edx, unsigned char param_1) asm("?ExitDance@Villager@@QAE_NE@Z");
// win1.41 00752820 mac 1056b9c0 Villager::IsAvailableForWorshipSite(int)
bool __fastcall IsAvailableForWorshipSite__8VillagerFi(struct Villager* this, const void* edx, int param_1) asm("?IsAvailableForWorshipSite@Villager@@QAE_NH@Z");
// win1.41 00752860 mac 1056b900 Villager::IsAtOrOnTheWayToWorshipSite(void)
bool __fastcall IsAtOrOnTheWayToWorshipSite__8VillagerFv(struct Villager* this) asm("?IsAtOrOnTheWayToWorshipSite@Villager@@QAE_NXZ");
// win1.41 00752a90 mac 1056b340 Villager::SetScaleForAge(unsigned long)
void __fastcall SetScaleForAge__8VillagerFUl(struct Villager* this, const void* edx, unsigned long param_1) asm("?SetScaleForAge@Villager@@QAEXK@Z");
// win1.41 00752b80 mac 1056b240 Villager::SetStateWhenTappedOnAbode(void)
bool __fastcall SetStateWhenTappedOnAbode__8VillagerFv(struct Villager* this) asm("?SetStateWhenTappedOnAbode@Villager@@QAE_NXZ");
// win1.41 00753140 mac inlined Villager::FUN_00753140(void)
uint32_t __fastcall FUN_00753140__8VillagerFv(struct Villager* this) asm("?FUN_00753140@Villager@@QAEIXZ");
// win1.41 007531a0 mac 1056a780 Villager::IsVagrant(void)
bool __fastcall IsVagrant__8VillagerFv(struct Villager* this) asm("?IsVagrant@Villager@@QAE_NXZ");
// win1.41 007531d0 mac 1056a480 Villager::ReleaseFromScript(void)
void __fastcall ReleaseFromScript__8VillagerFv(struct Villager* this) asm("?ReleaseFromScript@Villager@@QAEXXZ");
// win1.41 00753340 mac 1056a3d0 Villager::TestSpecial(void)
void __fastcall TestSpecial__8VillagerFv(struct Villager* this) asm("?TestSpecial@Villager@@QAEXXZ");
// win1.41 00753390 mac 1056a1a0 Villager::GetResourceFrom(Object *, RESOURCE_TYPE, short)
uint32_t __fastcall GetResourceFrom__8VillagerFP6Object13RESOURCE_TYPEs(struct Villager* this, const void* edx, struct Object* param_1, enum RESOURCE_TYPE param_2, short param_3) asm("?GetResourceFrom@Villager@@QAEIPAVObject@@W4RESOURCE_TYPE@@F@Z");
// win1.41 00753430 mac 10051360 Villager::ProcessFoodSpeedup(void)
void __fastcall ProcessFoodSpeedup__8VillagerFv(struct Villager* this) asm("?ProcessFoodSpeedup@Villager@@QAEXXZ");
// win1.41 00753470 mac 10569f30 Villager::FindPosOutsideAbode(Abode *)
void __fastcall FindPosOutsideAbode__8VillagerFP5Abode(struct Villager* this, const void* edx, struct Abode* param_1) asm("?FindPosOutsideAbode@Villager@@QAEXPAVAbode@@@Z");
// win1.41 00753540 mac inlined Villager::FUN_00753540(void)
struct Abode* __fastcall FUN_00753540__8VillagerFv(const struct Villager* this) asm("?FUN_00753540@Villager@@QAEPAVAbode@@XZ");
// win1.41 00753560 mac 1006a5f0 Villager::AdjustTownModifier(VILLAGER_STATES, int)
void __fastcall AdjustTownModifier__8VillagerF15VILLAGER_STATESi(struct Villager* this, const void* edx, enum VILLAGER_STATES state, int param_2) asm("?AdjustTownModifier@Villager@@QAEXW4VILLAGER_STATES@@H@Z");
// win1.41 00753760 mac 10058b20 Villager::SetStateSpeed(unsigned char)
void __fastcall SetStateSpeed__8VillagerFUc(struct Villager* this, const void* edx, unsigned char param_1) asm("?SetStateSpeed@Villager@@QAEXE@Z");
// win1.41 00753b50 mac 10099cf0 Villager::SetupNothingToDo(void)
uint32_t __fastcall SetupNothingToDo__8VillagerFv(struct Villager* this) asm("?SetupNothingToDo@Villager@@QAEIXZ");
// win1.41 00753c70 mac 1000e4e0 Villager::GetChillOutPos(MapCoords &)
uint32_t __fastcall GetChillOutPos__8VillagerFR9MapCoords(struct Villager* this, const void* edx, struct MapCoords* coords) asm("?GetChillOutPos@Villager@@QAEIAAUMapCoords@@@Z");
// win1.41 00753d50 mac 100096d0 Villager::GetPosOutsideMyHouse(MapCoords &)
int __fastcall GetPosOutsideMyHouse__8VillagerFR9MapCoords(const struct Villager* this, const void* edx, struct MapCoords* coords) asm("?GetPosOutsideMyHouse@Villager@@QAEHAAUMapCoords@@@Z");
// win1.41 00753dd0 mac 10569aa0 Villager::VillagerCreated(void)
uint32_t __fastcall VillagerCreated__8VillagerFv(struct Villager* this) asm("?VillagerCreated@Villager@@QAEIXZ");
// win1.41 00753e20 mac 10569870 Villager::GetResourceDropoffPos(RESOURCE_TYPE)
struct GameThingWithPos* __fastcall GetResourceDropoffPos__8VillagerF13RESOURCE_TYPE(struct Villager* this, const void* edx, enum RESOURCE_TYPE param_1) asm("?GetResourceDropoffPos@Villager@@QAEPAVGameThingWithPos@@W4RESOURCE_TYPE@@@Z");
// win1.41 00754070 mac 10569470 Villager::SetDiscipleNothingToDo(void)
bool32_t __fastcall SetDiscipleNothingToDo__8VillagerFv(struct Villager* this) asm("?SetDiscipleNothingToDo@Villager@@QAE_NXZ");
// win1.41 007540d0 mac 10569390 Villager::DiscipleNothingToDo(void)
bool32_t __fastcall DiscipleNothingToDo__8VillagerFv(struct Villager* this) asm("?DiscipleNothingToDo@Villager@@QAE_NXZ");
// win1.41 00754140 mac 105692c0 Villager::EnterDiscipleNothingToDo(unsigned char, unsigned char)
bool32_t __fastcall EnterDiscipleNothingToDo__8VillagerFUcUc(struct Villager* this, const void* edx, unsigned char param_1, unsigned char param_2) asm("?EnterDiscipleNothingToDo@Villager@@QAE_NEE@Z");
// win1.41 00754180 mac 10569180 Villager::FindDisciplePrayerPos(MapCoords *)
bool32_t __fastcall FindDisciplePrayerPos__8VillagerFP9MapCoords(struct Villager* this, const void* edx, struct MapCoords* param_1) asm("?FindDisciplePrayerPos@Villager@@QAE_NPAUMapCoords@@@Z");
// win1.41 007548a0 mac 10568810 Villager::CallSaveStateFunction(GameOSFile &, STATE_TYPE)
bool32_t __fastcall CallSaveStateFunction__8VillagerFR10GameOSFile10STATE_TYPE(struct Villager* this, const void* edx, struct GameOSFile* param_1, enum STATE_TYPE param_2) asm("?CallSaveStateFunction@Villager@@QAE_NAAVGameOSFile@@W4STATE_TYPE@@@Z");
// win1.41 00754910 mac 10568720 Villager::CallLoadStateFunction(GameOSFile &, STATE_TYPE)
bool32_t __fastcall CallLoadStateFunction__8VillagerFR10GameOSFile10STATE_TYPE(struct Villager* this, const void* edx, struct GameOSFile* param_1, enum STATE_TYPE param_2) asm("?CallLoadStateFunction@Villager@@QAE_NAAVGameOSFile@@W4STATE_TYPE@@@Z");
// win1.41 00754980 mac 10568670 Villager::SaveStateFunction(GameOSFile &)
bool32_t __fastcall SaveStateFunction__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1) asm("?SaveStateFunction@Villager@@QAE_NAAVGameOSFile@@@Z");
// win1.41 007549b0 mac 105685b0 Villager::LoadStateFunction(GameOSFile &)
bool32_t __fastcall LoadStateFunction__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1) asm("?LoadStateFunction@Villager@@QAE_NAAVGameOSFile@@@Z");
// win1.41 00754a00 mac 105684d0 Villager::SaveBuilding(GameOSFile &)
bool32_t __fastcall SaveBuilding__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1) asm("?SaveBuilding@Villager@@QAE_NAAVGameOSFile@@@Z");
// win1.41 00754a60 mac 10568400 Villager::LoadBuilding(GameOSFile &)
bool32_t __fastcall LoadBuilding__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1) asm("?LoadBuilding@Villager@@QAE_NAAVGameOSFile@@@Z");
// win1.41 00754ac0 mac 105682e0 Villager::SaveDance(GameOSFile &)
bool32_t __fastcall SaveDance__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1) asm("?SaveDance@Villager@@QAE_NAAVGameOSFile@@@Z");
// win1.41 00754b60 mac 105681d0 Villager::LoadDance(GameOSFile &)
bool32_t __fastcall LoadDance__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1) asm("?LoadDance@Villager@@QAE_NAAVGameOSFile@@@Z");
// win1.41 00754c00 mac 10568100 Villager::SaveWorship(GameOSFile &)
bool32_t __fastcall SaveWorship__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1) asm("?SaveWorship@Villager@@QAE_NAAVGameOSFile@@@Z");
// win1.41 00754c60 mac 10568030 Villager::LoadWorship(GameOSFile &)
bool32_t __fastcall LoadWorship__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1) asm("?LoadWorship@Villager@@QAE_NAAVGameOSFile@@@Z");
// win1.41 00754cc0 mac 10567f70 Villager::SaveDead(GameOSFile &)
bool32_t __fastcall SaveDead__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1) asm("?SaveDead@Villager@@QAE_NAAVGameOSFile@@@Z");
// win1.41 00754d20 mac 10567eb0 Villager::LoadDead(GameOSFile &)
bool32_t __fastcall LoadDead__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1) asm("?LoadDead@Villager@@QAE_NAAVGameOSFile@@@Z");
// win1.41 00754d80 mac 10567de0 Villager::SaveInHand(GameOSFile &)
bool32_t __fastcall SaveInHand__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1) asm("?SaveInHand@Villager@@QAE_NAAVGameOSFile@@@Z");
// win1.41 00754de0 mac 10567d10 Villager::LoadInHand(GameOSFile &)
bool32_t __fastcall LoadInHand__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1) asm("?LoadInHand@Villager@@QAE_NAAVGameOSFile@@@Z");
// win1.41 00754e40 mac 10567ca0 Villager::SaveFishing(GameOSFile &)
bool32_t __fastcall SaveFishing__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1) asm("?SaveFishing@Villager@@QAE_NAAVGameOSFile@@@Z");
// win1.41 00754e60 mac 10567c30 Villager::LoadFishing(GameOSFile &)
bool32_t __fastcall LoadFishing__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1) asm("?LoadFishing@Villager@@QAE_NAAVGameOSFile@@@Z");
// win1.41 00754e80 mac 10567b50 Villager::SaveFarming(GameOSFile &)
bool32_t __fastcall SaveFarming__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1) asm("?SaveFarming@Villager@@QAE_NAAVGameOSFile@@@Z");
// win1.41 00754ef0 mac 10567a80 Villager::LoadFarming(GameOSFile &)
bool32_t __fastcall LoadFarming__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1) asm("?LoadFarming@Villager@@QAE_NAAVGameOSFile@@@Z");
// win1.41 00754f60 mac 10567900 Villager::SaveFootball(GameOSFile &)
bool32_t __fastcall SaveFootball__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1) asm("?SaveFootball@Villager@@QAE_NAAVGameOSFile@@@Z");
// win1.41 00755040 mac 105677a0 Villager::LoadFootball(GameOSFile &)
bool32_t __fastcall LoadFootball__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1) asm("?LoadFootball@Villager@@QAE_NAAVGameOSFile@@@Z");
// win1.41 00755120 mac 10567680 Villager::SaveShepherd(GameOSFile &)
bool32_t __fastcall SaveShepherd__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1) asm("?SaveShepherd@Villager@@QAE_NAAVGameOSFile@@@Z");
// win1.41 007551c0 mac 10567570 Villager::LoadShepherd(GameOSFile &)
bool32_t __fastcall LoadShepherd__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1) asm("?LoadShepherd@Villager@@QAE_NAAVGameOSFile@@@Z");
// win1.41 00755260 mac 105673b0 Villager::SaveInScript(GameOSFile &)
bool32_t __fastcall SaveInScript__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1) asm("?SaveInScript@Villager@@QAE_NAAVGameOSFile@@@Z");
// win1.41 00755370 mac 10567210 Villager::LoadInScript(GameOSFile &)
bool32_t __fastcall LoadInScript__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1) asm("?LoadInScript@Villager@@QAE_NAAVGameOSFile@@@Z");
// win1.41 00755470 mac 10567050 Villager::SaveScriptPos(GameOSFile &)
bool32_t __fastcall SaveScriptPos__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1) asm("?SaveScriptPos@Villager@@QAE_NAAVGameOSFile@@@Z");
// win1.41 00755580 mac 10566eb0 Villager::LoadScriptPos(GameOSFile &)
bool32_t __fastcall LoadScriptPos__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1) asm("?LoadScriptPos@Villager@@QAE_NAAVGameOSFile@@@Z");
// win1.41 00755680 mac 10566dd0 Villager::SaveFire(GameOSFile &)
bool32_t __fastcall SaveFire__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1) asm("?SaveFire@Villager@@QAE_NAAVGameOSFile@@@Z");
// win1.41 007556f0 mac 10566d00 Villager::LoadFire(GameOSFile &)
bool32_t __fastcall LoadFire__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1) asm("?LoadFire@Villager@@QAE_NAAVGameOSFile@@@Z");
// win1.41 00755760 mac 10566c80 Villager::SaveDiscipleNothingToDo(GameOSFile &)
bool32_t __fastcall SaveDiscipleNothingToDo__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1) asm("?SaveDiscipleNothingToDo@Villager@@QAE_NAAVGameOSFile@@@Z");
// win1.41 00755780 mac 10566c00 Villager::LoadDiscipleNothingToDo(GameOSFile &)
bool32_t __fastcall LoadDiscipleNothingToDo__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1) asm("?LoadDiscipleNothingToDo@Villager@@QAE_NAAVGameOSFile@@@Z");
// win1.41 007557a0 mac 10566b20 Villager::SaveTrader(GameOSFile &)
bool32_t __fastcall SaveTrader__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1) asm("?SaveTrader@Villager@@QAE_NAAVGameOSFile@@@Z");
// win1.41 00755810 mac 10566a50 Villager::LoadTrader(GameOSFile &)
bool32_t __fastcall LoadTrader__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1) asm("?LoadTrader@Villager@@QAE_NAAVGameOSFile@@@Z");
// win1.41 00755880 mac 105669e0 Villager::SaveInspectObject(GameOSFile &)
bool32_t __fastcall SaveInspectObject__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1) asm("?SaveInspectObject@Villager@@QAE_NAAVGameOSFile@@@Z");
// win1.41 007558a0 mac 10566970 Villager::LoadInspectObject(GameOSFile &)
bool32_t __fastcall LoadInspectObject__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1) asm("?LoadInspectObject@Villager@@QAE_NAAVGameOSFile@@@Z");
// win1.41 007558c0 mac 10566930 Villager::SaveReaction(GameOSFile &)
bool32_t __fastcall SaveReaction__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1) asm("?SaveReaction@Villager@@QAE_NAAVGameOSFile@@@Z");
// win1.41 007558d0 mac 105668f0 Villager::LoadReaction(GameOSFile &)
bool32_t __fastcall LoadReaction__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1) asm("?LoadReaction@Villager@@QAE_NAAVGameOSFile@@@Z");
// win1.41 007558e0 mac 105667d0 Villager::SaveClearArea(GameOSFile &)
bool32_t __fastcall SaveClearArea__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1) asm("?SaveClearArea@Villager@@QAE_NAAVGameOSFile@@@Z");
// win1.41 00755980 mac 105666c0 Villager::LoadClearArea(GameOSFile &)
bool32_t __fastcall LoadClearArea__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1) asm("?LoadClearArea@Villager@@QAE_NAAVGameOSFile@@@Z");
// win1.41 00755a20 mac 105665e0 Villager::SaveBreeder(GameOSFile &)
bool32_t __fastcall SaveBreeder__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1) asm("?SaveBreeder@Villager@@QAE_NAAVGameOSFile@@@Z");
// win1.41 00755a80 mac 10566510 Villager::LoadBreeder(GameOSFile &)
bool32_t __fastcall LoadBreeder__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1) asm("?LoadBreeder@Villager@@QAE_NAAVGameOSFile@@@Z");
// win1.41 00755ae0 mac 105664a0 Villager::SaveForesting(GameOSFile &)
bool32_t __fastcall SaveForesting__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1) asm("?SaveForesting@Villager@@QAE_NAAVGameOSFile@@@Z");
// win1.41 00755b00 mac 10566430 Villager::LoadForesting(GameOSFile &)
bool32_t __fastcall LoadForesting__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1) asm("?LoadForesting@Villager@@QAE_NAAVGameOSFile@@@Z");
// win1.41 00755b20 mac 105663a0 Villager::SaveFootPath(GameOSFile &)
bool32_t __fastcall SaveFootPath__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1) asm("?SaveFootPath@Villager@@QAE_NAAVGameOSFile@@@Z");
// win1.41 00755b50 mac 10566310 Villager::LoadFootPath(GameOSFile &)
bool32_t __fastcall LoadFootPath__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1) asm("?LoadFootPath@Villager@@QAE_NAAVGameOSFile@@@Z");
// win1.41 00755b80 mac 105661e0 Villager::SaveInspectionReaction(GameOSFile &)
bool32_t __fastcall SaveInspectionReaction__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1) asm("?SaveInspectionReaction@Villager@@QAE_NAAVGameOSFile@@@Z");
// win1.41 00755c20 mac 105660c0 Villager::LoadInspectionReaction(GameOSFile &)
bool32_t __fastcall LoadInspectionReaction__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1) asm("?LoadInspectionReaction@Villager@@QAE_NAAVGameOSFile@@@Z");
// win1.41 00755cc0 mac 10565f90 Villager::SaveMagicTreeReaction(GameOSFile &)
bool32_t __fastcall SaveMagicTreeReaction__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1) asm("?SaveMagicTreeReaction@Villager@@QAE_NAAVGameOSFile@@@Z");
// win1.41 00755d60 mac 10565e70 Villager::LoadMagicTreeReaction(GameOSFile &)
uint32_t __fastcall LoadMagicTreeReaction__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1) asm("?LoadMagicTreeReaction@Villager@@QAEIAAVGameOSFile@@@Z");
// win1.41 00755e00 mac 10565d40 Villager::SaveHideInBuilding(GameOSFile &)
uint32_t __fastcall SaveHideInBuilding__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1) asm("?SaveHideInBuilding@Villager@@QAEIAAVGameOSFile@@@Z");
// win1.41 00755ea0 mac 10565c20 Villager::LoadHideInBuilding(GameOSFile &)
uint32_t __fastcall LoadHideInBuilding__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1) asm("?LoadHideInBuilding@Villager@@QAEIAAVGameOSFile@@@Z");
// win1.41 00755f40 mac 10565b50 Villager::SaveShieldReaction(GameOSFile &)
uint32_t __fastcall SaveShieldReaction__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1) asm("?SaveShieldReaction@Villager@@QAEIAAVGameOSFile@@@Z");
// win1.41 00755fa0 mac 10565a80 Villager::LoadShieldReaction(GameOSFile &)
uint32_t __fastcall LoadShieldReaction__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1) asm("?LoadShieldReaction@Villager@@QAEIAAVGameOSFile@@@Z");
// win1.41 00756000 mac 1000a990 Villager::SetVillagerDisciple(GameThing *, VILLAGER_DISCIPLE, int)
uint32_t __fastcall SetVillagerDisciple__8VillagerFP9GameThing17VILLAGER_DISCIPLEi(struct Villager* this, const void* edx, struct GameThing* param_1, enum VILLAGER_DISCIPLE param_2, int param_3) asm("?SetVillagerDisciple@Villager@@QAEIPAVGameThing@@W4VILLAGER_DISCIPLE@@H@Z");
// win1.41 00756170 mac 10565770 Villager::ShowDiscipleIcon(VILLAGER_DISCIPLE)
uint32_t __fastcall ShowDiscipleIcon__8VillagerF17VILLAGER_DISCIPLE(struct Villager* this, const void* edx, enum VILLAGER_DISCIPLE param_1) asm("?ShowDiscipleIcon@Villager@@QAEXW4VILLAGER_DISCIPLE@@@Z");
// win1.41 00756230 mac 10565730 Villager::DebugValidateState(void)
void __fastcall DebugValidateState__8VillagerFv(struct Villager* this) asm("?DebugValidateState@Villager@@QAEXXZ");
// win1.41 00756240 mac 105655e0 Villager::ForceMoveVillagerToAbode(Abode*)
void __fastcall ForceMoveVillagerToAbode__8VillagerFP5Abode(struct Villager* this, const void* edx, struct Abode* abode) asm("?ForceMoveVillagerToAbode@Villager@@QAEXPAVAbode@@@Z");
// win1.41 00756520 mac 10565010 Villager::LookAtPreviousStateReactToTownEmergency(void)
enum VILLAGER_STATES __fastcall LookAtPreviousStateReactToTownEmergency__8VillagerFv(struct Villager* this) asm("?LookAtPreviousStateReactToTownEmergency@Villager@@QAE?AW4VILLAGER_STATES@@XZ");
// win1.41 00756530 mac 10564fd0 Villager::SetTown(Town*)
void __fastcall SetTown__8VillagerFP4Town(struct Villager* this, const void* edx, struct Town* town) asm("?SetTown@Villager@@QAEXPAVTown@@@Z");
// win1.41 00756540 mac 10564f50 Villager::ScriptInCrowd(void)
bool32_t __fastcall ScriptInCrowd__8VillagerFv(struct Villager* this) asm("?ScriptInCrowd@Villager@@QAE_NXZ");
// win1.41 00756570 mac 10564f10 Villager::SaveLanded(GameOSFile &)
bool32_t __fastcall SaveLanded__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1) asm("?SaveLanded@Villager@@QAE_NAAVGameOSFile@@@Z");
// win1.41 00756580 mac 10564ed0 Villager::LoadLanded(GameOSFile &)
bool32_t __fastcall LoadLanded__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1) asm("?LoadLanded@Villager@@QAE_NAAVGameOSFile@@@Z");
// win1.41 007569a0 mac 10564420 Villager::MoveToObjectValidate(void)
void __fastcall MoveToObjectValidate__8VillagerFv(struct Villager* this) asm("?MoveToObjectValidate@Villager@@QAEXXZ");
// win1.41 007569d0 mac 10564390 Villager::MoveOnStructureValidate(void)
void __fastcall MoveOnStructureValidate__8VillagerFv(struct Villager* this) asm("?MoveOnStructureValidate@Villager@@QAEXXZ");
// win1.41 00756a00 mac 10564260 Villager::ReactionValidate(void)
void __fastcall ReactionValidate__8VillagerFv(struct Villager* this) asm("?ReactionValidate@Villager@@QAEXXZ");
// win1.41 00756a50 mac 10564180 Villager::SexValidate(void)
void __fastcall SexValidate__8VillagerFv(struct Villager* this) asm("?SexValidate@Villager@@QAEXXZ");
// win1.41 00756a80 mac 10564120 Villager::WallhugAndReactionValidate(void)
void __fastcall WallhugAndReactionValidate__8VillagerFv(struct Villager* this) asm("?WallhugAndReactionValidate@Villager@@QAEXXZ");
// win1.41 00756aa0 mac 10564040 Villager::ClosestObjectValidate(void)
void __fastcall ClosestObjectValidate__8VillagerFv(struct Villager* this) asm("?ClosestObjectValidate@Villager@@QAEXXZ");
// win1.41 00756bc0 mac inlined Villager::FUN_00756bc0(float)
void __fastcall FUN_00756bc0__8VillagerFf(struct Villager* this, const void* edx, float param_1) asm("?FUN_00756bc0@Villager@@UAEXM@Z");
// win1.41 00756be0 mac 10563bb0 Villager::FindChildrenAndOrphanThem(void)
void __fastcall FindChildrenAndOrphanThem__8VillagerFv(struct Villager* this) asm("?FindChildrenAndOrphanThem@Villager@@QAEXXZ");
// win1.41 00756d30 mac 10573250 Villager::InteractDecideWhatToDoForOtherVillager(void)
void __fastcall InteractDecideWhatToDoForOtherVillager__8VillagerFv(struct Villager* this) asm("?InteractDecideWhatToDoForOtherVillager@Villager@@QAEXXZ");
// win1.41 00756e10 mac 105731e0 Villager::InteractDecideWhatToDo(void)
void __fastcall InteractDecideWhatToDo__8VillagerFv(struct Villager* this) asm("?InteractDecideWhatToDo@Villager@@QAEXXZ");
// win1.41 00756e20 mac 10573130 Villager::GetDiscipleInteractState(void)
uint32_t __fastcall GetDiscipleInteractState__8VillagerFv(struct Villager* this) asm("?GetDiscipleInteractState@Villager@@QAEIXZ");
// win1.41 00756e80 mac 1002ae20 Villager::FindCloseObjectsForInteract(class LHOrderedLinkedList<class SortedObject> *, struct MapCoords const &)
bool32_t __fastcall FindCloseObjectsForInteract__8VillagerFP35LHOrderedLinkedList_12SortedObject_RC9MapCoords(struct Villager* this, const void* edx, struct LHOrderedLinkedList__SortedObject* param_1, const struct MapCoords* param_2);
// win1.41 00757180 mac 10572de0 Villager::CheckMoveHouse(Object *)
bool32_t __fastcall CheckMoveHouse__8VillagerFP6Object(struct Villager* this, const void* edx, struct Object* object) asm("?CheckMoveHouse@Villager@@QAEIPAVObject@@@Z");
// win1.41 00757210 mac 10572cf0 Villager::CheckMoveIntoTown(Town &)
bool32_t __fastcall CheckMoveIntoTown__8VillagerFR4Town(struct Villager* this, const void* edx, struct Town* param_1) asm("?CheckMoveIntoTown@Villager@@QAEIAAVTown@@@Z");
// win1.41 00757260 mac 10572cb0 Villager::CheckInteractWithAnimal(void)
bool32_t __fastcall CheckInteractWithAnimal__8VillagerFv(struct Villager* this) asm("?CheckInteractWithAnimal@Villager@@QAEIXZ");
// win1.41 00757270 mac 105729e0 Villager::CheckInteractWithWorshipSite(void)
bool32_t __fastcall CheckInteractWithWorshipSite__8VillagerFv(struct Villager* this) asm("?CheckInteractWithWorshipSite@Villager@@QAEIXZ");
// win1.41 00757420 mac 10572700 Villager::CheckInteractWithAbode(void)
bool32_t __fastcall CheckInteractWithAbode__8VillagerFv(struct Villager* this) asm("?CheckInteractWithAbode@Villager@@QAEIXZ");
// win1.41 00757590 mac 105725c0 Villager::CheckInteractWithField(void)
bool32_t __fastcall CheckInteractWithField__8VillagerFv(struct Villager* this) asm("?CheckInteractWithField@Villager@@QAEIXZ");
// win1.41 00757610 mac 10572480 Villager::CheckInteractWithFishFarm(void)
bool32_t __fastcall CheckInteractWithFishFarm__8VillagerFv(struct Villager* this) asm("?CheckInteractWithFishFarm@Villager@@QAEIXZ");
// win1.41 00757690 mac 10572350 Villager::CheckInteractWithTree(void)
bool32_t __fastcall CheckInteractWithTree__8VillagerFv(struct Villager* this) asm("?CheckInteractWithTree@Villager@@QAEIXZ");
// win1.41 00757720 mac 10572310 Villager::CheckInteractWithBall(void)
bool32_t __fastcall CheckInteractWithBall__8VillagerFv(struct Villager* this) asm("?CheckInteractWithBall@Villager@@QAEIXZ");
// win1.41 00757730 mac 105722d0 Villager::CheckInteractWithPot(void)
bool32_t __fastcall CheckInteractWithPot__8VillagerFv(struct Villager* this) asm("?CheckInteractWithPot@Villager@@QAEIXZ");
// win1.41 00757740 mac 10572290 Villager::CheckInteractWithRock(void)
bool32_t __fastcall CheckInteractWithRock__8VillagerFv(struct Villager* this) asm("?CheckInteractWithRock@Villager@@QAEIXZ");
// win1.41 00757750 mac 10572240 Villager::CheckInteractWithFootBall(void)
bool32_t __fastcall CheckInteractWithFootBall__8VillagerFv(struct Villager* this) asm("?CheckInteractWithFootBall@Villager@@QAEIXZ");
// win1.41 00757760 mac 105720a0 Villager::CheckInteractWithVillager(void)
bool32_t __fastcall CheckInteractWithVillager__8VillagerFv(struct Villager* this) asm("?CheckInteractWithVillager@Villager@@QAEIXZ");
// win1.41 00757820 mac 10572010 Villager::SetDiscipleFollower(VILLAGER_DISCIPLE)
void __fastcall SetDiscipleFollower__8VillagerF17VILLAGER_DISCIPLE(struct Villager* this, const void* edx, enum VILLAGER_DISCIPLE param_1) asm("?SetDiscipleFollower@Villager@@QAEXW4VILLAGER_DISCIPLE@@@Z");
// win1.41 00757850 mac 10571fc0 Villager::CheckInteractWithMagicLiving(void)
bool32_t __fastcall CheckInteractWithMagicLiving__8VillagerFv(struct Villager* this) asm("?CheckInteractWithMagicLiving@Villager@@QAEIXZ");
// win1.41 007578c0 mac 10573fc0 Villager::ChildFollowsMother(void)
bool32_t __fastcall ChildFollowsMother__8VillagerFv(struct Villager* this) asm("?ChildFollowsMother@Villager@@QAEIXZ");
// win1.41 007579f0 mac 10573ed0 Villager::ChildGotoCreche(void)
uint32_t __fastcall ChildGotoCreche__8VillagerFv(struct Villager* this) asm("?ChildGotoCreche@Villager@@QAEIXZ");
// win1.41 00757c90 mac 1006d8c0 Villager::ChildAtCreche(void)
bool32_t __fastcall ChildAtCreche__8VillagerFv(struct Villager* this) asm("?ChildAtCreche@Villager@@QAEIXZ");
// win1.41 00757e80 mac 10084940 Villager::CheckChild(void)
uint32_t __fastcall CheckChild__8VillagerFv(struct Villager* this) asm("?CheckChild@Villager@@QAEIXZ");
// win1.41 00757ec0 mac 10573a80 Villager::ChildDecideWhatToDo(void)
bool32_t __fastcall ChildDecideWhatToDo__8VillagerFv(struct Villager* this) asm("?ChildDecideWhatToDo@Villager@@QAE_NXZ");
// win1.41 00757f00 mac 10573a20 Villager::CheckChildActivity(void)
bool32_t __fastcall CheckChildActivity__8VillagerFv(struct Villager* this) asm("?CheckChildActivity@Villager@@QAEIXZ");
// win1.41 00757f10 mac 10573990 Villager::ChildBecomesAdult(void)
bool32_t __fastcall ChildBecomesAdult__8VillagerFv(struct Villager* this) asm("?ChildBecomesAdult@Villager@@QAE_NXZ");
// win1.41 00757f40 mac 10095500 Villager::IsMotherAlive(void)
bool32_t __fastcall IsMotherAlive__8VillagerFv(struct Villager* this) asm("?IsMotherAlive@Villager@@QAE_NXZ");
// win1.41 00757f90 mac 10573570 Villager::CheckNeedNewAbode(void)
bool32_t __fastcall CheckNeedNewAbode__8VillagerFv(struct Villager* this) asm("?CheckNeedNewAbode@Villager@@QAEIXZ");
// win1.41 00758080 mac 105734a0 Villager::MoveVillagerToAbode(Abode*)
void __fastcall MoveVillagerToAbode__8VillagerFP5Abode(struct Villager* this, const void* edx, struct Abode* abode) asm("?MoveVillagerToAbode@Villager@@QAEXPAVAbode@@@Z");
// win1.41 007580d0 mac 105733f0 Villager::MakeChildOrphaned(Villager *)
uint32_t __fastcall MakeChildOrphaned__8VillagerFP8Villager(struct Villager* this, const void* edx, struct Villager* param_1) asm("?MakeChildOrphaned@Villager@@QAEIPAV1@@Z");
// win1.41 00758180 mac 10096f90 Villager::CheckNeededForCivic(void)
float __fastcall CheckNeededForCivic__8VillagerFv(struct Villager* this) asm("?CheckNeededForCivic@Villager@@QAEMXZ");
// win1.41 007581a0 mac 1007dae0 Villager::CheckNeededForTownDesire(void)
uint32_t __fastcall CheckNeededForTownDesire__8VillagerFv(struct Villager* this) asm("?CheckNeededForTownDesire@Villager@@QAEIXZ");
// win1.41 007581e0 mac 10021390 Villager::GetOwnDesiresTrigger(void)
float __fastcall GetOwnDesiresTrigger__8VillagerFv(struct Villager* this) asm("?GetOwnDesiresTrigger@Villager@@QAEMXZ");
// win1.41 007582f0 mac 10576e60 Villager::CheckNeededForHarvest(void)
bool32_t __fastcall CheckNeededForHarvest__8VillagerFv(struct Villager* this) asm("?CheckNeededForHarvest@Villager@@QAEIXZ");
// win1.41 00758340 mac 10098600 Villager::CheckNeededForBuilding(void)
bool32_t __fastcall CheckNeededForBuilding__8VillagerFv(struct Villager* this) asm("?CheckNeededForBuilding@Villager@@QAEIXZ");
// win1.41 00758390 mac 10576a80 Villager::RunAwayFromObjectReaction(void)
bool32_t __fastcall RunAwayFromObjectReaction__8VillagerFv(struct Villager* this) asm("?RunAwayFromObjectReaction@Villager@@QAEIXZ");
// win1.41 007584b0 mac 10576950 Villager::SetupBuildingObject(BuildingSite *)
bool32_t __fastcall SetupBuildingObject__8VillagerFP12BuildingSite(struct Villager* this, const void* edx, struct BuildingSite* param_1) asm("?SetupBuildingObject@Villager@@QAEIPAVBuildingSite@@@Z");
// win1.41 00758530 mac 105767a0 Villager::SetupBuildingObject(MultiMapFixed *)
bool32_t __fastcall SetupBuildingObject__8VillagerFP13MultiMapFixed(struct Villager* this, const void* edx, struct MultiMapFixed* param_1) asm("?SetupBuildingObject@Villager@@QAEIPAVMultiMapFixed@@@Z");
// win1.41 007585a0 mac 10576630 Villager::SetupWaitForWood(BuildingSite *)
bool32_t __fastcall SetupWaitForWood__8VillagerFP12BuildingSite(struct Villager* this, const void* edx, struct BuildingSite* param_1) asm("?SetupWaitForWood@Villager@@QAEIPAVBuildingSite@@@Z");
// win1.41 007586b0 mac 10576590 Villager::WaitForWood(void)
bool32_t __fastcall WaitForWood__8VillagerFv(struct Villager* this) asm("?WaitForWood@Villager@@QAEIXZ");
// win1.41 007586e0 mac 105763c0 Villager::SetupGetBuildingSupplies(BuildingSite *)
bool32_t __fastcall SetupGetBuildingSupplies__8VillagerFP12BuildingSite(struct Villager* this, const void* edx, struct BuildingSite* param_1) asm("?SetupGetBuildingSupplies@Villager@@QAEIPAVBuildingSite@@@Z");
// win1.41 007587d0 mac 10576150 Villager::GotoStoragePitForBuildingMaterials(BuildingSite *)
bool32_t __fastcall GotoStoragePitForBuildingMaterials__8VillagerFP12BuildingSite(struct Villager* this, const void* edx, struct BuildingSite* param_1) asm("?GotoStoragePitForBuildingMaterials@Villager@@QAEIPAVBuildingSite@@@Z");
// win1.41 00758960 mac 10576080 Villager::GotoWorkshopForBuildingMaterials(BuildingSite *)
bool32_t __fastcall GotoWorkshopForBuildingMaterials__8VillagerFP12BuildingSite(struct Villager* this, const void* edx, struct BuildingSite* param_1) asm("?GotoWorkshopForBuildingMaterials@Villager@@QAEIPAVBuildingSite@@@Z");
// win1.41 00758990 mac 10575f70 Villager::ArrivesAtStoragePitForBuildingMaterials(void)
uint32_t __fastcall ArrivesAtStoragePitForBuildingMaterials__8VillagerFv(struct Villager* this) asm("?ArrivesAtStoragePitForBuildingMaterials@Villager@@QAEIXZ");
// win1.41 00758a00 mac 10575d70 Villager::GotoBuildingSite(BuildingSite *)
bool32_t __fastcall GotoBuildingSite__8VillagerFP12BuildingSite(struct Villager* this, const void* edx, struct BuildingSite* param_1) asm("?GotoBuildingSite@Villager@@QAEIPAVBuildingSite@@@Z");
// win1.41 00758af0 mac 10575ab0 Villager::ArrivesAtBuildingSite(void)
uint32_t __fastcall ArrivesAtBuildingSite__8VillagerFv(struct Villager* this) asm("?ArrivesAtBuildingSite@Villager@@QAEIXZ");
// win1.41 00758c40 mac 10575760 Villager::Building(void)
bool32_t __fastcall Building__8VillagerFv(struct Villager* this) asm("?Building@Villager@@QAEIXZ");
// win1.41 00758e20 mac 10575700 Villager::GetWoodUsedPerBuild(void)
float __fastcall GetWoodUsedPerBuild__8VillagerFv(struct Villager* this) asm("?GetWoodUsedPerBuild@Villager@@QAEMXZ");
// win1.41 00758e30 mac 10098500 Villager::CheckSatisfyAbodesDesire(void)
bool32_t __fastcall CheckSatisfyAbodesDesire__8VillagerFv(struct Villager* this) asm("?CheckSatisfyAbodesDesire@Villager@@QAEIXZ");
// win1.41 00758e90 mac 105755c0 Villager::CheckSatisfyCivicBuildings(void)
bool32_t __fastcall CheckSatisfyCivicBuildings__8VillagerFv(struct Villager* this) asm("?CheckSatisfyCivicBuildings@Villager@@QAEIXZ");
// win1.41 00758ef0 mac 10575580 Villager::ArrivesAtRockForWood(void)
bool32_t __fastcall ArrivesAtRockForWood__8VillagerFv(struct Villager* this) asm("?ArrivesAtRockForWood@Villager@@QAEIXZ");
// win1.41 00758f00 mac 10575420 Villager::GotWoodFromRock(void)
bool32_t __fastcall GotWoodFromRock__8VillagerFv(struct Villager* this) asm("?GotWoodFromRock@Villager@@QAEIXZ");
// win1.41 00758f60 mac 105751d0 Villager::ReenterBuildingState(void)
bool32_t __fastcall ReenterBuildingState__8VillagerFv(struct Villager* this) asm("?ReenterBuildingState@Villager@@QAEIXZ");
// win1.41 007590a0 mac 10574e20 Villager::CheckForClearArea(MapCoords const &, float)
bool32_t __fastcall CheckForClearArea__8VillagerFRC9MapCoordsf(struct Villager* this, const void* edx, const struct MapCoords* param_1, float param_2) asm("?CheckForClearArea@Villager@@QAEIABUMapCoords@@M@Z");
// win1.41 007592e0 mac 10574d90 Villager::ArriveAtPushObject(void)
bool32_t __fastcall ArriveAtPushObject__8VillagerFv(struct Villager* this) asm("?ArriveAtPushObject@Villager@@QAEIXZ");
// win1.41 00759330 mac 10574c20 Villager::CheckSatisfyToBuild(void)
bool32_t __fastcall CheckSatisfyToBuild__8VillagerFv(struct Villager* this) asm("?CheckSatisfyToBuild@Villager@@QAEIXZ");
// win1.41 00759370 mac 10574ad0 Villager::CheckSatisfyToRepair(void)
bool32_t __fastcall CheckSatisfyToRepair__8VillagerFv(struct Villager* this) asm("?CheckSatisfyToRepair@Villager@@QAEIXZ");
// win1.41 007593a0 mac 10574980 Villager::CheckSatisfySupplyWorkshop(void)
bool32_t __fastcall CheckSatisfySupplyWorkshop__8VillagerFv(struct Villager* this) asm("?CheckSatisfySupplyWorkshop@Villager@@QAEIXZ");
// win1.41 00759450 mac 10574800 Villager::ArrivesAtStoragePitForWorkshopMaterials(void)
bool32_t __fastcall ArrivesAtStoragePitForWorkshopMaterials__8VillagerFv(struct Villager* this) asm("?ArrivesAtStoragePitForWorkshopMaterials@Villager@@QAEIXZ");
// win1.41 00759520 mac 10574670 Villager::ArrivesAtWorkshopForDropOff(void)
bool32_t __fastcall ArrivesAtWorkshopForDropOff__8VillagerFv(struct Villager* this) asm("?ArrivesAtWorkshopForDropOff@Villager@@QAEIXZ");
// win1.41 007595e0 mac 10574610 Villager::CheckForScaffoldForBuildingSite(BuildingSite *)
uint32_t __fastcall CheckForScaffoldForBuildingSite__8VillagerFP12BuildingSite(struct Villager* this, const void* edx, struct BuildingSite* param_1) asm("?CheckForScaffoldForBuildingSite@Villager@@QAEIPAVBuildingSite@@@Z");
// win1.41 007595f0 mac 105745d0 Villager::IsScaffoldValid(void)
bool32_t __fastcall IsScaffoldValid__8VillagerFv(struct Villager* this) asm("?IsScaffoldValid@Villager@@QAEIXZ");
// win1.41 00759600 mac 10574580 Villager::ExitBringScaffoldToBuildingSite(unsigned char)
bool32_t __fastcall ExitBringScaffoldToBuildingSite__8VillagerFUc(struct Villager* this, const void* edx, unsigned char param_1) asm("?ExitBringScaffoldToBuildingSite@Villager@@QAEIE@Z");
// win1.41 00759610 mac 10574300 Villager::GetPosForPushObject(Object *, MapCoords &)
struct MapCoords* __fastcall GetPosForPushObject__8VillagerFP6ObjectR9MapCoords(struct Villager* this, const void* edx, struct Object* param_1, struct MapCoords* param_2) asm("?GetPosForPushObject@Villager@@QAEPAUMapCoords@@PAVObject@@AAU2@@Z");
// win1.41 00759750 mac 10574220 Villager::EnterBuilding(unsigned char, unsigned char)
bool32_t __fastcall EnterBuilding__8VillagerFUcUc(struct Villager* this, const void* edx, unsigned char param_1, unsigned char param_2) asm("?EnterBuilding@Villager@@QAEIEE@Z");
// win1.41 007597b0 mac 10574130 Villager::ExitBuilding(unsigned char)
bool32_t __fastcall ExitBuilding__8VillagerFUc(struct Villager* this, const void* edx, unsigned char param_1) asm("?ExitBuilding@Villager@@QAEIE@Z");
// win1.41 00759890 mac 105775d0 Villager::FindImmediateNeighbour(void)
struct Villager* __fastcall FindImmediateNeighbour__8VillagerFv(struct Villager* this) asm("?FindImmediateNeighbour@Villager@@QAEPAV1@XZ");
// win1.41 00759930 mac 10577560 Villager::DanceForEditingPurposes(void)
bool32_t __fastcall DanceForEditingPurposes__8VillagerFv(struct Villager* this) asm("?DanceForEditingPurposes@Villager@@QAEIXZ");
// win1.41 00759960 mac 105774f0 Villager::DanceButNotWorship(void)
bool32_t __fastcall DanceButNotWorship__8VillagerFv(struct Villager* this) asm("?DanceButNotWorship@Villager@@QAEIXZ");
// win1.41 00759990 mac 10577430 Villager::MoveToDancePos(void)
bool32_t __fastcall MoveToDancePos__8VillagerFv(struct Villager* this) asm("?MoveToDancePos@Villager@@QAEIXZ");
// win1.41 00759a00 mac 105772e0 Villager::ControlledByCreature(void)
bool32_t __fastcall ControlledByCreature__8VillagerFv(struct Villager* this) asm("?ControlledByCreature@Villager@@QAEIXZ");
// win1.41 00759a90 mac 105770d0 Villager::ExitControlledByCreature(unsigned char)
bool32_t __fastcall ExitControlledByCreature__8VillagerFUc(struct Villager* this, const void* edx, unsigned char param_1) asm("?ExitControlledByCreature@Villager@@QAEIE@Z");
// win1.41 00759bf0 mac 105783f0 Villager::FarmerLookForField(void)
bool32_t __fastcall FarmerLookForField__8VillagerFv(struct Villager* this) asm("?FarmerLookForField@Villager@@QAEIXZ");
// win1.41 00759c00 mac 10578330 Villager::VillagerBecomesFarmer(Field *)
bool32_t __fastcall VillagerBecomesFarmer__8VillagerFP5Field(struct Villager* this, const void* edx, struct Field* param_1) asm("?VillagerBecomesFarmer@Villager@@QAEIPAVField@@@Z");
// win1.41 00759c40 mac 10578150 Villager::SetFarmerGotoField(Field *, int)
bool32_t __fastcall SetFarmerGotoField__8VillagerFP5Fieldi(struct Villager* this, const void* edx, struct Field* param_1, int param_2) asm("?SetFarmerGotoField@Villager@@QAEIPAVField@@H@Z");
// win1.41 00759d20 mac 10004ad0 Villager::FarmerArrivesAtFarm(void)
bool32_t __fastcall FarmerArrivesAtFarm__8VillagerFv(struct Villager* this) asm("?FarmerArrivesAtFarm@Villager@@QAEIXZ");
// win1.41 00759e40 mac 10578000 Villager::FarmerDigsUpCrop(void)
bool32_t __fastcall FarmerDigsUpCrop__8VillagerFv(struct Villager* this) asm("?FarmerDigsUpCrop@Villager@@QAEIXZ");
// win1.41 00759ec0 mac 10577f20 Villager::FarmerPlantsCrop(void)
bool32_t __fastcall FarmerPlantsCrop__8VillagerFv(struct Villager* this) asm("?FarmerPlantsCrop@Villager@@QAEIXZ");
// win1.41 00759f30 mac 105777f0 Villager::CheckSatisfyFoodDesire(void)
bool32_t __fastcall CheckSatisfyFoodDesire__8VillagerFv(struct Villager* this) asm("?CheckSatisfyFoodDesire@Villager@@QAEIXZ");
// win1.41 0075a250 mac 1009d580 Villager::EnterFarming(unsigned char, unsigned char)
bool32_t __fastcall EnterFarming__8VillagerFUcUc(struct Villager* this, const void* edx, unsigned char param_1, unsigned char param_2) asm("?EnterFarming@Villager@@QAEIEE@Z");
// win1.41 0075a2a0 mac 1009b430 Villager::ExitFarming(unsigned char)
bool32_t __fastcall ExitFarming__8VillagerFUc(struct Villager* this, const void* edx, unsigned char param_1) asm("?ExitFarming@Villager@@QAEIE@Z");
// win1.41 0075a3d0 mac 1057a120 Villager::DecideHowToPutOutFire(FireEffect *)
bool32_t __fastcall DecideHowToPutOutFire__8VillagerFP10FireEffect(struct Villager* this, const void* edx, struct FireEffect* param_1) asm("?DecideHowToPutOutFire@Villager@@QAEIPAVFireEffect@@@Z");
// win1.41 0075a770 mac 10579a00 Villager::SetupMoveAroundFire(MapCoords const &, VILLAGER_STATES)
bool32_t __fastcall SetupMoveAroundFire__8VillagerFRC9MapCoords15VILLAGER_STATES(struct Villager* this, const void* edx, const struct MapCoords* param_1, enum VILLAGER_STATES param_2) asm("?SetupMoveAroundFire@Villager@@QAEIABUMapCoords@@W4VILLAGER_STATES@@@Z");
// win1.41 0075a7e0 mac 105796c0 Villager::MoveAroundFire(void)
uint32_t __fastcall MoveAroundFire__8VillagerFv(struct Villager* this) asm("?MoveAroundFire@Villager@@QAEIXZ");
// win1.41 0075aa90 mac 10579520 Villager::GetFireFightingPos(FireEffect *, MapCoords *)
bool32_t __fastcall GetFireFightingPos__8VillagerFP10FireEffectP9MapCoords(struct Villager* this, const void* edx, struct FireEffect* param_1, struct MapCoords* param_2) asm("?GetFireFightingPos@Villager@@QAEIPAVFireEffect@@PAUMapCoords@@@Z");
// win1.41 0075ac50 mac 10579150 Villager::PutOutFireByBeating(void)
bool32_t __fastcall PutOutFireByBeating__8VillagerFv(struct Villager* this) asm("?PutOutFireByBeating@Villager@@QAEIXZ");
// win1.41 0075ad90 mac 105790d0 Villager::IsValidFire(FireEffect *)
bool32_t __fastcall IsValidFire__8VillagerFP10FireEffect(struct Villager* this, const void* edx, struct FireEffect* param_1) asm("?IsValidFire@Villager@@QAEIPAVFireEffect@@@Z");
// win1.41 0075adc0 mac 10578f40 Villager::EnterPutOutFire(unsigned char, unsigned char)
bool32_t __fastcall EnterPutOutFire__8VillagerFUcUc(struct Villager* this, const void* edx, unsigned char param_1, unsigned char param_2) asm("?EnterPutOutFire@Villager@@QAEIEE@Z");
// win1.41 0075ae80 mac 10578da0 Villager::ExitPutOutFire(unsigned char)
bool32_t __fastcall ExitPutOutFire__8VillagerFUc(struct Villager* this, const void* edx, unsigned char param_1) asm("?ExitPutOutFire@Villager@@QAEIE@Z");
// win1.41 0075af30 mac 10578cc0 Villager::EnterOnFire(unsigned char, unsigned char)
bool32_t __fastcall EnterOnFire__8VillagerFUcUc(struct Villager* this, const void* edx, unsigned char param_1, unsigned char param_2) asm("?EnterOnFire@Villager@@QAEIEE@Z");
// win1.41 0075af80 mac 10578bd0 Villager::ExitOnFire(unsigned char)
bool32_t __fastcall ExitOnFire__8VillagerFUc(struct Villager* this, const void* edx, unsigned char param_1) asm("?ExitOnFire@Villager@@QAEIE@Z");
// win1.41 0075afe0 mac 10578b60 Villager::PutOutFireWithWater(void)
bool32_t __fastcall PutOutFireWithWater__8VillagerFv(struct Villager* this) asm("?PutOutFireWithWater@Villager@@QAEIXZ");
// win1.41 0075b000 mac 10578af0 Villager::GetWaterToPutOutFire(void)
bool32_t __fastcall GetWaterToPutOutFire__8VillagerFv(struct Villager* this) asm("?GetWaterToPutOutFire@Villager@@QAEIXZ");
// win1.41 0075b020 mac 10578900 Villager::StopFireFighting(void)
bool32_t __fastcall StopFireFighting__8VillagerFv(struct Villager* this) asm("?StopFireFighting@Villager@@QAEIXZ");
// win1.41 0075b170 mac 105787c0 Villager::SetupOnFire(FireEffect *)
bool32_t __fastcall SetupOnFire__8VillagerFP10FireEffect(struct Villager* this, const void* edx, struct FireEffect* param_1) asm("?SetupOnFire@Villager@@QAEIPAVFireEffect@@@Z");
// win1.41 0075b1e0 mac 105785a0 Villager::OnFire(void)
bool32_t __fastcall OnFire__8VillagerFv(struct Villager* this) asm("?OnFire@Villager@@QAEIXZ");
// win1.41 0075b3d0 mac 105784e0 Villager::FinishBeingOnFire(void)
bool32_t __fastcall FinishBeingOnFire__8VillagerFv(struct Villager* this) asm("?FinishBeingOnFire@Villager@@QAEIXZ");
// win1.41 0075b4c0 mac 1057a800 Villager::FishermanLookForWater(void)
bool32_t __fastcall FishermanLookForWater__8VillagerFv(struct Villager* this) asm("?FishermanLookForWater@Villager@@QAEIXZ");
// win1.41 0075b510 mac 1057a710 Villager::VillagerBecomesFisherman(void)
bool32_t __fastcall VillagerBecomesFisherman__8VillagerFv(struct Villager* this) asm("?VillagerBecomesFisherman@Villager@@QAEIXZ");
// win1.41 0075b560 mac 1057a5b0 Villager::VillagerBecomesFisherman(FishFarm *)
bool32_t __fastcall VillagerBecomesFisherman__8VillagerFP8FishFarm(struct Villager* this, const void* edx, struct FishFarm* param_1) asm("?VillagerBecomesFisherman@Villager@@QAEIPAVFishFarm@@@Z");
// win1.41 0075b5d0 mac 1057a410 Villager::FishermanArrivesAtFishing(void)
bool32_t __fastcall FishermanArrivesAtFishing__8VillagerFv(struct Villager* this) asm("?FishermanArrivesAtFishing@Villager@@QAEIXZ");
// win1.41 0075b670 mac 1057a390 Villager::IsAtValidFishingPos(void)
bool32_t __fastcall IsAtValidFishingPos__8VillagerFv(struct Villager* this) asm("?IsAtValidFishingPos@Villager@@QAEIXZ");
// win1.41 0075b6a0 mac 1001b120 Villager::Fishing(void)
bool32_t __fastcall Fishing__8VillagerFv(struct Villager* this) asm("?Fishing@Villager@@QAEIXZ");
// win1.41 0075b820 mac 1057a240 Villager::EnterFishing(unsigned char, unsigned char)
bool32_t __fastcall EnterFishing__8VillagerFUcUc(struct Villager* this, const void* edx, unsigned char param_1, unsigned char param_2) asm("?EnterFishing@Villager@@QAEIEE@Z");
// win1.41 0075b880 mac 1009acc0 Villager::ExitFishing(unsigned char)
bool32_t __fastcall ExitFishing__8VillagerFUc(struct Villager* this, const void* edx, unsigned char param_1) asm("?ExitFishing@Villager@@QAEIE@Z");
// win1.41 0075b940 mac 1057b620 Villager::ShowPoisoned(void)
bool32_t __fastcall ShowPoisoned__8VillagerFv(struct Villager* this) asm("?ShowPoisoned@Villager@@QAE_NXZ");
// win1.41 0075b990 mac 1000a640 Villager::ChangeStateToFindFoodToEat(void)
bool32_t __fastcall ChangeStateToFindFoodToEat__8VillagerFv(struct Villager* this) asm("?ChangeStateToFindFoodToEat@Villager@@QAE_NXZ");
// win1.41 0075baf0 mac 1057b4f0 Villager::CheckHungryAtHome(void)
bool32_t __fastcall CheckHungryAtHome__8VillagerFv(struct Villager* this) asm("?CheckHungryAtHome@Villager@@QAEIXZ");
// win1.41 0075bb00 mac 1057b400 Villager::GetDesireToPickupFood(void)
bool32_t __fastcall GetDesireToPickupFood__8VillagerFv(struct Villager* this) asm("?GetDesireToPickupFood@Villager@@QAEIXZ");
// win1.41 0075bb50 mac 10087950 Villager::GetDesireForFood(void)
float __fastcall GetDesireForFood__8VillagerFv(struct Villager* this) asm("?GetDesireForFood@Villager@@QAEMXZ");
// win1.41 0075bba0 mac 100214f0 Villager::GetDesireForLife(void)
void __fastcall GetDesireForLife__8VillagerFv(struct Villager* this) asm("?GetDesireForLife@Villager@@QAEXXZ");
// win1.41 0075bbc0 mac 100285a0 Villager::GetLifeDesireFromLife(float)
float __fastcall GetLifeDesireFromLife__8VillagerFf(struct Villager* this, const void* edx, float param_1) asm("?GetLifeDesireFromLife@Villager@@QAEMM@Z");
// win1.41 0075bc00 mac 100035f0 Villager::GetAmountOfFoodRequiredForMeal(void)
uint32_t __fastcall GetAmountOfFoodRequiredForMeal__8VillagerFv(struct Villager* this) asm("?GetAmountOfFoodRequiredForMeal@Villager@@QAEIXZ");
// win1.41 0075bc20 mac 1009ae40 Villager::GetAmountOfFoodToEat(void)
uint32_t __fastcall GetAmountOfFoodToEat__8VillagerFv(struct Villager* this) asm("?GetAmountOfFoodToEat@Villager@@QAEIXZ");
// win1.41 0075bcc0 mac 100577f0 Villager::CheckHungry(void)
bool32_t __fastcall CheckHungry__8VillagerFv(struct Villager* this) asm("?CheckHungry@Villager@@QAE_NXZ");
// win1.41 0075bf00 mac 10096d50 Villager::CheckSatisfyOwnFoodDesire(void)
bool32_t __fastcall CheckSatisfyOwnFoodDesire__8VillagerFv(struct Villager* this) asm("?CheckSatisfyOwnFoodDesire@Villager@@QAEIXZ");
// win1.41 0075bf20 mac 1057ab30 Villager::EatFoodHeld(void)
bool32_t __fastcall EatFoodHeld__8VillagerFv(struct Villager* this) asm("?EatFoodHeld@Villager@@QAEIXZ");
// win1.41 0075c000 mac 1057aaa0 Villager::EatFood(void)
bool32_t __fastcall EatFood__8VillagerFv(struct Villager* this) asm("?EatFood@Villager@@QAEIXZ");
// win1.41 0075c040 mac 1057a9c0 Villager::GetFoodFromHome(unsigned long)
bool32_t __fastcall GetFoodFromHome__8VillagerFUl(struct Villager* this, const void* edx, unsigned long param_1) asm("?GetFoodFromHome@Villager@@QAEIK@Z");
// win1.41 0075c090 mac 1057a900 Villager::EatFoodAtHome(void)
bool32_t __fastcall EatFoodAtHome__8VillagerFv(struct Villager* this) asm("?EatFoodAtHome@Villager@@QAEIXZ");
// win1.41 0075c0f0 mac 1057a8c0 Villager::HomelessEatDinner(void)
bool32_t __fastcall HomelessEatDinner__8VillagerFv(struct Villager* this) asm("?HomelessEatDinner@Villager@@QAEIXZ");
// win1.41 0075d130 mac 10584d00 Villager::AssignFootballSubState(void)
void __fastcall AssignFootballSubState__8VillagerFv(struct Villager* this) asm("?AssignFootballSubState@Villager@@QAEXXZ");
// win1.41 0075d170 mac 10583980 Villager::AssignFootballAttackerSubState(void)
void __fastcall AssignFootballAttackerSubState__8VillagerFv(struct Villager* this) asm("?AssignFootballAttackerSubState@Villager@@QAEXXZ");
// win1.41 0075d230 mac 10582f50 Villager::FootballAttacker(void)
bool32_t __fastcall FootballAttacker__8VillagerFv(struct Villager* this) asm("?FootballAttacker@Villager@@QAEIXZ");
// win1.41 0075d2d0 mac 10582d90 Villager::FootballAttackerShootProcess(Football *)
void __fastcall FootballAttackerShootProcess__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1) asm("?FootballAttackerShootProcess@Villager@@QAEXPAVFootball@@@Z");
// win1.41 0075d3a0 mac 10582b70 Villager::FootballAttackerPassProcess(Football *)
void __fastcall FootballAttackerPassProcess__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1) asm("?FootballAttackerPassProcess@Villager@@QAEXPAVFootball@@@Z");
// win1.41 0075d500 mac 10582920 Villager::FootballAttackerLobNearGoalProcess(Football *)
void __fastcall FootballAttackerLobNearGoalProcess__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1) asm("?FootballAttackerLobNearGoalProcess@Villager@@QAEXPAVFootball@@@Z");
// win1.41 0075d670 mac 10582630 Villager::FootballAttackerDribbleProcess(Football *)
void __fastcall FootballAttackerDribbleProcess__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1) asm("?FootballAttackerDribbleProcess@Villager@@QAEXPAVFootball@@@Z");
// win1.41 0075d850 mac 105823a0 Villager::FootballAttackerMoveToBePassedProcess(Football *)
void __fastcall FootballAttackerMoveToBePassedProcess__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1) asm("?FootballAttackerMoveToBePassedProcess@Villager@@QAEXPAVFootball@@@Z");
// win1.41 0075da90 mac 105821f0 Villager::FootballAttackerGoToBallProcess(Football *)
void __fastcall FootballAttackerGoToBallProcess__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1) asm("?FootballAttackerGoToBallProcess@Villager@@QAEXPAVFootball@@@Z");
// win1.41 0075db80 mac 105820e0 Villager::FootballAttackerGoHomeProcess(Football *)
void __fastcall FootballAttackerGoHomeProcess__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1) asm("?FootballAttackerGoHomeProcess@Villager@@QAEXPAVFootball@@@Z");
// win1.41 0075dbd0 mac 10582010 Villager::FootballAttackerIdleProcess(Football *)
void __fastcall FootballAttackerIdleProcess__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1) asm("?FootballAttackerIdleProcess@Villager@@QAEXPAVFootball@@@Z");
// win1.41 0075dc20 mac 10581dd0 Villager::FootballAttackerShootPriority(Football *)
float __fastcall FootballAttackerShootPriority__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1) asm("?FootballAttackerShootPriority@Villager@@QAEMPAVFootball@@@Z");
// win1.41 0075dd80 mac 10581d30 Villager::FootballAttackerPassPriority(Football *)
float __fastcall FootballAttackerPassPriority__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1) asm("?FootballAttackerPassPriority@Villager@@QAEMPAVFootball@@@Z");
// win1.41 0075ddc0 mac 10581cd0 Villager::FootballAttackerLobNearGoalPriority(Football *)
float __fastcall FootballAttackerLobNearGoalPriority__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1) asm("?FootballAttackerLobNearGoalPriority@Villager@@QAEMPAVFootball@@@Z");
// win1.41 0075ddd0 mac 10581b90 Villager::FootballAttackerDribblePriority(Football *)
float __fastcall FootballAttackerDribblePriority__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1) asm("?FootballAttackerDribblePriority@Villager@@QAEMPAVFootball@@@Z");
// win1.41 0075de70 mac 10581aa0 Villager::FootballAttackerMoveToBePassedPriority(Football *)
float __fastcall FootballAttackerMoveToBePassedPriority__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1) asm("?FootballAttackerMoveToBePassedPriority@Villager@@QAEMPAVFootball@@@Z");
// win1.41 0075def0 mac 10581a40 Villager::FootballAttackerGoToBallPriority(Football *)
float __fastcall FootballAttackerGoToBallPriority__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1) asm("?FootballAttackerGoToBallPriority@Villager@@QAEMPAVFootball@@@Z");
// win1.41 0075df00 mac 105818f0 Villager::FootballAttackerGoHomePriority(Football *)
float __fastcall FootballAttackerGoHomePriority__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1) asm("?FootballAttackerGoHomePriority@Villager@@QAEMPAVFootball@@@Z");
// win1.41 0075dfb0 mac 10581740 Villager::FootballAttackerIdlePriority(Football *)
float __fastcall FootballAttackerIdlePriority__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1) asm("?FootballAttackerIdlePriority@Villager@@QAEMPAVFootball@@@Z");
// win1.41 0075e0b0 mac 105803c0 Villager::AssignFootballDefenderSubState(void)
void __fastcall AssignFootballDefenderSubState__8VillagerFv(struct Villager* this) asm("?AssignFootballDefenderSubState@Villager@@QAEXXZ");
// win1.41 0075e170 mac 1057f990 Villager::FootballDefender(void)
bool32_t __fastcall FootballDefender__8VillagerFv(struct Villager* this) asm("?FootballDefender@Villager@@QAEIXZ");
// win1.41 0075e210 mac 1057f760 Villager::FootballDefenderSaveProcess(Football *)
void __fastcall FootballDefenderSaveProcess__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1) asm("?FootballDefenderSaveProcess@Villager@@QAEXPAVFootball@@@Z");
// win1.41 0075e370 mac 1057f6f0 Villager::FootballDefenderClearProcess(Football *)
void __fastcall FootballDefenderClearProcess__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1) asm("?FootballDefenderClearProcess@Villager@@QAEXPAVFootball@@@Z");
// win1.41 0075e380 mac 1057f400 Villager::FootballDefenderDribbleProcess(Football *)
void __fastcall FootballDefenderDribbleProcess__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1) asm("?FootballDefenderDribbleProcess@Villager@@QAEXPAVFootball@@@Z");
// win1.41 0075e560 mac 1057f340 Villager::FootballDefenderMarkProcess(Football *)
void __fastcall FootballDefenderMarkProcess__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1) asm("?FootballDefenderMarkProcess@Villager@@QAEXPAVFootball@@@Z");
// win1.41 0075e5a0 mac 1057f190 Villager::FootballDefenderGoToBallProcess(Football *)
void __fastcall FootballDefenderGoToBallProcess__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1) asm("?FootballDefenderGoToBallProcess@Villager@@QAEXPAVFootball@@@Z");
// win1.41 0075e690 mac 1057f080 Villager::FootballDefenderGoHomeProcess(Football *)
void __fastcall FootballDefenderGoHomeProcess__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1) asm("?FootballDefenderGoHomeProcess@Villager@@QAEXPAVFootball@@@Z");
// win1.41 0075e6e0 mac 1057efb0 Villager::FootballDefenderIdleProcess(Football *)
void __fastcall FootballDefenderIdleProcess__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1) asm("?FootballDefenderIdleProcess@Villager@@QAEXPAVFootball@@@Z");
// win1.41 0075e730 mac 1057ed90 Villager::FootballDefenderPassProcess(Football *)
void __fastcall FootballDefenderPassProcess__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1) asm("?FootballDefenderPassProcess@Villager@@QAEXPAVFootball@@@Z");
// win1.41 0075e890 mac 1057ed10 Villager::FootballDefenderSavePriority(Football *)
float __fastcall FootballDefenderSavePriority__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1) asm("?FootballDefenderSavePriority@Villager@@QAEMPAVFootball@@@Z");
// win1.41 0075e8b0 mac 1057ec90 Villager::FootballDefenderClearPriority(Football *)
float __fastcall FootballDefenderClearPriority__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1) asm("?FootballDefenderClearPriority@Villager@@QAEMPAVFootball@@@Z");
// win1.41 0075e8d0 mac 1057eb50 Villager::FootballDefenderDribblePriority(Football *)
float __fastcall FootballDefenderDribblePriority__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1) asm("?FootballDefenderDribblePriority@Villager@@QAEMPAVFootball@@@Z");
// win1.41 0075e970 mac 1057eae0 Villager::FootballDefenderMarkPriority(Football *)
float __fastcall FootballDefenderMarkPriority__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1) asm("?FootballDefenderMarkPriority@Villager@@QAEMPAVFootball@@@Z");
// win1.41 0075e990 mac 1057ea80 Villager::FootballDefenderGoToBallPriority(Football *)
float __fastcall FootballDefenderGoToBallPriority__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1) asm("?FootballDefenderGoToBallPriority@Villager@@QAEMPAVFootball@@@Z");
// win1.41 0075e9a0 mac 1057ea10 Villager::FootballDefenderGoHomePriority(Football *)
float __fastcall FootballDefenderGoHomePriority__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1) asm("?FootballDefenderGoHomePriority@Villager@@QAEMPAVFootball@@@Z");
// win1.41 0075e9b0 mac 1057e990 Villager::FootballDefenderIdlePriority(Football *)
float __fastcall FootballDefenderIdlePriority__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1) asm("?FootballDefenderIdlePriority@Villager@@QAEMPAVFootball@@@Z");
// win1.41 0075e9d0 mac 1057e8f0 Villager::FootballDefenderPassPriority(Football *)
float __fastcall FootballDefenderPassPriority__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1) asm("?FootballDefenderPassPriority@Villager@@QAEMPAVFootball@@@Z");
// win1.41 0075ea10 mac 1057dfd0 Villager::FootballGoalie(void)
bool32_t __fastcall FootballGoalie__8VillagerFv(struct Villager* this) asm("?FootballGoalie@Villager@@QAEIXZ");
// win1.41 0075eab0 mac 1057cde0 Villager::AssignFootballGoalieSubState(void)
void __fastcall AssignFootballGoalieSubState__8VillagerFv(struct Villager* this) asm("?AssignFootballGoalieSubState@Villager@@QAEXXZ");
// win1.41 0075eb70 mac 1057cc00 Villager::FootballGoalieSaveProcess(Football *)
void __fastcall FootballGoalieSaveProcess__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1) asm("?FootballGoalieSaveProcess@Villager@@QAEXPAVFootball@@@Z");
// win1.41 0075ec50 mac 1057cb90 Villager::FootballGoalieClearProcess(Football *)
void __fastcall FootballGoalieClearProcess__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1) asm("?FootballGoalieClearProcess@Villager@@QAEXPAVFootball@@@Z");
// win1.41 0075ec60 mac 1057ca90 Villager::FootballGoalieLookProcess(Football *)
void __fastcall FootballGoalieLookProcess__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1) asm("?FootballGoalieLookProcess@Villager@@QAEXPAVFootball@@@Z");
// win1.41 0075ecd0 mac 1057c8e0 Villager::FootballGoalieGoToBallProcess(Football *)
void __fastcall FootballGoalieGoToBallProcess__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1) asm("?FootballGoalieGoToBallProcess@Villager@@QAEXPAVFootball@@@Z");
// win1.41 0075edb0 mac 1057c7e0 Villager::FootballGoalieGoHomeProcess(Football *)
void __fastcall FootballGoalieGoHomeProcess__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1) asm("?FootballGoalieGoHomeProcess@Villager@@QAEXPAVFootball@@@Z");
// win1.41 0075ee00 mac 1057c770 Villager::FootballGoalieIdleProcess(Football *)
void __fastcall FootballGoalieIdleProcess__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1) asm("?FootballGoalieIdleProcess@Villager@@QAEXPAVFootball@@@Z");
// win1.41 0075ee10 mac 1057c4c0 Villager::FootballGoaliePassProcess(Football *)
void __fastcall FootballGoaliePassProcess__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1) asm("?FootballGoaliePassProcess@Villager@@QAEXPAVFootball@@@Z");
// win1.41 0075efc0 mac 1057c450 Villager::FootballGoalieSavePriority(Football *)
float __fastcall FootballGoalieSavePriority__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1) asm("?FootballGoalieSavePriority@Villager@@QAEMPAVFootball@@@Z");
// win1.41 0075efe0 mac 1057c3e0 Villager::FootballGoalieClearPriority(Football *)
float __fastcall FootballGoalieClearPriority__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1) asm("?FootballGoalieClearPriority@Villager@@QAEMPAVFootball@@@Z");
// win1.41 0075f000 mac 1057c370 Villager::FootballGoalieLookPriority(Football *)
float __fastcall FootballGoalieLookPriority__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1) asm("?FootballGoalieLookPriority@Villager@@QAEMPAVFootball@@@Z");
// win1.41 0075f020 mac 1057c310 Villager::FootballGoalieGoToBallPriority(Football *)
float __fastcall FootballGoalieGoToBallPriority__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1) asm("?FootballGoalieGoToBallPriority@Villager@@QAEMPAVFootball@@@Z");
// win1.41 0075f030 mac 1057c2a0 Villager::FootballGoalieGoHomePriority(Football *)
float __fastcall FootballGoalieGoHomePriority__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1) asm("?FootballGoalieGoHomePriority@Villager@@QAEMPAVFootball@@@Z");
// win1.41 0075f040 mac 1057c230 Villager::FootballGoalieIdlePriority(Football *)
float __fastcall FootballGoalieIdlePriority__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1) asm("?FootballGoalieIdlePriority@Villager@@QAEMPAVFootball@@@Z");
// win1.41 0075f060 mac 1057c190 Villager::FootballGoaliePassPriority(Football *)
float __fastcall FootballGoaliePassPriority__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1) asm("?FootballGoaliePassPriority@Villager@@QAEMPAVFootball@@@Z");
// win1.41 0075f070 mac 1057c0c0 Villager::FootballerIsTouchingBallPrecondition(Football *)
bool __fastcall FootballerIsTouchingBallPrecondition__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1) asm("?FootballerIsTouchingBallPrecondition@Villager@@QAE_NPAVFootball@@@Z");
// win1.41 0075f0a0 mac 1057bff0 Villager::FootballerIsNotTouchingBallPrecondition(Football *)
bool __fastcall FootballerIsNotTouchingBallPrecondition__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1) asm("?FootballerIsNotTouchingBallPrecondition@Villager@@QAE_NPAVFootball@@@Z");
// win1.41 0075f0d0 mac 1057bf50 Villager::FootballerIsNearestBallPrecondition(Football *)
bool __fastcall FootballerIsNearestBallPrecondition__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1) asm("?FootballerIsNearestBallPrecondition@Villager@@QAE_NPAVFootball@@@Z");
// win1.41 0075f100 mac 1057bea0 Villager::FootballerIsNotNearestBallPrecondition(Football *)
bool __fastcall FootballerIsNotNearestBallPrecondition__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1) asm("?FootballerIsNotNearestBallPrecondition@Villager@@QAE_NPAVFootball@@@Z");
// win1.41 0075f130 mac 1057bda0 Villager::FootballerIsAtHomePrecondition(Football *)
bool32_t __fastcall FootballerIsAtHomePrecondition__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1) asm("?FootballerIsAtHomePrecondition@Villager@@QAEIPAVFootball@@@Z");
// win1.41 0075f190 mac 1057bc90 Villager::FootballerIsNotAtHomePrecondition(Football *)
bool32_t __fastcall FootballerIsNotAtHomePrecondition__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1) asm("?FootballerIsNotAtHomePrecondition@Villager@@QAEIPAVFootball@@@Z");
// win1.41 0075f1f0 mac 1057bbe0 Villager::FootballerIsQuiteNearBallPrecondition(Football *)
bool32_t __fastcall FootballerIsQuiteNearBallPrecondition__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1) asm("?FootballerIsQuiteNearBallPrecondition@Villager@@QAEIPAVFootball@@@Z");
// win1.41 0075f230 mac 1057bb30 Villager::FootballerIsNotQuiteNearBallPrecondition(Football *)
bool32_t __fastcall FootballerIsNotQuiteNearBallPrecondition__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1) asm("?FootballerIsNotQuiteNearBallPrecondition@Villager@@QAEIPAVFootball@@@Z");
// win1.41 0075f270 mac 1057ba80 Villager::StartMoveToPickUpBallForDeadBall(void)
bool32_t __fastcall StartMoveToPickUpBallForDeadBall__8VillagerFv(struct Villager* this) asm("?StartMoveToPickUpBallForDeadBall@Villager@@QAEIXZ");
// win1.41 0075f2c0 mac 1057b9e0 Villager::ArrivedAtPickUpBallForDeadBall(void)
bool32_t __fastcall ArrivedAtPickUpBallForDeadBall__8VillagerFv(struct Villager* this) asm("?ArrivedAtPickUpBallForDeadBall@Villager@@QAEIXZ");
// win1.41 0075f2f0 mac 1057b970 Villager::ArrivedAtPutDownBallForDeadBallStart(void)
bool32_t __fastcall ArrivedAtPutDownBallForDeadBallStart__8VillagerFv(struct Villager* this) asm("?ArrivedAtPutDownBallForDeadBallStart@Villager@@QAEIXZ");
// win1.41 0075f300 mac 1057b840 Villager::ArrivedAtPutDownBallForDeadBallEnd(void)
bool32_t __fastcall ArrivedAtPutDownBallForDeadBallEnd__8VillagerFv(struct Villager* this) asm("?ArrivedAtPutDownBallForDeadBallEnd@Villager@@QAEIXZ");
// win1.41 0075f380 mac 1057b700 Villager::FootballMoveToBall(void)
bool32_t __fastcall FootballMoveToBall__8VillagerFv(struct Villager* this) asm("?FootballMoveToBall@Villager@@QAEIXZ");
// win1.41 0075f4a0 mac 10586060 Villager::CheckSatisfyWoodDesire(void)
bool32_t __fastcall CheckSatisfyWoodDesire__8VillagerFv(struct Villager* this) asm("?CheckSatisfyWoodDesire@Villager@@QAEIXZ");
// win1.41 0075f510 mac 10585d60 Villager::DecideHowToGetWood(int, BigForest * *, Forest * *)
uint32_t __fastcall DecideHowToGetWood__8VillagerFiPP9BigForestPP6Forest(struct Villager* this, const void* edx, int param_1, struct BigForest** param_2, struct Forest** param_3) asm("?DecideHowToGetWood@Villager@@QAEIHPAPAVBigForest@@PAPAVForest@@@Z");
// win1.41 0075f710 mac 10585d00 Villager::ForesterGotoForest(void)
bool32_t __fastcall ForesterGotoForest__8VillagerFv(struct Villager* this) asm("?ForesterGotoForest@Villager@@QAEIXZ");
// win1.41 0075f720 mac 10585be0 Villager::VillagerGotoForest(Forest *, VILLAGER_STATES)
bool32_t __fastcall VillagerGotoForest__8VillagerFP6Forest15VILLAGER_STATES(struct Villager* this, const void* edx, struct Forest* param_1, enum VILLAGER_STATES param_2) asm("?VillagerGotoForest@Villager@@QAEIPAVForest@@W4VILLAGER_STATES@@@Z");
// win1.41 0075f7d0 mac 105859d0 Villager::ForesterMoveToForest(void)
bool32_t __fastcall ForesterMoveToForest__8VillagerFv(struct Villager* this) asm("?ForesterMoveToForest@Villager@@QAEIXZ");
// win1.41 0075f930 mac 10585830 Villager::ForesterArrivesAtForest(void)
bool32_t __fastcall ForesterArrivesAtForest__8VillagerFv(struct Villager* this) asm("?ForesterArrivesAtForest@Villager@@QAEIXZ");
// win1.41 0075f9e0 mac 10585660 Villager::ArrivesAtBigForest(void)
bool32_t __fastcall ArrivesAtBigForest__8VillagerFv(struct Villager* this) asm("?ArrivesAtBigForest@Villager@@QAEIXZ");
// win1.41 0075fab0 mac 10585610 Villager::ArrivesAtBigForestForBuilding(void)
bool32_t __fastcall ArrivesAtBigForestForBuilding__8VillagerFv(struct Villager* this) asm("?ArrivesAtBigForestForBuilding@Villager@@QAEIXZ");
// win1.41 0075fac0 mac 105854f0 Villager::ForesterChopsTree(void)
bool32_t __fastcall ForesterChopsTree__8VillagerFv(struct Villager* this) asm("?ForesterChopsTree@Villager@@QAEIXZ");
// win1.41 0075fb40 mac 10585480 Villager::ForesterChopsTreeForBuilding(void)
bool32_t __fastcall ForesterChopsTreeForBuilding__8VillagerFv(struct Villager* this) asm("?ForesterChopsTreeForBuilding@Villager@@QAEIXZ");
// win1.41 0075fb60 mac 105853f0 Villager::ForesterFinishedForestering(void)
bool32_t __fastcall ForesterFinishedForestering__8VillagerFv(struct Villager* this) asm("?ForesterFinishedForestering@Villager@@QAEIXZ");
// win1.41 0075fb90 mac 10585390 Villager::TakeWoodFromTreeForBuilding(void)
bool32_t __fastcall TakeWoodFromTreeForBuilding__8VillagerFv(struct Villager* this) asm("?TakeWoodFromTreeForBuilding@Villager@@QAEIXZ");
// win1.41 0075fba0 mac 10585340 Villager::TakeWoodFromPotForBuilding(void)
bool32_t __fastcall TakeWoodFromPotForBuilding__8VillagerFv(struct Villager* this) asm("?TakeWoodFromPotForBuilding@Villager@@QAEIXZ");
// win1.41 0075fbb0 mac 10585300 Villager::TakeWoodFromPot(void)
bool32_t __fastcall TakeWoodFromPot__8VillagerFv(struct Villager* this) asm("?TakeWoodFromPot@Villager@@QAEIXZ");
// win1.41 0075fbc0 mac 10585210 Villager::TakeWoodFromTree(void)
bool32_t __fastcall TakeWoodFromTree__8VillagerFv(struct Villager* this) asm("?TakeWoodFromTree@Villager@@QAEIXZ");
// win1.41 0075fc30 mac 10585080 Villager::GotWoodDecideWhatToDo(void)
bool32_t __fastcall GotWoodDecideWhatToDo__8VillagerFv(struct Villager* this) asm("?GotWoodDecideWhatToDo@Villager@@QAEIXZ");
// win1.41 0075fd00 mac 10584e30 Villager::FindTreeNearVillager(Tree * *)
bool32_t __fastcall FindTreeNearVillager__8VillagerFPP4Tree(struct Villager* this, const void* edx, struct Tree** param_1) asm("?FindTreeNearVillager@Villager@@QAEIPAPAVTree@@@Z");
// win1.41 0075fe20 mac 10584dc0 Villager::ExitForesting(unsigned char)
bool32_t __fastcall ExitForesting__8VillagerFUc(struct Villager* this, const void* edx, unsigned char param_1) asm("?ExitForesting@Villager@@QAEIE@Z");
// win1.41 0075fea0 mac 10097120 Villager::HomeDecideWhatToDo(void)
bool32_t __fastcall HomeDecideWhatToDo__8VillagerFv(struct Villager* this) asm("?HomeDecideWhatToDo@Villager@@QAEIXZ");
// win1.41 0075ff80 mac 1000a8c0 Villager::CheckNeededForSomething(void)
bool32_t __fastcall CheckNeededForSomething__8VillagerFv(struct Villager* this) asm("?CheckNeededForSomething@Villager@@QAE_NXZ");
// win1.41 0075ffb0 mac 105894c0 Villager::HomeNothingToDo(void)
bool32_t __fastcall HomeNothingToDo__8VillagerFv(struct Villager* this) asm("?HomeNothingToDo@Villager@@QAEIXZ");
// win1.41 00760000 mac 10589480 Villager::NothingToDo(void)
bool32_t __fastcall NothingToDo__8VillagerFv(struct Villager* this) asm("?NothingToDo@Villager@@QAEIXZ");
// win1.41 00760010 mac 10096ee0 Villager::CheckNeededForSpecial(void)
bool32_t __fastcall CheckNeededForSpecial__8VillagerFv(struct Villager* this) asm("?CheckNeededForSpecial@Villager@@QAEIXZ");
// win1.41 00760050 mac 10095a70 Villager::CheckSatisfyOwnDesire(float)
bool32_t __fastcall CheckSatisfyOwnDesire__8VillagerFf(struct Villager* this, const void* edx, float param_1) asm("?CheckSatisfyOwnDesire@Villager@@QAEIM@Z");
// win1.41 00760110 mac 1000c610 Villager::CheckNeedsAtHome(void)
bool32_t __fastcall CheckNeedsAtHome__8VillagerFv(struct Villager* this) asm("?CheckNeedsAtHome@Villager@@QAEIXZ");
// win1.41 00760240 mac 105892c0 Villager::CheckIllAtHome(void)
bool32_t __fastcall CheckIllAtHome__8VillagerFv(struct Villager* this) asm("?CheckIllAtHome@Villager@@QAEIXZ");
// win1.41 00760250 mac 10589160 Villager::GoHomeDropResource(void)
bool32_t __fastcall GoHomeDropResource__8VillagerFv(struct Villager* this) asm("?GoHomeDropResource@Villager@@QAEIXZ");
// win1.41 00760270 mac 1009edb0 Villager::GoHome(void)
bool32_t __fastcall GoHome__8VillagerFv(struct Villager* this) asm("?GoHome@Villager@@QAE_NXZ");
// win1.41 00760280 mac 1009a4b0 Villager::DoGoingHome(VILLAGER_STATES, VILLAGER_STATES)
bool32_t __fastcall DoGoingHome__8VillagerF15VILLAGER_STATES15VILLAGER_STATES(struct Villager* this, const void* edx, enum VILLAGER_STATES state_1, enum VILLAGER_STATES state_2) asm("?DoGoingHome@Villager@@QAE_NW4VILLAGER_STATES@@0@Z");
// win1.41 007604f0 mac 10588e30 Villager::GetTentPos(MapCoords&)
struct Town* __fastcall GetTentPos__8VillagerFR9MapCoords(struct Villager* this, const void* edx, struct MapCoords* coords) asm("?GetTentPos@Villager@@QAEPAVTown@@AAUMapCoords@@@Z");
// win1.41 007606e0 mac 10588820 Villager::Landed(void)
bool32_t __fastcall Landed__8VillagerFv(struct Villager* this) asm("?Landed@Villager@@QAEIXZ");
// win1.41 00760930 mac 1000c320 Villager::ArrivesHome(void)
uint32_t __fastcall ArrivesHome__8VillagerFv(struct Villager* this) asm("?ArrivesHome@Villager@@QAEIXZ");
// win1.41 00760b10 mac 10004a80 Villager::AtHome(void)
bool32_t __fastcall AtHome__8VillagerFv(struct Villager* this) asm("?AtHome@Villager@@QAEIXZ");
// win1.41 00760b20 mac 10588720 Villager::SitsDownToDinner(void)
bool32_t __fastcall SitsDownToDinner__8VillagerFv(struct Villager* this) asm("?SitsDownToDinner@Villager@@QAEIXZ");
// win1.41 00760b30 mac 10003aa0 Villager::GotoBedAtHome(void)
bool32_t __fastcall GotoBedAtHome__8VillagerFv(struct Villager* this) asm("?GotoBedAtHome@Villager@@QAEIXZ");
// win1.41 00760b60 mac 1009af60 Villager::CheckWhenGoingToBed(void)
bool32_t __fastcall CheckWhenGoingToBed__8VillagerFv(struct Villager* this) asm("?CheckWhenGoingToBed@Villager@@QAEIXZ");
// win1.41 00760c80 mac 10588200 Villager::CheckGetPregnantAtHome(void)
bool32_t __fastcall CheckGetPregnantAtHome__8VillagerFv(struct Villager* this) asm("?CheckGetPregnantAtHome@Villager@@QAEIXZ");
// win1.41 00760ca0 mac 1000d140 Villager::CheckDeathFromOldAge(void)
bool32_t __fastcall CheckDeathFromOldAge__8VillagerFv(struct Villager* this) asm("?CheckDeathFromOldAge@Villager@@QAEIXZ");
// win1.41 00760d70 mac 10023200 Villager::SleepingAtHome(void)
bool32_t __fastcall SleepingAtHome__8VillagerFv(struct Villager* this) asm("?SleepingAtHome@Villager@@QAEIXZ");
// win1.41 00760db0 mac 10587f40 Villager::DoSleeping(float)
bool32_t __fastcall DoSleeping__8VillagerFf(struct Villager* this, const void* edx, float param_1) asm("?DoSleeping@Villager@@QAEIM@Z");
// win1.41 00760e50 mac 10587ee0 Villager::WakeUpAtHome(void)
bool32_t __fastcall WakeUpAtHome__8VillagerFv(struct Villager* this) asm("?WakeUpAtHome@Villager@@QAEIXZ");
// win1.41 00760e60 mac 10587dc0 Villager::StartHavingSex(void)
bool32_t __fastcall StartHavingSex__8VillagerFv(struct Villager* this) asm("?StartHavingSex@Villager@@QAEIXZ");
// win1.41 00760ee0 mac 10587cd0 Villager::HavingSex(void)
bool32_t __fastcall HavingSex__8VillagerFv(struct Villager* this) asm("?HavingSex@Villager@@QAEIXZ");
// win1.41 00760f50 mac 10587c50 Villager::StopHavingSex(void)
bool32_t __fastcall StopHavingSex__8VillagerFv(struct Villager* this) asm("?StopHavingSex@Villager@@QAEIXZ");
// win1.41 00760f80 mac 10587c10 Villager::StartHavingSexAtHome(void)
bool32_t __fastcall StartHavingSexAtHome__8VillagerFv(struct Villager* this) asm("?StartHavingSexAtHome@Villager@@QAEIXZ");
// win1.41 00760f90 mac 10587ac0 Villager::StartHavingSex(Villager *, VILLAGER_STATES)
bool32_t __fastcall StartHavingSex__8VillagerFP8Villager15VILLAGER_STATES(struct Villager* this, const void* edx, struct Villager* param_1, enum VILLAGER_STATES param_2) asm("?StartHavingSex@Villager@@QAEIPAV1@W4VILLAGER_STATES@@@Z");
// win1.41 00761010 mac 10587a80 Villager::HavingSexAtHome(void)
bool32_t __fastcall HavingSexAtHome__8VillagerFv(struct Villager* this) asm("?HavingSexAtHome@Villager@@QAEIXZ");
// win1.41 00761020 mac 10587a40 Villager::StopHavingSexAtHome(void)
bool32_t __fastcall StopHavingSexAtHome__8VillagerFv(struct Villager* this) asm("?StopHavingSexAtHome@Villager@@QAEIXZ");
// win1.41 00761030 mac 10587a00 Villager::WaitForDinner(void)
bool32_t __fastcall WaitForDinner__8VillagerFv(struct Villager* this) asm("?WaitForDinner@Villager@@QAEIXZ");
// win1.41 00761040 mac 10587960 Villager::GetPromiscuity(void)
bool32_t __fastcall GetPromiscuity__8VillagerFv(struct Villager* this) asm("?GetPromiscuity@Villager@@QAEIXZ");
// win1.41 00761070 mac 105878e0 Villager::IsAvailableForSex(void)
bool32_t __fastcall IsAvailableForSex__8VillagerFv(struct Villager* this) asm("?IsAvailableForSex@Villager@@QAEIXZ");
// win1.41 00761090 mac 10587810 Villager::IsSexuallyActive(void)
bool32_t __fastcall IsSexuallyActive__8VillagerFv(struct Villager* this) asm("?IsSexuallyActive@Villager@@QAEIXZ");
// win1.41 007610d0 mac 10587790 Villager::IsPromiscious(void)
bool32_t __fastcall IsPromiscious__8VillagerFv(struct Villager* this) asm("?IsPromiscious@Villager@@QAEIXZ");
// win1.41 00761110 mac 105876a0 Villager::FindAMateAtHome(void)
bool32_t __fastcall FindAMateAtHome__8VillagerFv(struct Villager* this) asm("?FindAMateAtHome@Villager@@QAEIXZ");
// win1.41 00761180 mac 10587620 Villager::CheckForSexAtHome(void)
bool32_t __fastcall CheckForSexAtHome__8VillagerFv(struct Villager* this) asm("?CheckForSexAtHome@Villager@@QAEIXZ");
// win1.41 007611b0 mac 10587570 Villager::ShallIWaitForDinner(void)
bool32_t __fastcall ShallIWaitForDinner__8VillagerFv(struct Villager* this) asm("?ShallIWaitForDinner@Villager@@QAEIXZ");
// win1.41 007611f0 mac 105874c0 Villager::HomeDeleted(void)
void __fastcall HomeDeleted__8VillagerFv(struct Villager* this) asm("?HomeDeleted@Villager@@QAEXXZ");
// win1.41 00761220 mac 10587440 Villager::MakeHomeless(void)
bool32_t __fastcall MakeHomeless__8VillagerFv(struct Villager* this) asm("?MakeHomeless@Villager@@QAE_NXZ");
// win1.41 00761240 mac 10587220 Villager::MakeHomelessNoStateChange(void)
bool32_t __fastcall MakeHomelessNoStateChange__8VillagerFv(struct Villager* this) asm("?MakeHomelessNoStateChange@Villager@@QAE_NXZ");
// win1.41 00761320 mac 10587160 Villager::HomelessStart(void)
bool32_t __fastcall HomelessStart__8VillagerFv(struct Villager* this) asm("?HomelessStart@Villager@@QAEIXZ");
// win1.41 00761360 mac 10586fd0 Villager::CheckHomelessMoveIntoAbode(void)
bool32_t __fastcall CheckHomelessMoveIntoAbode__8VillagerFv(struct Villager* this) asm("?CheckHomelessMoveIntoAbode@Villager@@QAEIXZ");
// win1.41 007613f0 mac 10586f90 Villager::VillagerGossips(void)
bool32_t __fastcall VillagerGossips__8VillagerFv(struct Villager* this) asm("?VillagerGossips@Villager@@QAEIXZ");
// win1.41 00761400 mac 10586ed0 Villager::SetupAfterTapOnAbode(MapCoords &, VILLAGER_STATES)
void __fastcall SetupAfterTapOnAbode__8VillagerFR9MapCoords15VILLAGER_STATES(struct Villager* this, const void* edx, struct MapCoords* param_1, enum VILLAGER_STATES param_2) asm("?SetupAfterTapOnAbode@Villager@@QAEXAAUMapCoords@@W4VILLAGER_STATES@@@Z");
// win1.41 00761440 mac 10586e70 Villager::AfterTapOnAbode(void)
bool32_t __fastcall AfterTapOnAbode__8VillagerFv(struct Villager* this) asm("?AfterTapOnAbode@Villager@@QAEIXZ");
// win1.41 00761460 mac 100955e0 Villager::CheckSatisfyRelaxation(void)
bool32_t __fastcall CheckSatisfyRelaxation__8VillagerFv(struct Villager* this) asm("?CheckSatisfyRelaxation@Villager@@QAEIXZ");
// win1.41 00761490 mac 1009cb70 Villager::CheckSatisfySleep(void)
bool32_t __fastcall CheckSatisfySleep__8VillagerFv(struct Villager* this) asm("?CheckSatisfySleep@Villager@@QAEIXZ");
// win1.41 00761510 mac 10586c80 Villager::ArtifactDance(void)
bool32_t __fastcall ArtifactDance__8VillagerFv(struct Villager* this) asm("?ArtifactDance@Villager@@QAEIXZ");
// win1.41 007615c0 mac 105869b0 Villager::WaitForArtifactDance(void)
bool32_t __fastcall WaitForArtifactDance__8VillagerFv(struct Villager* this) asm("?WaitForArtifactDance@Villager@@QAEIXZ");
// win1.41 00761800 mac 10586960 Villager::EnterWaitForArtifactDance(unsigned char, unsigned char)
bool32_t __fastcall EnterWaitForArtifactDance__8VillagerFUcUc(struct Villager* this, const void* edx, unsigned char param_1, unsigned char param_2) asm("?EnterWaitForArtifactDance@Villager@@QAEIEE@Z");
// win1.41 00761810 mac 105867e0 Villager::GoHomeAndChange(void)
bool32_t __fastcall GoHomeAndChange__8VillagerFv(struct Villager* this) asm("?GoHomeAndChange@Villager@@QAEIXZ");
// win1.41 007618c0 mac 10586680 Villager::ChangeTribeIfRequired(TRIBE_TYPE, int)
bool32_t __fastcall ChangeTribeIfRequired__8VillagerF10TRIBE_TYPEi(struct Villager* this, const void* edx, enum TRIBE_TYPE param_1, int param_2) asm("?ChangeTribeIfRequired@Villager@@QAEIW4TRIBE_TYPE@@H@Z");
// win1.41 00761980 mac 10586570 Villager::ExitGoHomeAndChange(unsigned char)
bool32_t __fastcall ExitGoHomeAndChange__8VillagerFUc(struct Villager* this, const void* edx, unsigned char param_1) asm("?ExitGoHomeAndChange@Villager@@QAEIE@Z");
// win1.41 00761a00 mac 10586340 Villager::ChangeInfo(GVillagerInfo const *)
bool32_t __fastcall ChangeInfo__8VillagerFPC13GVillagerInfo(struct Villager* this, const void* edx, const struct GVillagerInfo* param_1) asm("?ChangeInfo@Villager@@QAEIPBVGVillagerInfo@@@Z");
// win1.41 00761ae0 mac 10586240 Villager::SleepInTent(void)
bool32_t __fastcall SleepInTent__8VillagerFv(struct Villager* this) asm("?SleepInTent@Villager@@QAEIXZ");
// win1.41 00761b40 mac 100957f0 Villager::ExitAtHome(unsigned char)
bool32_t __fastcall ExitAtHome__8VillagerFUc(struct Villager* this, const void* edx, unsigned char param_1) asm("?ExitAtHome@Villager@@QAEIE@Z");
// win1.41 00761b70 mac 10586150 Villager::GoHomeFromWorship(void)
bool32_t __fastcall GoHomeFromWorship__8VillagerFv(struct Villager* this) asm("?GoHomeFromWorship@Villager@@QAEIXZ");
// win1.41 00761c00 mac 1058ad30 Villager::HousewifeLookForWork(void)
bool32_t __fastcall HousewifeLookForWork__8VillagerFv(struct Villager* this) asm("?HousewifeLookForWork@Villager@@QAEIXZ");
// win1.41 00761c10 mac 1058ac90 Villager::HousewifeAtHome(void)
bool32_t __fastcall HousewifeAtHome__8VillagerFv(struct Villager* this) asm("?HousewifeAtHome@Villager@@QAEIXZ");
// win1.41 00761c40 mac 1058abc0 Villager::CheckNeededForHouseWork(void)
bool32_t __fastcall CheckNeededForHouseWork__8VillagerFv(struct Villager* this) asm("?CheckNeededForHouseWork@Villager@@QAEIXZ");
// win1.41 00761c90 mac 1058aac0 Villager::CheckNeededToMakeDinner(void)
bool32_t __fastcall CheckNeededToMakeDinner__8VillagerFv(struct Villager* this) asm("?CheckNeededToMakeDinner@Villager@@QAE_NXZ");
// win1.41 00761ce0 mac 1058a9d0 Villager::HousewifeGotoStoragePit(void)
bool32_t __fastcall HousewifeGotoStoragePit__8VillagerFv(struct Villager* this) asm("?HousewifeGotoStoragePit@Villager@@QAEIXZ");
// win1.41 00761d60 mac 1058a7e0 Villager::HousewifeArrivesAtStoragePit(void)
bool32_t __fastcall HousewifeArrivesAtStoragePit__8VillagerFv(struct Villager* this) asm("?HousewifeArrivesAtStoragePit@Villager@@QAEIXZ");
// win1.41 00761ea0 mac 1058a700 Villager::HousewifePickupFromStoragePit(void)
bool32_t __fastcall HousewifePickupFromStoragePit__8VillagerFv(struct Villager* this) asm("?HousewifePickupFromStoragePit@Villager@@QAEIXZ");
// win1.41 00761f10 mac 1058a630 Villager::HousewifeReturnHomeWithFood(void)
bool32_t __fastcall HousewifeReturnHomeWithFood__8VillagerFv(struct Villager* this) asm("?HousewifeReturnHomeWithFood@Villager@@QAEIXZ");
// win1.41 00761f60 mac 1058a580 Villager::HousewifeMakeDinner(void)
bool32_t __fastcall HousewifeMakeDinner__8VillagerFv(struct Villager* this) asm("?HousewifeMakeDinner@Villager@@QAEIXZ");
// win1.41 00761fa0 mac 1058a4f0 Villager::HousewifeServesDinner(void)
bool32_t __fastcall HousewifeServesDinner__8VillagerFv(struct Villager* this) asm("?HousewifeServesDinner@Villager@@QAEIXZ");
// win1.41 00761fc0 mac 1058a450 Villager::HousewifeClearsAwayDinner(void)
bool32_t __fastcall HousewifeClearsAwayDinner__8VillagerFv(struct Villager* this) asm("?HousewifeClearsAwayDinner@Villager@@QAEIXZ");
// win1.41 00761ff0 mac 1058a3b0 Villager::HousewifeDoesHousework(void)
bool32_t __fastcall HousewifeDoesHousework__8VillagerFv(struct Villager* this) asm("?HousewifeDoesHousework@Villager@@QAEIXZ");
// win1.41 00762020 mac 1058a0d0 Villager::HousewifeGossipsAroundStoragePit(void)
bool32_t __fastcall HousewifeGossipsAroundStoragePit__8VillagerFv(struct Villager* this) asm("?HousewifeGossipsAroundStoragePit@Villager@@QAEIXZ");
// win1.41 007621a0 mac 10589f60 Villager::HousewifeStartsGivingBirth(void)
bool32_t __fastcall HousewifeStartsGivingBirth__8VillagerFv(struct Villager* this) asm("?HousewifeStartsGivingBirth@Villager@@QAEIXZ");
// win1.41 00762430 mac 10589bf0 Villager::HousewifeGivingBirth(void)
bool32_t __fastcall HousewifeGivingBirth__8VillagerFv(struct Villager* this) asm("?HousewifeGivingBirth@Villager@@QAEIXZ");
// win1.41 007624a0 mac 10589b90 Villager::HousewifeGivenBirth(void)
bool32_t __fastcall HousewifeGivenBirth__8VillagerFv(struct Villager* this) asm("?HousewifeGivenBirth@Villager@@QAEIXZ");
// win1.41 007624c0 mac 105899e0 Villager::WillHousewifeGetPregnant(Villager *)
bool32_t __fastcall WillHousewifeGetPregnant__8VillagerFP8Villager(struct Villager* this, const void* edx, struct Villager* param_1) asm("?WillHousewifeGetPregnant@Villager@@QAEIPAV1@@Z");
// win1.41 00762570 mac 10589950 Villager::HousewifeGetsPregnant(Villager *)
bool32_t __fastcall HousewifeGetsPregnant__8VillagerFP8Villager(struct Villager* this, const void* edx, struct Villager* param_1) asm("?HousewifeGetsPregnant@Villager@@QAEIPAV1@@Z");
// win1.41 007625a0 mac 10589870 Villager::HousewifeCalledToMakeDinner(void)
bool32_t __fastcall HousewifeCalledToMakeDinner__8VillagerFv(struct Villager* this) asm("?HousewifeCalledToMakeDinner@Villager@@QAEIXZ");
// win1.41 00762600 mac 10589780 Villager::HousewifeAskForMeal(void)
bool32_t __fastcall HousewifeAskForMeal__8VillagerFv(struct Villager* this) asm("?HousewifeAskForMeal@Villager@@QAEIXZ");
// win1.41 00762670 mac 10589740 Villager::CheckSatisfyForChildren(void)
bool32_t __fastcall CheckSatisfyForChildren__8VillagerFv(struct Villager* this) asm("?CheckSatisfyForChildren@Villager@@QAEIXZ");
// win1.41 007626e0 mac 1058ad90 Villager::CheckLeaderNeeded(void)
bool32_t __fastcall CheckLeaderNeeded__8VillagerFv(struct Villager* this) asm("?CheckLeaderNeeded@Villager@@QAEIXZ");
// win1.41 007630e0 mac 1058c1c0 Villager::IsPlaytime(void)
bool __fastcall IsPlaytime__8VillagerFv(struct Villager* this) asm("?IsPlaytime@Villager@@QAE_NXZ");
// win1.41 007630f0 mac 1058c170 Villager::CheckPlaytimeAvailableToPlayPFootball(void)
bool32_t __fastcall CheckPlaytimeAvailableToPlayPFootball__8VillagerFv(struct Villager* this) asm("?CheckPlaytimeAvailableToPlayPFootball@Villager@@QAEIXZ");
// win1.41 00763100 mac 1058c120 Villager::CheckPlaytimeSettingUpPlayPFootball(void)
bool32_t __fastcall CheckPlaytimeSettingUpPlayPFootball__8VillagerFv(struct Villager* this) asm("?CheckPlaytimeSettingUpPlayPFootball@Villager@@QAEIXZ");
// win1.41 00763110 mac 1058c0d0 Villager::MoveToFootballPitchConstruction(void)
bool32_t __fastcall MoveToFootballPitchConstruction__8VillagerFv(struct Villager* this) asm("?MoveToFootballPitchConstruction@Villager@@QAEIXZ");
// win1.41 00763120 mac 1058c070 Villager::FootballWalkToPosition(void)
bool32_t __fastcall FootballWalkToPosition__8VillagerFv(struct Villager* this) asm("?FootballWalkToPosition@Villager@@QAEIXZ");
// win1.41 00763130 mac 100a0100 Villager::CheckSatisfyPlaytimeDesire(void)
bool32_t __fastcall CheckSatisfyPlaytimeDesire__8VillagerFv(struct Villager* this) asm("?CheckSatisfyPlaytimeDesire@Villager@@QAEIXZ");
// win1.41 00763140 mac 1058bf80 Villager::WaitForKickOff(void)
bool32_t __fastcall WaitForKickOff__8VillagerFv(struct Villager* this) asm("?WaitForKickOff@Villager@@QAEIXZ");
// win1.41 00763170 mac 1058bee0 Villager::FootballMatchPaused(void)
bool32_t __fastcall FootballMatchPaused__8VillagerFv(struct Villager* this) asm("?FootballMatchPaused@Villager@@QAEIXZ");
// win1.41 007631b0 mac 1058be20 Villager::FootballMexicanWave(void)
bool32_t __fastcall FootballMexicanWave__8VillagerFv(struct Villager* this) asm("?FootballMexicanWave@Villager@@QAEIXZ");
// win1.41 007631f0 mac 1058bce0 Villager::FootballWatchMatch(void)
bool32_t __fastcall FootballWatchMatch__8VillagerFv(struct Villager* this) asm("?FootballWatchMatch@Villager@@QAEIXZ");
// win1.41 00763280 mac 1058bbe0 Villager::ExitFootball(unsigned char)
bool32_t __fastcall ExitFootball__8VillagerFUc(struct Villager* this, const void* edx, unsigned char param_1) asm("?ExitFootball@Villager@@QAEIE@Z");
// win1.41 00763800 mac 1001a3e0 Villager::SetupMoveToPos(MapCoords const &, VILLAGER_STATES)
bool32_t __fastcall SetupMoveToPos__8VillagerFRC9MapCoords15VILLAGER_STATES(struct Villager* this, const void* edx, const struct MapCoords* param_1, enum VILLAGER_STATES param_2) asm("?SetupMoveToPos@Villager@@QAE_NABUMapCoords@@W4VILLAGER_STATES@@@Z");
// win1.41 00763b40 mac 105935e0 Villager::FleeingFromPredatorReaction(void)
bool32_t __fastcall FleeingFromPredatorReaction__8VillagerFv(struct Villager* this) asm("?FleeingFromPredatorReaction@Villager@@QAEIXZ");
// win1.41 00763cb0 mac 10593430 Villager::SetupGoAndHideInNearbyBuilding(GameThingWithPos *)
bool32_t __fastcall SetupGoAndHideInNearbyBuilding__8VillagerFP16GameThingWithPos(struct Villager* this, const void* edx, struct GameThingWithPos* param_1) asm("?SetupGoAndHideInNearbyBuilding@Villager@@QAEIPAVGameThingWithPos@@@Z");
// win1.41 00763d90 mac 105931e0 Villager::GoAndHideInNearbyBuilding(void)
bool32_t __fastcall GoAndHideInNearbyBuilding__8VillagerFv(struct Villager* this) asm("?GoAndHideInNearbyBuilding@Villager@@QAEIXZ");
// win1.41 00763f00 mac 105930c0 Villager::GetAbodeToHideInAtPos(MapCoords const &)
struct Abode* __fastcall GetAbodeToHideInAtPos__8VillagerFRC9MapCoords(struct Villager* this, const void* edx, const struct MapCoords* param_1) asm("?GetAbodeToHideInAtPos@Villager@@QAEPAVAbode@@ABUMapCoords@@@Z");
// win1.41 00763f80 mac 10592f10 Villager::LookToSeeIfItIsSafe(void)
bool32_t __fastcall LookToSeeIfItIsSafe__8VillagerFv(struct Villager* this) asm("?LookToSeeIfItIsSafe@Villager@@QAEIXZ");
// win1.41 00764410 mac 105924a0 Villager::PerformInspectionReaction(void)
bool32_t __fastcall PerformInspectionReaction__8VillagerFv(struct Villager* this) asm("?PerformInspectionReaction@Villager@@QAEIXZ");
// win1.41 00764490 mac 10592220 Villager::ApproachObjectReaction(void)
bool32_t __fastcall ApproachObjectReaction__8VillagerFv(struct Villager* this) asm("?ApproachObjectReaction@Villager@@QAEIXZ");
// win1.41 00764610 mac 10592150 Villager::InitialiseTellOthersAboutObject(void)
bool32_t __fastcall InitialiseTellOthersAboutObject__8VillagerFv(struct Villager* this) asm("?InitialiseTellOthersAboutObject@Villager@@QAEIXZ");
// win1.41 00764650 mac 10592100 Villager::TellOthersAboutInterestingObject(void)
bool32_t __fastcall TellOthersAboutInterestingObject__8VillagerFv(struct Villager* this) asm("?TellOthersAboutInterestingObject@Villager@@QAEIXZ");
// win1.41 00764660 mac 105920b0 Villager::InitialiseLookAroundForVillagerToTell(void)
bool32_t __fastcall InitialiseLookAroundForVillagerToTell__8VillagerFv(struct Villager* this) asm("?InitialiseLookAroundForVillagerToTell@Villager@@QAEIXZ");
// win1.41 00764670 mac 10592060 Villager::LookAroundForVillagerToTell(void)
bool32_t __fastcall LookAroundForVillagerToTell__8VillagerFv(struct Villager* this) asm("?LookAroundForVillagerToTell@Villager@@QAEIXZ");
// win1.41 00764680 mac 10592020 Villager::ApproachVillagerToTalkTo(void)
bool32_t __fastcall ApproachVillagerToTalkTo__8VillagerFv(struct Villager* this) asm("?ApproachVillagerToTalkTo@Villager@@QAEIXZ");
// win1.41 00764690 mac 10591fd0 Villager::TellParticularVillagerAboutObject(void)
bool32_t __fastcall TellParticularVillagerAboutObject__8VillagerFv(struct Villager* this) asm("?TellParticularVillagerAboutObject@Villager@@QAEIXZ");
// win1.41 00764aa0 mac 10591600 Villager::InitialiseBewilderedByMagicTreeReaction(void)
bool32_t __fastcall InitialiseBewilderedByMagicTreeReaction__8VillagerFv(struct Villager* this) asm("?InitialiseBewilderedByMagicTreeReaction@Villager@@QAEIXZ");
// win1.41 00764b50 mac 10591340 Villager::PerformBewilderedByMagicTreeReaction(void)
bool32_t __fastcall PerformBewilderedByMagicTreeReaction__8VillagerFv(struct Villager* this) asm("?PerformBewilderedByMagicTreeReaction@Villager@@QAEIXZ");
// win1.41 00764d10 mac 10591260 Villager::TurnToFaceMagicTree(void)
bool32_t __fastcall TurnToFaceMagicTree__8VillagerFv(struct Villager* this) asm("?TurnToFaceMagicTree@Villager@@QAEIXZ");
// win1.41 00764d70 mac 10591140 Villager::LookAtMagicTree(void)
bool32_t __fastcall LookAtMagicTree__8VillagerFv(struct Villager* this) asm("?LookAtMagicTree@Villager@@QAEIXZ");
// win1.41 00765140 mac 10590b80 Villager::ApproachHandReaction(void)
bool32_t __fastcall ApproachHandReaction__8VillagerFv(struct Villager* this) asm("?ApproachHandReaction@Villager@@QAEIXZ");
// win1.41 007651a0 mac 10590a00 Villager::FindNearbyVillagerWhoIsntReacting(void)
bool32_t __fastcall FindNearbyVillagerWhoIsntReacting__8VillagerFv(struct Villager* this) asm("?FindNearbyVillagerWhoIsntReacting@Villager@@QAEIXZ");
// win1.41 00765320 mac 10590720 Villager::ArrivesAtPickupBallReaction(void)
bool32_t __fastcall ArrivesAtPickupBallReaction__8VillagerFv(struct Villager* this) asm("?ArrivesAtPickupBallReaction@Villager@@QAEIXZ");
// win1.41 007653f0 mac 10590650 Villager::WatchFlyingObjectReaction(void)
bool32_t __fastcall WatchFlyingObjectReaction__8VillagerFv(struct Villager* this) asm("?WatchFlyingObjectReaction@Villager@@QAEIXZ");
// win1.41 00765450 mac 10590520 Villager::PointAtFlyingObjectReaction(void)
bool32_t __fastcall PointAtFlyingObjectReaction__8VillagerFv(struct Villager* this) asm("?PointAtFlyingObjectReaction@Villager@@QAEIXZ");
// win1.41 00765870 mac 1058fce0 Villager::ReactToFire(void)
bool32_t __fastcall ReactToFire__8VillagerFv(struct Villager* this) asm("?ReactToFire@Villager@@QAEIXZ");
// win1.41 00765e00 mac 1058f550 Villager::AmazedByMagicShieldReaction(void)
bool32_t __fastcall AmazedByMagicShieldReaction__8VillagerFv(struct Villager* this) asm("?AmazedByMagicShieldReaction@Villager@@QAEIXZ");
// win1.41 00766130 mac 1058f230 Villager::DanceWhileReacting(void)
bool32_t __fastcall DanceWhileReacting__8VillagerFv(struct Villager* this) asm("?DanceWhileReacting@Villager@@QAEIXZ");
// win1.41 007662f0 mac 1058eec0 Villager::GoToTeleportReaction(void)
bool32_t __fastcall GoToTeleportReaction__8VillagerFv(struct Villager* this) asm("?GoToTeleportReaction@Villager@@QAEIXZ");
// win1.41 00766380 mac 1058ee60 Villager::GoToTeleportReactionQuickly(void)
bool32_t __fastcall GoToTeleportReactionQuickly__8VillagerFv(struct Villager* this) asm("?GoToTeleportReactionQuickly@Villager@@QAEIXZ");
// win1.41 00766390 mac 1058ed70 Villager::ExitReactToTeleport(unsigned char)
bool32_t __fastcall ExitReactToTeleport__8VillagerFUc(struct Villager* this, const void* edx, unsigned char param_1) asm("?ExitReactToTeleport@Villager@@QAEIE@Z");
// win1.41 007663f0 mac 1058eca0 Villager::TeleportReaction(void)
bool32_t __fastcall TeleportReaction__8VillagerFv(struct Villager* this) asm("?TeleportReaction@Villager@@QAEIXZ");
// win1.41 00766680 mac 1058e5f0 Villager::PointAtDeadPerson(void)
bool32_t __fastcall PointAtDeadPerson__8VillagerFv(struct Villager* this) asm("?PointAtDeadPerson@Villager@@QAEIXZ");
// win1.41 00766700 mac 1058e420 Villager::GoTowardsDeadPerson(void)
bool32_t __fastcall GoTowardsDeadPerson__8VillagerFv(struct Villager* this) asm("?GoTowardsDeadPerson@Villager@@QAEIXZ");
// win1.41 00766810 mac 1058e390 Villager::LookAtDeadPerson(void)
bool32_t __fastcall LookAtDeadPerson__8VillagerFv(struct Villager* this) asm("?LookAtDeadPerson@Villager@@QAEIXZ");
// win1.41 00766850 mac 1058e2b0 Villager::MournDeadPerson(void)
bool32_t __fastcall MournDeadPerson__8VillagerFv(struct Villager* this) asm("?MournDeadPerson@Villager@@QAEIXZ");
// win1.41 007668e0 mac 1058e1c0 Villager::FaintingReaction(void)
bool32_t __fastcall FaintingReaction__8VillagerFv(struct Villager* this) asm("?FaintingReaction@Villager@@QAEIXZ");
// win1.41 00766910 mac 1058e090 Villager::StartConfusedReaction(void)
bool32_t __fastcall StartConfusedReaction__8VillagerFv(struct Villager* this) asm("?StartConfusedReaction@Villager@@QAEIXZ");
// win1.41 00766930 mac 1058df30 Villager::ConfusedReaction(void)
bool32_t __fastcall ConfusedReaction__8VillagerFv(struct Villager* this) asm("?ConfusedReaction@Villager@@QAEIXZ");
// win1.41 00766a90 mac 1058dac0 Villager::CrowdReaction(void)
bool32_t __fastcall CrowdReaction__8VillagerFv(struct Villager* this) asm("?CrowdReaction@Villager@@QAEIXZ");
// win1.41 00766c60 mac 1058d970 Villager::MoveTowardsObjectToLookAt(void)
bool32_t __fastcall MoveTowardsObjectToLookAt__8VillagerFv(struct Villager* this) asm("?MoveTowardsObjectToLookAt@Villager@@QAEIXZ");
// win1.41 00766d00 mac 1058d890 Villager::InitialiseImpressedReaction(void)
bool32_t __fastcall InitialiseImpressedReaction__8VillagerFv(struct Villager* this) asm("?InitialiseImpressedReaction@Villager@@QAEIXZ");
// win1.41 00766d60 mac 1058d780 Villager::PerformImpressedReaction(void)
bool32_t __fastcall PerformImpressedReaction__8VillagerFv(struct Villager* this) asm("?PerformImpressedReaction@Villager@@QAEIXZ");
// win1.41 00766e50 mac 1058d3c0 Villager::InitialiseFightReaction(void)
bool32_t __fastcall InitialiseFightReaction__8VillagerFv(struct Villager* this) asm("?InitialiseFightReaction@Villager@@QAEIXZ");
// win1.41 00767280 mac 1058cc50 Villager::ReactToBreeder(void)
bool32_t __fastcall ReactToBreeder__8VillagerFv(struct Villager* this) asm("?ReactToBreeder@Villager@@QAEIXZ");
// win1.41 007672c0 mac 1058cba0 Villager::GoAndHaveSexWith(Villager *)
bool32_t __fastcall GoAndHaveSexWith__8VillagerFP8Villager(struct Villager* this, const void* edx, struct Villager* param_1) asm("?GoAndHaveSexWith@Villager@@QAEIPAV1@@Z");
// win1.41 007673a0 mac 1058c890 Villager::WaitForMate(void)
bool32_t __fastcall WaitForMate__8VillagerFv(struct Villager* this) asm("?WaitForMate@Villager@@QAEIXZ");
// win1.41 00767410 mac 1058c850 Villager::EnterDrowning(unsigned char, unsigned char)
bool32_t __fastcall EnterDrowning__8VillagerFUcUc(struct Villager* this, const void* edx, unsigned char param_1, unsigned char param_2) asm("?EnterDrowning@Villager@@QAEIEE@Z");
// win1.41 00767420 mac 1058c810 Villager::ExitDrowning(unsigned char)
bool32_t __fastcall ExitDrowning__8VillagerFUc(struct Villager* this, const void* edx, unsigned char param_1) asm("?ExitDrowning@Villager@@QAEIE@Z");
// win1.41 007678a0 mac 10596410 Villager::InspectCreatureReaction(void)
bool32_t __fastcall InspectCreatureReaction__8VillagerFv(struct Villager* this) asm("?InspectCreatureReaction@Villager@@QAEIXZ");
// win1.41 00767970 mac 105962d0 Villager::PerformInspectCreatureReaction(void)
bool32_t __fastcall PerformInspectCreatureReaction__8VillagerFv(struct Villager* this) asm("?PerformInspectCreatureReaction@Villager@@QAEIXZ");
// win1.41 00767a00 mac 10596080 Villager::ApproachCreatureReaction(void)
bool32_t __fastcall ApproachCreatureReaction__8VillagerFv(struct Villager* this) asm("?ApproachCreatureReaction@Villager@@QAEIXZ");
// win1.41 00767ba0 mac 10595f40 Villager::InitialiseRespectCreatureReaction(void)
bool32_t __fastcall InitialiseRespectCreatureReaction__8VillagerFv(struct Villager* this) asm("?InitialiseRespectCreatureReaction@Villager@@QAEIXZ");
// win1.41 00767c80 mac 10595e50 Villager::TurnToFaceCreatureReaction(void)
bool32_t __fastcall TurnToFaceCreatureReaction__8VillagerFv(struct Villager* this) asm("?TurnToFaceCreatureReaction@Villager@@QAEIXZ");
// win1.41 00767ce0 mac 10595cf0 Villager::PerformRespectCreatureReaction(void)
bool32_t __fastcall PerformRespectCreatureReaction__8VillagerFv(struct Villager* this) asm("?PerformRespectCreatureReaction@Villager@@QAEIXZ");
// win1.41 00767dc0 mac 10595c30 Villager::FinishRespectCreatureReaction(void)
bool32_t __fastcall FinishRespectCreatureReaction__8VillagerFv(struct Villager* this) asm("?FinishRespectCreatureReaction@Villager@@QAEIXZ");
// win1.41 00767e00 mac 10595a30 Villager::FleeingFromCreatureReaction(void)
bool32_t __fastcall FleeingFromCreatureReaction__8VillagerFv(struct Villager* this) asm("?FleeingFromCreatureReaction@Villager@@QAEIXZ");
// win1.41 00767f70 mac 10595930 Villager::MoveTowardsCreatureReaction(void)
bool32_t __fastcall MoveTowardsCreatureReaction__8VillagerFv(struct Villager* this) asm("?MoveTowardsCreatureReaction@Villager@@QAEIXZ");
// win1.41 007682a0 mac 10595080 Villager::CalculateNearestFreeDestination(MapCoords *)
void __fastcall CalculateNearestFreeDestination__8VillagerFP9MapCoords(struct Villager* this, const void* edx, struct MapCoords* param_1) asm("?CalculateNearestFreeDestination@Villager@@QAEXPAUMapCoords@@@Z");
// win1.41 007683f0 mac 10595020 Villager::UpdateAttitudeToCreature(void)
void __fastcall UpdateAttitudeToCreature__8VillagerFv(struct Villager* this) asm("?UpdateAttitudeToCreature@Villager@@QAEXXZ");
// win1.41 00768400 mac 10594e00 Villager::UpdateReactiveStateFromAttitudeToCreature(void)
bool32_t __fastcall UpdateReactiveStateFromAttitudeToCreature__8VillagerFv(struct Villager* this) asm("?UpdateReactiveStateFromAttitudeToCreature@Villager@@QAEIXZ");
// win1.41 00768510 mac 10594d70 Villager::SetupMoveToCreatureReaction(MapCoords const &, unsigned char)
void __fastcall SetupMoveToCreatureReaction__8VillagerFRC9MapCoordsUc(struct Villager* this, const void* edx, const struct MapCoords* param_1, unsigned char param_2) asm("?SetupMoveToCreatureReaction@Villager@@QAEXABUMapCoords@@E@Z");
// win1.41 00768680 mac 105974b0 Villager::SetupScriptWanderToPos(MapCoords const &, float, unsigned short, unsigned short)
bool32_t __fastcall SetupScriptWanderToPos__8VillagerFRC9MapCoordsfUsUs(struct Villager* this, const void* edx, const struct MapCoords* param_1, float param_2, unsigned short param_3, unsigned short param_4) asm("?SetupScriptWanderToPos@Villager@@QAEIABUMapCoords@@MGG@Z");
// win1.41 007686d0 mac 10597370 Villager::SetupNewScriptWander(void)
bool32_t __fastcall SetupNewScriptWander__8VillagerFv(struct Villager* this) asm("?SetupNewScriptWander@Villager@@QAEIXZ");
// win1.41 007687f0 mac 105971a0 Villager::ScriptWanderAroundPos(void)
bool32_t __fastcall ScriptWanderAroundPos__8VillagerFv(struct Villager* this) asm("?ScriptWanderAroundPos@Villager@@QAEIXZ");
// win1.41 00768970 mac 10005f50 Villager::ScriptPlayAnim(void)
bool32_t __fastcall ScriptPlayAnim__8VillagerFv(struct Villager* this) asm("?ScriptPlayAnim@Villager@@QAEIXZ");
// win1.41 007689d0 mac 1000afa0 Villager::IsScriptAnimationComplete(void)
bool32_t __fastcall IsScriptAnimationComplete__8VillagerFv(struct Villager* this) asm("?IsScriptAnimationComplete@Villager@@QAEIXZ");
// win1.41 00768a00 mac 10596c60 Villager::ScriptAnimation(void)
bool32_t __fastcall ScriptAnimation__8VillagerFv(struct Villager* this) asm("?ScriptAnimation@Villager@@QAEIXZ");
// win1.41 00768a10 mac 10596c20 Villager::WeakOnGround(void)
bool32_t __fastcall WeakOnGround__8VillagerFv(struct Villager* this) asm("?WeakOnGround@Villager@@QAEIXZ");
// win1.41 00768a20 mac 105969d0 Villager::ScriptGoAndMoveAlongPath(void)
bool32_t __fastcall ScriptGoAndMoveAlongPath__8VillagerFv(struct Villager* this) asm("?ScriptGoAndMoveAlongPath@Villager@@QAEIXZ");
// win1.41 00768be0 mac 10598820 Villager::VillagerBecomesShepherd(Flock *)
bool32_t __fastcall VillagerBecomesShepherd__8VillagerFP5Flock(struct Villager* this, const void* edx, struct Flock* param_1) asm("?VillagerBecomesShepherd@Villager@@QAEIPAVFlock@@@Z");
// win1.41 00768c30 mac 105986f0 Villager::ShepherdLookForFlock(void)
bool32_t __fastcall ShepherdLookForFlock__8VillagerFv(struct Villager* this) asm("?ShepherdLookForFlock@Villager@@QAE_NXZ");
// win1.41 00768c90 mac 10598650 Villager::FindClosestFlockAnimal(void)
bool32_t __fastcall FindClosestFlockAnimal__8VillagerFv(struct Villager* this) asm("?FindClosestFlockAnimal@Villager@@QAEIXZ");
// win1.41 00768cc0 mac 105984c0 Villager::ShepherdMoveFlockToWater(void)
bool32_t __fastcall ShepherdMoveFlockToWater__8VillagerFv(struct Villager* this) asm("?ShepherdMoveFlockToWater@Villager@@QAE_NXZ");
// win1.41 00768dd0 mac 10006020 Villager::ShepherdWaitForFlock(void)
bool32_t __fastcall ShepherdWaitForFlock__8VillagerFv(struct Villager* this) asm("?ShepherdWaitForFlock@Villager@@QAEIXZ");
// win1.41 00768e30 mac 105981b0 Villager::ShepherdGotoFlock(void)
bool32_t __fastcall ShepherdGotoFlock__8VillagerFv(struct Villager* this) asm("?ShepherdGotoFlock@Villager@@QAE_NXZ");
// win1.41 00768ec0 mac 105980a0 Villager::ShepherdTakesControlOfFlock(void)
bool32_t __fastcall ShepherdTakesControlOfFlock__8VillagerFv(struct Villager* this) asm("?ShepherdTakesControlOfFlock@Villager@@QAEIXZ");
// win1.41 00768f20 mac 10597fd0 Villager::ShepherdReleasesControlOfFlock(void)
bool32_t __fastcall ShepherdReleasesControlOfFlock__8VillagerFv(struct Villager* this) asm("?ShepherdReleasesControlOfFlock@Villager@@QAEIXZ");
// win1.41 00768f50 mac 10597f10 Villager::ExitShepherding(unsigned char)
bool32_t __fastcall ExitShepherding__8VillagerFUc(struct Villager* this, const void* edx, unsigned char param_1) asm("?ExitShepherding@Villager@@QAEIE@Z");
// win1.41 00768fb0 mac 10597d80 Villager::ShepherdDecideWhatToDoWithFlock(void)
bool32_t __fastcall ShepherdDecideWhatToDoWithFlock__8VillagerFv(struct Villager* this) asm("?ShepherdDecideWhatToDoWithFlock@Villager@@QAEIXZ");
// win1.41 00769070 mac 10597cc0 Villager::ShepherdMoveFlockBack(void)
bool32_t __fastcall ShepherdMoveFlockBack__8VillagerFv(struct Villager* this) asm("?ShepherdMoveFlockBack@Villager@@QAEIXZ");
// win1.41 007690d0 mac 10597c80 Villager::ShepherdMoveFlockToFood(void)
bool32_t __fastcall ShepherdMoveFlockToFood__8VillagerFv(struct Villager* this) asm("?ShepherdMoveFlockToFood@Villager@@QAEIXZ");
// win1.41 007690e0 mac 10597ae0 Villager::ShepherdTakeAnimalForSlaughter(void)
bool32_t __fastcall ShepherdTakeAnimalForSlaughter__8VillagerFv(struct Villager* this) asm("?ShepherdTakeAnimalForSlaughter@Villager@@QAEIXZ");
// win1.41 007691a0 mac 10026690 Villager::ShepherdCheckAnimalForSlaughter(void)
bool32_t __fastcall ShepherdCheckAnimalForSlaughter__8VillagerFv(struct Villager* this) asm("?ShepherdCheckAnimalForSlaughter@Villager@@QAEIXZ");
// win1.41 00769390 mac 10597830 Villager::ShepherdSlaughterAnimal(void)
bool32_t __fastcall ShepherdSlaughterAnimal__8VillagerFv(struct Villager* this) asm("?ShepherdSlaughterAnimal@Villager@@QAEIXZ");
// win1.41 00769430 mac 10006770 Villager::SlaughterAnimalIsClose(float, Living *)
bool32_t __fastcall SlaughterAnimalIsClose__8VillagerFfP6Living(struct Villager* this, const void* edx, float param_1, struct Living* param_2) asm("?SlaughterAnimalIsClose@Villager@@QAEIMPAVLiving@@@Z");
// win1.41 00769460 mac 105976d0 Villager::ShepherdFetchStray(void)
bool32_t __fastcall ShepherdFetchStray__8VillagerFv(struct Villager* this) asm("?ShepherdFetchStray@Villager@@QAEIXZ");
// win1.41 00769620 mac 10096900 Villager::GotoStoragePitForDropOff(void)
uint32_t __fastcall GotoStoragePitForDropOff__8VillagerFv(struct Villager* this) asm("?GotoStoragePitForDropOff@Villager@@QAEIXZ");
// win1.41 007696d0 mac 100062f0 Villager::ArrivesAtStoragePitForDropOff(void)
uint32_t __fastcall ArrivesAtStoragePitForDropOff__8VillagerFv(struct Villager* this) asm("?ArrivesAtStoragePitForDropOff@Villager@@QAEIXZ");
// win1.41 00769830 mac 10096ac0 Villager::GotoStoragePitForFood(void)
bool32_t __fastcall GotoStoragePitForFood__8VillagerFv(struct Villager* this) asm("?GotoStoragePitForFood@Villager@@QAEIXZ");
// win1.41 007698b0 mac 1059c070 Villager::ArrivesAtStoragePitForFood(void)
bool32_t __fastcall ArrivesAtStoragePitForFood__8VillagerFv(struct Villager* this) asm("?ArrivesAtStoragePitForFood@Villager@@QAEIXZ");
// win1.41 007698d0 mac 1059bc90 Villager::ArrivesAtStoragePitForResource(RESOURCE_TYPE, unsigned long, VILLAGER_STATES, VILLAGER_STATES)
bool32_t __fastcall ArrivesAtStoragePitForResource__8VillagerF13RESOURCE_TYPEUl15VILLAGER_STATES15VILLAGER_STATES(struct Villager* this, const void* edx, enum RESOURCE_TYPE param_1, unsigned long param_2, enum VILLAGER_STATES param_3, enum VILLAGER_STATES param_4) asm("?ArrivesAtStoragePitForResource@Villager@@QAEIW4RESOURCE_TYPE@@KW4VILLAGER_STATES@@1@Z");
// win1.41 00769b30 mac 1059bbc0 Villager::ArrivesAtHomeWithFood(void)
bool32_t __fastcall ArrivesAtHomeWithFood__8VillagerFv(struct Villager* this) asm("?ArrivesAtHomeWithFood@Villager@@QAEIXZ");
// win1.41 00769b80 mac 1059baa0 Villager::CheckTrader(void)
bool32_t __fastcall CheckTrader__8VillagerFv(struct Villager* this) asm("?CheckTrader@Villager@@QAEIXZ");
// win1.41 00769c10 mac 1059ba60 Villager::CheckMissionary(void)
bool32_t __fastcall CheckMissionary__8VillagerFv(struct Villager* this) asm("?CheckMissionary@Villager@@QAEIXZ");
// win1.41 00769c20 mac 1059b860 Villager::CheckTraderPickUpOrDropOff(RESOURCE_TYPE)
bool32_t __fastcall CheckTraderPickUpOrDropOff__8VillagerF13RESOURCE_TYPE(struct Villager* this, const void* edx, enum RESOURCE_TYPE param_1) asm("?CheckTraderPickUpOrDropOff@Villager@@QAEIW4RESOURCE_TYPE@@@Z");
// win1.41 00769d20 mac 1059b730 Villager::ArrivesAtStoragePitForTraderPickUp(void)
bool32_t __fastcall ArrivesAtStoragePitForTraderPickUp__8VillagerFv(struct Villager* this) asm("?ArrivesAtStoragePitForTraderPickUp@Villager@@QAEIXZ");
// win1.41 00769dc0 mac 1059b590 Villager::ArrivesAtStoragePitForTraderDropOff(void)
bool32_t __fastcall ArrivesAtStoragePitForTraderDropOff__8VillagerFv(struct Villager* this) asm("?ArrivesAtStoragePitForTraderDropOff@Villager@@QAEIXZ");
// win1.41 00769ea0 mac 1059b4c0 Villager::SetTraderNothingToDo(void)
bool32_t __fastcall SetTraderNothingToDo__8VillagerFv(struct Villager* this) asm("?SetTraderNothingToDo@Villager@@QAEIXZ");
// win1.41 00769ee0 mac 1059b190 Villager::SetupBreederDisciple(void)
bool32_t __fastcall SetupBreederDisciple__8VillagerFv(struct Villager* this) asm("?SetupBreederDisciple@Villager@@QAEIXZ");
// win1.41 0076a1b0 mac 1059b020 Villager::BreederDisciple(void)
bool32_t __fastcall BreederDisciple__8VillagerFv(struct Villager* this) asm("?BreederDisciple@Villager@@QAEIXZ");
// win1.41 0076a220 mac 1059af00 Villager::MissionaryDisciple(void)
bool32_t __fastcall MissionaryDisciple__8VillagerFv(struct Villager* this) asm("?MissionaryDisciple@Villager@@QAEIXZ");
// win1.41 0076a2a0 mac 1059ae60 Villager::EnterBreeder(unsigned char, unsigned char)
bool32_t __fastcall EnterBreeder__8VillagerFUcUc(struct Villager* this, const void* edx, unsigned char param_1, unsigned char param_2) asm("?EnterBreeder@Villager@@QAEIEE@Z");
// win1.41 0076a2d0 mac 1059ae00 Villager::ExitBreeder(unsigned char)
bool32_t __fastcall ExitBreeder__8VillagerFUc(struct Villager* this, const void* edx, unsigned char param_1) asm("?ExitBreeder@Villager@@QAEIE@Z");
// win1.41 0076a2f0 mac 1059ac90 Villager::AtStructureRemoveResource(MultiMapFixed *, RESOURCE_TYPE, unsigned long, bool *)
uint32_t __fastcall AtStructureRemoveResource__8VillagerFP13MultiMapFixed13RESOURCE_TYPEUlPb(struct Villager* this, const void* edx, struct MultiMapFixed* param_1, enum RESOURCE_TYPE param_2, unsigned long param_3, bool* param_4) asm("?AtStructureRemoveResource@Villager@@QAEIPAVMultiMapFixed@@W4RESOURCE_TYPE@@KPA_N@Z");
// win1.41 0076a3b0 mac 100094e0 Villager::AtStructureAddResource(MultiMapFixed *, RESOURCE_TYPE, unsigned long &, bool)
uint32_t __fastcall AtStructureAddResource__8VillagerFP13MultiMapFixed13RESOURCE_TYPERUlb(struct Villager* this, const void* edx, struct MultiMapFixed* param_1, enum RESOURCE_TYPE param_2, unsigned long* param_3, bool param_4) asm("?AtStructureAddResource@Villager@@QAEIPAVMultiMapFixed@@W4RESOURCE_TYPE@@AAK_N@Z");
// win1.41 0076a780 mac 1059a490 Villager::Drowning(void)
bool32_t __fastcall Drowning__8VillagerFv(struct Villager* this) asm("?Drowning@Villager@@QAEIXZ");
// win1.41 0076a7e0 mac 1059a340 Villager::MakeScaredStiff(void)
bool32_t __fastcall MakeScaredStiff__8VillagerFv(struct Villager* this) asm("?MakeScaredStiff@Villager@@QAEIXZ");
// win1.41 0076a8b0 mac 1059a2d0 Villager::ScaredStiff(void)
bool32_t __fastcall ScaredStiff__8VillagerFv(struct Villager* this) asm("?ScaredStiff@Villager@@QAEIXZ");
// win1.41 0076a8d0 mac 1059a060 Villager::VagrantStart(void)
bool32_t __fastcall VagrantStart__8VillagerFv(struct Villager* this) asm("?VagrantStart@Villager@@QAEIXZ");
// win1.41 0076aa60 mac 1059a010 Villager::MornDeath(void)
bool32_t __fastcall MornDeath__8VillagerFv(struct Villager* this) asm("?MornDeath@Villager@@QAEIXZ");
// win1.41 0076aa70 mac 10599fd0 Villager::EatOutside(void)
bool32_t __fastcall EatOutside__8VillagerFv(struct Villager* this) asm("?EatOutside@Villager@@QAEIXZ");
// win1.41 0076aab0 mac 10599d10 Villager::SetupInspectObject(Object *)
bool32_t __fastcall SetupInspectObject__8VillagerFP6Object(struct Villager* this, const void* edx, struct Object* param_1) asm("?SetupInspectObject@Villager@@QAEIPAVObject@@@Z");
// win1.41 0076ac40 mac 10599c00 Villager::InspectObject(void)
bool32_t __fastcall InspectObject__8VillagerFv(struct Villager* this) asm("?InspectObject@Villager@@QAEIXZ");
// win1.41 0076ace0 mac 10599b50 Villager::EnterSex(unsigned char, unsigned char)
bool32_t __fastcall EnterSex__8VillagerFUcUc(struct Villager* this, const void* edx, unsigned char param_1, unsigned char param_2) asm("?EnterSex@Villager@@QAEIEE@Z");
// win1.41 0076acf0 mac 10599a60 Villager::SetupWander(JustWholeMapXZ &, VILLAGER_STATES)
bool32_t __fastcall SetupWander__8VillagerFR14JustWholeMapXZ15VILLAGER_STATES(struct Villager* this, const void* edx, struct JustWholeMapXZ* param_1, enum VILLAGER_STATES param_2) asm("?SetupWander@Villager@@QAEIAAUJustWholeMapXZ@@W4VILLAGER_STATES@@@Z");
// win1.41 0076ad80 mac 10599960 Villager::ExitSex(unsigned char)
bool32_t __fastcall ExitSex__8VillagerFUc(struct Villager* this, const void* edx, unsigned char param_1) asm("?ExitSex@Villager@@QAEIE@Z");
// win1.41 0076b030 mac 1000ab40 Villager::IsInACreaturesHand(void)
bool32_t __fastcall IsInACreaturesHand__8VillagerFv(struct Villager* this) asm("?IsInACreaturesHand@Villager@@QAEIXZ");
// win1.41 0076b060 mac 10599640 Villager::SetupWaitForCounter(unsigned short, VILLAGER_STATES)
bool32_t __fastcall SetupWaitForCounter__8VillagerFUs15VILLAGER_STATES(struct Villager* this, const void* edx, unsigned short param_1, enum VILLAGER_STATES param_2) asm("?SetupWaitForCounter@Villager@@QAEIGW4VILLAGER_STATES@@@Z");
// win1.41 0076b090 mac 1009deb0 Villager::SetupPauseForASecond(VILLAGER_STATES)
uint32_t __fastcall SetupPauseForASecond__8VillagerF15VILLAGER_STATES(struct Villager* this, const void* edx, enum VILLAGER_STATES state) asm("?SetupPauseForASecond@Villager@@QAEIW4VILLAGER_STATES@@@Z");
// win1.41 0076b0b0 mac 1000e650 Villager::PauseForASecond(void)
bool32_t __fastcall PauseForASecond__8VillagerFv(struct Villager* this) asm("?PauseForASecond@Villager@@QAEIXZ");
// win1.41 0076b0d0 mac 105993e0 Villager::SetupPanicReaction(Reaction *, MapCoords &)
bool32_t __fastcall SetupPanicReaction__8VillagerFP8ReactionR9MapCoords(struct Villager* this, const void* edx, struct Reaction* param_1, struct MapCoords* param_2) asm("?SetupPanicReaction@Villager@@QAEIPAVReaction@@AAUMapCoords@@@Z");
// win1.41 0076b1c0 mac 10599350 Villager::PanicReaction(void)
bool32_t __fastcall PanicReaction__8VillagerFv(struct Villager* this) asm("?PanicReaction@Villager@@QAEIXZ");
// win1.41 0076b200 mac 10599180 Villager::GotoCongregateInTownAfterEmergency(void)
bool32_t __fastcall GotoCongregateInTownAfterEmergency__8VillagerFv(struct Villager* this) asm("?GotoCongregateInTownAfterEmergency@Villager@@QAEIXZ");
// win1.41 0076b300 mac 10599090 Villager::CongregateInTownAfterEmergency(void)
bool32_t __fastcall CongregateInTownAfterEmergency__8VillagerFv(struct Villager* this) asm("?CongregateInTownAfterEmergency@Villager@@QAEIXZ");
// win1.41 0076b3f0 mac 1001b410 Villager::GoAndChilloutOutsideHome(void)
bool32_t __fastcall GoAndChilloutOutsideHome__8VillagerFv(struct Villager* this) asm("?GoAndChilloutOutsideHome@Villager@@QAEIXZ");
// win1.41 0076b4e0 mac 1005fc40 Villager::SitAndChillout(void)
bool32_t __fastcall SitAndChillout__8VillagerFv(struct Villager* this) asm("?SitAndChillout@Villager@@QAEIXZ");
// win1.41 0076b570 mac 10005660 Villager::EnterSitAndChillOut(unsigned char, unsigned char)
bool32_t __fastcall EnterSitAndChillOut__8VillagerFUcUc(struct Villager* this, const void* edx, unsigned char param_1, unsigned char param_2) asm("?EnterSitAndChillOut@Villager@@QAEIEE@Z");
// win1.41 0076b590 mac 10598c80 Villager::GoAndChilloutInTown(void)
bool32_t __fastcall GoAndChilloutInTown__8VillagerFv(struct Villager* this) asm("?GoAndChilloutInTown@Villager@@QAEIXZ");
// win1.41 0076b610 mac 100118e0 Villager::GetMeToMyChillOutPos(int (Villager::)(void const *, void* , MapCoords &), MapCoords &, float, MapCoords const &)
void __fastcall GetMeToMyChillOutPos__8VillagerFM8VillagerFPCvPvR9MapCoords_iR9MapCoordsfRC9MapCoords(struct Villager* this, const void* edx, int (__fastcall* callback)(const struct Villager * param_1, const void * param_2, struct MapCoords * param_3), const void* unused_1, const void* unused_2, const void* unused_3, struct MapCoords* param_5, float param_6, struct MapCoords* param_7) asm("?GetMeToMyChillOutPos@Villager@@QAEXP81@AEHPBXPAXAAUMapCoords@@@Z2MABU2@@Z");
// win1.41 0076b7e0 mac 10598b40 Villager::ArrivesHomeFromWorship(void)
bool32_t __fastcall ArrivesHomeFromWorship__8VillagerFv(struct Villager* this) asm("?ArrivesHomeFromWorship@Villager@@QAEIXZ");
// win1.41 0076b7f0 mac 10598ae0 Villager::SleepInTentFromWorship(void)
bool32_t __fastcall SleepInTentFromWorship__8VillagerFv(struct Villager* this) asm("?SleepInTentFromWorship@Villager@@QAEIXZ");
// win1.41 0076b800 mac 10598930 Villager::BreederJustLanded(void)
bool32_t __fastcall BreederJustLanded__8VillagerFv(struct Villager* this) asm("?BreederJustLanded@Villager@@QAEIXZ");
// win1.41 0076b980 mac 1059c830 Villager::ArrivesInAbodeToPickUpExcess(void)
bool32_t __fastcall ArrivesInAbodeToPickUpExcess__8VillagerFv(struct Villager* this) asm("?ArrivesInAbodeToPickUpExcess@Villager@@QAEIXZ");
// win1.41 0076b990 mac 1059c7f0 Villager::ArrivesInAbodeToTrade(void)
bool32_t __fastcall ArrivesInAbodeToTrade__8VillagerFv(struct Villager* this) asm("?ArrivesInAbodeToTrade@Villager@@QAEIXZ");
// win1.41 0076b9a0 mac 1059c7b0 Villager::SetupFoodForWoodTrade(long)
void __fastcall SetupFoodForWoodTrade__8VillagerFl(struct Villager* this, const void* edx, long param_1) asm("?SetupFoodForWoodTrade@Villager@@QAEXJ@Z");
// win1.41 0076b9b0 mac 1059c770 Villager::ExcessFood(void)
bool32_t __fastcall ExcessFood__8VillagerFv(struct Villager* this) asm("?ExcessFood@Villager@@QAEIXZ");
// win1.41 0076b9c0 mac 1059c730 Villager::SetupWoodForFoodTrade(long)
void __fastcall SetupWoodForFoodTrade__8VillagerFl(struct Villager* this, const void* edx, long param_1) asm("?SetupWoodForFoodTrade@Villager@@QAEXJ@Z");
// win1.41 0076b9d0 mac 1059c6f0 Villager::ExcessWood(void)
bool32_t __fastcall ExcessWood__8VillagerFv(struct Villager* this) asm("?ExcessWood@Villager@@QAEIXZ");
// win1.41 0076ba60 mac 10096dd0 Villager::CheckNeededForWorship(void)
float __fastcall CheckNeededForWorship__8VillagerFv(struct Villager* this) asm("?CheckNeededForWorship@Villager@@QAEMXZ");
// win1.41 0076bae0 mac 1059ec20 Villager::CheckWorshipActivity(int)
float __fastcall CheckWorshipActivity__8VillagerFi(struct Villager* this, const void* edx, int param_1) asm("?CheckWorshipActivity@Villager@@QAEMH@Z");
// win1.41 0076bc20 mac 1059eaf0 Villager::CanIGetToTheWorshipSite(MagicTeleport * &)
bool32_t __fastcall CanIGetToTheWorshipSite__8VillagerFRP13MagicTeleport(struct Villager* this, const void* edx, struct MagicTeleport** param_1) asm("?CanIGetToTheWorshipSite@Villager@@QAEIAAPAVMagicTeleport@@@Z");
// win1.41 0076bcc0 mac 1059e8f0 Villager::GotoWorshipSiteForWorship(void)
bool32_t __fastcall GotoWorshipSiteForWorship__8VillagerFv(struct Villager* this) asm("?GotoWorshipSiteForWorship@Villager@@QAEIXZ");
// win1.41 0076bda0 mac 1059e810 Villager::SetGotoWorshipSpeed(void)
bool32_t __fastcall SetGotoWorshipSpeed__8VillagerFv(struct Villager* this) asm("?SetGotoWorshipSpeed@Villager@@QAEIXZ");
// win1.41 0076be00 mac 1059e6f0 Villager::ArrivesAtWorshipSiteForWorship(void)
bool32_t __fastcall ArrivesAtWorshipSiteForWorship__8VillagerFv(struct Villager* this) asm("?ArrivesAtWorshipSiteForWorship@Villager@@QAEIXZ");
// win1.41 0076bec0 mac 1059e520 Villager::CheckVillagerGoBackToTownFromWorship(void)
bool32_t __fastcall CheckVillagerGoBackToTownFromWorship__8VillagerFv(struct Villager* this) asm("?CheckVillagerGoBackToTownFromWorship@Villager@@QAEIXZ");
// win1.41 0076bf90 mac 1059e4b0 Villager::CheckNeededForSupplyWorship(void)
bool32_t __fastcall CheckNeededForSupplyWorship__8VillagerFv(struct Villager* this) asm("?CheckNeededForSupplyWorship@Villager@@QAEIXZ");
// win1.41 0076bfa0 mac 1059e310 Villager::GotoStoragePitForWorshipSupplies(void)
bool32_t __fastcall GotoStoragePitForWorshipSupplies__8VillagerFv(struct Villager* this) asm("?GotoStoragePitForWorshipSupplies@Villager@@QAEIXZ");
// win1.41 0076c080 mac 1059e1e0 Villager::ArrivesAtStoragePitForWorshipSupplies(void)
bool32_t __fastcall ArrivesAtStoragePitForWorshipSupplies__8VillagerFv(struct Villager* this) asm("?ArrivesAtStoragePitForWorshipSupplies@Villager@@QAEIXZ");
// win1.41 0076c100 mac 1059e190 Villager::GotoWorshipSiteWithSupplies(void)
bool32_t __fastcall GotoWorshipSiteWithSupplies__8VillagerFv(struct Villager* this) asm("?GotoWorshipSiteWithSupplies@Villager@@QAEIXZ");
// win1.41 0076c110 mac 1059e140 Villager::MoveToWorshipSiteWithSupplies(void)
bool32_t __fastcall MoveToWorshipSiteWithSupplies__8VillagerFv(struct Villager* this) asm("?MoveToWorshipSiteWithSupplies@Villager@@QAEIXZ");
// win1.41 0076c120 mac 1059e070 Villager::ExitMoveToWorshipSiteWithSupplies(unsigned char)
bool32_t __fastcall ExitMoveToWorshipSiteWithSupplies__8VillagerFUc(struct Villager* this, const void* edx, unsigned char param_1) asm("?ExitMoveToWorshipSiteWithSupplies@Villager@@QAEIE@Z");
// win1.41 0076c170 mac 1059df70 Villager::ExitMoveToWorshipSite(unsigned char)
bool32_t __fastcall ExitMoveToWorshipSite__8VillagerFUc(struct Villager* this, const void* edx, unsigned char param_1) asm("?ExitMoveToWorshipSite@Villager@@QAEIE@Z");
// win1.41 0076c1f0 mac 1059de40 Villager::ExitAtWorshipSite(unsigned char)
bool32_t __fastcall ExitAtWorshipSite__8VillagerFUc(struct Villager* this, const void* edx, unsigned char param_1) asm("?ExitAtWorshipSite@Villager@@QAE_NE@Z");
// win1.41 0076c280 mac 1059dd90 Villager::ExitGetFoodAtWorship(unsigned char)
bool32_t __fastcall ExitGetFoodAtWorship__8VillagerFUc(struct Villager* this, const void* edx, unsigned char param_1) asm("?ExitGetFoodAtWorship@Villager@@QAEIE@Z");
// win1.41 0076c2d0 mac 1059dc80 Villager::ArrivesAtWorshipSiteWithSupplies(void)
bool32_t __fastcall ArrivesAtWorshipSiteWithSupplies__8VillagerFv(struct Villager* this) asm("?ArrivesAtWorshipSiteWithSupplies@Villager@@QAEIXZ");
// win1.41 0076c390 mac 1059daf0 Villager::RestartWorshippingAtWorshipSite(void)
bool32_t __fastcall RestartWorshippingAtWorshipSite__8VillagerFv(struct Villager* this) asm("?RestartWorshippingAtWorshipSite@Villager@@QAEIXZ");
// win1.41 0076c3c0 mac 1059da60 Villager::RestartWorshippingCreature(void)
bool32_t __fastcall RestartWorshippingCreature__8VillagerFv(struct Villager* this) asm("?RestartWorshippingCreature@Villager@@QAEIXZ");
// win1.41 0076c3f0 mac 1059d990 Villager::AddVillagerToWorshipSite(void)
bool32_t __fastcall AddVillagerToWorshipSite__8VillagerFv(struct Villager* this) asm("?AddVillagerToWorshipSite@Villager@@QAEIXZ");
// win1.41 0076c440 mac 1059d850 Villager::RemoveVillagerFromWorshipSite(void)
bool32_t __fastcall RemoveVillagerFromWorshipSite__8VillagerFv(struct Villager* this) asm("?RemoveVillagerFromWorshipSite@Villager@@QAE_NXZ");
// win1.41 0076c4c0 mac 1059d740 Villager::StartWorshippingAtWorshipSite(void)
bool32_t __fastcall StartWorshippingAtWorshipSite__8VillagerFv(struct Villager* this) asm("?StartWorshippingAtWorshipSite@Villager@@QAEIXZ");
// win1.41 0076c550 mac 1059d640 Villager::StartHidingAtWorshipSite(void)
bool32_t __fastcall StartHidingAtWorshipSite__8VillagerFv(struct Villager* this) asm("?StartHidingAtWorshipSite@Villager@@QAEIXZ");
// win1.41 0076c5e0 mac 1059d530 Villager::HidingAtWorshipSite(void)
bool32_t __fastcall HidingAtWorshipSite__8VillagerFv(struct Villager* this) asm("?HidingAtWorshipSite@Villager@@QAEIXZ");
// win1.41 0076c680 mac 1059d470 Villager::WorshippingAtWorshipSite(void)
bool32_t __fastcall WorshippingAtWorshipSite__8VillagerFv(struct Villager* this) asm("?WorshippingAtWorshipSite@Villager@@QAEIXZ");
// win1.41 0076c6e0 mac 1059d310 Villager::StartWorshippingCreature(Creature *)
bool32_t __fastcall StartWorshippingCreature__8VillagerFP8Creature(struct Villager* this, const void* edx, struct Creature* param_1) asm("?StartWorshippingCreature@Villager@@QAE_NPAVCreature@@@Z");
// win1.41 0076c7c0 mac 1059d280 Villager::WorshippingCreature(void)
bool32_t __fastcall WorshippingCreature__8VillagerFv(struct Villager* this) asm("?WorshippingCreature@Villager@@QAEIXZ");
// win1.41 0076c800 mac 1059d130 Villager::ReduceVillagerLifeByChant(void)
bool32_t __fastcall ReduceVillagerLifeByChant__8VillagerFv(struct Villager* this) asm("?ReduceVillagerLifeByChant@Villager@@QAEIXZ");
// win1.41 0076c890 mac 1059d090 Villager::ProcessInWorship(void)
bool32_t __fastcall ProcessInWorship__8VillagerFv(struct Villager* this) asm("?ProcessInWorship@Villager@@QAEIXZ");
// win1.41 0076c8d0 mac 1059cfa0 Villager::CheckRequestGoHome(void)
bool32_t __fastcall CheckRequestGoHome__8VillagerFv(struct Villager* this) asm("?CheckRequestGoHome@Villager@@QAEIXZ");
// win1.41 0076c930 mac 1059ce60 Villager::CheckNeededForWorshipSiteBuilding(void)
bool32_t __fastcall CheckNeededForWorshipSiteBuilding__8VillagerFv(struct Villager* this) asm("?CheckNeededForWorshipSiteBuilding@Villager@@QAEIXZ");
// win1.41 0076c9a0 mac 1059cd40 Villager::CheckAllowedToRestAtWorshipSite(int)
bool32_t __fastcall CheckAllowedToRestAtWorshipSite__8VillagerFi(struct Villager* this, const void* edx, int param_1) asm("?CheckAllowedToRestAtWorshipSite@Villager@@QAEIH@Z");
// win1.41 0076ca30 mac 1059cbd0 Villager::GetFoodAtWorshipSite(void)
bool32_t __fastcall GetFoodAtWorshipSite__8VillagerFv(struct Villager* this) asm("?GetFoodAtWorshipSite@Villager@@QAEIXZ");
// win1.41 0076caf0 mac 1059cb80 Villager::GetFoodDesireAtWorshipSite(void)
bool32_t __fastcall GetFoodDesireAtWorshipSite__8VillagerFv(struct Villager* this) asm("?GetFoodDesireAtWorshipSite@Villager@@QAEIXZ");
// win1.41 0076cb00 mac 1059caa0 Villager::GotoAltarForRest(void)
bool32_t __fastcall GotoAltarForRest__8VillagerFv(struct Villager* this) asm("?GotoAltarForRest@Villager@@QAEIXZ");
// win1.41 0076cb80 mac 1059ca10 Villager::ArrivesAtAltarForRest(void)
bool32_t __fastcall ArrivesAtAltarForRest__8VillagerFv(struct Villager* this) asm("?ArrivesAtAltarForRest@Villager@@QAEIXZ");
// win1.41 0076cbb0 mac 1059c980 Villager::AtAltarRest(void)
bool32_t __fastcall AtAltarRest__8VillagerFv(struct Villager* this) asm("?AtAltarRest@Villager@@QAEIXZ");
// win1.41 0076cbe0 mac 1059c8f0 Villager::AtAltarFinishedRest(void)
bool32_t __fastcall AtAltarFinishedRest__8VillagerFv(struct Villager* this) asm("?AtAltarFinishedRest@Villager@@QAEIXZ");
// win1.41 0076cc00 mac 1059c880 Villager::CheckSatisfySuppyWorship(void)
bool32_t __fastcall CheckSatisfySuppyWorship__8VillagerFv(struct Villager* this) asm("?CheckSatisfySuppyWorship@Villager@@QAEIXZ");

// Override methods

// win1.41 0055cb40 mac 10571890 Villager::_dt(unsigned int)
void __fastcall __dt__8VillagerFUi(struct Base* this, const void* edx, uint32_t param_1) asm("??_GVillager@@UAEPAXI@Z");
// win1.41 007521b0 mac 1056caa0 Villager::ToBeDeleted(int)
void __fastcall ToBeDeleted__8VillagerFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@Villager@@UAEXH@Z");
// win1.41 007502f0 mac 10064390 Villager::GetPlayer(void)
struct GPlayer* __fastcall GetPlayer__8VillagerFv(struct GameThing* this) asm("?GetPlayer@Villager@@UAEPAVGPlayer@@XZ");
// win1.41 00751d50 mac 10054860 Villager::IsAvailable(void)
bool __fastcall IsAvailable__8VillagerFv(struct GameThing* this) asm("?IsAvailable@Villager@@UAE_NXZ");
// win1.41 00751f00 mac 10064360 Villager::GetTown(void)
struct Town* __fastcall GetTown__8VillagerFv(struct GameThing* this) asm("?GetTown@Villager@@UAEPAVTown@@XZ");
// win1.41 007564d0 mac 10565060 Villager::AddResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool, MapCoords const &, int)
uint32_t __fastcall AddResource__8VillagerF13RESOURCE_TYPEUlP16GInterfaceStatusbRC9MapCoordsi(struct GameThing* this, const void* edx, enum RESOURCE_TYPE param_1, uint32_t param_2, struct GInterfaceStatus* param_3, bool param_4, const struct MapCoords* param_5, int param_6) asm("?AddResource@Villager@@UAEIW4RESOURCE_TYPE@@IPAVGInterfaceStatus@@_NPBUMapCoords@@H@Z");
// win1.41 00751cf0 mac 100199f0 Villager::IsFunctional(void)
bool __fastcall IsFunctional__8VillagerFv(struct GameThing* this) asm("?IsFunctional@Villager@@UAE_NXZ");
// win1.41 0055cb30 mac 10571f80 Villager::GetDebugText(void)
char* __fastcall GetDebugText__8VillagerFv(struct GameThing* this) asm("?GetDebugText@Villager@@UAEPADXZ");
// win1.41 00754580 mac 10568980 Villager::Load(GameOSFile &)
uint32_t __fastcall Load__8VillagerFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@Villager@@UAEIAAVGameOSFile@@@Z");
// win1.41 00754280 mac 10568d70 Villager::Save(GameOSFile &)
uint32_t __fastcall Save__8VillagerFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@Villager@@UAEIAAVGameOSFile@@@Z");
// win1.41 0055cb20 mac 10571f40 Villager::GetSaveType(void)
uint32_t __fastcall GetSaveType__8VillagerFv(struct GameThing* this) asm("?GetSaveType@Villager@@UAEIXZ");
// win1.41 00754870 mac 10568900 Villager::ResolveLoad(void)
void __fastcall ResolveLoad__8VillagerFv(struct GameThing* this) asm("?ResolveLoad@Villager@@UAEXXZ");
// win1.41 0055ca70 mac 10148010 Villager::GetCreatureBeliefType(void)
uint32_t __fastcall GetCreatureBeliefType__8VillagerFv(struct GameThingWithPos* this) asm("?GetCreatureBeliefType@Villager@@UAEIXZ");
// win1.41 00751db0 mac 1056d490 Villager::GetCitadel(void)
struct Citadel* __fastcall GetCitadel__8VillagerFv(struct GameThingWithPos* this) asm("?GetCitadel@Villager@@UAEPAVCitadel@@XZ");
// win1.41 00753110 mac 1056a8c0 Villager::SetSpeedInMetres(float, int)
void __fastcall SetSpeedInMetres__8VillagerFfi(struct GameThingWithPos* this, const void* edx, float param_1, int param_2) asm("?SetSpeedInMetres@Villager@@UAEXMH@Z");
// win1.41 00756b30 mac 10563e60 Villager::IsDrowning(void)
bool __fastcall IsDrowning__8VillagerFv(struct GameThingWithPos* this) asm("?IsDrowning@Villager@@UAE_NXZ");
// win1.41 004e4c90 mac 105e3c40 Villager::CanBeHealedByCreature(Creature *)
uint32_t __fastcall CanBeHealedByCreature__8VillagerFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBeHealedByCreature@Villager@@UAEIPAVCreature@@@Z");
// win1.41 0055caa0 mac 10148110 Villager::CanBeHelpedByCreature(Creature *)
uint32_t __fastcall CanBeHelpedByCreature__8VillagerFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBeHelpedByCreature@Villager@@UAEIPAVCreature@@@Z");
// win1.41 0055ca80 mac 10148050 Villager::CanBeImpressedByCreature(Creature *)
uint32_t __fastcall CanBeImpressedByCreature__8VillagerFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBeImpressedByCreature@Villager@@UAEIPAVCreature@@@Z");
// win1.41 0055ca90 mac 101480d0 Villager::CanReceiveGifts(Creature *)
uint32_t __fastcall CanReceiveGifts__8VillagerFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanReceiveGifts@Villager@@UAEIPAVCreature@@@Z");
// win1.41 004e4b40 mac 105e4090 Villager::CanHaveMagicFoodCastOnMe(Creature *)
uint32_t __fastcall CanHaveMagicFoodCastOnMe__8VillagerFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanHaveMagicFoodCastOnMe@Villager@@UAEIPAVCreature@@@Z");
// win1.41 0055cab0 mac 1006d800 Villager::IsVillager(Creature *)
uint32_t __fastcall IsVillager__8VillagerFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?IsVillager@Villager@@UAEIPAVCreature@@@Z");
// win1.41 004e4d50 mac 105e3950 Villager::IsVillagerFarFromHome(Creature *)
uint32_t __fastcall IsVillagerFarFromHome__8VillagerFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?IsVillagerFarFromHome@Villager@@UAEIPAVCreature@@@Z");
// win1.41 004e4510 mac 105e5100 Villager::IsVillagerInTownWithoutManyBreeders(Creature *)
uint32_t __fastcall IsVillagerInTownWithoutManyBreeders__8VillagerFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?IsVillagerInTownWithoutManyBreeders@Villager@@UAEIPAVCreature@@@Z");
// win1.41 004e46d0 mac 105e4e90 Villager::IsVillagerNotWorshipping(Creature *)
uint32_t __fastcall IsVillagerNotWorshipping__8VillagerFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?IsVillagerNotWorshipping@Villager@@UAEIPAVCreature@@@Z");
// win1.41 004e4b10 mac 105e40e0 Villager::IsVillagerBelongingToOtherPlayer(Creature *)
uint32_t __fastcall IsVillagerBelongingToOtherPlayer__8VillagerFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?IsVillagerBelongingToOtherPlayer@Villager@@UAEIPAVCreature@@@Z");
// win1.41 004e4840 mac 105e4a70 Villager::IsVillagerWhoHasNotBeenImpressedRecently(Creature *)
uint32_t __fastcall IsVillagerWhoHasNotBeenImpressedRecently__8VillagerFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?IsVillagerWhoHasNotBeenImpressedRecently@Villager@@UAEIPAVCreature@@@Z");
// win1.41 004e4890 mac 105e49d0 Villager::IsVillagerWhoHasNotBeenDancedWithRecently(Creature *)
uint32_t __fastcall IsVillagerWhoHasNotBeenDancedWithRecently__8VillagerFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?IsVillagerWhoHasNotBeenDancedWithRecently@Villager@@UAEIPAVCreature@@@Z");
// win1.41 004e3e20 mac 105e68c0 Villager::DoesVillagerBelongToATownWhichIsAlreadyImpressed(Creature *)
uint32_t __fastcall DoesVillagerBelongToATownWhichIsAlreadyImpressed__8VillagerFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?DoesVillagerBelongToATownWhichIsAlreadyImpressed@Villager@@UAEIPAVCreature@@@Z");
// win1.41 0076c340 mac 1059db90 Villager::GetWorshipSite(void)
struct WorshipSite* __fastcall GetWorshipSite__8VillagerFv(struct GameThingWithPos* this) asm("?GetWorshipSite@Villager@@UAEPAVWorshipSite@@XZ");
// win1.41 004e3b60 mac 105e7030 Villager::IsDoingSomethingInteresting(Creature *)
uint32_t __fastcall IsDoingSomethingInteresting__8VillagerFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?IsDoingSomethingInteresting@Villager@@UAEIPAVCreature@@@Z");
// win1.41 00532db0 mac 102ba4d0 Villager::IsPlayingFootball(Creature *)
uint32_t __fastcall IsPlayingFootball__8VillagerFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?IsPlayingFootball@Villager@@UAEIPAVCreature@@@Z");
// win1.41 00532e00 mac 102ba3f0 Villager::IsPlayingFootballAndMySideHasJustScored(Creature *)
uint32_t __fastcall IsPlayingFootballAndMySideHasJustScored__8VillagerFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?IsPlayingFootballAndMySideHasJustScored@Villager@@UAEIPAVCreature@@@Z");
// win1.41 00532e50 mac 102ba300 Villager::IsPlayingFootballAndOtherSideHasJustScored(Creature *)
uint32_t __fastcall IsPlayingFootballAndOtherSideHasJustScored__8VillagerFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?IsPlayingFootballAndOtherSideHasJustScored@Villager@@UAEIPAVCreature@@@Z");
// win1.41 004eaba0 mac 1026e3f0 Villager::GetCreatureMimicType(void)
uint32_t __fastcall GetCreatureMimicType__8VillagerFv(struct GameThingWithPos* this) asm("?GetCreatureMimicType@Villager@@UAEIXZ");
// win1.41 004d1b40 mac 10243020 Villager::GetHowMuchCreatureWantsToLookAtMe(void)
float __fastcall GetHowMuchCreatureWantsToLookAtMe__8VillagerFv(struct GameThingWithPos* this) asm("?GetHowMuchCreatureWantsToLookAtMe@Villager@@UAEMXZ");
// win1.41 0063b9b0 mac 103da4e0 Villager::CalculateWhereIWillBeAfterNSeconds(float, LHPoint *)
void __fastcall CalculateWhereIWillBeAfterNSeconds__8VillagerFfP7LHPoint(struct GameThingWithPos* this, const void* edx, float param_1, struct LHPoint* param_2) asm("?CalculateWhereIWillBeAfterNSeconds@Villager@@UAEXMPAULHPoint@@@Z");
// win1.41 00768630 mac 10597660 Villager::IsReadyForNewScriptAction(void)
uint32_t __fastcall IsReadyForNewScriptAction__8VillagerFv(struct GameThingWithPos* this) asm("?IsReadyForNewScriptAction@Villager@@UAEIXZ");
// win1.41 0055cb10 mac 10148200 Villager::GetDeathReason(void)
enum DEATH_REASON __fastcall GetDeathReason__8VillagerFv(struct GameThingWithPos* this) asm("?GetDeathReason@Villager@@UAE?AW4DEATH_REASON@@XZ");
// win1.41 0055cac0 mac 10478e10 Villager::IsMaleVillager(void)
uint32_t __fastcall IsMaleVillager__8VillagerFv(struct GameThingWithPos* this) asm("?IsMaleVillager@Villager@@UAEIXZ");
// win1.41 0055cae0 mac 1033bc40 Villager::IsFemaleVillager(void)
uint32_t __fastcall IsFemaleVillager__8VillagerFv(struct GameThingWithPos* this) asm("?IsFemaleVillager@Villager@@UAEIXZ");
// win1.41 0055cb00 mac 1009a450 Villager::IsAChild(void)
uint32_t __fastcall IsAChild__8VillagerFv(struct GameThingWithPos* this) asm("?IsAChild@Villager@@UAEIXZ");
// win1.41 007562c0 mac 105652e0 Villager::SetSkeleton(int)
void __fastcall SetSkeleton__8VillagerFi(struct GameThingWithPos* this, const void* edx, int index) asm("?SetSkeleton@Villager@@QAEXH@Z");
// win1.41 00753f20 mac 10569710 Villager::GetQueryFirstEnumText(void)
enum HELP_TEXT __fastcall GetQueryFirstEnumText__8VillagerFv(struct GameThingWithPos* this) asm("?GetQueryFirstEnumText@Villager@@UAE?AW4HELP_TEXT@@XZ");
// win1.41 00753f90 mac 105695c0 Villager::GetQueryLastEnumText(void)
enum HELP_TEXT __fastcall GetQueryLastEnumText__8VillagerFv(struct GameThingWithPos* this) asm("?GetQueryLastEnumText@Villager@@UAE?AW4HELP_TEXT@@XZ");
// win1.41 00754050 mac 10032e70 Villager::GetFOVHelpMessageSet(void)
uint32_t __fastcall GetFOVHelpMessageSet__8VillagerFv(struct GameThingWithPos* this) asm("?GetFOVHelpMessageSet@Villager@@UAEIXZ");
// win1.41 00754060 mac 10569510 Villager::GetFOVHelpCondition(void)
uint32_t __fastcall GetFOVHelpCondition__8VillagerFv(struct GameThingWithPos* this) asm("?GetFOVHelpCondition@Villager@@UAEIXZ");
// win1.41 00753020 mac 10005a00 Villager::GetScriptObjectType(void)
uint32_t __fastcall GetScriptObjectType__8VillagerFv(struct GameThingWithPos* this) asm("?GetScriptObjectType@Villager@@UAEIXZ");
// win1.41 00756460 mac 10094080 Villager::IsReachable(void)
bool __fastcall IsReachable__8VillagerFv(struct Object* this) asm("?IsReachable@Villager@@UAE_NXZ");
// win1.41 00756450 mac 1005f5e0 Villager::InsertMapObject(void)
void __fastcall InsertMapObject__8VillagerFv(struct Object* this) asm("?InsertMapObject@Villager@@UAEXXZ");
// win1.41 00750310 mac 10097630 Villager::GetHoldType(void)
enum HOLD_TYPE __fastcall GetHoldType__8VillagerFv(struct Object* this) asm("?GetHoldType@Villager@@UAE?AW4HOLD_TYPE@@XZ");
// win1.41 00750320 mac 1009a310 Villager::GetHoldLoweringMultiplier(void)
float __fastcall GetHoldLoweringMultiplier__8VillagerFv(struct Object* this) asm("?GetHoldLoweringMultiplier@Villager@@UAEMXZ");
// win1.41 00756b40 mac 1004b210 Villager::SetLife(float)
void __fastcall SetLife__8VillagerFf(struct Object* this, const void* edx, float param_1) asm("?SetLife@Villager@@UAEXM@Z");
// win1.41 00753460 mac 1056a0d0 Villager::IncreaseLife(float)
void __fastcall IncreaseLife__8VillagerFf(struct Object* this, const void* edx, float param_1) asm("?IncreaseLife@Villager@@UAEXM@Z");
// win1.41 007502d0 mac 10570c30 Villager::DestroyedByEffect(GPlayer *, float)
uint32_t __fastcall DestroyedByEffect__8VillagerFP7GPlayerf(struct Object* this, const void* edx, struct GPlayer* param_1, float param_2) asm("?DestroyedByEffect@Villager@@UAEIPAVGPlayer@@M@Z");
// win1.41 0055c9c0 mac 10147dd0 Villager::GetMesh( const(void))
int __fastcall GetMesh__8VillagerCFv(const struct Object* this) asm("?GetMesh@Villager@@UBEHXZ");
// win1.41 0055c9d0 mac inlined Villager::GetDetailMesh(int)
int __fastcall GetDetailMesh__8VillagerFi(struct Object* this, const void* edx, int param_1) asm("?GetDetailMesh@Villager@@UAEHH@Z");
// win1.41 0051b940 mac 1004c6c0 Villager::Draw(void)
void __fastcall Draw__8VillagerFv(struct Object* this) asm("?Draw@Villager@@UAEXXZ");
// win1.41 0074ff70 mac 1004b3c0 Villager::ProcessState(void)
uint32_t __fastcall ProcessState__8VillagerFv(struct Object* this) asm("?ProcessState@Villager@@UAEIXZ");
// win1.41 0055ca50 mac 10147fb0 Villager::CanBePickedUp(void)
bool __fastcall CanBePickedUp__8VillagerFv(struct Object* this) asm("?CanBePickedUp@Villager@@UAE_NXZ");
// win1.41 007560e0 mac 10565860 Villager::GetDiscipleStateIfInteractedWith(GInterfaceStatus *, Villager *)
uint32_t __fastcall GetDiscipleStateIfInteractedWith__8VillagerFP16GInterfaceStatusP8Villager(struct Object* this, const void* edx, struct GInterfaceStatus* param_1, struct Villager* param_2) asm("?GetDiscipleStateIfInteractedWith@Villager@@UAEIPAVGInterfaceStatus@@PAVVillager@@@Z");
// win1.41 0074fc70 mac 10571530 Villager::CallVirtualFunctionsForCreation(MapCoords const &)
void __fastcall CallVirtualFunctionsForCreation__8VillagerFRC9MapCoords(struct Object* this, const void* edx, const struct MapCoords* param_1) asm("?CallVirtualFunctionsForCreation@Villager@@UAEXABUMapCoords@@@Z");
// win1.41 0055c990 mac 10147d30 Villager::IsABeliever(void)
bool32_t __fastcall IsABeliever__8VillagerFv(struct Object* this) asm("?IsABeliever@Villager@@UAE_NXZ");
// win1.41 0076a4c0 mac 1059a990 Villager::SetDying(void)
bool __fastcall SetDying__8VillagerFv(struct Object* this) asm("?SetDying@Villager@@UAE_NXZ");
// win1.41 00753040 mac inlined Villager::IsTouching_2( const(MapCoords *))
bool __fastcall IsTouching_2__8VillagerCFP9MapCoords(const struct Object* this, const void* edx, struct MapCoords* param_1) asm("?IsTouching@Villager@@UBE_NPAUMapCoords@@@Z");
// win1.41 0055c9a0 mac inlined Villager::IsTouching_3( const(Object *, float))
bool __fastcall IsTouching_3__8VillagerCFP6Objectf(const struct Object* this, const void* edx, struct Object* param_1, float param_2) asm("?IsTouching@Villager@@UBE_NPAVObject@@M@Z");
// win1.41 007564a0 mac 105651b0 Villager::ValidForPlaceInHand(GInterfaceStatus *)
uint32_t __fastcall ValidForPlaceInHand__8VillagerFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1) asm("?ValidForPlaceInHand@Villager@@UAEIPAVGInterfaceStatus@@@Z");
// win1.41 00753080 mac 1056a940 Villager::InterfaceSetInMagicHand(GInterfaceStatus *)
uint32_t __fastcall InterfaceSetInMagicHand__8VillagerFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1) asm("?InterfaceSetInMagicHand@Villager@@UAEIPAVGInterfaceStatus@@@Z");
// win1.41 00752bd0 mac 100a0960 Villager::ValidToApplyThisToObject(GInterfaceStatus *, Object *)
uint32_t __fastcall ValidToApplyThisToObject__8VillagerFP16GInterfaceStatusP6Object(struct Object* this, const void* edx, struct GInterfaceStatus* param_1, struct Object* param_2) asm("?ValidToApplyThisToObject@Villager@@UAEIPAVGInterfaceStatus@@PAVObject@@@Z");
// win1.41 00752c40 mac 1056ac90 Villager::ApplyThisToObject(GInterfaceStatus *, Object *, GestureSystemPacketData *)
uint32_t __fastcall ApplyThisToObject__8VillagerFP16GInterfaceStatusP6ObjectP23GestureSystemPacketData(struct Object* this, const void* edx, struct GInterfaceStatus* param_1, struct Object* param_2, struct GestureSystemPacketData* param_3) asm("?ApplyThisToObject@Villager@@UAEIPAVGInterfaceStatus@@PAVObject@@PAUGestureSystemPacketData@@@Z");
// win1.41 00756ae0 mac 10563ed0 Villager::ThrowObjectFromHand(GInterfaceStatus *, int)
uint32_t __fastcall ThrowObjectFromHand__8VillagerFP16GInterfaceStatusi(struct Object* this, const void* edx, struct GInterfaceStatus* param_1, int param_2) asm("?ThrowObjectFromHand@Villager@@UAEIPAVGInterfaceStatus@@H@Z");
// win1.41 00751d70 mac 1000aef0 Villager::IsEffectReceiver(EffectValues *)
uint32_t __fastcall IsEffectReceiver__8VillagerFP12EffectValues(struct Object* this, const void* edx, struct EffectValues* param_1) asm("?IsEffectReceiver@Villager@@UAEIPAVEffectValues@@@Z");
// win1.41 0076aa80 mac 10599f40 Villager::GetImportance(void)
float __fastcall GetImportance__8VillagerFv(struct Object* this) asm("?GetImportance@Villager@@UAEMXZ");
// win1.41 005efe90 mac 10385750 Villager::InitialisePhysicsFromHand(LHPoint &, LHPoint &, GInterfaceStatus *, Object *, int)
uint32_t __fastcall InitialisePhysicsFromHand__8VillagerFR7LHPointR7LHPointP16GInterfaceStatusP6Objecti(struct Object* this, const void* edx, struct LHPoint* param_1, struct LHPoint* param_2, struct GInterfaceStatus* param_3, struct Object* param_4, int param_5) asm("?InitialisePhysicsFromHand@Villager@@UAEIAAULHPoint@@0PAVGInterfaceStatus@@PAVObject@@H@Z");
// win1.41 005efef0 mac 10385670 Villager::InitialisePhysics(LHPoint const &, LHPoint const &, Object *, bool, GInterfaceStatus *)
uint32_t __fastcall InitialisePhysics__8VillagerFRC7LHPointRC7LHPointP6ObjectbP16GInterfaceStatus(struct Object* this, const void* edx, const struct LHPoint* param_1, const struct LHPoint* param_2, struct Object* param_3, bool param_4, struct GInterfaceStatus* param_5) asm("?InitialisePhysics@Villager@@UAEIABULHPoint@@0PAVObject@@_NPAVGInterfaceStatus@@@Z");
// win1.41 005eff30 mac 10385630 Villager::GetPhysicsConstantsType(void)
uint32_t __fastcall GetPhysicsConstantsType__8VillagerFv(struct Object* this) asm("?GetPhysicsConstantsType@Villager@@UAEIXZ");
// win1.41 005eff40 mac 103850b0 Villager::SetUpPhysOb(PhysOb *)
void __fastcall SetUpPhysOb__8VillagerFP6PhysOb(struct Object* this, const void* edx, struct PhysOb* param_1) asm("?SetUpPhysOb@Villager@@UAEXPAUPhysOb@@@Z");
// win1.41 005f0a60 mac 103846d0 Villager::EndPhysics(PhysicsObject *, bool)
void __fastcall EndPhysics__8VillagerFP13PhysicsObjectb(struct Object* this, const void* edx, struct PhysicsObject* param_1, bool param_2) asm("?EndPhysics@Villager@@UAEXPAVPhysicsObject@@_N@Z");
// win1.41 007564c0 mac 10565140 Villager::CanBecomeAPhysicsObject(void)
bool __fastcall CanBecomeAPhysicsObject__8VillagerFv(struct Object* this) asm("?CanBecomeAPhysicsObject@Villager@@UAE_NXZ");
// win1.41 00750ab0 mac 1056fb10 Villager::HasSunk(void)
bool __fastcall HasSunk__8VillagerFv(struct Object* this) asm("?HasSunk@Villager@@UAE_NXZ");
// win1.41 0075b400 mac 10578430 Villager::IsFireMan(void)
bool __fastcall IsFireMan__8VillagerFv(struct Object* this) asm("?IsFireMan@Villager@@UAE_NXZ");
// win1.41 00753e00 mac 10569a30 Villager::RemoveFromGame(void)
uint32_t __fastcall RemoveFromGame__8VillagerFv(struct Object* this) asm("?RemoveFromGame@Villager@@UAEIXZ");
// win1.41 0055ca30 mac 10147f70 Villager::GetTastiness(void)
uint32_t __fastcall GetTastiness__8VillagerFv(struct Object* this) asm("?GetTastiness@Villager@@UAEIXZ");
// win1.41 00751af0 mac 1056dae0 Villager::SaveObject(LHOSFile &, MapCoords const &)
uint32_t __fastcall SaveObject__8VillagerFR8LHOSFileRC9MapCoords(struct Object* this, const void* edx, struct LHOSFile* param_1, const struct MapCoords* param_2) asm("?SaveObject@Villager@@UAEIAAULHOSFile@@ABUMapCoords@@@Z");
// win1.41 00753410 mac 1056a150 Villager::SetFoodSpeedup(bool)
void __fastcall SetFoodSpeedup__8VillagerFb(struct Living* this, const void* edx, bool param_1) asm("?SetFoodSpeedup@Villager@@UAEX_N@Z");
// win1.41 0055c980 mac 10051310 Villager::IsFoodSpeedUp(void)
bool __fastcall IsFoodSpeedUp__8VillagerFv(struct Living* this) asm("?IsFoodSpeedUp@Villager@@UAE_NXZ");
// win1.41 00756ad0 mac 10563fe0 Villager::GetFinalDestPos(MapCoords *)
struct MapCoords* __fastcall GetFinalDestPos__8VillagerFP9MapCoords(struct Living* this, const void* edx, struct MapCoords* param_1) asm("?GetFinalDestPos@Villager@@UAEPAUMapCoords@@PAU2@@Z");
// win1.41 00763b00 mac 10593810 Villager::FleeingFromObjectReaction(void)
bool __fastcall FleeingFromObjectReaction__8VillagerFv(struct Living* this) asm("?FleeingFromObjectReaction@Villager@@UAE_NXZ");
// win1.41 007642c0 mac 105927e0 Villager::LookingAtObjectReaction(void)
bool __fastcall LookingAtObjectReaction__8VillagerFv(struct Living* this) asm("?LookingAtObjectReaction@Villager@@UAE_NXZ");
// win1.41 00764310 mac 10592770 Villager::FleeingAndLookingAtObjectReaction(void)
bool __fastcall FleeingAndLookingAtObjectReaction__8VillagerFv(struct Living* this) asm("?FleeingAndLookingAtObjectReaction@Villager@@UAE_NXZ");
// win1.41 00764320 mac 105926d0 Villager::FollowingObjectReaction(void)
bool __fastcall FollowingObjectReaction__8VillagerFv(struct Living* this) asm("?FollowingObjectReaction@Villager@@UAE_NXZ");
// win1.41 00764350 mac 105925b0 Villager::InspectObjectReaction(void)
bool __fastcall InspectObjectReaction__8VillagerFv(struct Living* this) asm("?InspectObjectReaction@Villager@@UAE_NXZ");
// win1.41 0076a570 mac 1059a890 Villager::Dying(void)
bool __fastcall Dying__8VillagerFv(struct Living* this) asm("?Dying@Villager@@UAE_NXZ");
// win1.41 0076a5e0 mac 1059a580 Villager::Dead(void)
bool __fastcall Dead__8VillagerFv(struct Living* this) asm("?Dead@Villager@@UAE_NXZ");
// win1.41 0076b380 mac 10598f90 Villager::BeingEaten(void)
bool __fastcall BeingEaten__8VillagerFv(struct Living* this) asm("?BeingEaten@Villager@@UAE_NXZ");
// win1.41 007646a0 mac 10591f20 Villager::GotoFoodReaction(void)
bool __fastcall GotoFoodReaction__8VillagerFv(struct Living* this) asm("?GotoFoodReaction@Villager@@UAE_NXZ");
// win1.41 007646d0 mac 10591e40 Villager::GotoWoodReaction(void)
bool __fastcall GotoWoodReaction__8VillagerFv(struct Living* this) asm("?GotoWoodReaction@Villager@@UAE_NXZ");
// win1.41 00756c60 mac 1004d520 Villager::IsMovingForAnimation(void)
bool __fastcall IsMovingForAnimation__8VillagerFv(struct Living* this) asm("?IsMovingForAnimation@Villager@@UAE_NXZ");
// win1.41 00764920 mac 10591770 Villager::ArrivesAtFoodReaction(void)
bool __fastcall ArrivesAtFoodReaction__8VillagerFv(struct Living* this) asm("?ArrivesAtFoodReaction@Villager@@UAE_NXZ");
// win1.41 00764720 mac 10591b50 Villager::ArrivesAtWoodReaction(void)
bool __fastcall ArrivesAtWoodReaction__8VillagerFv(struct Living* this) asm("?ArrivesAtWoodReaction@Villager@@UAE_NXZ");
// win1.41 0076ade0 mac 1000abe0 Villager::InHand(void)
bool __fastcall InHand__8VillagerFv(struct Living* this) asm("?InHand@Villager@@UAE_NXZ");
// win1.41 007515c0 mac 10098ff0 Villager::DecideWhatToDo(void)
bool __fastcall DecideWhatToDo__8VillagerFv(struct Living* this) asm("?DecideWhatToDo@Villager@@UAE_NXZ");
// win1.41 00751040 mac 1056f5e0 Villager::Birthday(void)
void __fastcall Birthday__8VillagerFv(struct Living* this) asm("?Birthday@Villager@@UAEXXZ");
// win1.41 007528c0 mac 1056b4c0 Villager::SetAge(unsigned long)
void __fastcall SetAge__8VillagerFUl(struct Living* this, const void* edx, uint32_t age) asm("?SetAge@Villager@@UAEXK@Z");
// win1.41 007520e0 mac 10087ab0 Villager::SetCurrentAndDestinationState(unsigned char, unsigned char)
int __fastcall SetCurrentAndDestinationState__8VillagerFUcUc(struct Living* this, const void* edx, enum VILLAGER_STATES current, enum VILLAGER_STATES destination) asm("?SetCurrentAndDestinationState@Villager@@UAEHEE@Z");
// win1.41 00756590 mac inlined Villager::CallIntoAnimationFunction(VILLAGER_STATES)
int __fastcall CallIntoAnimationFunction__8VillagerF15VILLAGER_STATES(struct Living* this, const void* edx, enum VILLAGER_STATES param_1) asm("?CallIntoAnimationFunction@Villager@@UAEHW4VILLAGER_STATES@@@Z");
// win1.41 00756620 mac inlined Villager::CallOutofAnimationFunction(VILLAGER_STATES)
int __fastcall CallOutofAnimationFunction__8VillagerF15VILLAGER_STATES(struct Living* this, const void* edx, enum VILLAGER_STATES param_1) asm("?CallOutofAnimationFunction@Villager@@UAEHW4VILLAGER_STATES@@@Z");
// win1.41 00752010 mac 1007bba0 Villager::SetTopState(unsigned char)
int __fastcall SetTopState__8VillagerFUc(struct Living* this, const void* edx, enum VILLAGER_STATES state) asm("?SetTopState@Villager@@UAEHE@Z");
// win1.41 00763470 mac 10594430 Villager::StorePreviousState(void)
void __fastcall StorePreviousState__8VillagerFv(struct Living* this) asm("?StorePreviousState@Villager@@UAEXXZ");
// win1.41 00753740 mac 10075d50 Villager::SetStateSpeed(void)
void __fastcall SetStateSpeed__8VillagerFv(struct Living* this) asm("?SetStateSpeed@Villager@@UAEXXZ");
// win1.41 00753f00 mac inlined Villager::IsFinalState(VILLAGER_STATES)
bool __fastcall IsFinalState__8VillagerF15VILLAGER_STATES(struct Living* this, const void* edx, enum VILLAGER_STATES param_1) asm("?IsFinalState@Villager@@UAE_NW4VILLAGER_STATES@@@Z");
// win1.41 00750110 mac 10066490 Villager::GetAnimId(void)
enum ANIM_LIST __fastcall GetAnimId__8VillagerFv(struct Living* this) asm("?GetAnimId@Villager@@UAE?AW4ANIM_LIST@@XZ");
// win1.41 00752320 mac inlined Villager::CallExitStateFunction(VILLAGER_STATES)
uint32_t __fastcall CallExitStateFunction__8VillagerF15VILLAGER_STATES(struct Living* this, const void* edx, enum VILLAGER_STATES param_1) asm("?CallExitStateFunction@Villager@@UAEIW4VILLAGER_STATES@@@Z");
// win1.41 00752440 mac 1007b1b0 Villager::CallEntryStateFunction(unsigned char, unsigned char)
uint32_t __fastcall CallEntryStateFunction__UcUc__8VillagerFUcUc(struct Living* this, const void* edx, enum VILLAGER_STATES current, enum VILLAGER_STATES destination) asm("?CallEntryStateFunction@Villager@@QAE_NEE@Z");
// win1.41 007523d0 mac 10075c50 Villager::CallEntryStateFunction(unsigned char)
uint32_t __fastcall CallEntryStateFunction__Uc__8VillagerFUc(struct Living* this, const void* edx, enum VILLAGER_STATES state) asm("?CallEntryStateFunction@Villager@@QAE_NE@Z");
// win1.41 007527a0 mac inlined Villager::ExitReaction(VILLAGER_STATES)
int __fastcall ExitReaction__8VillagerF15VILLAGER_STATES(struct Living* this, const void* edx, enum VILLAGER_STATES param_1) asm("?ExitReaction@Villager@@UAEHW4VILLAGER_STATES@@@Z");
// win1.41 0076b000 mac inlined Villager::ExitInHand(VILLAGER_STATES)
int __fastcall ExitInHand__8VillagerF15VILLAGER_STATES(struct Living* this, const void* edx, enum VILLAGER_STATES param_1) asm("?ExitInHand@Villager@@UAEHW4VILLAGER_STATES@@@Z");
// win1.41 0076acb0 mac inlined Villager::ExitInFlying(VILLAGER_STATES)
int __fastcall ExitInFlying__8VillagerF15VILLAGER_STATES(struct Living* this, const void* edx, enum VILLAGER_STATES param_1) asm("?ExitInFlying@Villager@@UAEHW4VILLAGER_STATES@@@Z");
// win1.41 00753690 mac 1006a4d0 Villager::SetState(unsigned long, unsigned char)
void __fastcall SetState__8VillagerFUlUc(struct Living* this, const void* edx, enum LIVING_ACTION_INDEX index, enum VILLAGER_STATES state) asm("?SetState@Villager@@UAEXKE@Z");
// win1.41 0076afe0 mac inlined Villager::EnterInHand(VILLAGER_STATES, VILLAGER_STATES)
uint32_t __fastcall EnterInHand__8VillagerF15VILLAGER_STATES15VILLAGER_STATES(struct Living* this, const void* edx, enum VILLAGER_STATES param_1, enum VILLAGER_STATES param_2) asm("?EnterInHand@Villager@@UAEIW4VILLAGER_STATES@@0@Z");
// win1.41 0055c9f0 mac inlined Villager::IsScriptState( const(VILLAGER_STATES))
bool __fastcall IsScriptState__8VillagerCF15VILLAGER_STATES(const struct Living* this, const void* edx, enum VILLAGER_STATES param_1) asm("?IsScriptState@Villager@@UBE_NW4VILLAGER_STATES@@@Z");
// win1.41 0055ca10 mac inlined Villager::IsScriptInterruptableState( const(VILLAGER_STATES))
bool __fastcall IsScriptInterruptableState__8VillagerCF15VILLAGER_STATES(const struct Living* this, const void* edx, enum VILLAGER_STATES param_1) asm("?IsScriptInterruptableState@Villager@@UBE_NW4VILLAGER_STATES@@@Z");
// win1.41 00752530 mac inlined Villager::IsStateExitFunctionSameAs( const(VILLAGER_STATES))
bool __fastcall IsStateExitFunctionSameAs__8VillagerCF15VILLAGER_STATES(const struct Living* this, const void* edx, enum VILLAGER_STATES param_1) asm("?IsStateExitFunctionSameAs@Villager@@UBE_NW4VILLAGER_STATES@@@Z");
// win1.41 007528b0 mac 1056b830 Villager::DebugShowTime(unsigned long, unsigned char, unsigned char)
uint32_t __fastcall DebugShowTime__8VillagerFUlUcUc(struct Living* this, const void* edx, uint32_t param_1, uint8_t param_2, uint8_t param_3) asm("?DebugShowTime@Villager@@UAEIIEE@Z");
// win1.41 00764df0 mac 10590f30 Villager::IsInterestedInFoodObject(Object *)
bool __fastcall IsInterestedInFoodObject__8VillagerFP6Object(struct Living* this, const void* edx, struct Object* param_1) asm("?IsInterestedInFoodObject@Villager@@UAE_NPAVObject@@@Z");
// win1.41 00764f60 mac 10590c40 Villager::IsInterestedInWoodObject(Object *)
bool __fastcall IsInterestedInWoodObject__8VillagerFP6Object(struct Living* this, const void* edx, struct Object* param_1) asm("?IsInterestedInWoodObject@Villager@@UAE_NPAVObject@@@Z");
// win1.41 00763390 mac 10021260 Villager::IsAvailableForReaction(REACTION)
bool __fastcall IsAvailableForReaction__8VillagerF8REACTION(struct Living* this, const void* edx, enum REACTION param_1) asm("?IsAvailableForReaction@Villager@@UAE_NW4REACTION@@@Z");
// win1.41 00763410 mac 1000edf0 Villager::IsAvailableForBeliefButNotReaction(REACTION)
bool __fastcall IsAvailableForBeliefButNotReaction__8VillagerF8REACTION(struct Living* this, const void* edx, enum REACTION param_1) asm("?IsAvailableForBeliefButNotReaction@Villager@@UAE_NW4REACTION@@@Z");
// win1.41 007634c0 mac 100072a0 Villager::UpdateHowImpressed(Reaction *, int)
void __fastcall UpdateHowImpressed__8VillagerFP8Reactioni(struct Living* this, const void* edx, struct Reaction* param_1, int param_2) asm("?UpdateHowImpressed@Villager@@UAEXPAVReaction@@H@Z");
// win1.41 00763440 mac inlined Villager::AddReaction(Reaction *, VILLAGER_STATES)
void __fastcall AddReaction__8VillagerFP8Reaction15VILLAGER_STATES(struct Living* this, const void* edx, struct Reaction* param_1, enum VILLAGER_STATES param_2) asm("?AddReaction@Villager@@UAEXPAVReaction@@W4VILLAGER_STATES@@@Z");
// win1.41 007637d0 mac 105941a0 Villager::StopReacting(void)
void __fastcall StopReacting__8VillagerFv(struct Living* this) asm("?StopReacting@Villager@@UAEXXZ");
// win1.41 00751e10 mac 1056d350 Villager::ResetStateAfterReacting(void)
void __fastcall ResetStateAfterReacting__8VillagerFv(struct Living* this) asm("?ResetStateAfterReacting@Villager@@UAEXXZ");
// win1.41 00763aa0 mac 105939d0 Villager::SetupLookAtObject(GameThingWithPos *, Reaction *)
void __fastcall SetupLookAtObject__8VillagerFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2) asm("?SetupLookAtObject@Villager@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z");
// win1.41 00763ac0 mac 10593960 Villager::SetupLookAtSpell(GameThingWithPos *, Reaction *)
void __fastcall SetupLookAtSpell__8VillagerFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2) asm("?SetupLookAtSpell@Villager@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z");
// win1.41 00763ae0 mac 105938e0 Villager::SetupLookAtNiceSpell(GameThingWithPos *, Reaction *)
void __fastcall SetupLookAtNiceSpell__8VillagerFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2) asm("?SetupLookAtNiceSpell@Villager@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z");
// win1.41 00767630 mac 10596820 Villager::SetupReactToCreature(GameThingWithPos *, Reaction *)
void __fastcall SetupReactToCreature__8VillagerFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2) asm("?SetupReactToCreature@Villager@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z");
// win1.41 00765b70 mac 1058fc00 Villager::SetupReactToWood(GameThingWithPos *, Reaction *)
void __fastcall SetupReactToWood__8VillagerFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2) asm("?SetupReactToWood@Villager@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z");
// win1.41 00763820 mac 10593f50 Villager::SetupReactToMagicTree(GameThingWithPos *, Reaction *)
void __fastcall SetupReactToMagicTree__8VillagerFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2) asm("?SetupReactToMagicTree@Villager@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z");
// win1.41 007639d0 mac 10593a40 Villager::SetupReactToFlyingObject(GameThingWithPos *, Reaction *)
void __fastcall SetupReactToFlyingObject__8VillagerFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2) asm("?SetupReactToFlyingObject@Villager@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z");
// win1.41 00765540 mac 10590390 Villager::SetupReactToFire(GameThingWithPos *, Reaction *)
void __fastcall SetupReactToFire__8VillagerFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2) asm("?SetupReactToFire@Villager@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z");
// win1.41 00765c60 mac 1058f820 Villager::SetupReactToMagicShield(GameThingWithPos *, Reaction *)
void __fastcall SetupReactToMagicShield__8VillagerFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2) asm("?SetupReactToMagicShield@Villager@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z");
// win1.41 00766010 mac 1058f360 Villager::SetupReactToNewBuilding(GameThingWithPos *, Reaction *)
void __fastcall SetupReactToNewBuilding__8VillagerFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2) asm("?SetupReactToNewBuilding@Villager@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z");
// win1.41 00766e30 mac 1058d620 Villager::SetupReactToFight(GameThingWithPos *, Reaction *)
void __fastcall SetupReactToFight__8VillagerFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2) asm("?SetupReactToFight@Villager@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z");
// win1.41 00766250 mac 1058f020 Villager::SetupReactToTeleport(GameThingWithPos *, Reaction *)
void __fastcall SetupReactToTeleport__8VillagerFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2) asm("?SetupReactToTeleport@Villager@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z");
// win1.41 007665b0 mac 1058e7d0 Villager::SetupReactToDeath(GameThingWithPos *, Reaction *)
void __fastcall SetupReactToDeath__8VillagerFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2) asm("?SetupReactToDeath@Villager@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z");
// win1.41 00766620 mac 1058e6f0 Villager::SetupReactToDroppedByHand(GameThingWithPos *, Reaction *)
void __fastcall SetupReactToDroppedByHand__8VillagerFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2) asm("?SetupReactToDroppedByHand@Villager@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z");
// win1.41 007668c0 mac 1058e200 Villager::SetupReactToFainting(GameThingWithPos *, Reaction *)
void __fastcall SetupReactToFainting__8VillagerFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2) asm("?SetupReactToFainting@Villager@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z");
// win1.41 007668f0 mac 1058e110 Villager::SetupReactToConfused(GameThingWithPos *, Reaction *)
void __fastcall SetupReactToConfused__8VillagerFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2) asm("?SetupReactToConfused@Villager@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z");
// win1.41 00766a20 mac 1058de00 Villager::SetupReactToFallingTree(GameThingWithPos *, Reaction *)
void __fastcall SetupReactToFallingTree__8VillagerFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2) asm("?SetupReactToFallingTree@Villager@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z");
// win1.41 00766a60 mac 1058dce0 Villager::SetupReactToCrowd(GameThingWithPos *, Reaction *)
void __fastcall SetupReactToCrowd__8VillagerFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2) asm("?SetupReactToCrowd@Villager@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z");
// win1.41 007671e0 mac 1058ce20 Villager::SetupReactToBreeder(GameThingWithPos *, Reaction *)
void __fastcall SetupReactToBreeder__8VillagerFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2) asm("?SetupReactToBreeder@Villager@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z");
// win1.41 00763990 mac 10593b90 Villager::SetupFleeFromPredator(GameThingWithPos *, Reaction *)
void __fastcall SetupFleeFromPredator__8VillagerFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2) asm("?SetupFleeFromPredator@Villager@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z");
// win1.41 00766fd0 mac 1058cfd0 Villager::SetupReactToTownCelebration(GameThingWithPos *, Reaction *)
void __fastcall SetupReactToTownCelebration__8VillagerFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2) asm("?SetupReactToTownCelebration@Villager@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z");
// win1.41 007672f0 mac 1058cae0 Villager::SetupReactToVillagerInHand(GameThingWithPos *, Reaction *)
void __fastcall SetupReactToVillagerInHand__8VillagerFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2) asm("?SetupReactToVillagerInHand@Villager@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z");
// win1.41 00767490 mac 1058c650 Villager::SetupReactToBurningObjectInHand(GameThingWithPos *, Reaction *)
void __fastcall SetupReactToBurningObjectInHand__8VillagerFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2) asm("?SetupReactToBurningObjectInHand@Villager@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z");
// win1.41 007674b0 mac 1058c4f0 Villager::SetupReactToMagicShieldStruck(GameThingWithPos *, Reaction *)
void __fastcall SetupReactToMagicShieldStruck__8VillagerFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2) asm("?SetupReactToMagicShieldStruck@Villager@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z");
// win1.41 00767520 mac 1058c460 Villager::SetupReactToMagicShieldDestroyed(GameThingWithPos *, Reaction *)
void __fastcall SetupReactToMagicShieldDestroyed__8VillagerFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2) asm("?SetupReactToMagicShieldDestroyed@Villager@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z");
// win1.41 007676e0 mac 10596540 Villager::ReactToCreaturePriority(Reaction *, Reaction *)
uint8_t __fastcall ReactToCreaturePriority__8VillagerFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2) asm("?ReactToCreaturePriority@Villager@@UAEEPAVReaction@@0@Z");
// win1.41 00765260 mac 105908a0 Villager::ReactToFlyingObjectPriority(Reaction *, Reaction *)
uint8_t __fastcall ReactToFlyingObjectPriority__8VillagerFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2) asm("?ReactToFlyingObjectPriority@Villager@@UAEEPAVReaction@@0@Z");
// win1.41 00765610 mac 10590060 Villager::ReactToFirePriority(Reaction *, Reaction *)
uint8_t __fastcall ReactToFirePriority__8VillagerFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2) asm("?ReactToFirePriority@Villager@@UAEEPAVReaction@@0@Z");
// win1.41 00765bb0 mac 1058fa80 Villager::ReactToMagicShieldPriority(Reaction *, Reaction *)
uint8_t __fastcall ReactToMagicShieldPriority__8VillagerFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2) asm("?ReactToMagicShieldPriority@Villager@@UAEEPAVReaction@@0@Z");
// win1.41 00766df0 mac 1058d6d0 Villager::ReactToFightPriority(Reaction *, Reaction *)
uint8_t __fastcall ReactToFightPriority__8VillagerFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2) asm("?ReactToFightPriority@Villager@@UAEEPAVReaction@@0@Z");
// win1.41 00766200 mac 1058f150 Villager::ReactToTeleportPriority(Reaction *, Reaction *)
uint8_t __fastcall ReactToTeleportPriority__8VillagerFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2) asm("?ReactToTeleportPriority@Villager@@UAEEPAVReaction@@0@Z");
// win1.41 00766440 mac 1058eb60 Villager::ReactToDeathPriority(Reaction *, Reaction *)
uint8_t __fastcall ReactToDeathPriority__8VillagerFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2) asm("?ReactToDeathPriority@Villager@@UAEEPAVReaction@@0@Z");
// win1.41 007664b0 mac 1058e910 Villager::ReactToDroppedByHandPriority(Reaction *, Reaction *)
uint8_t __fastcall ReactToDroppedByHandPriority__8VillagerFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2) asm("?ReactToDroppedByHandPriority@Villager@@UAEEPAVReaction@@0@Z");
// win1.41 00766a10 mac 1058deb0 Villager::ReactToFallingTreePriority(Reaction *, Reaction *)
uint8_t __fastcall ReactToFallingTreePriority__8VillagerFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2) asm("?ReactToFallingTreePriority@Villager@@UAEEPAVReaction@@0@Z");
// win1.41 00766a50 mac 1058dd90 Villager::ReactToCrowdPriority(Reaction *, Reaction *)
uint8_t __fastcall ReactToCrowdPriority__8VillagerFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2) asm("?ReactToCrowdPriority@Villager@@UAEEPAVReaction@@0@Z");
// win1.41 00767210 mac 1058ccf0 Villager::ReactToBreederPriority(Reaction *, Reaction *)
uint8_t __fastcall ReactToBreederPriority__8VillagerFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2) asm("?ReactToBreederPriority@Villager@@UAEEPAVReaction@@0@Z");
// win1.41 00767180 mac 1058ced0 Villager::ReactToTownCelebrationPriority(Reaction *, Reaction *)
uint8_t __fastcall ReactToTownCelebrationPriority__8VillagerFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2) asm("?ReactToTownCelebrationPriority@Villager@@UAEEPAVReaction@@0@Z");
// win1.41 00763850 mac 10593d10 Villager::FleeFromPredatorPriority(Reaction *, Reaction *)
uint8_t __fastcall FleeFromPredatorPriority__8VillagerFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2) asm("?FleeFromPredatorPriority@Villager@@UAEEPAVReaction@@0@Z");
// win1.41 00767320 mac 1058c970 Villager::ReactToVillagerInHandPriority(Reaction *, Reaction *)
uint8_t __fastcall ReactToVillagerInHandPriority__8VillagerFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2) asm("?ReactToVillagerInHandPriority@Villager@@UAEEPAVReaction@@0@Z");
// win1.41 00767430 mac 1058c710 Villager::ReactToBurningObjectInHandPriority(Reaction *, Reaction *)
uint8_t __fastcall ReactToBurningObjectInHandPriority__8VillagerFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2) asm("?ReactToBurningObjectInHandPriority@Villager@@UAEEPAVReaction@@0@Z");
// win1.41 00767540 mac 1058c2b0 Villager::ReactToMagicShieldStruckPriority(Reaction *, Reaction *)
uint8_t __fastcall ReactToMagicShieldStruckPriority__8VillagerFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2) asm("?ReactToMagicShieldStruckPriority@Villager@@UAEEPAVReaction@@0@Z");
// win1.41 007675a0 mac 1058c230 Villager::ReactToMagicShieldDestroyedPriority(Reaction *, Reaction *)
uint8_t __fastcall ReactToMagicShieldDestroyedPriority__8VillagerFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2) asm("?ReactToMagicShieldDestroyedPriority@Villager@@UAEEPAVReaction@@0@Z");
// win1.41 00763980 mac 10593c90 Villager::ReactToScaffoldPriority(Reaction *, Reaction *)
uint8_t __fastcall ReactToScaffoldPriority__8VillagerFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2) asm("?ReactToScaffoldPriority@Villager@@UAEEPAVReaction@@0@Z");
// win1.41 007640a0 mac 10592e20 Villager::NumGameTurnsToReactToPredatorFunction(GameThingWithPos *, unsigned long, float)
uint32_t __fastcall NumGameTurnsToReactToPredatorFunction__8VillagerFP16GameThingWithPosUlf(struct Living* this, const void* edx, struct GameThingWithPos* param_1, uint32_t param_2, float param_3) asm("?NumGameTurnsToReactToPredatorFunction@Villager@@UAEIPAVGameThingWithPos@@IM@Z");
// win1.41 007640e0 mac 10592d30 Villager::NumGameTurnsBeforeReactingAgainToPredatorFunction(GameThingWithPos *, unsigned long, float)
uint32_t __fastcall NumGameTurnsBeforeReactingAgainToPredatorFunction__8VillagerFP16GameThingWithPosUlf(struct Living* this, const void* edx, struct GameThingWithPos* param_1, uint32_t param_2, float param_3) asm("?NumGameTurnsBeforeReactingAgainToPredatorFunction@Villager@@UAEIPAVGameThingWithPos@@IM@Z");
// win1.41 007648d0 mac 10591a30 Villager::StandardNumGameTurnsBeforeReactingToWoodAgainFunction(GameThingWithPos *, unsigned long, float)
uint32_t __fastcall StandardNumGameTurnsBeforeReactingToWoodAgainFunction__8VillagerFP16GameThingWithPosUlf(struct Living* this, const void* edx, struct GameThingWithPos* param_1, uint32_t param_2, float param_3) asm("?StandardNumGameTurnsBeforeReactingToWoodAgainFunction@Villager@@UAEIPAVGameThingWithPos@@IM@Z");
// win1.41 00764110 mac 10592ca0 Villager::NumGameTurnsToReactToBurningObjectFunction(GameThingWithPos *, unsigned long, float)
uint32_t __fastcall NumGameTurnsToReactToBurningObjectFunction__8VillagerFP16GameThingWithPosUlf(struct Living* this, const void* edx, struct GameThingWithPos* param_1, uint32_t param_2, float param_3) asm("?NumGameTurnsToReactToBurningObjectFunction@Villager@@UAEIPAVGameThingWithPos@@IM@Z");
// win1.41 00764130 mac 10592b70 Villager::NumGameTurnsBeforeReactingAgainToBurningObjectFunction(GameThingWithPos *, unsigned long, float)
uint32_t __fastcall NumGameTurnsBeforeReactingAgainToBurningObjectFunction__8VillagerFP16GameThingWithPosUlf(struct Living* this, const void* edx, struct GameThingWithPos* param_1, uint32_t param_2, float param_3) asm("?NumGameTurnsBeforeReactingAgainToBurningObjectFunction@Villager@@UAEIPAVGameThingWithPos@@IM@Z");
// win1.41 007641a0 mac 10592a30 Villager::NumGameTurnsToReactToShieldFunction(GameThingWithPos *, unsigned long, float)
uint32_t __fastcall NumGameTurnsToReactToShieldFunction__8VillagerFP16GameThingWithPosUlf(struct Living* this, const void* edx, struct GameThingWithPos* param_1, uint32_t param_2, float param_3) asm("?NumGameTurnsToReactToShieldFunction@Villager@@UAEIPAVGameThingWithPos@@IM@Z");
// win1.41 00764230 mac 105928c0 Villager::NumGameTurnsBeforeReactingToShieldAgainFunction(GameThingWithPos *, unsigned long, float)
uint32_t __fastcall NumGameTurnsBeforeReactingToShieldAgainFunction__8VillagerFP16GameThingWithPosUlf(struct Living* this, const void* edx, struct GameThingWithPos* param_1, uint32_t param_2, float param_3) asm("?NumGameTurnsBeforeReactingToShieldAgainFunction@Villager@@UAEIPAVGameThingWithPos@@IM@Z");
// win1.41 0055c970 mac 10064ef0 Villager::IsChild(void)
bool __fastcall IsChild__8VillagerFv(struct Living* this) asm("?IsChild@Villager@@UAE_NXZ");
// win1.41 00751dd0 mac 1004ec00 Villager::GetFinalState(void) const
enum VILLAGER_STATES __fastcall GetFinalState__8VillagerCFv(const struct Living* this) asm("?GetFinalState@Villager@@UBE?AW4VILLAGER_STATES@@XZ");
// win1.41 00751510 mac 1056ec00 Villager::RemoveFromDance(int)
void __fastcall RemoveFromDance__8VillagerFi(struct Living* this, const void* edx, int param_1) asm("?RemoveFromDance@Villager@@UAEXH@Z");
// win1.41 00759b80 mac 10577060 Villager::SetStateAfterFinishingDance(void)
void __fastcall SetStateAfterFinishingDance__8VillagerFv(struct Living* this) asm("?SetStateAfterFinishingDance@Villager@@UAEXXZ");
// win1.41 0075bae0 mac 1057b530 Villager::CalculateLifeDesire(void)
float __fastcall CalculateLifeDesire__8VillagerFv(struct Living* this) asm("?CalculateLifeDesire@Villager@@UAEMXZ");
// win1.41 004174a0 mac inlined Villager::MoveAllowedForChessGame(void)
bool __fastcall MoveAllowedForChessGame__8VillagerFv(struct Living* this) asm("?MoveAllowedForChessGame@Villager@@UAE_NXZ");
// win1.41 004174b0 mac inlined Villager::AttackAllowedForChessGame(void)
bool __fastcall AttackAllowedForChessGame__8VillagerFv(struct Living* this) asm("?AttackAllowedForChessGame@Villager@@UAE_NXZ");
// win1.41 004174c0 mac inlined Villager::AddToBoxPositionForChessGame(int, int)
void __fastcall AddToBoxPositionForChessGame__8VillagerFii(struct Living* this, const void* edx, int param_1, int param_2) asm("?AddToBoxPositionForChessGame@Villager@@UAEXHH@Z");
// win1.41 004174d0 mac inlined Villager::GetBoxXForChessGame(void)
int __fastcall GetBoxXForChessGame__8VillagerFv(struct Living* this) asm("?GetBoxXForChessGame@Villager@@UAEHXZ");
// win1.41 004174e0 mac inlined Villager::GetBoxZForChessGame(void)
int __fastcall GetBoxZForChessGame__8VillagerFv(struct Living* this) asm("?GetBoxZForChessGame@Villager@@UAEHXZ");
// win1.41 004174f0 mac inlined Villager::SetBoxXForChessGame(int)
void __fastcall SetBoxXForChessGame__8VillagerFi(struct Living* this, const void* edx, int param_1) asm("?SetBoxXForChessGame@Villager@@UAEXH@Z");
// win1.41 00417500 mac inlined Villager::SetBoxZForChessGame(int)
void __fastcall SetBoxZForChessGame__8VillagerFi(struct Living* this, const void* edx, int param_1) asm("?SetBoxZForChessGame@Villager@@UAEXH@Z");
// win1.41 00417510 mac inlined Villager::GetTeamForChessGame(void)
uint32_t __fastcall GetTeamForChessGame__8VillagerFv(struct Living* this) asm("?GetTeamForChessGame@Villager@@UAEIXZ");
// win1.41 00473ee0 mac inlined Villager::IsPosValidForTurnAngle(MapCoords const &)
bool __fastcall IsPosValidForTurnAngle__8VillagerFRC9MapCoords(struct Living* this, const void* edx, const struct MapCoords* param_1) asm("?IsPosValidForTurnAngle@Villager@@UAE_NABUMapCoords@@@Z");
// win1.41 0055ca40 mac 100c54f0 Villager::GetVillagerName(void)
const char* __fastcall GetVillagerName__8VillagerFv(struct Villager* this) asm("?GetVillagerName@Villager@@UAEPBDXZ");
// win1.41 0051b510 mac 10057c40 Villager::DrawVillagerInfo(void)
uint32_t __fastcall DrawVillagerInfo__8VillagerFv(struct Villager* this) asm("?DrawVillagerInfo@Villager@@UAEIXZ");

DECLARE_LH_LINKED_LIST(Villager);

DECLARE_LH_LIST_HEAD(Villager);

// win1.41 004077f0 mac 10139990 LHListHead<Villager>::AddToLast(Villager *)
void __fastcall AddToLast__21LHListHead_8Villager_FP8Villager(struct LHListHead__Villager* this, const void* edx, struct Villager* element) asm("?AddToLast@?$LHListHead@VVillager@@@@QAEXPAVVillager@@@Z");

struct MissionaryControl
{
  struct GameThingWithPos super;  /* 0x0 */
};
static_assert(sizeof(struct MissionaryControl) == 0x28, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c23698 mac inlined MissionaryControl::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__17MissionaryControl asm("??_R0?AVMissionaryControl@@@8");
// win1.41 009b9d80 mac inlined MissionaryControl::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__17MissionaryControl asm("??_R1A@?0A@A@MissionaryControl@@8");
// win1.41 009b9d98 mac inlined MissionaryControl::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__17MissionaryControl asm("??_R2MissionaryControl@@8");
// win1.41 009b9db0 mac inlined MissionaryControl::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__17MissionaryControl asm("??_R3MissionaryControl@@8");
// win1.41 009b9dc0 mac 109e718c MissionaryControl::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__17MissionaryControl asm("??_R4MissionaryControl@@6B@");
// win1.41 0099a424 mac 109e71b0 MissionaryControl::`vftable'
extern const struct GameThingWithPosVftable __vt__17MissionaryControl asm("??_7MissionaryControl@@6B@");

// Constructors

// win1.41 007566c0 mac 10564b90 MissionaryControl::MissionaryControl(void)
struct MissionaryControl* __fastcall __ct__17MissionaryControlFv(struct MissionaryControl* this) asm("??0MissionaryControl@@QAE@XZ");
// win1.41 00756760 mac 10564aa0 MissionaryControl::MissionaryControl(Villager *, GPlayer *)
struct MissionaryControl* __fastcall __ct__17MissionaryControlFP8VillagerP7GPlayer(struct MissionaryControl* this, const void* edx, struct Villager* param_1, struct GPlayer* param_2) asm("??0MissionaryControl@@QAE@PAVVillager@@PAVGPlayer@@@Z");

// Non-virtual Destructors

// win1.41 007567b0 mac inlined MissionaryControl::_dt(void)
void __fastcall __dt__17MissionaryControlFv(struct MissionaryControl* this) asm("??1MissionaryControl@@UAE@XZ");

// Non-virtual methods

// win1.41 007567c0 mac 10564970 MissionaryControl::GetImpressiveValue(void)
float __fastcall GetImpressiveValue__17MissionaryControlFv(struct MissionaryControl* this) asm("?GetImpressiveValue@MissionaryControl@@QAEMXZ");
// win1.41 007567e0 mac 105647f0 MissionaryControl::Process(void)
void __fastcall Process__17MissionaryControlFv(struct MissionaryControl* this) asm("?Process@MissionaryControl@@QAEXXZ");

// Override methods

// win1.41 00756740 mac 10564a00 MissionaryControl::_dt(unsigned int)
void __fastcall __dt__17MissionaryControlFUi(struct Base* this, const void* edx, uint32_t param_1) asm("??_GMissionaryControl@@UAEPAXI@Z");
// win1.41 00756870 mac 10564750 MissionaryControl::ToBeDeleted(int)
void __fastcall ToBeDeleted__17MissionaryControlFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@MissionaryControl@@UAEXH@Z");
// win1.41 00756700 mac 10494550 MissionaryControl::GetPlayer(void)
struct GPlayer* __fastcall GetPlayer__17MissionaryControlFv(struct GameThing* this) asm("?GetPlayer@MissionaryControl@@UAEPAVGPlayer@@XZ");
// win1.41 00756730 mac 10563970 MissionaryControl::GetDebugText(void)
char* __fastcall GetDebugText__17MissionaryControlFv(struct GameThing* this) asm("?GetDebugText@MissionaryControl@@UAEPADXZ");
// win1.41 007568a0 mac 105646b0 MissionaryControl::Load(GameOSFile &)
uint32_t __fastcall Load__17MissionaryControlFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@MissionaryControl@@UAEIAAVGameOSFile@@@Z");
// win1.41 007568e0 mac 10564610 MissionaryControl::Save(GameOSFile &)
uint32_t __fastcall Save__17MissionaryControlFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@MissionaryControl@@UAEIAAVGameOSFile@@@Z");
// win1.41 00756720 mac 10563930 MissionaryControl::GetSaveType(void)
uint32_t __fastcall GetSaveType__17MissionaryControlFv(struct GameThing* this) asm("?GetSaveType@MissionaryControl@@UAEIXZ");
// win1.41 00756920 mac 10564510 MissionaryControl::GetImpressiveValue(Living *, Reaction *)
float __fastcall GetImpressiveValue__17MissionaryControlFP6LivingP8Reaction(struct GameThingWithPos* this, const void* edx, struct Living* param_1, struct Reaction* param_2) asm("?GetImpressiveValue@MissionaryControl@@UAEMPAVLiving@@PAVReaction@@@Z");
// win1.41 00756710 mac 105638f0 MissionaryControl::GetText(void)
const char* __fastcall GetText__17MissionaryControlFv(struct GameThingWithPos* this) asm("?GetText@MissionaryControl@@UAEPBDXZ");

// win1.41 00762220 mac 10589cd0 ChildBorn(Villager &)
struct Villager* __fastcall ChildBorn__FR8Villager(struct Villager* this) asm("?ChildBorn@@YEPAVVillager@@AAV1@@Z");
// win1.41 00757a50 mac 1002ab10 GetNextDstPromemade(Creche *, long &, MapCoords *, MapCoords const &)
void __cdecl GetNextDstPromemade__FP6CrecheRlP9MapCoordsRC9MapCoords(struct Creche* param_1, long* param_2, struct MapCoords* param_3, const struct MapCoords* param_4) asm("?GetNextDstPromemade@@YAXPAVCreche@@AAJPAUMapCoords@@ABU2@@Z");
// win1.41 0075a440 mac 10579b40 GetViaPoint(MapCoords const &, MapCoords const &, MapCoords const &, float, MapCoords &, float, bool *, bool *, float)
float __stdcall GetViaPoint__FRC9MapCoordsRC9MapCoordsRC9MapCoordsfR9MapCoordsfPbPbf(const struct MapCoords* param_1, const struct MapCoords* param_2, const struct MapCoords* param_3, float param_4, struct MapCoords* param_5, float param_6, bool* param_7, bool* param_8, float param_9) asm("?GetViaPoint@@YGMABUMapCoords@@00MAAU1@MPA_N2M@Z");
// win1.41 0075bb60 mac 10066f70 POWER<float>(float, ulong)
float __cdecl POWER_f___FfUl(float param_0, uint32_t param_1);

#endif /* BW1_DECOMP_VILLAGER_INCLUDED_H */
