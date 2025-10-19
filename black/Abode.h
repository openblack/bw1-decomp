#ifndef BW1_DECOMP_ABODE_INCLUDED_H
#define BW1_DECOMP_ABODE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stddef.h> /* For size_t */
#include <stdint.h> /* For uint16_t, uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For RESOURCE_TYPE_LAST, enum ABODE_TYPE, enum RESOURCE_TYPE, enum TRIBE_TYPE */
#include <chlasm/ScriptEnums.h> /* For enum SCRIPT_OBJECT_TYPE */
#include <lionhead/lhlib/ver5.0/LHListHead.h> /* For DECLARE_LH_LIST_HEAD */
#include <reversing_utils/re_common.h> /* For bool32_t */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "GameThingWithPos.h" /* For struct GameThingWithPos */
#include "MapCoords.h" /* For struct MapCoords */
#include "MultiMapFixed.h" /* For struct MultiMapFixed, struct MultiMapFixedVftable */
#include "Object.h" /* For struct Object */
#include "Villager.h" /* For struct Villager */

// Forward Declares

struct Abode;
struct Base;
struct Creature;
struct GAbodeInfo;
struct GInterfaceStatus;
struct GPlayer;
struct GTribeInfo;
struct GameOSFile;
struct GameThing;
struct GameThingVftable;
struct GameThingWithPosVftable;
struct LH3DMesh;
struct LH3DSmoke;
struct LHOSFile;
struct LHPoint;
struct ObjectVftable;
struct PhysOb;
struct PhysicsObject;
struct PlannedMultiMapFixed;
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
  void (__fastcall* MoveAbodeToPlannedAbodes)(struct Abode* this);  /* 0x90c */
  void (__fastcall* DeleteDependancys)(struct Abode* this);  /* 0x910 */
  void (__fastcall* MakeFunctional)(struct Abode* this);
  void (__fastcall* StopBeingFunctional)(struct Abode* this, const void* edx, struct GPlayer* param_1);
  void (__fastcall* RestartBeingFunctional)(struct Abode* this);
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

// Object Oriented datastructures

// win1.41 009c7fa0 mac inlined Abode::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__5Abode asm("??_R0?AVAbode@@@8");
// win1.41 009a6438 mac inlined Abode::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__5Abode asm("??_R1A@?0A@A@Abode@@8");
// win1.41 009a6450 mac inlined Abode::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__5Abode asm("??_R2Abode@@8");
// win1.41 009a6470 mac inlined Abode::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__5Abode asm("??_R3Abode@@8");
// win1.41 008a9a60 mac 1073480c Abode::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__5Abode asm("??_R4Abode@@6B@");
// win1.41 008a9a64 mac 10734814 Abode::`vftable'
extern const struct AbodeVftable __vt__5Abode asm("??_7Abode@@6B@");

// Static methods

// win1.41 00402e20 mac 103bf260 Abode::Create(MapCoords const &, GAbodeInfo const *, Town *, float, float, unsigned long, unsigned long, float, int, int)
struct Abode* __cdecl Create__5AbodeFRC9MapCoordsPC10GAbodeInfoP4TownffUlUlfii(const struct MapCoords* coords, const struct GAbodeInfo* info, struct Town* town, float y_angle, float scale, uint32_t param_6, uint32_t param_7, float food, int wood, int param_10) asm("?Create@Abode@@SAPAV1@PBUMapCoords@@PBVGAbodeInfo@@PAVTown@@MMIIMHH@Z");
// win1.41 00403190 mac 10589610 Abode::CreateWithoutSpecial(MapCoords const &, GAbodeInfo const *, Town *, float, float, unsigned long, unsigned long, float, int, int)
struct Abode* __cdecl CreateWithoutSpecial__5AbodeFRC9MapCoordsPC10GAbodeInfoP4Townfffi(const struct MapCoords* coords, const struct GAbodeInfo* info, struct Town* town, float y_angle, float scale, float food, int wood) asm("?CreateWithoutSpecial@Abode@@SAPAVAbode@@ABUMapCoords@@PBVGAbodeInfo@@PAVTown@@MMMH@Z");

// Constructors

// win1.41 00401350 mac 1033b330 Abode::Abode(MapCoords const &, GAbodeInfo const *, Town *, float, float, float, int)
struct Abode* __fastcall __ct__5AbodeFRC9MapCoordsPC10GAbodeInfoP4Townfffi(struct Abode* this, const void* edx, const struct MapCoords* coords, const struct GAbodeInfo* info, struct Town* town, float y_angle, float scale, float food, int wood) asm("??0Abode@@QAE@ABUMapCoords@@PBVGAbodeInfo@@PAVTown@@MMMH@Z");

// Non-virtual Destructors

// win1.41 00402b60 mac inlined Abode::_dt(void)
void __fastcall __dt__5AbodeFv(struct Abode* this) asm("??1Abode@@UAE@XZ");

// Non-virtual methods

