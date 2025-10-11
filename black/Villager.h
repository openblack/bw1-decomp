#ifndef BW1_DECOMP_VILLAGER_INCLUDED_H
#define BW1_DECOMP_VILLAGER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For int16_t, uint16_t, uint32_t, uint8_t */

#include <chlasm/AllMeshes.h> /* For enum ANIM_LIST */
#include <chlasm/Enum.h> /* For RESOURCE_TYPE_LAST, enum DEATH_REASON, enum HOLD_TYPE, enum REACTION, enum RESOURCE_TYPE */
#include <chlasm/GStates.h> /* For VILLAGER_STATE_LAST_STATE, enum VILLAGER_STATES */
#include <chlasm/HelpTextEnums.h> /* For enum HELP_TEXT */
#include <lionhead/lhlib/ver5.0/LHLinkedList.h> /* For DECLARE_LH_LINKED_LIST */
#include <lionhead/lhlib/ver5.0/LHListHead.h> /* For DECLARE_LH_LIST_HEAD */
#include <reversing_utils/re_common.h> /* For bool32_t */

#include "GameThing.h" /* For struct GameThing */
#include "GameThingWithPos.h" /* For struct GameThingWithPos */
#include "Living.h" /* For struct Living, struct LivingVftable */
#include "LivingAction.h" /* For enum LIVING_ACTION_INDEX, struct Living__StateTableEntry */
#include "Object.h" /* For struct Object */

// Forward Declares

struct Abode;
struct Base;
struct BuildingSite;
struct Citadel;
struct Creature;
struct EffectValues;
struct FireEffect;
struct Football;
struct GInterfaceStatus;
struct GPlayer;
struct GVillagerInfo;
struct GameOSFile;
struct GameThingVftable;
struct GameThingWithPosVftable;
struct GestureSystemPacketData;
struct LHOSFile;
struct LHPoint;
struct MapCoords;
struct ObjectVftable;
struct PhysOb;
struct PhysicsObject;
struct Reaction;
struct Town;
struct Villager;
struct WorshipSite;

struct Villager__StateTable
{
  struct Living__StateTableEntry entries[VILLAGER_STATE_LAST_STATE];  /* 0x0 */
};
static_assert(sizeof(struct Villager__StateTable) == 0x8f70, "Data type is of wrong size");

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
struct Living__StateTableEntry* __cdecl GetStateTable__8VillagerFv(enum VILLAGER_STATES state);
// win1.41 0074fbe0 mac 10571750 Villager::Create(MapCoords const &, GVillagerInfo const *, unsigned long, int)
struct Villager* __cdecl Create__8VillagerFRC9MapCoordsPC13GVillagerInfoUli(struct MapCoords* coords, struct GVillagerInfo* info, uint32_t age, bool skeleton);

// Constructors

// win1.41 0055c8a0 mac 1030baa0 Villager::Villager(void)
struct Villager* __fastcall __ct__8VillagerFv(struct Villager* this);
// win1.41 0074f950 mac 10571a90 Villager::Villager(MapCoords const &, GVillagerInfo const *, unsigned long, int)
struct Villager* __fastcall __ct__8VillagerFRC9MapCoordsPC13GVillagerInfoUli(struct Villager* this, const void* edx, struct MapCoords* coords, struct GVillagerInfo* info, uint32_t age, bool skeleton);

// Non-virtual Destructors

// win1.41 0074fbc0 mac inlined Villager::_dt(void)
void __fastcall __dt__8VillagerFv(struct Villager* this) asm("??1Villager@@UAE@XZ");

// Non-virtual methods

