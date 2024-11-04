#ifndef BW1_DECOMP_VILLAGER_INCLUDED_H
#define BW1_DECOMP_VILLAGER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For int16_t, uint16_t, uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For RESOURCE_TYPE_LAST */
#include <chlasm/GStates.h> /* For VILLAGER_STATE_LAST_STATE, enum VILLAGER_STATES */
#include <lionhead/lhlib/VER5.0/LHLinkedList.h> /* For DECLARE_LH_LINKED_LIST */
#include <lionhead/lhlib/VER5.0/LHListHead.h> /* For DECLARE_LH_LIST_HEAD */

#include "GameThing.h" /* For struct GameThing */
#include "GameThingWithPos.h" /* For struct GameThingWithPos */
#include "Living.h" /* For struct Living, struct LivingVftable */
#include "LivingAction.h" /* For enum LIVING_ACTION_INDEX, struct Living__StateTableEntry */
#include "Object.h" /* For struct Object */

// Forward Declares

struct Abode;
struct BuildingSite;
struct FireEffect;
struct Football;
struct GPlayer;
struct GVillagerInfo;
struct GameThingVftable;
struct GameThingWithPosVftable;
struct MapCoords;
struct ObjectVftable;
struct Town;
struct Villager;

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

static struct VillagerVftable* const __vt__8Villager = (struct VillagerVftable* const)0x008f7960;

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

// Non-virtual methods

// win1.41 inlined mac inlined Villager::CallValidate(uchar)
uint32_t __fastcall CallValidate__8VillagerFUc(struct Villager* this, const void* edx, enum LIVING_ACTION_INDEX index);
// win1.41 0074fb20 mac 10571a20 Villager::SetToZero(void)
void __fastcall SetToZero__8VillagerFv(struct Villager* this);
// win1.41 0074fd60 mac 10571210 Villager::DeleteDependancys(void)
void __fastcall DeleteDependancys__8VillagerFv(struct Villager* this);
// win1.41 00750060 mac 1009a920 Villager::FinishedIntoOutOfAnimation(void)
void __fastcall FinishedIntoOutOfAnimation__8VillagerFv(struct Villager* this);
// win1.41 00750060 mac 1004b510 Villager::CheckEveryTime(void)
int __fastcall CheckEveryTime__8VillagerFv(struct Villager* this);
// win1.41 00750ed0 mac 10068820 Villager::SetSpeed__8VillagerFli(int, int)
void __fastcall SetSpeed__8VillagerFli(struct Villager* this, const void* edx, int base_speed, int scale_speed);
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
// win1.41 007562c0 mac 105652e0 Villager::SetSkeleton(int)
void __fastcall SetSkeleton__8VillagerFi(struct Villager* this, const void* edx, bool param_1);
// win1.41 00756be0 mac 10563bb0 Villager::FindChildrenAndOrphanThem(void)
void __fastcall FindChildrenAndOrphanThem__8VillagerFv(struct Villager* this);
// win1.41 007579f0 mac 10573ed0 Villager::ChildGotoCreche(void)
uint32_t __fastcall ChildGotoCreche__8VillagerFv(struct Villager* this);
// win1.41 00757e80 mac 10084940 Villager::CheckChild(void)
uint32_t __fastcall CheckChild__8VillagerFv(struct Villager* this);
// win1.41 00757ec0 mac 10573a80 Villager::ChildDecideWhatToDo(void)
bool __fastcall ChildDecideWhatToDo__8VillagerFv(struct Villager* this);
// win1.41 00757f40 mac 10095500 Villager::IsMotherAlive(void)
bool __fastcall IsMotherAlive__8VillagerFv(struct Villager* this);
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
// win1.41 0076b090 mac 1009deb0 Villager::SetupPauseForASecond(VILLAGER_STATES)
uint32_t __fastcall SetupPauseForASecond__8VillagerF15VILLAGER_STATES(struct Villager* this, const void* edx, enum VILLAGER_STATES state);
// win1.41 0076b3f0 mac 1001b410 Villager::GoAndChilloutOutsideHome(void)
bool __fastcall GoAndChilloutOutsideHome__8VillagerFv(struct Villager* this);
// win1.41 0076b570 mac 10005660 Villager::EnterSitAndChillOut(unsigned char, unsigned char)
int __fastcall EnterSitAndChillOut__8VillagerFUcUc(struct Villager* this, const void* edx, enum VILLAGER_STATES state_1, enum VILLAGER_STATES state_2);
// win1.41 0076b610 mac 100118e0 Villager::GetMeToMyChillOutPos(int (Villager::)(void const *, void* , MapCoords &), MapCoords &, float, MapCoords const &)
void __fastcall GetMeToMyChillOutPos__8VillagerFM8VillagerFPCvPvR9MapCoords_iR9MapCoordsfRC9MapCoords(struct Villager* this, const void* edx, int (__fastcall* callback)(const struct Villager * param_1, const void * param_2, struct MapCoords * param_3), const void* unused_1, const void* unused_2, const void* unused_3, struct MapCoords* param_5, float param_6, struct MapCoords* param_7);

// Override methods

// win1.41 007521b0 mac 1056caa0 Villager::ToBeDeleted(int)
void __fastcall ToBeDeleted__8VillagerFi(struct Villager* this, const void* edx, int param_1);
// win1.41 0074ff70 mac 1004b3c0 Villager::ProcessState(void)
uint32_t __fastcall ProcessState__8VillagerFv(struct Villager* this);
// win1.41 007515c0 mac 10098ff0 Villager::DecideWhatToDo(void)
bool __fastcall DecideWhatToDo__8VillagerFv(struct Villager* this);
// win1.41 007528c0 mac 1056b4c0 Villager::SetAge(unsigned long)
void __fastcall SetAge__8VillagerFUl(struct Villager* this, const void* edx, uint32_t age);
// win1.41 007520e0 mac 10087ab0 Villager::SetCurrentAndDestinationState(unsigned char, unsigned char)
int __fastcall SetCurrentAndDestinationState__8VillagerFUcUc(struct Villager* this, const void* edx, enum VILLAGER_STATES current, enum VILLAGER_STATES destination);
// win1.41 00752010 mac 1007bba0 Villager::SetTopState(unsigned char)
int __fastcall SetTopState__8VillagerFUc(struct Villager* this, const void* edx, enum VILLAGER_STATES state);
// win1.41 00753690 mac 1006a4d0 Villager::SetState(unsigned long, unsigned char)
void __fastcall SetState__8VillagerFUlUc(struct Villager* this, const void* edx, enum LIVING_ACTION_INDEX index, enum VILLAGER_STATES state);
// win1.41 00751dd0 mac 1004ec00 Villager::GetFinalState(void) const
enum VILLAGER_STATES __fastcall GetFinalState__8VillagerCFv(struct Villager* this);
// win1.41 0055ca40 mac 100c54f0 Villager::GetVillagerName(void)
const char* __fastcall GetVillagerName__8VillagerFv(struct Villager* this);
// win1.41 0051b510 mac 10057c40 Villager::DrawVillagerInfo(void)
uint32_t __fastcall DrawVillagerInfo__8VillagerFv(struct Villager* this);

DECLARE_LH_LINKED_LIST(Villager);
DECLARE_LH_LIST_HEAD(Villager);

// win1.41 00d09198 mac inlined get_villager_state_table
struct Villager__StateTable* __cdecl get_villager_state_table(void);

#endif /* BW1_DECOMP_VILLAGER_INCLUDED_H */