// win1.41 00402bc0 mac inlined Abode::SetZero(void)
void __fastcall SetZero__5AbodeFv(struct Abode* this) asm("?SetZero@Abode@@QAEXXZ");
// win1.41 00403130 mac 1033b920 Abode::Init(int, unsigned long, unsigned long)
void __fastcall Init__5AbodeFiUlUl(struct Abode* this, const void* edx, int param_1, uint32_t food_amount, uint32_t wood_amount) asm("?Init@Abode@@QAEXHII@Z");
// win1.41 00403590 mac 103602f0 Abode::GetNewEp(ABODE_EPP, MapCoords*)
bool __fastcall GetNewEp__5AbodeF8ABODE_EPP7LHPoint(struct Abode* this, const void* edx, enum ABODE_EPP index, struct LHPoint* point) asm("?GetNewEp@Abode@@QAE_NW4ABODE_EPP@@PAULHPoint@@@Z");
// win1.41 00403d20 mac 10573d50 Abode::DeleteAbodeSurroundingObjects(void)
void __fastcall DeleteAbodeSurroundingObjects__5AbodeFv(struct Abode* this) asm("?DeleteAbodeSurroundingObjects@Abode@@QAEXXZ");
// win1.41 00403e00 mac 10494a10 Abode::CreateAbodeSurroundingObjects(void)
void __fastcall CreateAbodeSurroundingObjects__5AbodeFv(struct Abode* this) asm("?CreateAbodeSurroundingObjects@Abode@@QAEXXZ");
// win1.41 00404060 mac 100d2ca0 Abode::AddVillagerToAbode(Villager *)
void __fastcall AddVillagerToAbode__5AbodeFP8Villager(struct Abode* this, const void* edx, struct Villager* villager) asm("?AddVillagerToAbode@Abode@@QAEXPAVVillager@@@Z");
// win1.41 00404220 mac 1033b0e0 Abode::RemoveDeletedVillagerFromAbode(Villager *)
void __fastcall RemoveDeletedVillagerFromAbode__5AbodeFP8Villager(struct Abode* this, const void* edx, struct Villager* villager) asm("?RemoveDeletedVillagerFromAbode@Abode@@QAEXPAVVillager@@@Z");
// win1.41 00404340 mac 1033b5e0 Abode::RemoveAliveVillagerFromAbode(Villager *)
void __fastcall RemoveAliveVillagerFromAbode__5AbodeFP8Villager(struct Abode* this, const void* edx, struct Villager* villager) asm("?RemoveAliveVillagerFromAbode@Abode@@QAEXPAVVillager@@@Z");
// win1.41 00404560 mac 10547ee0 Abode::RemoveAllVillagersFromAbode(void)
void __fastcall RemoveAllVillagersFromAbode__5AbodeFv(struct Abode* this) asm("?RemoveAllVillagersFromAbode@Abode@@QAEXXZ");
// win1.41 00404580 mac inlined Abode::NumVillagersOfSex(SEX_TYPE)
int __fastcall NumVillagersOfSex__5AbodeFv(struct Abode* this) asm("?NumVillagersOfSex@Abode@@QAEHW4SEX_TYPE@@@Z");
// win1.41 004045d0 mac 103d89d0 Abode::CalculateFoodNeededForDinner(void)
int __fastcall CalculateFoodNeededForDinner__5AbodeFv(struct Abode* this) asm("?CalculateFoodNeededForDinner@Abode@@QAEHXZ");
// win1.41 00404600 mac 1032c5d0 Abode::IsEnoughFoodForDinner(void)
bool __fastcall IsEnoughFoodForDinner__5AbodeFv(struct Abode* this) asm("?IsEnoughFoodForDinner@Abode@@QAE_NXZ");
// win1.41 00404630 mac 1032c250 Abode::GetOtherParent(Villager *)
struct Villager* __fastcall GetSpouse__5AbodeFP8Villager(struct Abode* this, const void* edx, struct Villager* villager) asm("?GetSpouse@Abode@@QAEPAVVillager@@PAV2@@Z");
// win1.41 00404660 mac 1032c3e0 Abode::GetRoomLeftForAdults(void)
int __fastcall GetRoomLeftForAdults__5AbodeFv(struct Abode* this) asm("?GetRoomLeftForAdults@Abode@@QAEHXZ");
// win1.41 00404680 mac 103e40f0 Abode::GetRoomLeftForChildren(void)
int __fastcall GetRoomLeftForChildren__5AbodeFv(struct Abode* this) asm("?GetRoomLeftForChildren@Abode@@QAEHXZ");
// win1.41 004046a0 mac inlined Abode::FUN_004046a0(int)
void __fastcall FUN_004046a0__5AbodeFi(struct Abode* this, const void* edx, int param_1) asm("?FUN_004046a0@Abode@@QAEXH@Z");
// win1.41 004046b0 mac inlined Abode::FUN_004046b0(void)
int __fastcall FUN_004046b0__5AbodeFv(struct Abode* this) asm("?FUN_004046b0@Abode@@QAEHXZ");
// win1.41 004046c0 mac 105b93c0 Abode::IsTooCrowded(void)
bool32_t __fastcall IsTooCrowded__5AbodeFv(struct Abode* this) asm("?IsTooCrowded@Abode@@QAE_NXZ");
// win1.41 00404b40 mac 10329410 Abode::CalculateScoreForAddingVillagerToAbode(Villager *)
float __fastcall CalculateScoreForAddingVillagerToAbode__5AbodeFP8Villager(struct Abode* this, const void* edx, struct Villager* villager) asm("?CalculateScoreForAddingVillagerToAbode@Abode@@QAEMPAVVillager@@@Z");
// win1.41 00404cc0 mac 1019cca0 Abode::ChildToAdult(Villager *)
void __fastcall ChildToAdult__5AbodeFP8Villager(struct Abode* this, const void* edx, struct Villager* villager) asm("?ChildToAdult@Abode@@QAEXPAVVillager@@@Z");
// win1.41 00405b70 mac 101cbdc0 Abode::GetAbodeText(char *)
char* __fastcall GetAbodeText__5AbodeFPc(struct Abode* this, const void* edx, char* buff) asm("?GetAbodeText@Abode@@QAEPADPAD@Z");
// win1.41 00405d80 mac inlined Abode::FUN_00405d80(void)
int __fastcall FUN_00405d80__5AbodeFv(struct Abode* this) asm("?FUN_00405d80@Abode@@QAEHXZ");
// win1.41 00405f40 mac 10177200 Abode::GetTribeType(void) const
enum TRIBE_TYPE __fastcall GetTribeType__5AbodeCFv(struct Abode* this) asm("?GetTribeType@Abode@@QAE?AW4TRIBE_TYPE@@XZ");
// win1.41 00405fa0 mac 10003a60 Abode::ArriveHome(void)
void __fastcall ArriveHome__5AbodeFv(struct Abode* this) asm("?ArriveHome@Abode@@QAEXXZ");
// win1.41 00405fb0 mac 1009fda0 Abode::LeaveHome(void)
void __fastcall LeaveHome__5AbodeFv(struct Abode* this) asm("?LeaveHome@Abode@@QAEXXZ");
// win1.41 00405fc0 mac 100cd2d0 Abode::GetNearestWaterPos(MapCoords &)
bool __fastcall GetNearestWaterPos__5AbodeFR9MapCoords(struct Abode* this, const void* edx, struct MapCoords* coords) asm("?GetNearestWaterPos@Abode@@QAE_NAAUMapCoords@@@Z");
// win1.41 00406640 mac 10172a50 Abode::ApplyEffectsDueToPhysicalDestruction(Object *, GPlayer *)
void __fastcall ApplyEffectsDueToPhysicalDestruction__5AbodeFP6ObjectP7GPlayer(struct Abode* this, const void* edx, struct Object* object, struct GPlayer* player) asm("?ApplyEffectsDueToPhysicalDestruction@Abode@@QAEXPAVObject@@PAVGPlayer@@@Z");
// win1.41 004069c0 mac 1036ee00 Abode::FindVillager( int (*)(GameThingWithPos *, SCRIPT_OBJECT_TYPE, ulong), SCRIPT_OBJECT_TYPE, ulong)
struct Villager* __fastcall FindVillager__5AbodeFPFP16GameThingWithPos18SCRIPT_OBJECT_TYPEUl_i18SCRIPT_OBJECT_TYPEUl(struct Abode* this, const void* edx, int (__cdecl* param_1)(struct GameThingWithPos * param_1, enum SCRIPT_OBJECT_TYPE param_2, uint32_t param_3), enum SCRIPT_OBJECT_TYPE param_2, uint32_t param_3) asm("?FindVillager@Abode@@QAEPAVVillager@@P6AHPAVGameThingWithPos@@W4SCRIPT_OBJECT_TYPE@@I@Z1I@Z");
// win1.41 00407020 mac inlined Abode::FindNearestDrinkingWater(float)
void __fastcall FindNearestDrinkingWater__5AbodeFf(struct Abode* this, const void* edx, float max_dist) asm("?FindNearestDrinkingWater@Abode@@QAEXM@Z");
// win1.41 004070d0 mac 104ed230 Abode::GetNumAdultsInAbode(void)
uint8_t __fastcall GetNumAdultsInAbode__5AbodeFv(struct Abode* this) asm("?GetNumAdultsInAbode@Abode@@QAEEXZ");
// win1.41 004070f0 mac 101b8780 Abode::DrawPercentFull(int)
void __fastcall DrawPercentFull__5AbodeFi(struct Abode* this, const void* edx, int param_1) asm("?DrawPercentFull@Abode@@QAEXH@Z");
// win1.41 00407230 mac inlined Abode::FUN_00407230(bool)
struct MapCoords* __fastcall FUN_00407230__5AbodeFb(struct Abode* this, const void* edx, struct MapCoords* coords, bool param_2) asm("?FUN_00407230@Abode@@QAEPAUMapCoords@@_N@Z");
// win1.41 004072e0 mac 1000cd50 Abode::GetPosOutside(float, float, float)
struct MapCoords* __fastcall GetPosOutside__5AbodeFfff(struct Abode* this, const void* edx, struct MapCoords* coords, float param_2, float param_3, float param_4) asm("?GetPosOutside@Abode@@QAEPAUMapCoords@@PAU2@MMM@Z");
// win1.41 004073f0 mac inlined Abode::FUN_004073f0(GPlayer *)
void __fastcall FUN_004073f0__5AbodeFP7GPlayer(struct Abode* this, const void* edx, struct GPlayer* param_1) asm("?FUN_004073f0@Abode@@UAEXPAVGPlayer@@@Z");
// win1.41 004074a0 mac 100e7ac0 Abode::CalculateDesireToGainMale(void)
float __fastcall CalculateDesireToGainMale__5AbodeFv(struct Abode* this) asm("?CalculateDesireToGainMale@Abode@@QAEMXZ");
// win1.41 00407540 mac 100af0d0 Abode::CalculateDesireToGainVillager(void)
float __fastcall CalculateDesireToGainVillager__5AbodeFv(struct Abode* this) asm("?CalculateDesireToGainVillager@Abode@@QAEMXZ");
// win1.41 004075b0 mac 10518900 Abode::TakeVillagerFrom(Abode&, int)
bool __fastcall TakeVillagerFrom__5AbodeFR5Abodei(struct Abode* this, const void* edx, struct Abode* other, int param_2) asm("?TakeVillagerFrom@Abode@@QAE_NAAV1@@Z");
// win1.41 00407620 mac 10516470 Abode::SwapMaleForFemaleFrom(Abode&)
bool __fastcall SwapMaleForFemaleFrom__5AbodeFR5Abode(struct Abode* this, const void* edx, struct Abode* other) asm("?SwapMaleForFemaleFrom@Abode@@QAE_NAAV1@@Z");
// win1.41 004076c0 mac 105a17d0 Abode::GetVillagerHealthTotal(void)
float __fastcall GetVillagerHealthTotal__5AbodeFv(struct Abode* this) asm("?GetVillagerHealthTotal@Abode@@QAEMXZ");

