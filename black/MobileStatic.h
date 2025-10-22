#ifndef BW1_DECOMP_MOBILE_STATIC_INCLUDED_H
#define BW1_DECOMP_MOBILE_STATIC_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For enum HOLD_TYPE, enum RESOURCE_TYPE */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "MultiMapFixed.h" /* For struct MultiMapFixed */
#include "Object.h" /* For struct Object */

// Forward Declares

struct Base;
struct Creature;
struct GInterfaceStatus;
struct GMobileStaticInfo;
struct GPlayer;
struct GameOSFile;
struct GameThing;
struct GameThingWithPos;
struct GestureSystemPacketData;
struct LHMatrix;
struct LHOSFile;
struct LHPoint;
struct MapCoords;
struct PhysicsObject;
struct RPHolder;

struct MobileStatic
{
  struct MultiMapFixed super;  /* 0x0 */
  struct Object* field_0x7c;
  uint8_t field_0x80[0x8];
};
static_assert(sizeof(struct MobileStatic) == 0x88, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009cd308 mac inlined MobileStatic::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__12MobileStatic asm("??_R0?AVMobileStatic@@@8");
// win1.41 009a84f8 mac inlined MobileStatic::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__12MobileStatic asm("??_R1A@?0A@A@MobileStatic@@8");
// win1.41 009adf40 mac inlined MobileStatic::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__12MobileStatic asm("??_R2MobileStatic@@8");
// win1.41 009adf60 mac inlined MobileStatic::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__12MobileStatic asm("??_R3MobileStatic@@8");
// win1.41 008e80b0 mac 107387a4 MobileStatic::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__12MobileStatic asm("??_R4MobileStatic@@6B@");
// win1.41 008e80b4 mac 107387dc MobileStatic::`vftable'
extern const struct MultiMapFixedVftable __vt__12MobileStatic asm("??_7MobileStatic@@6B@");

// Constructors

// win1.41 00608710 mac 103c0e60 MobileStatic::MobileStatic(MapCoords const &, GMobileStaticInfo const *, Object *, float, float)
struct MobileStatic* __fastcall __ct__12MobileStaticFRC9MapCoordsPC17GMobileStaticInfoP6Objectff(struct MobileStatic* this, const void* edx, struct MapCoords* coords, struct GMobileStaticInfo* info, struct Object* param_3, float param_4, float param_5) asm("??0MobileStatic@@QAE@ABUMapCoords@@PBVGMobileStaticInfo@@PAVObject@@MM@Z");

// Override methods

// win1.41 0055d760 mac 103c0dd0 MobileStatic::_dt(void)
void __fastcall __dt__12MobileStaticFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GMobileStatic@@UAEPAXI@Z");
// win1.41 00608760 mac 103c0d80 MobileStatic::ToBeDeleted(int)
void __fastcall ToBeDeleted__12MobileStaticFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@MobileStatic@@UAEXH@Z");
// win1.41 006088b0 mac 103c0890 MobileStatic::GetPlayer(void)
struct GPlayer* __fastcall GetPlayer__12MobileStaticFv(struct GameThing* this) asm("?GetPlayer@MobileStatic@@UAEPAVGPlayer@@XZ");
// win1.41 004396a0 mac 100b4460 MobileStatic::IsFunctional(void)
bool __fastcall IsFunctional__12MobileStaticFv(struct GameThing* this) asm("?IsFunctional@MobileStatic@@UAE_NXZ");
// win1.41 0055d750 mac 103b9760 MobileStatic::GetDebugText(void)
char* __fastcall GetDebugText__12MobileStaticFv(struct GameThing* this) asm("?GetDebugText@MobileStatic@@UAEPADXZ");
// win1.41 00608590 mac 103c1060 MobileStatic::Load(GameOSFile &)
uint32_t __fastcall Load__12MobileStaticFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@MobileStatic@@UAEIAAVGameOSFile@@@Z");
// win1.41 00608650 mac 103c0f20 MobileStatic::Save(GameOSFile &)
uint32_t __fastcall Save__12MobileStaticFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@MobileStatic@@UAEIAAVGameOSFile@@@Z");
// win1.41 0055d740 mac 103b9720 MobileStatic::GetSaveType(void)
uint32_t __fastcall GetSaveType__12MobileStaticFv(struct GameThing* this) asm("?GetSaveType@MobileStatic@@UAEIXZ");
// win1.41 0055d720 mac 103af140 MobileStatic::PhysicsEditorCreate(int)
void __fastcall PhysicsEditorCreate__12MobileStaticFi(struct GameThingWithPos* this, const void* edx, int param_1) asm("?PhysicsEditorCreate@MobileStatic@@UAEXH@Z");
// win1.41 00608b10 mac 103c03d0 MobileStatic::GetCreatureBeliefType(void)
uint32_t __fastcall GetCreatureBeliefType__12MobileStaticFv(struct GameThingWithPos* this) asm("?GetCreatureBeliefType@MobileStatic@@UAEIXZ");
// win1.41 00439700 mac 100b4650 MobileStatic::IsCastShadowAtNight(void)
uint32_t __fastcall IsCastShadowAtNight__12MobileStaticFv(struct GameThingWithPos* this) asm("?IsCastShadowAtNight@MobileStatic@@UAEIXZ");
// win1.41 004e48d0 mac 105e48e0 MobileStatic::CanBeEatenByCreature(Creature *)
uint32_t __fastcall CanBeEatenByCreature__12MobileStaticFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBeEatenByCreature@MobileStatic@@UAEIPAVCreature@@@Z");
// win1.41 00439640 mac 100b4190 MobileStatic::CanBePlayedWithByCreature(Creature *)
uint32_t __fastcall CanBePlayedWithByCreature__12MobileStaticFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBePlayedWithByCreature@MobileStatic@@UAEIPAVCreature@@@Z");
// win1.41 004e4cc0 mac 105e3bc0 MobileStatic::CanBePickedUpByCreature(Creature *)
uint32_t __fastcall CanBePickedUpByCreature__12MobileStaticFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBePickedUpByCreature@MobileStatic@@UAEIPAVCreature@@@Z");
// win1.41 00439630 mac 100b4140 MobileStatic::CanBeStompedOnByCreature(Creature *)
uint32_t __fastcall CanBeStompedOnByCreature__12MobileStaticFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBeStompedOnByCreature@MobileStatic@@UAEIPAVCreature@@@Z");
// win1.41 004e4c40 mac 105e3cd0 MobileStatic::IsToyAwayFromHome(Creature *)
uint32_t __fastcall IsToyAwayFromHome__12MobileStaticFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?IsToyAwayFromHome@MobileStatic@@UAEIPAVCreature@@@Z");
// win1.41 00609020 mac 103bf7d0 MobileStatic::IsToy(Creature *)
uint32_t __fastcall IsToy__12MobileStaticFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?IsToy@MobileStatic@@UAEIPAVCreature@@@Z");
// win1.41 00609050 mac 103bf750 MobileStatic::IsToyBall(Creature *)
uint32_t __fastcall IsToyBall__12MobileStaticFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?IsToyBall@MobileStatic@@UAEIPAVCreature@@@Z");
// win1.41 00609070 mac 103bf6d0 MobileStatic::IsToyDie(Creature *)
uint32_t __fastcall IsToyDie__12MobileStaticFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?IsToyDie@MobileStatic@@UAEIPAVCreature@@@Z");
// win1.41 00609090 mac 103bf650 MobileStatic::IsToyCuddly(Creature *)
uint32_t __fastcall IsToyCuddly__12MobileStaticFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?IsToyCuddly@MobileStatic@@UAEIPAVCreature@@@Z");
// win1.41 00609110 mac 1004d490 MobileStatic::IsFence(void)
uint32_t __fastcall IsFence__12MobileStaticFv(struct GameThingWithPos* this) asm("?IsFence@MobileStatic@@UAEIXZ");
// win1.41 004396d0 mac 100b4580 MobileStatic::CanBeUsedForThrowingDamageByCreature(Creature *)
uint32_t __fastcall CanBeUsedForThrowingDamageByCreature__12MobileStaticFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBeUsedForThrowingDamageByCreature@MobileStatic@@UAEIPAVCreature@@@Z");
// win1.41 00439650 mac 100b41e0 MobileStatic::CanBeThrownInTheSeaPlayfully(Creature *)
uint32_t __fastcall CanBeThrownInTheSeaPlayfully__12MobileStaticFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBeThrownInTheSeaPlayfully@MobileStatic@@UAEIPAVCreature@@@Z");
// win1.41 0055d710 mac 103af0f0 MobileStatic::GetCreatureMimicType(void)
uint32_t __fastcall GetCreatureMimicType__12MobileStaticFv(struct GameThingWithPos* this) asm("?GetCreatureMimicType@MobileStatic@@UAEIXZ");
// win1.41 004d1af0 mac 10243160 MobileStatic::GetHowMuchCreatureWantsToLookAtMe(void)
float __fastcall GetHowMuchCreatureWantsToLookAtMe__12MobileStaticFv(struct GameThingWithPos* this) asm("?GetHowMuchCreatureWantsToLookAtMe@MobileStatic@@UAEMXZ");
// win1.41 004396f0 mac 100b4610 MobileStatic::IsMobileStatic(void)
uint32_t __fastcall IsMobileStatic__12MobileStaticFv(struct GameThingWithPos* this) asm("?IsMobileStatic@MobileStatic@@UAEIXZ");
// win1.41 00609330 mac 10008460 MobileStatic::GetScriptObjectType(void)
uint32_t __fastcall GetScriptObjectType__12MobileStaticFv(struct GameThingWithPos* this) asm("?GetScriptObjectType@MobileStatic@@UAEIXZ");
// win1.41 00439610 mac 100b40c0 MobileStatic::GetXAngle(void)
float __fastcall GetXAngle__12MobileStaticFv(struct Object* this) asm("?GetXAngle@MobileStatic@@UAEMXZ");
// win1.41 00439620 mac 100b4100 MobileStatic::GetZAngle(void)
float __fastcall GetZAngle__12MobileStaticFv(struct Object* this) asm("?GetZAngle@MobileStatic@@UAEMXZ");
// win1.41 00608ce0 mac 103bfe40 MobileStatic::SetXYZAngles(float, float, float)
void __fastcall SetXYZAngles__12MobileStaticFfff(struct Object* this, const void* edx, float param_1, float param_2, float param_3) asm("?SetXYZAngles@MobileStatic@@UAEXMMM@Z");
// win1.41 00608d60 mac 103bfd10 MobileStatic::SetXYZAnglesAndScale(float, float, float, float)
void __fastcall SetXYZAnglesAndScale__12MobileStaticFffff(struct Object* this, const void* edx, float param_1, float param_2, float param_3, float param_4) asm("?SetXYZAnglesAndScale@MobileStatic@@UAEXMMMM@Z");
// win1.41 006096a0 mac 103be560 MobileStatic::BlocksTownClearArea( const(void))
bool __fastcall BlocksTownClearArea__12MobileStaticCFv(const struct Object* this) asm("?BlocksTownClearArea@MobileStatic@@UBE_NXZ");
// win1.41 006091b0 mac 10097420 MobileStatic::GetHoldType(void)
enum HOLD_TYPE __fastcall GetHoldType__12MobileStaticFv(struct Object* this) asm("?GetHoldType@MobileStatic@@UAE?AW4HOLD_TYPE@@XZ");
// win1.41 00609230 mac 10097510 MobileStatic::GetHoldLoweringMultiplier(void)
float __fastcall GetHoldLoweringMultiplier__12MobileStaticFv(struct Object* this) asm("?GetHoldLoweringMultiplier@MobileStatic@@UAEMXZ");
// win1.41 00439680 mac 100b42d0 MobileStatic::GetMesh( const(void))
int __fastcall GetMesh__12MobileStaticCFv(const struct Object* this) asm("?GetMesh@MobileStatic@@UBEHXZ");
// win1.41 00517f60 mac 10042f50 MobileStatic::Draw(void)
void __fastcall Draw__12MobileStaticFv(struct Object* this) asm("?Draw@MobileStatic@@UAEXXZ");
// win1.41 00439670 mac 100b4280 MobileStatic::CanBePickedUp(void)
bool __fastcall CanBePickedUp__12MobileStaticFv(struct Object* this) asm("?CanBePickedUp@MobileStatic@@UAE_NXZ");
// win1.41 00608de0 mac 103bfb00 MobileStatic::GetWorldMatrix(LHMatrix *)
void __fastcall GetWorldMatrix__12MobileStaticFP8LHMatrix(struct Object* this, const void* edx, struct LHMatrix* param_1) asm("?GetWorldMatrix@MobileStatic@@UAEXPAULHMatrix@@@Z");
// win1.41 00609700 mac 103be330 MobileStatic::CallVirtualFunctionsForCreation(MapCoords const &)
void __fastcall CallVirtualFunctionsForCreation__12MobileStaticFRC9MapCoords(struct Object* this, const void* edx, const struct MapCoords* param_1) asm("?CallVirtualFunctionsForCreation@MobileStatic@@UAEXABUMapCoords@@@Z");
// win1.41 006096b0 mac 103be4f0 MobileStatic::GetResourceType(void)
enum RESOURCE_TYPE __fastcall GetResourceType__12MobileStaticFv(struct Object* this) asm("?GetResourceType@MobileStatic@@UAE?AW4RESOURCE_TYPE@@XZ");
// win1.41 006096d0 mac 103be450 MobileStatic::GetDefaultResource(void)
int __fastcall GetDefaultResource__12MobileStaticFv(struct Object* this) asm("?GetDefaultResource@MobileStatic@@UAEHXZ");
// win1.41 0055d730 mac 103c12f0 MobileStatic::ValidForPlaceInHand(GInterfaceStatus *)
uint32_t __fastcall ValidForPlaceInHand__12MobileStaticFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1) asm("?ValidForPlaceInHand@MobileStatic@@UAEIPAVGInterfaceStatus@@@Z");
// win1.41 00608bb0 mac 103c0120 MobileStatic::ValidToApplyThisToObject(GInterfaceStatus *, Object *)
uint32_t __fastcall ValidToApplyThisToObject__12MobileStaticFP16GInterfaceStatusP6Object(struct Object* this, const void* edx, struct GInterfaceStatus* param_1, struct Object* param_2) asm("?ValidToApplyThisToObject@MobileStatic@@UAEIPAVGInterfaceStatus@@PAVObject@@@Z");
// win1.41 00608c30 mac 103bff70 MobileStatic::ApplyThisToObject(GInterfaceStatus *, Object *, GestureSystemPacketData *)
uint32_t __fastcall ApplyThisToObject__12MobileStaticFP16GInterfaceStatusP6ObjectP23GestureSystemPacketData(struct Object* this, const void* edx, struct GInterfaceStatus* param_1, struct Object* param_2, struct GestureSystemPacketData* param_3) asm("?ApplyThisToObject@MobileStatic@@UAEIPAVGInterfaceStatus@@PAVObject@@PAUGestureSystemPacketData@@@Z");
// win1.41 004396c0 mac 100b4510 MobileStatic::ValidToApplyThisToMapCoord(GInterfaceStatus *, MapCoords const &)
uint32_t __fastcall ValidToApplyThisToMapCoord__12MobileStaticFP16GInterfaceStatusRC9MapCoords(struct Object* this, const void* edx, struct GInterfaceStatus* param_1, const struct MapCoords* param_2) asm("?ValidToApplyThisToMapCoord@MobileStatic@@UAEIPAVGInterfaceStatus@@ABUMapCoords@@@Z");
// win1.41 00608b30 mac 103c0270 MobileStatic::ApplyThisToMapCoord(GInterfaceStatus *, MapCoords const &, GestureSystemPacketData *)
uint32_t __fastcall ApplyThisToMapCoord__12MobileStaticFP16GInterfaceStatusRC9MapCoordsP23GestureSystemPacketData(struct Object* this, const void* edx, struct GInterfaceStatus* param_1, const struct MapCoords* param_2, struct GestureSystemPacketData* param_3) asm("?ApplyThisToMapCoord@MobileStatic@@UAEIPAVGInterfaceStatus@@ABUMapCoords@@PAUGestureSystemPacketData@@@Z");
// win1.41 004396b0 mac 100b44c0 MobileStatic::ApplyOnlyAfterReleased(void)
uint32_t __fastcall ApplyOnlyAfterReleased__12MobileStaticFv(struct Object* this) asm("?ApplyOnlyAfterReleased@MobileStatic@@UAEIXZ");
// win1.41 00609270 mac 103bee80 MobileStatic::GetPhysicsConstantsType(void)
uint32_t __fastcall GetPhysicsConstantsType__12MobileStaticFv(struct Object* this) asm("?GetPhysicsConstantsType@MobileStatic@@UAEIXZ");
// win1.41 00608f40 mac 103bf9c0 MobileStatic::GetBoundingSphere(LHPoint &, float &)
void __fastcall GetBoundingSphere__12MobileStaticFR7LHPointRf(struct Object* this, const void* edx, struct LHPoint* param_1, float* param_2) asm("?GetBoundingSphere@MobileStatic@@UAEXAAULHPoint@@AAM@Z");
// win1.41 006090b0 mac 103bf550 MobileStatic::InteractsWithPhysicsObjects(void)
bool __fastcall InteractsWithPhysicsObjects__12MobileStaticFv(struct Object* this) asm("?InteractsWithPhysicsObjects@MobileStatic@@UAE_NXZ");
// win1.41 00609260 mac 103beff0 MobileStatic::ChecksVerticesVObjects(void)
uint32_t __fastcall ChecksVerticesVObjects__12MobileStaticFv(struct Object* this) asm("?ChecksVerticesVObjects@MobileStatic@@UAEIXZ");
// win1.41 00609210 mac 103bf080 MobileStatic::PhysicallyDestroysAbodes(void)
uint32_t __fastcall PhysicallyDestroysAbodes__12MobileStaticFv(struct Object* this) asm("?PhysicallyDestroysAbodes@MobileStatic@@UAEIXZ");
// win1.41 00608fc0 mac 103bf8c0 MobileStatic::ReactToPhysicsImpact(PhysicsObject *, bool)
void __fastcall ReactToPhysicsImpact__12MobileStaticFP13PhysicsObjectb(struct Object* this, const void* edx, struct PhysicsObject* param_1, bool param_2) asm("?ReactToPhysicsImpact@MobileStatic@@UAEXPAVPhysicsObject@@_N@Z");
// win1.41 00609320 mac 103bee30 MobileStatic::CanBecomeAPhysicsObject(void)
bool __fastcall CanBecomeAPhysicsObject__12MobileStaticFv(struct Object* this) asm("?CanBecomeAPhysicsObject@MobileStatic@@UAE_NXZ");
// win1.41 00609010 mac 103bf860 MobileStatic::CreatureMustAvoid(Creature *)
bool __fastcall CreatureMustAvoid__12MobileStaticFP8Creature(struct Object* this, const void* edx, struct Creature* param_1) asm("?CreatureMustAvoid@MobileStatic@@UAE_NPAVCreature@@@Z");
// win1.41 00608ac0 mac 103c0450 MobileStatic::AddToRoutePlan(RPHolder *, Creature *, int, void (*)(int, Point2D, float, int))
void __fastcall AddToRoutePlan__12MobileStaticFP8RPHolderP8CreatureiPFi7Point2Dfi_v(struct Object* this, const void* edx, struct RPHolder* param_1, struct Creature* param_2, int param_3, void (__cdecl* param_4)(int param_1, struct Point2D param_2, float param_3, int param_4)) asm("?AddToRoutePlan@MobileStatic@@UAEXPAURPHolder@@PAVCreature@@HP6AXHUPoint2D@@MH@Z@Z");
// win1.41 00439690 mac 100b4420 MobileStatic::IsSolidToNewAbode(void)
uint32_t __fastcall IsSolidToNewAbode__12MobileStaticFv(struct Object* this) asm("?IsSolidToNewAbode@MobileStatic@@UAEIXZ");
// win1.41 00439660 mac 100b4240 MobileStatic::GetTastiness(void)
uint32_t __fastcall GetTastiness__12MobileStaticFv(struct Object* this) asm("?GetTastiness@MobileStatic@@UAEIXZ");
// win1.41 006088e0 mac 103c0530 MobileStatic::SaveObject(LHOSFile &, MapCoords const &)
uint32_t __fastcall SaveObject__12MobileStaticFR8LHOSFileRC9MapCoords(struct Object* this, const void* edx, struct LHOSFile* param_1, const struct MapCoords* param_2) asm("?SaveObject@MobileStatic@@UAEIAAULHOSFile@@ABUMapCoords@@@Z");

