#ifndef BW1_DECOMP_POT_INCLUDED_H
#define BW1_DECOMP_POT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For enum RESOURCE_TYPE */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "MobileObject.h" /* For struct MobileObject, struct MobileObjectVftable */
#include "Object.h" /* For enum FOOD_TYPE */

// Forward Declares

struct Base;
struct EffectValues;
struct GInterfaceStatus;
struct GPotInfo;
struct GameOSFile;
struct GameThing;
struct GameThingWithPos;
struct GestureSystemPacketData;
struct LHOSFile;
struct LHPoint;
struct MapCoords;
struct MultiMapFixed;
struct Object;
struct PhysicsObject;
struct Pot;
struct Town;

struct PotVftable
{
  struct MobileObjectVftable super;  /* 0x0 */
  void (__fastcall* SetSize)(struct Pot* this);  /* 0x85c */
  bool (__fastcall* IsPartOfStructure)(struct Pot* this);  /* 0x860 */
  void (__fastcall* SetSpeedUp)(struct Pot* this, const void* edx, int speed);
  void (__fastcall* SetMultiMapFixed)(struct Pot* this, const void* edx, struct MultiMapFixed* multiMapFixed);
};
static_assert(sizeof(struct PotVftable) == 0x86c, "Data type is of wrong size");

union PotBase
{
  struct MobileObject super;
  struct PotVftable* vftable;
};
static_assert(sizeof(union PotBase) == 0x68, "Data type is of wrong size");