// win1.41 inlined mac inlined Villager::CallValidate(uchar)
uint32_t __fastcall CallValidate__8VillagerFUc(struct Villager* this, const void* edx, enum LIVING_ACTION_INDEX index);
// win1.41 0074fb20 mac 10571a20 Villager::SetToZero(void)
void __fastcall SetToZero__8VillagerFv(struct Villager* this);
// win1.41 0074fd60 mac 10571210 Villager::DeleteDependancys(void)
void __fastcall DeleteDependancys__8VillagerFv(struct Villager* this);
// win1.41 00750060 mac 1009a920 Villager::FinishedIntoOutOfAnimation(void)
void __fastcall FinishedIntoOutOfAnimation__8VillagerFv(struct Villager* this) asm("?FinishedIntoOutOfAnimation@Villager@@QAEXXZ");
// win1.41 00750410 mac 1004b510 Villager::CheckEveryTime(void)
int __fastcall CheckEveryTime__8VillagerFv(struct Villager* this) asm("?CheckEveryTime@Villager@@QAEHXZ");
// win1.41 00750b50 mac 1056fa20 Villager::TownDeleted(void)
void __fastcall TownDeleted__8VillagerFv(struct Villager* this) asm("?TownDeleted@Villager@@QAEXXZ");
// win1.41 00750de0 mac 1056f7b0 Villager::SetAbode(Abode*)
void __fastcall SetAbode__8VillagerFP5Abode(struct Villager* this, const void* edx, struct Town* town) asm("?SetAbode@Villager@@QAEXPAVAbode@@@Z");
// win1.41 00750ed0 mac 10068820 Villager::SetSpeed__8VillagerFli(int, int)
void __fastcall SetSpeed__8VillagerFli(struct Villager* this, const void* edx, int base_speed, int scale_speed);
// win1.41 00751050 mac 10021a00 Villager::CheckChildGrownUp(void)
int __fastcall CheckChildGrownUp__8VillagerFv(struct Villager* this) asm("?CheckChildGrownUp@Villager@@QAEHXZ");
// win1.41 00751110 mac 1056f4c0 Villager::IsAMother(void)
bool __fastcall IsAMother__8VillagerFv(struct Villager* this);
// win1.41 007516e0 mac 10003bb0 Villager::CheckTakeResourcesToStoragePit(void)
bool __fastcall CheckTakeResourcesToStoragePit__8VillagerFv(struct Villager* this);
// win1.41 00751720 mac 1056e1f0 Villager::DiscipleDecideWhatToDo(void)
bool __fastcall DiscipleDecideWhatToDo__8VillagerFv(struct Villager* this);
// win1.41 00751f40 mac 1056d040 Villager::GetVillagerAvailableState(void)
enum VILLAGER_STATES __fastcall GetVillagerAvailableState__8VillagerFv(struct Villager* this);
// win1.41 00752120 mac 1007c3b0 Villager::CanPauseForASecond(unsigned char)
uint32_t __fastcall CanPauseForASecond__8VillagerFUc(struct Villager* this, const void* edx, enum VILLAGER_STATES state);
// win1.41 00752160 mac 1000a960 Villager::GetAbode(void)
struct Abode* __fastcall GetAbode__8VillagerFv(const struct Villager* this);
// win1.41 007521d0 mac 1004b330 Villager::CallState(void)
uint32_t __fastcall CallState__8VillagerFv(struct Villager* this);
// win1.41 00752210 mac 10020260 Villager::IsPregnant(void)
bool __fastcall IsPregnant__8VillagerFv(struct Villager* this);
// win1.41 00752290 mac 1056c8b0 Villager::IsVillagerAvailable(void)
bool __fastcall IsVillagerAvailable__8VillagerFv(struct Villager* this);
// win1.41 007523d0 mac 10075c50 Villager::CallEntryStateFunction(unsigned char)
bool __fastcall CallEntryStateFunction__8VillagerFUc(struct Villager* this, const void* edx, enum VILLAGER_STATES state);
// win1.41 00752440 mac 1007b1b0 Villager::CallEntryStateFunction(unsigned char, unsigned char)
bool __fastcall CallEntryStateFunction__8VillagerFUcUc(struct Villager* this, const void* edx, enum VILLAGER_STATES current, enum VILLAGER_STATES destination);
// win1.41 00752600 mac 1001ff70 Villager::IsHungry(void)
bool __fastcall IsHungry__8VillagerFv(struct Villager* this);
// win1.41 00753430 mac 10051360 Villager::ProcessFoodSpeedup(void)
void __fastcall ProcessFoodSpeedup__8VillagerFv(struct Villager* this);
// win1.41 00753560 mac 1006a5f0 Villager::AdjustTownModifier(VILLAGER_STATES, int)
void __fastcall AdjustTownModifier__8VillagerF15VILLAGER_STATESi(struct Villager* this, const void* edx, enum VILLAGER_STATES state, int param_2);
// win1.41 00753b50 mac 10099cf0 Villager::SetupNothingToDo(void)
uint32_t __fastcall SetupNothingToDo__8VillagerFv(struct Villager* this);
// win1.41 00753c70 mac 1000e4e0 Villager::GetChillOutPos(MapCoords &)
uint32_t __fastcall GetChillOutPos__8VillagerFR9MapCoords(struct Villager* this, const void* edx, struct MapCoords* coords);
// win1.41 00753d50 mac 100096d0 Villager::GetPosOutsideMyHouse(MapCoords &)
int __fastcall GetPosOutsideMyHouse__8VillagerFR9MapCoords(const struct Villager* this, const void* edx, struct MapCoords* coords);
// win1.41 00753dd0 mac 10569aa0 Villager::VillagerCreated(void)
uint32_t __fastcall VillagerCreated__8VillagerFv(struct Villager* this);
// win1.41 00756240 mac 105655e0 Villager::ForceMoveVillagerToAbode(Abode*)
void __fastcall ForceMoveVillagerToAbode__8VillagerFP5Abode(struct Villager* this, const void* edx, struct Abode* abode) asm("?ForceMoveVillagerToAbode@Villager@@QAEXPAVAbode@@@Z");
// win1.41 007562c0 mac 105652e0 Villager::SetSkeleton(int)
void __fastcall SetSkeleton__8VillagerFi(struct Villager* this, const void* edx, bool param_1);
// win1.41 00756530 mac 10564fd0 Villager::SetTown(Town*)
void __fastcall SetTown__8VillagerFP4Town(struct Villager* this, const void* edx, struct Town* town) asm("?SetTown@Villager@@QAEXPAVTown@@@Z");
// win1.41 00756be0 mac 10563bb0 Villager::FindChildrenAndOrphanThem(void)
void __fastcall FindChildrenAndOrphanThem__8VillagerFv(struct Villager* this);
// win1.41 007579f0 mac 10573ed0 Villager::ChildGotoCreche(void)
uint32_t __fastcall ChildGotoCreche__8VillagerFv(struct Villager* this);
// win1.41 00757e80 mac 10084940 Villager::CheckChild(void)
uint32_t __fastcall CheckChild__8VillagerFv(struct Villager* this);
// win1.41 00757ec0 mac 10573a80 Villager::ChildDecideWhatToDo(void)
bool __fastcall ChildDecideWhatToDo__8VillagerFv(struct Villager* this);
// win1.41 00757f10 mac 10573990 Villager::ChildBecomesAdult(void)
bool __fastcall ChildBecomesAdult__8VillagerFv(struct Villager* this) asm("?ChildBecomesAdult@Villager@@QAE_NXZ");
// win1.41 00757f40 mac 10095500 Villager::IsMotherAlive(void)
bool __fastcall IsMotherAlive__8VillagerFv(struct Villager* this);
// win1.41 00758080 mac 105734a0 Villager::MoveVillagerToAbode(Abode*)
void __fastcall MoveVillagerToAbode__8VillagerFP5Abode(struct Villager* this, const void* edx, struct Abode* abode) asm("?MoveVillagerToAbode@Villager@@QAEXPAVAbode@@@Z");
// win1.41 007580d0 mac 105733f0 Villager::MakeChildOrphaned(Villager *)
uint32_t __fastcall MakeChildOrphaned__8VillagerFP8Villager(struct Villager* this, const void* edx, struct Villager* param_1);
// win1.41 007581a0 mac 1007dae0 Villager::CheckNeededForTownDesire(void)
uint32_t __fastcall CheckNeededForTownDesire__8VillagerFv(struct Villager* this);
// win1.41 00758990 mac 10575f70 Villager::ArrivesAtStoragePitForBuildingMaterials(void)
uint32_t __fastcall ArrivesAtStoragePitForBuildingMaterials__8VillagerFv(struct Villager* this);
// win1.41 00758af0 mac 10575ab0 Villager::ArrivesAtBuildingSite(void)
uint32_t __fastcall ArrivesAtBuildingSite__8VillagerFv(struct Villager* this);
// win1.41 0075bb50 mac 10087950 Villager::GetDesireForFood(void)
float __fastcall GetDesireForFood__8VillagerFv(struct Villager* this);
// win1.41 0075ff80 mac 1000a8c0 Villager::CheckNeededForSomething(void)
bool __fastcall CheckNeededForSomething__8VillagerFv(struct Villager* this);
// win1.41 00760270 mac 1009edb0 Villager::GoHome(void)
bool __fastcall GoHome__8VillagerFv(struct Villager* this);
// win1.41 00760280 mac 1009a4b0 Villager::DoGoingHome(VILLAGER_STATES, VILLAGER_STATES)
bool __fastcall DoGoingHome__8VillagerF15VILLAGER_STATES15VILLAGER_STATES(struct Villager* this, const void* edx, enum VILLAGER_STATES state_1, enum VILLAGER_STATES state_2);
// win1.41 007604f0 mac 10588e30 Villager::GetTentPos(MapCoords&)
struct Town* __fastcall GetTentPos__8VillagerFR9MapCoords(struct Villager* this, const void* edx, struct MapCoords* coords);
// win1.41 007606e0 mac 10588820 Villager::Landed(void)
uint32_t __fastcall Landed__8VillagerFv(struct Villager* this);
// win1.41 00760930 mac 1000c320 Villager::ArrivesHome(void)
uint32_t __fastcall ArrivesHome__8VillagerFv(struct Villager* this);
// win1.41 00760b10 mac 10004a80 Villager::AtHome(void)
uint32_t __fastcall AtHome__8VillagerFv(struct Villager* this);
// win1.41 007611f0 mac 105874c0 Villager::HomeDeleted(void)
void __fastcall HomeDeleted__8VillagerFv(struct Villager* this) asm("?HomeDeleted@Villager@@QAEXXZ");
// win1.41 00761220 mac 10587440 Villager::MakeHomeless(void)
bool32_t __fastcall MakeHomeless__8VillagerFv(struct Villager* this) asm("?MakeHomeless@Villager@@QAE_NXZ");
// win1.41 00761240 mac 10587220 Villager::MakeHomelessNoStateChange(void)
bool32_t __fastcall MakeHomelessNoStateChange__8VillagerFv(struct Villager* this) asm("?MakeHomelessNoStateChange@Villager@@QAE_NXZ");
// win1.41 00761c90 mac 1058aac0 Villager::CheckNeededToMakeDinner(void)
bool __fastcall CheckNeededToMakeDinner__8VillagerFv(struct Villager* this) asm("?CheckNeededToMakeDinner@Villager@@QAE_NXZ");
// win1.41 00765320 mac 10590720 Villager::ArrivesAtPickupBallReaction(void)
uint32_t __fastcall ArrivesAtPickupBallReaction__8VillagerFv(struct Villager* this);
// win1.41 00769620 mac 10096900 Villager::GotoStoragePitForDropOff(void)
uint32_t __fastcall GotoStoragePitForDropOff__8VillagerFv(struct Villager* this);
// win1.41 007696d0 mac 100062f0 Villager::ArrivesAtStoragePitForDropOff(void)
uint32_t __fastcall ArrivesAtStoragePitForDropOff__8VillagerFv(struct Villager* this);
// win1.41 00769830 mac 10096ac0 Villager::GotoStoragePitForFood(void)
uint32_t __fastcall GotoStoragePitForFood__8VillagerFv(struct Villager* this);
// win1.41 007698b0 mac 1059c070 Villager::ArrivesAtStoragePitForFood(void)
uint32_t __fastcall ArrivesAtStoragePitForFood__8VillagerFv(struct Villager* this);
// win1.41 00769b30 mac 1059bbc0 Villager::ArrivesAtHomeWithFood(void)
uint32_t __fastcall ArrivesAtHomeWithFood__8VillagerFv(struct Villager* this);
// win1.41 0076a780 mac inlined Villager::Drowning(void)
uint32_t __fastcall Drowning__8VillagerFv(struct Villager* this);
// win1.41 0076a8d0 mac 1059a060 Villager::VagrantStart(void)
uint32_t __fastcall VagrantStart__8VillagerFv(struct Villager* this);
// win1.41 0076b090 mac 1009deb0 Villager::SetupPauseForASecond(VILLAGER_STATES)
uint32_t __fastcall SetupPauseForASecond__8VillagerF15VILLAGER_STATES(struct Villager* this, const void* edx, enum VILLAGER_STATES state);
// win1.41 0076b3f0 mac 1001b410 Villager::GoAndChilloutOutsideHome(void)
bool __fastcall GoAndChilloutOutsideHome__8VillagerFv(struct Villager* this);
// win1.41 0076b570 mac 10005660 Villager::EnterSitAndChillOut(unsigned char, unsigned char)
int __fastcall EnterSitAndChillOut__8VillagerFUcUc(struct Villager* this, const void* edx, enum VILLAGER_STATES state_1, enum VILLAGER_STATES state_2);
// win1.41 0076b610 mac 100118e0 Villager::GetMeToMyChillOutPos(int (Villager::)(void const *, void* , MapCoords &), MapCoords &, float, MapCoords const &)
void __fastcall GetMeToMyChillOutPos__8VillagerFM8VillagerFPCvPvR9MapCoords_iR9MapCoordsfRC9MapCoords(struct Villager* this, const void* edx, int (__fastcall* callback)(const struct Villager * param_1, const void * param_2, struct MapCoords * param_3), const void* unused_1, const void* unused_2, const void* unused_3, struct MapCoords* param_5, float param_6, struct MapCoords* param_7);
// win1.41 0076c440 mac 1059d850 Villager::RemoveVillagerFromWorshipSite(void)
bool32_t __fastcall RemoveVillagerFromWorshipSite__8VillagerFv(struct Villager* this) asm("?RemoveVillagerFromWorshipSite@Villager@@QAE_NXZ");

