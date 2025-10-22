#ifndef BW1_DECOMP_MOBILE_OBJECT_INCLUDED_H
#define BW1_DECOMP_MOBILE_OBJECT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum HOLD_TYPE, enum RESOURCE_TYPE */
#include <lionhead/lhlib/ver5.0/LHLinkedList.h> /* For DECLARE_LH_LINKED_LIST */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "BaseInfo.h" /* For struct GBaseInfo */
#include "Mobile.h" /* For struct Mobile, struct MobileVftable */

// Forward Declares

struct Base;
struct Creature;
struct GInterfaceStatus;
struct GMobileObjectInfo;
struct GPlayer;
struct GameOSFile;
struct GameThing;
struct GameThingWithPos;
struct GestureSystemPacketData;
struct LHMatrix;
struct LHOSFile;
struct MapCell;
struct MapCoords;
struct Object;
struct PhysicsObject;
struct RPHolder;

struct MobileObjectVftable
{
  struct MobileVftable super;  /* 0x0 */
};
static_assert(sizeof(struct MobileObjectVftable) == 0x85c, "Data type is of wrong size");

union MobileObjectBase
{
  struct Mobile super;
  struct MobileObjectVftable* vftable;
};
static_assert(sizeof(union MobileObjectBase) == 0x58, "Data type is of wrong size");