struct Pot
{
  union PotBase base;  /* 0x0 */
  enum RESOURCE_TYPE field_0x68;
  uint32_t field_0x6c;
  uint32_t field_0x70;
  uint8_t field_0x74;
};
static_assert(sizeof(struct Pot) == 0x78, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009c8eb0 mac inlined Pot::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__3Pot asm("??_R0?AVPot@@@8");
// win1.41 009adbc0 mac inlined Pot::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__3Pot asm("??_R1A@?0A@A@Pot@@8");
// win1.41 009ad770 mac inlined Pot::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__3Pot asm("??_R2Pot@@8");
// win1.41 009ad790 mac inlined Pot::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__3Pot asm("??_R3Pot@@8");
// win1.41 008e6600 mac 10747720 Pot::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__3Pot asm("??_R4Pot@@6B@");
// win1.41 008e6604 mac 10749c20 Pot::`vftable'
extern const struct PotVftable __vt__3Pot asm("??_7Pot@@6B@");

// Constructors

// win1.41 inlined mac 1030c590 Pot::Pot(void)
struct Pot* __fastcall __ct__3PotFv(struct Pot* this) asm("??0Pot@@QAE@XZ");
// win1.41 0066ce60 mac 1011cef0 Pot::Pot(MapCoords const &, GPotInfo const *, unsigned long, Town *, float, float)
struct Pot* __fastcall __ct__3PotFRC9MapCoordsPC8GPotInfoUlP4Townff(struct Pot* this, const void* edx, struct MapCoords* param_1, struct GPotInfo* param_2, uint32_t param_3, struct Town* param_4, float param_5, float param_6) asm("??0Pot@@QAE@ABUMapCoords@@PBVGPotInfo@@KPAVTown@@MM@Z");

// Non-virtual methods

// win1.41 0066cec0 mac 1011ceb0 Pot::SetToZero(void)
void __fastcall SetToZero__3PotFv(struct Pot* this) asm("?SetToZero@Pot@@QAEXXZ");

// Override methods

// win1.41 0055d5c0 mac 1011c9c0 Pot::_dt(void)
void __fastcall __dt__3PotFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GPot@@UAEPAXI@Z");
// win1.41 0066d110 mac 1011c930 Pot::ToBeDeleted(int)
void __fastcall ToBeDeleted__3PotFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@Pot@@UAEXH@Z");
// win1.41 0066d2b0 mac 10004180 Pot::JustAddResource(RESOURCE_TYPE, unsigned long, bool)
uint32_t __fastcall JustAddResource__3PotF13RESOURCE_TYPEUlb(struct GameThing* this, const void* edx, enum RESOURCE_TYPE param_1, uint32_t param_2, bool param_3) asm("?JustAddResource@Pot@@UAEIW4RESOURCE_TYPE@@I_N@Z");
// win1.41 0066d410 mac 1011c040 Pot::JustRemoveResource(RESOURCE_TYPE, unsigned long, bool *)
uint32_t __fastcall JustRemoveResource__3PotF13RESOURCE_TYPEUlPb(struct GameThing* this, const void* edx, enum RESOURCE_TYPE param_1, uint32_t param_2, bool* param_3) asm("?JustRemoveResource@Pot@@UAEIW4RESOURCE_TYPE@@IPA_N@Z");
// win1.41 0066d390 mac 10077db0 Pot::JustGetResource(RESOURCE_TYPE, unsigned long, bool *)
uint32_t __fastcall JustGetResource__3PotF13RESOURCE_TYPEUlPb(struct GameThing* this, const void* edx, enum RESOURCE_TYPE param_1, uint32_t param_2, bool* param_3) asm("?JustGetResource@Pot@@UAEIW4RESOURCE_TYPE@@IPA_N@Z");
// win1.41 0066d3d0 mac 1011c200 Pot::GetResource(RESOURCE_TYPE)
uint32_t __fastcall GetResource__3PotF13RESOURCE_TYPE(struct GameThing* this, const void* edx, enum RESOURCE_TYPE param_1) asm("?GetResource@Pot@@UAEIW4RESOURCE_TYPE@@@Z");
// win1.41 0066d290 mac 1011c770 Pot::AddResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool, MapCoords const &, int)
uint32_t __fastcall AddResource__3PotF13RESOURCE_TYPEUlP16GInterfaceStatusbRC9MapCoordsi(struct GameThing* this, const void* edx, enum RESOURCE_TYPE param_1, uint32_t param_2, struct GInterfaceStatus* param_3, bool param_4, const struct MapCoords* param_5, int param_6) asm("?AddResource@Pot@@UAEIW4RESOURCE_TYPE@@IPAVGInterfaceStatus@@_NPBUMapCoords@@H@Z");
// win1.41 0066d3f0 mac 1011c180 Pot::RemoveResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool *)
uint32_t __fastcall RemoveResource__3PotF13RESOURCE_TYPEUlP16GInterfaceStatusPb(struct GameThing* this, const void* edx, enum RESOURCE_TYPE param_1, uint32_t param_2, struct GInterfaceStatus* param_3, bool* param_4) asm("?RemoveResource@Pot@@UAEIW4RESOURCE_TYPE@@IPAVGInterfaceStatus@@PA_N@Z");
// win1.41 0055d5b0 mac 10116380 Pot::GetDebugText(void)
char* __fastcall GetDebugText__3PotFv(struct GameThing* this) asm("?GetDebugText@Pot@@UAEPADXZ");
// win1.41 0071bde0 mac 1050fbf0 Pot::GetGuidanceResourceType(void)
uint32_t __fastcall GetGuidanceResourceType__3PotFv(struct GameThing* this) asm("?GetGuidanceResourceType@Pot@@UAEIXZ");
// win1.41 0066d820 mac 1011b6c0 Pot::Load(GameOSFile &)
uint32_t __fastcall Load__3PotFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@Pot@@UAEIAAVGameOSFile@@@Z");
// win1.41 0066d730 mac 1011b830 Pot::Save(GameOSFile &)
uint32_t __fastcall Save__3PotFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@Pot@@UAEIAAVGameOSFile@@@Z");
// win1.41 0055d5a0 mac 10116350 Pot::GetSaveType(void)
uint32_t __fastcall GetSaveType__3PotFv(struct GameThing* this) asm("?GetSaveType@Pot@@UAEIXZ");
// win1.41 0055d580 mac 101162d0 Pot::GetCreatureBeliefType(void)
uint32_t __fastcall GetCreatureBeliefType__3PotFv(struct GameThingWithPos* this) asm("?GetCreatureBeliefType@Pot@@UAEIXZ");
// win1.41 0066f540 mac 10116750 Pot::GetOverwriteInteractableToolTip(void)
uint32_t __fastcall GetOverwriteInteractableToolTip__3PotFv(struct GameThingWithPos* this) asm("?GetOverwriteInteractableToolTip@Pot@@UAEIXZ");
// win1.41 0055d4e0 mac 1000ea20 Pot::IsPoisoned(void)
uint32_t __fastcall IsPoisoned__3PotFv(struct GameThingWithPos* this) asm("?IsPoisoned@Pot@@UAEIXZ");
// win1.41 0055d4f0 mac 101161d0 Pot::IsSpeedUp(void)
uint32_t __fastcall IsSpeedUp__3PotFv(struct GameThingWithPos* this) asm("?IsSpeedUp@Pot@@UAEIXZ");
// win1.41 0055d500 mac 10116210 Pot::IsPot(void)
uint32_t __fastcall IsPot__3PotFv(struct GameThingWithPos* this) asm("?IsPot@Pot@@UAEIXZ");
// win1.41 0066f530 mac 101167d0 Pot::GetScriptObjectType(void)
uint32_t __fastcall GetScriptObjectType__3PotFv(struct GameThingWithPos* this) asm("?GetScriptObjectType@Pot@@UAEIXZ");
// win1.41 0051bb70 mac 100c5290 Pot::Draw(void)
void __fastcall Draw__3PotFv(struct Object* this) asm("?Draw@Pot@@UAEXXZ");
// win1.41 0051bbc0 mac 100c5150 Pot::DrawOutOfMap(bool)
void __fastcall DrawOutOfMap__3PotFb(struct Object* this, const void* edx, bool param_1) asm("?DrawOutOfMap@Pot@@UAEX_N@Z");
// win1.41 0066d130 mac 1011c840 Pot::CallVirtualFunctionsForCreation(MapCoords const &)
void __fastcall CallVirtualFunctionsForCreation__3PotFRC9MapCoords(struct Object* this, const void* edx, const struct MapCoords* param_1) asm("?CallVirtualFunctionsForCreation@Pot@@UAEXABUMapCoords@@@Z");
// win1.41 0066f570 mac 10116690 Pot::GetFoodValue(FOOD_TYPE)
float __fastcall GetFoodValue__3PotF9FOOD_TYPE(struct Object* this, const void* edx, enum FOOD_TYPE param_1) asm("?GetFoodValue@Pot@@UAEMW4FOOD_TYPE@@@Z");
// win1.41 0066f560 mac 10116710 Pot::IsResourceStore(RESOURCE_TYPE)
bool __fastcall IsResourceStore__3PotF13RESOURCE_TYPE(struct Object* this, const void* edx, enum RESOURCE_TYPE param_1) asm("?IsResourceStore@Pot@@UAE_NW4RESOURCE_TYPE@@@Z");
// win1.41 0066dd30 mac 1011ac10 Pot::DeleteObjectAndTakeResource(Object *, GInterfaceStatus *)
bool __fastcall DeleteObjectAndTakeResource__3PotFP6ObjectP16GInterfaceStatus(struct Object* this, const void* edx, struct Object* param_1, struct GInterfaceStatus* param_2) asm("?DeleteObjectAndTakeResource@Pot@@UAE_NPAVObject@@PAVGInterfaceStatus@@@Z");
// win1.41 0066f520 mac 10116810 Pot::GetRadiusMultiplierForApplyingPotToPos(void)
float __fastcall GetRadiusMultiplierForApplyingPotToPos__3PotFv(struct Object* this) asm("?GetRadiusMultiplierForApplyingPotToPos@Pot@@UAEMXZ");
// win1.41 0055d4c0 mac 100d32d0 Pot::GetResourceType(void)
enum RESOURCE_TYPE __fastcall GetResourceType__3PotFv(struct Object* this) asm("?GetResourceType@Pot@@UAE?AW4RESOURCE_TYPE@@XZ");
// win1.41 0055d4d0 mac 10116190 Pot::GetDefaultResource(void)
int __fastcall GetDefaultResource__3PotFv(struct Object* this) asm("?GetDefaultResource@Pot@@UAEHXZ");
// win1.41 0055d550 mac 10116280 Pot::SetPoisonedResource(RESOURCE_TYPE, int)
void __fastcall SetPoisonedResource__3PotF13RESOURCE_TYPEi(struct Object* this, const void* edx, enum RESOURCE_TYPE param_1, int param_2) asm("?SetPoisonedResource@Pot@@UAEXW4RESOURCE_TYPE@@H@Z");
// win1.41 0055d510 mac 100011f0 Pot::SetPoisoned(int)
void __fastcall SetPoisoned__3PotFi(struct Object* this, const void* edx, int param_1) asm("?SetPoisoned@Pot@@UAEXH@Z");
// win1.41 0066d6c0 mac 1011bb10 Pot::StartOnFire(void)
void __fastcall StartOnFire__3PotFv(struct Object* this) asm("?StartOnFire@Pot@@UAEXXZ");
// win1.41 0066d6d0 mac 1011ba60 Pot::EndOnFire(void)
void __fastcall EndOnFire__3PotFv(struct Object* this) asm("?EndOnFire@Pot@@UAEXXZ");
// win1.41 0066d710 mac 1011b9b0 Pot::InterfaceSetInMagicHand(GInterfaceStatus *)
uint32_t __fastcall InterfaceSetInMagicHand__3PotFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1) asm("?InterfaceSetInMagicHand@Pot@@UAEIPAVGInterfaceStatus@@@Z");
// win1.41 0066dd50 mac 1011aae0 Pot::ValidToApplyThisToObject(GInterfaceStatus *, Object *)
uint32_t __fastcall ValidToApplyThisToObject__3PotFP16GInterfaceStatusP6Object(struct Object* this, const void* edx, struct GInterfaceStatus* param_1, struct Object* param_2) asm("?ValidToApplyThisToObject@Pot@@UAEIPAVGInterfaceStatus@@PAVObject@@@Z");
// win1.41 0066ddd0 mac 1011a930 Pot::ApplyThisToObject(GInterfaceStatus *, Object *, GestureSystemPacketData *)
uint32_t __fastcall ApplyThisToObject__3PotFP16GInterfaceStatusP6ObjectP23GestureSystemPacketData(struct Object* this, const void* edx, struct GInterfaceStatus* param_1, struct Object* param_2, struct GestureSystemPacketData* param_3) asm("?ApplyThisToObject@Pot@@UAEIPAVGInterfaceStatus@@PAVObject@@PAUGestureSystemPacketData@@@Z");
// win1.41 0066de70 mac 1011a7e0 Pot::ApplyThisToMapCoord(GInterfaceStatus *, MapCoords const &, GestureSystemPacketData *)
uint32_t __fastcall ApplyThisToMapCoord__3PotFP16GInterfaceStatusRC9MapCoordsP23GestureSystemPacketData(struct Object* this, const void* edx, struct GInterfaceStatus* param_1, const struct MapCoords* param_2, struct GestureSystemPacketData* param_3) asm("?ApplyThisToMapCoord@Pot@@UAEIPAVGInterfaceStatus@@ABUMapCoords@@PAUGestureSystemPacketData@@@Z");
// win1.41 0066d650 mac 1011bcb0 Pot::IsEffectReceiver(EffectValues *)
uint32_t __fastcall IsEffectReceiver__3PotFP12EffectValues(struct Object* this, const void* edx, struct EffectValues* param_1) asm("?IsEffectReceiver@Pot@@UAEIPAVEffectValues@@@Z");
// win1.41 0066df00 mac 1011a620 Pot::InitialisePhysicsFromHand(LHPoint &, LHPoint &, GInterfaceStatus *, Object *, int)
uint32_t __fastcall InitialisePhysicsFromHand__3PotFR7LHPointR7LHPointP16GInterfaceStatusP6Objecti(struct Object* this, const void* edx, struct LHPoint* param_1, struct LHPoint* param_2, struct GInterfaceStatus* param_3, struct Object* param_4, int param_5) asm("?InitialisePhysicsFromHand@Pot@@UAEIAAULHPoint@@0PAVGInterfaceStatus@@PAVObject@@H@Z");
// win1.41 0066cef0 mac 1011cd80 Pot::GetPhysicsConstantsType(void)
uint32_t __fastcall GetPhysicsConstantsType__3PotFv(struct Object* this) asm("?GetPhysicsConstantsType@Pot@@UAEIXZ");
// win1.41 0066dbd0 mac 1011ae20 Pot::EndPhysics(PhysicsObject *, bool)
void __fastcall EndPhysics__3PotFP13PhysicsObjectb(struct Object* this, const void* edx, struct PhysicsObject* param_1, bool param_2) asm("?EndPhysics@Pot@@UAEXPAVPhysicsObject@@_N@Z");
// win1.41 0066ced0 mac 1011ce10 Pot::InteractsWithPhysicsObjects(void)
bool __fastcall InteractsWithPhysicsObjects__3PotFv(struct Object* this) asm("?InteractsWithPhysicsObjects@Pot@@UAE_NXZ");
// win1.41 0066dc90 mac 1011ac90 Pot::ReactToPhysicsImpact(PhysicsObject *, bool)
void __fastcall ReactToPhysicsImpact__3PotFP13PhysicsObjectb(struct Object* this, const void* edx, struct PhysicsObject* param_1, bool param_2) asm("?ReactToPhysicsImpact@Pot@@UAEXPAVPhysicsObject@@_N@Z");
// win1.41 0066e8f0 mac 10118e10 Pot::CanBecomeAPhysicsObject(void)
bool __fastcall CanBecomeAPhysicsObject__3PotFv(struct Object* this) asm("?CanBecomeAPhysicsObject@Pot@@UAE_NXZ");
// win1.41 0066d550 mac 1011bd00 Pot::SaveObject(LHOSFile &, MapCoords const &)
uint32_t __fastcall SaveObject__3PotFR8LHOSFileRC9MapCoords(struct Object* this, const void* edx, struct LHOSFile* param_1, const struct MapCoords* param_2) asm("?SaveObject@Pot@@UAEIAAULHOSFile@@ABUMapCoords@@@Z");
// win1.41 0055d590 mac 10116310 Pot::IsAPotFromABuildingSite(void)
bool __fastcall IsAPotFromABuildingSite__3PotFv(struct Object* this) asm("?IsAPotFromABuildingSite@Pot@@UAE_NXZ");

#endif /* BW1_DECOMP_POT_INCLUDED_H */