// Override methods

// win1.41 0055cb40 mac 10571890 Villager::_dt(unsigned int)
void __fastcall __dt__8VillagerFUi(struct Base* this, const void* edx, uint32_t param_1) asm("??_GVillager@@UAEPAXI@Z");
// win1.41 007521b0 mac 1056caa0 Villager::ToBeDeleted(int)
void __fastcall ToBeDeleted__8VillagerFi(struct Base* this, const void* edx, int param_1);
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
uint32_t __fastcall ProcessState__8VillagerFv(struct Object* this);
// win1.41 0055ca50 mac 10147fb0 Villager::CanBePickedUp(void)
bool __fastcall CanBePickedUp__8VillagerFv(struct Object* this) asm("?CanBePickedUp@Villager@@UAE_NXZ");
// win1.41 007560e0 mac 10565860 Villager::GetDiscipleStateIfInteractedWith(GInterfaceStatus *, Villager *)
uint32_t __fastcall GetDiscipleStateIfInteractedWith__8VillagerFP16GInterfaceStatusP8Villager(struct Object* this, const void* edx, struct GInterfaceStatus* param_1, struct Villager* param_2) asm("?GetDiscipleStateIfInteractedWith@Villager@@UAEIPAVGInterfaceStatus@@PAVVillager@@@Z");
// win1.41 0074fc70 mac 10571530 Villager::CallVirtualFunctionsForCreation(MapCoords const &)
void __fastcall CallVirtualFunctionsForCreation__8VillagerFRC9MapCoords(struct Object* this, const void* edx, const struct MapCoords* param_1) asm("?CallVirtualFunctionsForCreation@Villager@@UAEXABUMapCoords@@@Z");
// win1.41 0055c990 mac 10147d30 Villager::IsABeliever(void)
bool __fastcall IsABeliever__8VillagerFv(struct Object* this) asm("?IsABeliever@Villager@@UAE_NXZ");
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
bool __fastcall DecideWhatToDo__8VillagerFv(struct Living* this);
// win1.41 00751040 mac 1056f5e0 Villager::Birthday(void)
void __fastcall Birthday__8VillagerFv(struct Living* this) asm("?Birthday@Villager@@UAEXXZ");
// win1.41 007528c0 mac 1056b4c0 Villager::SetAge(unsigned long)
void __fastcall SetAge__8VillagerFUl(struct Living* this, const void* edx, uint32_t age);
// win1.41 007520e0 mac 10087ab0 Villager::SetCurrentAndDestinationState(unsigned char, unsigned char)
int __fastcall SetCurrentAndDestinationState__8VillagerFUcUc(struct Living* this, const void* edx, enum VILLAGER_STATES current, enum VILLAGER_STATES destination);
// win1.41 00756590 mac inlined Villager::CallIntoAnimationFunction(VILLAGER_STATES)
int __fastcall CallIntoAnimationFunction__8VillagerF15VILLAGER_STATES(struct Living* this, const void* edx, enum VILLAGER_STATES param_1) asm("?CallIntoAnimationFunction@Villager@@UAEHW4VILLAGER_STATES@@@Z");
// win1.41 00756620 mac inlined Villager::CallOutofAnimationFunction(VILLAGER_STATES)
int __fastcall CallOutofAnimationFunction__8VillagerF15VILLAGER_STATES(struct Living* this, const void* edx, enum VILLAGER_STATES param_1) asm("?CallOutofAnimationFunction@Villager@@UAEHW4VILLAGER_STATES@@@Z");
// win1.41 00752010 mac 1007bba0 Villager::SetTopState(unsigned char)
int __fastcall SetTopState__8VillagerFUc(struct Living* this, const void* edx, enum VILLAGER_STATES state);
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
// win1.41 007527a0 mac inlined Villager::ExitReaction(VILLAGER_STATES)
int __fastcall ExitReaction__8VillagerF15VILLAGER_STATES(struct Living* this, const void* edx, enum VILLAGER_STATES param_1) asm("?ExitReaction@Villager@@UAEHW4VILLAGER_STATES@@@Z");
// win1.41 0076b000 mac inlined Villager::ExitInHand(VILLAGER_STATES)
int __fastcall ExitInHand__8VillagerF15VILLAGER_STATES(struct Living* this, const void* edx, enum VILLAGER_STATES param_1) asm("?ExitInHand@Villager@@UAEHW4VILLAGER_STATES@@@Z");
// win1.41 0076acb0 mac inlined Villager::ExitInFlying(VILLAGER_STATES)
int __fastcall ExitInFlying__8VillagerF15VILLAGER_STATES(struct Living* this, const void* edx, enum VILLAGER_STATES param_1) asm("?ExitInFlying@Villager@@UAEHW4VILLAGER_STATES@@@Z");
// win1.41 00753690 mac 1006a4d0 Villager::SetState(unsigned long, unsigned char)
void __fastcall SetState__8VillagerFUlUc(struct Living* this, const void* edx, enum LIVING_ACTION_INDEX index, enum VILLAGER_STATES state);
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
enum VILLAGER_STATES __fastcall GetFinalState__8VillagerCFv(const struct Living* this);
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
const char* __fastcall GetVillagerName__8VillagerFv(struct Villager* this);
// win1.41 0051b510 mac 10057c40 Villager::DrawVillagerInfo(void)
uint32_t __fastcall DrawVillagerInfo__8VillagerFv(struct Villager* this);

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

// Override methods

// win1.41 00756740 mac 10564a00 MissionaryControl::_dt(void)
void __fastcall __dt__17MissionaryControlFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GMissionaryControl@@UAEPAXI@Z");
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

// win1.41 00d09198 mac inlined get_villager_state_table
struct Villager__StateTable* __cdecl get_villager_state_table(void);

#endif /* BW1_DECOMP_VILLAGER_INCLUDED_H */