// Override methods

// win1.41 004017c0 mac 103d4980 Abode::_dt(unsigned int)
void __fastcall __dt__5AbodeFUi(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAbode@@UAEPAXI@Z");
// win1.41 00402c10 mac 1033b510 Abode::Delete(void)
void __fastcall Delete__5AbodeFv(struct Base* this) asm("?Delete@Abode@@UAEXXZ");
// win1.41 00402c60 mac 100c6f40 Abode::ToBeDeleted(int)
void __fastcall ToBeDeleted__5AbodeFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@Abode@@UAEXH@Z");
// win1.41 00405f70 mac 1006d070 Abode::GetPlayer(void)
struct GPlayer* __fastcall GetPlayer__5AbodeFv(struct GameThing* this) asm("?GetPlayer@Abode@@UAEPAVGPlayer@@XZ");
// win1.41 00401730 mac 1004fe30 Abode::GetTown(void)
struct Town* __fastcall GetTown__5AbodeFv(struct GameThing* this) asm("?GetTown@Abode@@UAEPAVTown@@XZ");
// win1.41 00404d40 mac 10000f50 Abode::JustAddResource(RESOURCE_TYPE, unsigned long, bool)
uint32_t __fastcall JustAddResource__5AbodeF13RESOURCE_TYPEUlb(struct GameThing* this, const void* edx, enum RESOURCE_TYPE param_1, uint32_t param_2, bool param_3) asm("?JustAddResource@Abode@@UAEIE@Z");
// win1.41 00404d60 mac 1034cdd0 Abode::JustRemoveResource(RESOURCE_TYPE, unsigned long, bool *)
uint32_t __fastcall JustRemoveResource__5AbodeF13RESOURCE_TYPEUlPb(struct GameThing* this, const void* edx, enum RESOURCE_TYPE param_1, uint32_t param_2, bool* param_3) asm("?JustRemoveResource@Abode@@UAEIE@Z");
// win1.41 00404d30 mac 1006d300 Abode::GetResource(RESOURCE_TYPE)
uint32_t __fastcall GetResource__5AbodeF13RESOURCE_TYPE(struct GameThing* this, const void* edx, enum RESOURCE_TYPE type) asm("?GetResource@Abode@@UAEIW4RESOURCE_TYPE@@@Z");
// win1.41 00404d90 mac 101c95e0 Abode::AddResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool, MapCoords const &, int)
uint32_t __fastcall AddResource__5AbodeF13RESOURCE_TYPEUlP16GInterfaceStatusbRC9MapCoordsi(struct GameThing* this, const void* edx, enum RESOURCE_TYPE type, uint32_t param_2, struct GInterfaceStatus* param_3, bool param_4, const struct MapCoords* coords, int param_6) asm("?AddResource@Abode@@UAEIW4RESOURCE_TYPE@@IPAVGInterfaceStatus@@_NPBUMapCoords@@H@Z");
// win1.41 00404f10 mac 101c9a10 Abode::RemoveResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool *)
uint32_t __fastcall RemoveResource__5AbodeF13RESOURCE_TYPEUlP16GInterfaceStatusPb(struct GameThing* this, const void* edx, enum RESOURCE_TYPE type, uint32_t param_2, struct GInterfaceStatus* param_3, bool* param_4) asm("?RemoveResource@Abode@@UAEIEEE@Z");
// win1.41 00401640 mac 105602b0 Abode::CastAbode(void)
struct Abode* __fastcall CastAbode__5AbodeFv(struct GameThing* this) asm("?CastAbode@Abode@@UAEPAV1@XZ");
// win1.41 00403f10 mac 103c9730 Abode::GetNumberOfInstanceForGlobalList(void)
uint16_t __fastcall GetNumberOfInstanceForGlobalList__5AbodeFv(struct GameThing* this) asm("?GetNumberOfInstanceForGlobalList@Abode@@UAEGXZ");
// win1.41 00406200 mac 1005ff20 Abode::IsFunctional(void)
bool __fastcall IsFunctional__5AbodeFv(struct GameThing* this) asm("?IsFunctional@Abode@@UAE_NXZ");
// win1.41 004017b0 mac 10434340 Abode::GetDebugText(void)
char* __fastcall GetDebugText__5AbodeFv(struct GameThing* this) asm("?GetDebugText@Abode@@UAEPADXZ");
// win1.41 00406d20 mac 101a2920 Abode::Load(GameOSFile &)
uint32_t __fastcall Load__5AbodeFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* file) asm("?Load@Abode@@UAEIPAVGameOSFile@@@Z");
// win1.41 00406a10 mac 103bd750 Abode::Save(GameOSFile &)
uint32_t __fastcall Save__5AbodeFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* file) asm("?Save@Abode@@UAEIPAVGameOSFile@@@Z");
// win1.41 004017a0 mac 103e1790 Abode::GetSaveType(void)
uint32_t __fastcall GetSaveType__5AbodeFv(struct GameThing* this) asm("?GetSaveType@Abode@@UAEIXZ");
// win1.41 00401770 mac 1000c2b0 Abode::GetArrivePos(void)
struct MapCoords* __fastcall GetArrivePos__5AbodeFv(struct GameThingWithPos* this, const void* edx, struct MapCoords* coords) asm("?GetArrivePos@Abode@@UAEPAUMapCoords@@PAU2@@Z");
// win1.41 00401740 mac 1040f9d0 Abode::GetCreatureBeliefType(void)
uint32_t __fastcall GetCreatureBeliefType__5AbodeFv(struct GameThingWithPos* this) asm("?GetCreatureBeliefType@Abode@@UAEIXZ");
// win1.41 00401760 mac 10110c50 Abode::GetOrigin(void)
uint32_t __fastcall GetOrigin__5AbodeFv(struct GameThingWithPos* this) asm("?GetOrigin@Abode@@UAEIXZ");
// win1.41 00407200 mac 1008a7b0 Abode::IsInteractable(void)
bool __fastcall IsInteractable__5AbodeFv(struct GameThingWithPos* this) asm("?IsInteractable@Abode@@UAE_NXZ");
// win1.41 00401720 mac 10435a10 Abode::IsCastShadowAtNight(void)
bool32_t __fastcall IsCastShadowAtNight__5AbodeFv(struct GameThingWithPos* this) asm("?IsCastShadowAtNight@Abode@@UAE_NXZ");
// win1.41 00401710 mac 100970f0 Abode::IsAbode(void)
bool32_t __fastcall IsAbode__5AbodeFv(struct GameThingWithPos* this) asm("?IsAbode@Abode@@UAE_NXZ");
// win1.41 004e43f0 mac 105e5610 Abode::CanBeStompedOnByCreature(Creature *)
bool32_t __fastcall CanBeStompedOnByCreature__5AbodeFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?CanBeStompedOnByCreature@Abode@@UAE_NPAVCreature@@@Z");
// win1.41 004e3fa0 mac 105e63e0 Abode::CanBeKickedByCreature(Creature *)
bool32_t __fastcall CanBeKickedByCreature__5AbodeFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature) asm("?CanBeKickedByCreature@Abode@@UAE_NPAVCreature@@@Z");
// win1.41 00401750 mac 100a48c0 Abode::GetCreatureMimicType(void)
uint32_t __fastcall GetCreatureMimicType__5AbodeFv(struct GameThingWithPos* this) asm("?GetCreatureMimicType@Abode@@UAEIXZ");
// win1.41 004d1b60 mac 10242f80 Abode::GetHowMuchCreatureWantsToLookAtMe(void)
float __fastcall GetHowMuchCreatureWantsToLookAtMe__5AbodeFv(struct GameThingWithPos* this) asm("?GetHowMuchCreatureWantsToLookAtMe@Abode@@UAEMXZ");
// win1.41 0063b940 mac 103da700 Abode::CalculateWhereIWillBeAfterNSeconds(float, LHPoint *)
void __fastcall CalculateWhereIWillBeAfterNSeconds__5AbodeFfP7LHPoint(struct GameThingWithPos* this, const void* edx, float seconds, struct LHPoint* outPos) asm("?CalculateWhereIWillBeAfterNSeconds@Abode@@UAEXMPAULHPoint@@@Z");
// win1.41 00401790 mac 10134300 Abode::IsHouse(void)
bool32_t __fastcall IsHouse__5AbodeFv(struct GameThingWithPos* this) asm("?IsHouse@Abode@@UAE_NXZ");
// win1.41 004061c0 mac 1014d0e0 Abode::IsWonder(void)
bool32_t __fastcall IsWonder__5AbodeFv(struct GameThingWithPos* this) asm("?IsWonder@Abode@@UAE_NXZ");
// win1.41 00406810 mac 1001b380 Abode::GetScriptObjectType(void)
uint32_t __fastcall GetScriptObjectType__5AbodeFv(struct GameThingWithPos* this) asm("?GetScriptObjectType@Abode@@UAEIXZ");
// win1.41 00402cb0 mac 10570ad0 Abode::DestroyedByBeam(void)
void __fastcall DestroyedByBeam__5AbodeFv(struct Object* this) asm("?DestroyedByBeam@Abode@@UAEXXZ");
// win1.41 00403ee0 mac 1036edb0 Abode::InsertMapObject(void)
void __fastcall InsertMapObject__5AbodeFv(struct Object* this) asm("?InsertMapObject@Abode@@UAEXXZ");
// win1.41 00402cf0 mac 101c66a0 Abode::GetPSysFireLocalRndFlamePos(LHPoint *, long *)
bool __fastcall GetPSysFireLocalRndFlamePos__5AbodeFP7LHPointPl(struct Object* this, const void* edx, struct LHPoint* point, int* param_2) asm("?GetPSysFireLocalRndFlamePos@Abode@@UAE_NPAULHPoint@@PAH@Z");
// win1.41 00405d90 mac 10097be0 Abode::ReduceLife(float, GPlayer *)
void __fastcall ReduceLife__5AbodeFfP7GPlayer(struct Object* this, const void* edx, float value, struct GPlayer* player) asm("?ReduceLife@Abode@@UAEXMPAVGPlayer@@@Z");
// win1.41 00405ed0 mac 10112270 Abode::IncreaseLife(float)
void __fastcall IncreaseLife__5AbodeFf(struct Object* this, const void* edx, float value) asm("?IncreaseLife@Abode@@UAEXM@Z");
// win1.41 00403f80 mac 10573770 Abode::DestroyedByEffect(GPlayer *, float)
uint32_t __fastcall DestroyedByEffect__5AbodeFP7GPlayerf(struct Object* this, const void* edx, struct GPlayer* player, float param_2) asm("?DestroyedByEffect@Abode@@UAEIPAVGPlayer@@M@Z");
// win1.41 00404440 mac 1004fcb0 Abode::Process(void)
uint32_t __fastcall Process__5AbodeFv(struct Object* this) asm("?Process@Abode@@UAEIXZ");
// win1.41 00404aa0 mac 100ac700 Abode::GetMesh(void) const
int __fastcall GetMesh__5AbodeCFv(const struct Object* this) asm("?GetMesh@Abode@@UBEHXZ");
// win1.41 00515f70 mac 10036a60 Abode::Draw(void)
void __fastcall Draw__5AbodeFv(struct Object* this) asm("?Draw@Abode@@UAEXXZ");
// win1.41 00407170 mac 1034ec40 Abode::GetDiscipleStateIfInteractedWith(GInterfaceStatus *, Villager *)
uint32_t __fastcall GetDiscipleStateIfInteractedWith__5AbodeFP16GInterfaceStatusP8Villager(struct Object* this, const void* edx, struct GInterfaceStatus* status, struct Villager* villager) asm("?GetDiscipleStateIfInteractedWith@Abode@@UAEIPAVGInterfaceStatus@@PAVVillager@@@Z");
// win1.41 00403200 mac 10576c70 Abode::CallVirtualFunctionsForCreation(const MapCoords&)
void __fastcall CallVirtualFunctionsForCreation__5AbodeFRC9MapCoords(struct Object* this, const void* edx, const struct MapCoords* coords) asm("?CallVirtualFunctionsForCreation@Abode@@UAEXABUMapCoords@@@Z");
// win1.41 00406820 mac 1049b920 Abode::InterfaceValidToTap(GInterfaceStatus *)
uint32_t __fastcall InterfaceValidToTap__5AbodeFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* status) asm("?InterfaceValidToTap@Abode@@UAEIPAVGInterfaceStatus@@@Z");
// win1.41 00406830 mac 102fed90 Abode::InterfaceTap(GInterfaceStatus *)
uint32_t __fastcall InterfaceTap__5AbodeFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* status) asm("?InterfaceTap@Abode@@UAEIPAVGInterfaceStatus@@@Z");
// win1.41 00402dc0 mac 103bf040 Abode::GetPhysicsConstantsType(void)
uint32_t __fastcall GetPhysicsConstantsType__5AbodeFv(struct Object* this) asm("?GetPhysicsConstantsType@Abode@@UAEIXZ");
// win1.41 00402dd0 mac 103bf110 Abode::SetUpPhysOb(PhysOb *)
void __fastcall SetUpPhysOb__5AbodeFP6PhysOb(struct Object* this, const void* edx, struct PhysOb* param_1) asm("?SetUpPhysOb@Abode@@UAEXPAVPhysOb@@@Z");
// win1.41 00406230 mac 1014cfd0 Abode::ChecksVerticesVObjects(void)
uint32_t __fastcall ChecksVerticesVObjects__5AbodeFv(struct Object* this) asm("?ChecksVerticesVObjects@Abode@@UAEIXZ");
// win1.41 00406240 mac 104a8350 Abode::ReactToPhysicsImpact(PhysicsObject *, bool)
void __fastcall ReactToPhysicsImpact__5AbodeFP13PhysicsObjectb(struct Object* this, const void* edx, struct PhysicsObject* param_1, bool param_2) asm("?ReactToPhysicsImpact@Abode@@UAEXPAVPhysicsObject@@_N@Z");
// win1.41 00406800 mac 1010ab50 Abode::CanBecomeAPhysicsObject(void)
bool __fastcall CanBecomeAPhysicsObject__5AbodeFv(struct Object* this) asm("?CanBecomeAPhysicsObject@Abode@@UAE_NXZ");
// win1.41 00402cd0 mac 100c7020 Abode::GetInspectObjectPos(Villager *, MapCoords *)
bool __fastcall GetInspectObjectPos__5AbodeFP8VillagerP9MapCoords(struct Object* this, const void* edx, struct Villager* param_1, struct MapCoords* pos) asm("?GetInspectObjectPos@Abode@@UAE_NPAVVillager@@PAUMapCoords@@@Z");
// win1.41 00407420 mac 10351de0 Abode::DiscipleInHandNear(Villager &, GInterfaceStatus &)
void __fastcall DiscipleInHandNear__5AbodeFR8VillagerR16GInterfaceStatus(struct Object* this, const void* edx, struct Villager* param_1, struct GInterfaceStatus* status) asm("?DiscipleInHandNear@Abode@@UAEXPAVVillager@@PAVGInterfaceStatus@@@Z");
// win1.41 00405bb0 mac 101ca440 Abode::SaveObject(LHOSFile &, MapCoords const &)
size_t __fastcall SaveObject__5AbodeFR8LHOSFileRC9MapCoords(struct Object* this, const void* edx, struct LHOSFile* param_1, const struct MapCoords* param_2) asm("?SaveObject@Abode@@UAEIPAVLHOSFile@@PBUMapCoords@@@Z");
// win1.41 00403ef0 mac 10589380 Abode::ShouldFootpathsGoRound(void)
bool __fastcall ShouldFootpathsGoRound__5AbodeFv(struct Object* this) asm("?ShouldFootpathsGoRound@Abode@@UAE_NXZ");
// win1.41 004072a0 mac 10053220 Abode::GetInfluence(void)
float __fastcall GetInfluence__5AbodeFv(struct MultiMapFixed* this) asm("?GetInfluence@Abode@@UAEMXZ");
// win1.41 004016a0 mac 10066b80 Abode::IsRepaired(void)
bool __fastcall IsRepaired__5AbodeFv(struct MultiMapFixed* this) asm("?IsRepaired@Abode@@UAE_NXZ");
// win1.41 004016c0 mac 10055bb0 Abode::IsBuilt(void)
bool __fastcall IsBuilt__5AbodeFv(struct MultiMapFixed* this) asm("?IsBuilt@Abode@@UAE_NXZ");
// win1.41 00407290 mac 10064f30 Abode::GetPercentRepairedForNonFunctional(void)
float __fastcall GetPercentRepairedForNonFunctional__5AbodeFv(struct MultiMapFixed* this) asm("?GetPercentRepairedForNonFunctional@Abode@@UAEMXZ");
// win1.41 00407050 mac 1004d310 Abode::GetPercentAbodeFullWithAdults(void)
float __fastcall GetPercentAbodeFullWithAdults__5AbodeFv(struct MultiMapFixed* this) asm("?GetPercentAbodeFullWithAdults@Abode@@UAEMXZ");
// win1.41 00407090 mac 10058a60 Abode::GetPercentAbodeFullWithChildren(void)
float __fastcall GetPercentAbodeFullWithChildren__5AbodeFv(struct MultiMapFixed* this) asm("?GetPercentAbodeFullWithChildren@Abode@@UAEMXZ");
// win1.41 00404720 mac 105b9180 Abode::Built(void)
bool __fastcall Built__5AbodeFv(struct MultiMapFixed* this) asm("?Built@Abode@@UAE_NXZ");
// win1.41 004047b0 mac 105b9280 Abode::Repaired(void)
bool __fastcall Repaired__5AbodeFv(struct MultiMapFixed* this) asm("?Repaired@Abode@@UAE_NXZ");
// win1.41 00401700 mac 105756c0 Abode::GetDestructionMesh(void)
struct LH3DMesh* __fastcall GetDestructionMesh__5AbodeFv(struct MultiMapFixed* this) asm("?GetDestructionMesh@Abode@@UAEPAVLH3DMesh@@XZ");
// win1.41 00403f40 mac 105861b0 Abode::RemoveDamage(void)
void __fastcall RemoveDamage__5AbodeFv(struct MultiMapFixed* this) asm("?RemoveDamage@Abode@@UAEXXZ");
// win1.41 00405ff0 mac 10199f30 Abode::IsCivic(void)
bool __fastcall IsCivic__5AbodeFv(struct MultiMapFixed* this) asm("?IsCivic@Abode@@UAE_NXZ");
// win1.41 004061f0 mac 10089cd0 Abode::GetAbodeType(void)
enum ABODE_TYPE __fastcall GetAbodeType__5AbodeFv(struct MultiMapFixed* this) asm("?GetAbodeType@Abode@@UAE?AW4ABODE_TYPE@@XZ");
// win1.41 00406970 mac 1004c590 Abode::GetDesireToBeRepaired(void)
float __fastcall GetDesireToBeRepaired__5AbodeFv(struct MultiMapFixed* this) asm("?GetDesireToBeRepaired@Abode@@UAEMXZ");
// win1.41 00404df0 mac 10002b90 Abode::DoResourceAdding(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool, MapCoords const &, int)
uint32_t __fastcall DoResourceAdding__5AbodeF13RESOURCE_TYPEUlP16GInterfaceStatusbRC9MapCoordsi(struct MultiMapFixed* this, const void* edx, enum RESOURCE_TYPE type, struct GInterfaceStatus* iface, bool param_3, struct MapCoords* param_4, int param_5) asm("?DoResourceAdding@Abode@@UAEIW4RESOURCE_TYPE@@PAVGInterfaceStatus@@_NPAUMapCoords@@H@Z");
// win1.41 00404f60 mac 104f7960 Abode::DoResourceRemoving(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool *)
uint32_t __fastcall DoResourceRemoving__5AbodeF13RESOURCE_TYPEUlP16GInterfaceStatusPb(struct MultiMapFixed* this, const void* edx, enum RESOURCE_TYPE type, uint32_t param_2, struct GInterfaceStatus* iface, bool param_4) asm("?DoResourceRemoving@Abode@@UAEIW4RESOURCE_TYPE@@IPAVGInterfaceStatus@@_N@Z");
// win1.41 00401690 mac 1037f370 Abode::SetTown(Town *)
void __fastcall SetTown__5AbodeFP4Town(struct MultiMapFixed* this, const void* edx, struct Town* town) asm("?SetTown@Abode@@UAEXPAVTown@@@Z");
// win1.41 00401650 mac 10565230 Abode::GetShouldNotBeAddedToPlanned(void)
bool __fastcall GetShouldNotBeAddedToPlanned__5AbodeFv(struct MultiMapFixed* this) asm("?GetShouldNotBeAddedToPlanned@Abode@@UAE_NXZ");
// win1.41 00401660 mac 1031a9a0 Abode::SetShouldNotBeAddedToPlanned(int)
void __fastcall SetShouldNotBeAddedToPlanned__5AbodeFi(struct MultiMapFixed* this, const void* edx, bool value) asm("?SetShouldNotBeAddedToPlanned@Abode@@UAEX_N@Z");
// win1.41 00405050 mac 100a3330 Abode::ConvertToPlanned(void)
struct PlannedMultiMapFixed* __fastcall ConvertToPlanned__5AbodeFv(struct MultiMapFixed* this) asm("?ConvertToPlanned@Abode@@UAEPAVPlannedMultiMapFixed@@XZ");
// win1.41 00404520 mac 1036d5a0 Abode::MoveAbodeToPlannedAbodes(void)
void __fastcall MoveAbodeToPlannedAbodes__5AbodeFv(struct Abode* this) asm("?MoveAbodeToPlannedAbodes@Abode@@UAEXXZ");
// win1.41 00403f00 mac 100e33a0 Abode::DeleteDependancys(void)
void __fastcall DeleteDependancys__5AbodeFv(struct Abode* this) asm("?DeleteDependancys@Abode@@UAEXXZ");
// win1.41 004047e0 mac 103c1e30 Abode::MakeFunctional(void)
void __fastcall MakeFunctional__5AbodeFv(struct Abode* this) asm("?MakeFunctional@Abode@@UAEXXZ");
// win1.41 004073c0 mac 103b5600 Abode::StopBeingFunctional(GPlayer *)
void __fastcall StopBeingFunctional__5AbodeFP7GPlayer(struct Abode* this, const void* edx, struct GPlayer* param_1) asm("?StopBeingFunctional@Abode@@UAEXPAVGPlayer@@@Z");
// win1.41 00401680 mac 10371be0 Abode::RestartBeingFunctional(void)
void __fastcall RestartBeingFunctional__5AbodeFv(struct Abode* this) asm("?RestartBeingFunctional@Abode@@UAEXXZ");
// win1.41 004016f0 mac 101cbc80 Abode::CausesTownEmergencyIfDamaged(void)
bool __fastcall CausesTownEmergencyIfDamaged__5AbodeFv(struct Abode* this) asm("?CausesTownEmergencyIfDamaged@Abode@@UAE_NXZ");
// win1.41 00407280 mac 100dcdb0 Abode::CanBeHiddenIn(void)
bool __fastcall CanBeHiddenIn__5AbodeFv(struct Abode* this) asm("?CanBeHiddenIn@Abode@@UAE_NXZ");
// win1.41 00405f50 mac 103b5680 Abode::GetTribe(void)
struct GTribeInfo* __fastcall GetTribe__5AbodeFv(struct Abode* this) asm("?GetTribe@Abode@@UAEPAUGTribeInfo@@XZ");

DECLARE_LH_LIST_HEAD(Abode);

#endif /* BW1_DECOMP_ABODE_INCLUDED_H */