struct MobileObject
{
  union MobileObjectBase base;  /* 0x0 */
  struct Object* object;  /* 0x58 */
  uint32_t field_0x5C;
  uint32_t field_0x60;
  uint32_t field_0x64;
};
static_assert(sizeof(struct MobileObject) == 0x68, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009c9698 mac inlined MobileObject::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__12MobileObject asm("??_R0?AVMobileObject@@@8");
// win1.41 009a7b60 mac inlined MobileObject::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__12MobileObject asm("??_R1A@?0A@A@MobileObject@@8");
// win1.41 009ae0c0 mac inlined MobileObject::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__12MobileObject asm("??_R2MobileObject@@8");
// win1.41 009ae0e0 mac inlined MobileObject::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__12MobileObject asm("??_R3MobileObject@@8");
// win1.41 008eed18 mac 106f3288 MobileObject::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__12MobileObject asm("??_R4MobileObject@@6B@");
// win1.41 008eed1c mac 109ab974 MobileObject::`vftable'
extern const struct MobileObjectVftable __vt__12MobileObject asm("??_7MobileObject@@6B@");

// Static methods

// win1.41 00606fc0 mac 1008e240 MobileObject::AddMobileObjectCheckSum(void)
void __cdecl AddMobileObjectCheckSum__12MobileObjectFv(void) asm("?AddMobileObjectCheckSum@MobileObject@@SAXXZ");

// Constructors

// win1.41 00600d80 mac 1011a5a0 MobileObject::MobileObject(void)
struct MobileObject* __fastcall __ct__12MobileObjectFv(struct MobileObject* this) asm("??0MobileObject@@QAE@XZ");
// win1.41 00606e40 mac 103bde00 MobileObject::MobileObject(MapCoords const &, GMobileObjectInfo const *, Object *, float, float)
struct MobileObject* __fastcall __ct__12MobileObjectFRC9MapCoordsPC17GMobileObjectInfoP6Objectff(const struct MobileObject* this, const void* edx, struct MapCoords* coords, const struct GMobileObjectInfo* info, struct Object* param_4, float param_5, float param_6) asm("??0MobileObject@@QAE@ABUMapCoords@@PBVGMobileObjectInfo@@PAVObject@@MM@Z");

// Override methods

// win1.41 0055d080 mac 103bdd30 MobileObject::_dt(void)
void __fastcall __dt__12MobileObjectFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GMobileObject@@UAEPAXI@Z");
// win1.41 00606f00 mac 103bdb30 MobileObject::ToBeDeleted(int)
void __fastcall ToBeDeleted__12MobileObjectFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@MobileObject@@UAEXH@Z");
// win1.41 00607230 mac 103bd130 MobileObject::GetPlayer(void)
struct GPlayer* __fastcall GetPlayer__12MobileObjectFv(struct GameThing* this) asm("?GetPlayer@MobileObject@@UAEPAVGPlayer@@XZ");
// win1.41 00425be0 mac 100adc60 MobileObject::GetDebugText(void)
char* __fastcall GetDebugText__12MobileObjectFv(struct GameThing* this) asm("?GetDebugText@MobileObject@@UAEPADXZ");
// win1.41 00607d00 mac 103bb660 MobileObject::Load(GameOSFile &)
uint32_t __fastcall Load__12MobileObjectFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@MobileObject@@UAEIAAVGameOSFile@@@Z");
// win1.41 00607c40 mac 103bb7a0 MobileObject::Save(GameOSFile &)
uint32_t __fastcall Save__12MobileObjectFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@MobileObject@@UAEIAAVGameOSFile@@@Z");
// win1.41 00425bd0 mac 100adc20 MobileObject::GetSaveType(void)
uint32_t __fastcall GetSaveType__12MobileObjectFv(struct GameThing* this) asm("?GetSaveType@MobileObject@@UAEIXZ");
// win1.41 00607ab0 mac 103bbc80 MobileObject::PhysicsEditorCreate(int)
void __fastcall PhysicsEditorCreate__12MobileObjectFi(struct GameThingWithPos* this, const void* edx, int param_1) asm("?PhysicsEditorCreate@MobileObject@@UAEXH@Z");
// win1.41 00607430 mac 103bcc00 MobileObject::GetCreatureBeliefType(void)
uint32_t __fastcall GetCreatureBeliefType__12MobileObjectFv(struct GameThingWithPos* this) asm("?GetCreatureBeliefType@MobileObject@@UAEIXZ");
// win1.41 00425bb0 mac 100adb90 MobileObject::CanBePlayedWithByCreature(Creature *)
uint32_t __fastcall CanBePlayedWithByCreature__12MobileObjectFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBePlayedWithByCreature@MobileObject@@UAEIPAVCreature@@@Z");
// win1.41 00425b90 mac 100adae0 MobileObject::CanBeStompedOnByCreature(Creature *)
uint32_t __fastcall CanBeStompedOnByCreature__12MobileObjectFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBeStompedOnByCreature@MobileObject@@UAEIPAVCreature@@@Z");
// win1.41 004e4ce0 mac 105e3ad0 MobileObject::IsMushroom(Creature *)
uint32_t __fastcall IsMushroom__12MobileObjectFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?IsMushroom@MobileObject@@UAEIPAVCreature@@@Z");
// win1.41 00425b70 mac 100ada60 MobileObject::CanBeUsedToHoldWater(Creature *)
uint32_t __fastcall CanBeUsedToHoldWater__12MobileObjectFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBeUsedToHoldWater@MobileObject@@UAEIPAVCreature@@@Z");
// win1.41 00425ba0 mac 100adb30 MobileObject::CanBeThrownInTheSeaPlayfully(Creature *)
uint32_t __fastcall CanBeThrownInTheSeaPlayfully__12MobileObjectFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBeThrownInTheSeaPlayfully@MobileObject@@UAEIPAVCreature@@@Z");
// win1.41 00425b60 mac 100ada10 MobileObject::GetCreatureMimicType(void)
uint32_t __fastcall GetCreatureMimicType__12MobileObjectFv(struct GameThingWithPos* this) asm("?GetCreatureMimicType@MobileObject@@UAEIXZ");
// win1.41 00425bc0 mac 100adbe0 MobileObject::IsMobileObject(void)
uint32_t __fastcall IsMobileObject__12MobileObjectFv(struct GameThingWithPos* this) asm("?IsMobileObject@MobileObject@@UAEIXZ");
// win1.41 006079e0 mac 103bc0b0 MobileObject::IsPoisoned(void)
uint32_t __fastcall IsPoisoned__12MobileObjectFv(struct GameThingWithPos* this) asm("?IsPoisoned@MobileObject@@UAEIXZ");
// win1.41 00607b60 mac 103bbc40 MobileObject::GetScriptObjectType(void)
uint32_t __fastcall GetScriptObjectType__12MobileObjectFv(struct GameThingWithPos* this) asm("?GetScriptObjectType@MobileObject@@UAEIXZ");
// win1.41 00425b10 mac 100ad890 MobileObject::GetXAngle(void)
float __fastcall GetXAngle__12MobileObjectFv(struct Object* this) asm("?GetXAngle@MobileObject@@UAEMXZ");
// win1.41 00425b20 mac 100ad8d0 MobileObject::GetZAngle(void)
float __fastcall GetZAngle__12MobileObjectFv(struct Object* this) asm("?GetZAngle@MobileObject@@UAEMXZ");
// win1.41 00607460 mac 103bcad0 MobileObject::SetXYZAngles(float, float, float)
void __fastcall SetXYZAngles__12MobileObjectFfff(struct Object* this, const void* edx, float param_1, float param_2, float param_3) asm("?SetXYZAngles@MobileObject@@UAEXMMM@Z");
// win1.41 006074e0 mac 103bc9a0 MobileObject::SetXYZAnglesAndScale(float, float, float, float)
void __fastcall SetXYZAnglesAndScale__12MobileObjectFffff(struct Object* this, const void* edx, float param_1, float param_2, float param_3, float param_4) asm("?SetXYZAnglesAndScale@MobileObject@@UAEXMMMM@Z");
// win1.41 00607790 mac 103bc240 MobileObject::MoveAlongPath(void)
uint32_t __fastcall MoveAlongPath__12MobileObjectFv(struct Object* this) asm("?MoveAlongPath@MobileObject@@UAEIXZ");
// win1.41 00607210 mac 103bd180 MobileObject::Create3DObject(void)
void __fastcall Create3DObject__12MobileObjectFv(struct Object* this) asm("?Create3DObject@MobileObject@@UAEXXZ");
// win1.41 00607250 mac 103bd0c0 MobileObject::InsertMapObjectToCell(MapCell *)
void __fastcall InsertMapObjectToCell__12MobileObjectFP7MapCell(struct Object* this, const void* edx, struct MapCell* cell) asm("?InsertMapObjectToCell@MobileObject@@UAEXPAUMapCell@@@Z");
// win1.41 00607260 mac 103bd050 MobileObject::RemoveMapObjectFromCell(MapCell *)
void __fastcall RemoveMapObjectFromCell__12MobileObjectFP7MapCell(struct Object* this, const void* edx, struct MapCell* param_1) asm("?RemoveMapObjectFromCell@MobileObject@@UAEXPAUMapCell@@@Z");
// win1.41 00607120 mac 103bd480 MobileObject::GetHoldType(void)
enum HOLD_TYPE __fastcall GetHoldType__12MobileObjectFv(struct Object* this) asm("?GetHoldType@MobileObject@@UAE?AW4HOLD_TYPE@@XZ");
// win1.41 00607130 mac 103bd3f0 MobileObject::GetHoldLoweringMultiplier(void)
float __fastcall GetHoldLoweringMultiplier__12MobileObjectFv(struct Object* this) asm("?GetHoldLoweringMultiplier@MobileObject@@UAEMXZ");
// win1.41 00425b40 mac 100ad960 MobileObject::GetMesh( const(void))
int __fastcall GetMesh__12MobileObjectCFv(const struct Object* this) asm("?GetMesh@MobileObject@@UBEHXZ");
// win1.41 00518150 mac 10036400 MobileObject::Draw(void)
void __fastcall Draw__12MobileObjectFv(struct Object* this) asm("?Draw@MobileObject@@UAEXXZ");
// win1.41 00425b30 mac 100ad910 MobileObject::CanBePickedUp(void)
bool __fastcall CanBePickedUp__12MobileObjectFv(struct Object* this) asm("?CanBePickedUp@MobileObject@@UAE_NXZ");
// win1.41 00607560 mac 103bc790 MobileObject::GetWorldMatrix(LHMatrix *)
void __fastcall GetWorldMatrix__12MobileObjectFP8LHMatrix(struct Object* this, const void* edx, struct LHMatrix* param_1) asm("?GetWorldMatrix@MobileObject@@UAEXPAULHMatrix@@@Z");
// win1.41 00607150 mac 103bd200 MobileObject::CallVirtualFunctionsForCreation(MapCoords const &)
void __fastcall CallVirtualFunctionsForCreation__12MobileObjectFRC9MapCoords(struct Object* this, const void* edx, const struct MapCoords* param_1) asm("?CallVirtualFunctionsForCreation@MobileObject@@UAEXABUMapCoords@@@Z");
// win1.41 00607c20 mac 103bb8f0 MobileObject::GetResourceType(void)
enum RESOURCE_TYPE __fastcall GetResourceType__12MobileObjectFv(struct Object* this) asm("?GetResourceType@MobileObject@@UAE?AW4RESOURCE_TYPE@@XZ");
// win1.41 00607bf0 mac 103bb9a0 MobileObject::GetDefaultResource(void)
int __fastcall GetDefaultResource__12MobileObjectFv(struct Object* this) asm("?GetDefaultResource@MobileObject@@UAEHXZ");
// win1.41 00607b70 mac 103bbb30 MobileObject::ValidToApplyThisToObject(GInterfaceStatus *, Object *)
uint32_t __fastcall ValidToApplyThisToObject__12MobileObjectFP16GInterfaceStatusP6Object(struct Object* this, const void* edx, struct GInterfaceStatus* param_1, struct Object* param_2) asm("?ValidToApplyThisToObject@MobileObject@@UAEIPAVGInterfaceStatus@@PAVObject@@@Z");
// win1.41 00607bc0 mac 103bba60 MobileObject::ApplyThisToObject(GInterfaceStatus *, Object *, GestureSystemPacketData *)
uint32_t __fastcall ApplyThisToObject__12MobileObjectFP16GInterfaceStatusP6ObjectP23GestureSystemPacketData(struct Object* this, const void* edx, struct GInterfaceStatus* param_1, struct Object* param_2, struct GestureSystemPacketData* param_3) asm("?ApplyThisToObject@MobileObject@@UAEIPAVGInterfaceStatus@@PAVObject@@PAUGestureSystemPacketData@@@Z");
// win1.41 006079f0 mac 103bbfc0 MobileObject::GetPhysicsConstantsType(void)
uint32_t __fastcall GetPhysicsConstantsType__12MobileObjectFv(struct Object* this) asm("?GetPhysicsConstantsType@MobileObject@@UAEIXZ");
// win1.41 00607a20 mac 103bbe50 MobileObject::ReactToPhysicsImpact(PhysicsObject *, bool)
void __fastcall ReactToPhysicsImpact__12MobileObjectFP13PhysicsObjectb(struct Object* this, const void* edx, struct PhysicsObject* param_1, bool param_2) asm("?ReactToPhysicsImpact@MobileObject@@UAEXPAVPhysicsObject@@_N@Z");
// win1.41 00607aa0 mac 103bbe00 MobileObject::CanBecomeAPhysicsObject(void)
bool __fastcall CanBecomeAPhysicsObject__12MobileObjectFv(struct Object* this) asm("?CanBecomeAPhysicsObject@MobileObject@@UAE_NXZ");
// win1.41 00607410 mac 103bcc90 MobileObject::AddToRoutePlan(RPHolder *, Creature *, int, void (*)(int, Point2D, float, int))
void __fastcall AddToRoutePlan__12MobileObjectFP8RPHolderP8CreatureiPFi7Point2Dfi_v(struct Object* this, const void* edx, struct RPHolder* param_1, struct Creature* param_2, int param_3, void (__cdecl* param_4)(int param_1, struct Point2D param_2, float param_3, int param_4)) asm("?AddToRoutePlan@MobileObject@@UAEXPAURPHolder@@PAVCreature@@HP6AXHUPoint2D@@MH@Z@Z");
// win1.41 00425b50 mac 100ad9d0 MobileObject::GetTastiness(void)
uint32_t __fastcall GetTastiness__12MobileObjectFv(struct Object* this) asm("?GetTastiness@MobileObject@@UAEIXZ");
// win1.41 00607270 mac 103bcd10 MobileObject::SaveObject(LHOSFile &, MapCoords const &)
uint32_t __fastcall SaveObject__12MobileObjectFR8LHOSFileRC9MapCoords(struct Object* this, const void* edx, struct LHOSFile* param_1, const struct MapCoords* param_2) asm("?SaveObject@MobileObject@@UAEIAAULHOSFile@@ABUMapCoords@@@Z");

DECLARE_LH_LINKED_LIST(MobileObject);

struct GSpeedThreshold
{
  struct GBaseInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GSpeedThreshold) == 0x10, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bf4218 mac inlined GSpeedThreshold::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__15GSpeedThreshold asm("??_R0?AVGSpeedThreshold@@@8");
// win1.41 009b1f98 mac inlined GSpeedThreshold::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__15GSpeedThreshold asm("??_R1A@?0A@A@GSpeedThreshold@@8");
// win1.41 009b1fb0 mac inlined GSpeedThreshold::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__15GSpeedThreshold asm("??_R2GSpeedThreshold@@8");
// win1.41 009b1fc0 mac inlined GSpeedThreshold::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__15GSpeedThreshold asm("??_R3GSpeedThreshold@@8");

// Override methods

// win1.41 00606bd0 mac 103ba910 GSpeedThreshold::_dt(void)
void __fastcall __dt__15GSpeedThresholdFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGSpeedThreshold@@UAEPAXI@Z");
// win1.41 00606b70 mac 103baa30 GSpeedThreshold::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__15GSpeedThresholdFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@GSpeedThreshold@@UAEPAVGBaseInfo@@AAI@Z");

#endif /* BW1_DECOMP_MOBILE_OBJECT_INCLUDED_H */