struct GBaseOnly
{
  struct Object super;  /* 0x0 */
};
static_assert(sizeof(struct GBaseOnly) == 0x54, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bed280 mac inlined GBaseOnly::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__9GBaseOnly asm("??_R0?AVGBaseOnly@@@8");
// win1.41 009aea40 mac inlined GBaseOnly::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__9GBaseOnly asm("??_R1A@?0A@A@GBaseOnly@@8");
// win1.41 009aea58 mac inlined GBaseOnly::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__9GBaseOnly asm("??_R2GBaseOnly@@8");
// win1.41 009aea70 mac inlined GBaseOnly::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__9GBaseOnly asm("??_R3GBaseOnly@@8");

// Override methods

// win1.41 0055d7d0 mac 103be220 GBaseOnly::_dt(void)
void __fastcall __dt__9GBaseOnlyFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGBaseOnly@@UAEPAXI@Z");
// win1.41 006095c0 mac 103be8a0 GBaseOnly::ToBeDeleted(int)
void __fastcall ToBeDeleted__9GBaseOnlyFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@GBaseOnly@@UAEXH@Z");
// win1.41 0055d7c0 mac 103be2f0 GBaseOnly::GetDebugText(void)
char* __fastcall GetDebugText__9GBaseOnlyFv(struct GameThing* this) asm("?GetDebugText@GBaseOnly@@UAEPADXZ");
// win1.41 0055d7b0 mac 103be2b0 GBaseOnly::GetSaveType(void)
uint32_t __fastcall GetSaveType__9GBaseOnlyFv(struct GameThing* this) asm("?GetSaveType@GBaseOnly@@UAEIXZ");
// win1.41 00609540 mac 103be980 GBaseOnly::Draw(void)
void __fastcall Draw__9GBaseOnlyFv(struct Object* this) asm("?Draw@GBaseOnly@@UAEXXZ");
// win1.41 006093a0 mac 103beb00 GBaseOnly::CallVirtualFunctionsForCreation(MapCoords const &)
void __fastcall CallVirtualFunctionsForCreation__9GBaseOnlyFRC9MapCoords(struct Object* this, const void* edx, const struct MapCoords* param_1) asm("?CallVirtualFunctionsForCreation@GBaseOnly@@UAEXABUMapCoords@@@Z");
// win1.41 006095e0 mac 103be5b0 GBaseOnly::SaveObject(LHOSFile &, MapCoords const &)
uint32_t __fastcall SaveObject__9GBaseOnlyFR8LHOSFileRC9MapCoords(struct Object* this, const void* edx, struct LHOSFile* param_1, const struct MapCoords* param_2) asm("?SaveObject@GBaseOnly@@UAEIAAULHOSFile@@ABUMapCoords@@@Z");

#endif /* BW1_DECOMP_MOBILE_STATIC_INCLUDED_H */
