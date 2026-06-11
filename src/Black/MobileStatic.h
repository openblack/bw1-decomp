#ifndef BW1_DECOMP_MOBILE_STATIC_INCLUDED_H
#define BW1_DECOMP_MOBILE_STATIC_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For enum HOLD_TYPE, enum RESOURCE_TYPE */

#include "MultiMapFixed.h" /* For struct MultiMapFixed */
#include "Object.h" /* For struct Object */

// Forward Declares

class Base;
class Creature;
class GInterfaceStatus;
class GMobileStaticInfo;
class GPlayer;
class GameOSFile;
class GameThing;
class GameThingWithPos;
struct GestureSystemPacketData;
struct LHMatrix;
class LHOSFile;
struct LHPoint;
struct MapCoords;
class PhysicsObject;
struct RPHolder;

class MobileStatic: public MultiMapFixed
{
public:
    Object* field_0x7c;
    uint8_t field_0x80[0x8];

    // Override methods

    // win1.41 0055d760 mac 103c0dd0 MobileStatic::_dt(void)
    virtual ~MobileStatic();
    // win1.41 00608760 mac 103c0d80 MobileStatic::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // win1.41 006088b0 mac 103c0890 MobileStatic::GetPlayer(void)
    virtual GPlayer* GetPlayer();
    // win1.41 004396a0 mac 100b4460 MobileStatic::IsFunctional(void)
    virtual bool IsFunctional();
    // win1.41 0055d750 mac 103b9760 MobileStatic::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 00608590 mac 103c1060 MobileStatic::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 00608650 mac 103c0f20 MobileStatic::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 0055d740 mac 103b9720 MobileStatic::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 0055d720 mac 103af140 MobileStatic::PhysicsEditorCreate(int)
    virtual void PhysicsEditorCreate(int param_1);
    // win1.41 00608b10 mac 103c03d0 MobileStatic::GetCreatureBeliefType(void)
    virtual uint32_t GetCreatureBeliefType();
    // win1.41 00439700 mac 100b4650 MobileStatic::IsCastShadowAtNight(void)
    virtual uint32_t IsCastShadowAtNight();
    // win1.41 004e48d0 mac 105e48e0 MobileStatic::CanBeEatenByCreature(Creature *)
    virtual uint32_t CanBeEatenByCreature(Creature* param_1);
    // win1.41 00439640 mac 100b4190 MobileStatic::CanBePlayedWithByCreature(Creature *)
    virtual uint32_t CanBePlayedWithByCreature(Creature* param_1);
    // win1.41 004e4cc0 mac 105e3bc0 MobileStatic::CanBePickedUpByCreature(Creature *)
    virtual uint32_t CanBePickedUpByCreature(Creature* param_1);
    // win1.41 00439630 mac 100b4140 MobileStatic::CanBeStompedOnByCreature(Creature *)
    virtual uint32_t CanBeStompedOnByCreature(Creature* param_1);
    // win1.41 004e4c40 mac 105e3cd0 MobileStatic::IsToyAwayFromHome(Creature *)
    virtual uint32_t IsToyAwayFromHome(Creature* param_1);
    // win1.41 00609020 mac 103bf7d0 MobileStatic::IsToy(Creature *)
    virtual uint32_t IsToy(Creature* param_1);
    // win1.41 00609050 mac 103bf750 MobileStatic::IsToyBall(Creature *)
    virtual uint32_t IsToyBall(Creature* param_1);
    // win1.41 00609070 mac 103bf6d0 MobileStatic::IsToyDie(Creature *)
    virtual uint32_t IsToyDie(Creature* param_1);
    // win1.41 00609090 mac 103bf650 MobileStatic::IsToyCuddly(Creature *)
    virtual uint32_t IsToyCuddly(Creature* param_1);
    // win1.41 00609110 mac 1004d490 MobileStatic::IsFence(void)
    virtual uint32_t IsFence();
    // win1.41 004396d0 mac 100b4580 MobileStatic::CanBeUsedForThrowingDamageByCreature(Creature *)
    virtual uint32_t CanBeUsedForThrowingDamageByCreature(Creature* param_1);
    // win1.41 00439650 mac 100b41e0 MobileStatic::CanBeThrownInTheSeaPlayfully(Creature *)
    virtual uint32_t CanBeThrownInTheSeaPlayfully(Creature* param_1);
    // win1.41 0055d710 mac 103af0f0 MobileStatic::GetCreatureMimicType(void)
    virtual uint32_t GetCreatureMimicType();
    // win1.41 004d1af0 mac 10243160 MobileStatic::GetHowMuchCreatureWantsToLookAtMe(void)
    virtual float GetHowMuchCreatureWantsToLookAtMe();
    // win1.41 004396f0 mac 100b4610 MobileStatic::IsMobileStatic(void)
    virtual uint32_t IsMobileStatic();
    // win1.41 00609330 mac 10008460 MobileStatic::GetScriptObjectType(void)
    virtual uint32_t GetScriptObjectType();
    // win1.41 00439610 mac 100b40c0 MobileStatic::GetXAngle(void)
    virtual float GetXAngle();
    // win1.41 00439620 mac 100b4100 MobileStatic::GetZAngle(void)
    virtual float GetZAngle();
    // win1.41 00608ce0 mac 103bfe40 MobileStatic::SetXYZAngles(float, float, float)
    virtual void SetXYZAngles(float param_1, float param_2, float param_3);
    // win1.41 00608d60 mac 103bfd10 MobileStatic::SetXYZAnglesAndScale(float, float, float, float)
    virtual void SetXYZAnglesAndScale(float param_1, float param_2, float param_3, float param_4);
    // win1.41 006096a0 mac 103be560 MobileStatic::BlocksTownClearArea( const(void))
    virtual bool BlocksTownClearArea();
    // win1.41 006091b0 mac 10097420 MobileStatic::GetHoldType(void)
    virtual HOLD_TYPE GetHoldType();
    // win1.41 00609230 mac 10097510 MobileStatic::GetHoldLoweringMultiplier(void)
    virtual float GetHoldLoweringMultiplier();
    // win1.41 00439680 mac 100b42d0 MobileStatic::GetMesh( const(void))
    virtual int GetMesh();
    // win1.41 00517f60 mac 10042f50 MobileStatic::Draw(void)
    virtual void Draw();
    // win1.41 00439670 mac 100b4280 MobileStatic::CanBePickedUp(void)
    virtual bool CanBePickedUp();
    // win1.41 00608de0 mac 103bfb00 MobileStatic::GetWorldMatrix(LHMatrix *)
    virtual void GetWorldMatrix(LHMatrix* param_1);
    // win1.41 00609700 mac 103be330 MobileStatic::CallVirtualFunctionsForCreation(MapCoords const &)
    virtual void CallVirtualFunctionsForCreation(const MapCoords* param_1);
    // win1.41 006096b0 mac 103be4f0 MobileStatic::GetResourceType(void)
    virtual RESOURCE_TYPE GetResourceType();
    // win1.41 006096d0 mac 103be450 MobileStatic::GetDefaultResource(void)
    virtual int GetDefaultResource();
    // win1.41 0055d730 mac 103c12f0 MobileStatic::ValidForPlaceInHand(GInterfaceStatus *)
    virtual uint32_t ValidForPlaceInHand(GInterfaceStatus* param_1);
    // win1.41 00608bb0 mac 103c0120 MobileStatic::ValidToApplyThisToObject(GInterfaceStatus *, Object *)
    virtual uint32_t ValidToApplyThisToObject(GInterfaceStatus* param_1, Object* param_2);
    // win1.41 00608c30 mac 103bff70 MobileStatic::ApplyThisToObject(GInterfaceStatus *, Object *, GestureSystemPacketData *)
    virtual uint32_t ApplyThisToObject(GInterfaceStatus* param_1, Object* param_2, GestureSystemPacketData* param_3);
    // win1.41 004396c0 mac 100b4510 MobileStatic::ValidToApplyThisToMapCoord(GInterfaceStatus *, MapCoords const &)
    virtual uint32_t ValidToApplyThisToMapCoord(GInterfaceStatus* param_1, const MapCoords* param_2);
    // win1.41 00608b30 mac 103c0270 MobileStatic::ApplyThisToMapCoord(GInterfaceStatus *, MapCoords const &, GestureSystemPacketData *)
    virtual uint32_t ApplyThisToMapCoord(GInterfaceStatus* param_1, const MapCoords* param_2, GestureSystemPacketData* param_3);
    // win1.41 004396b0 mac 100b44c0 MobileStatic::ApplyOnlyAfterReleased(void)
    virtual uint32_t ApplyOnlyAfterReleased();
    // win1.41 00609270 mac 103bee80 MobileStatic::GetPhysicsConstantsType(void)
    virtual uint32_t GetPhysicsConstantsType();
    // win1.41 00608f40 mac 103bf9c0 MobileStatic::GetBoundingSphere(LHPoint &, float &)
    virtual void GetBoundingSphere(LHPoint* param_1, float* param_2);
    // win1.41 006090b0 mac 103bf550 MobileStatic::InteractsWithPhysicsObjects(void)
    virtual bool InteractsWithPhysicsObjects();
    // win1.41 00609260 mac 103beff0 MobileStatic::ChecksVerticesVObjects(void)
    virtual uint32_t ChecksVerticesVObjects();
    // win1.41 00609210 mac 103bf080 MobileStatic::PhysicallyDestroysAbodes(void)
    virtual uint32_t PhysicallyDestroysAbodes();
    // win1.41 00608fc0 mac 103bf8c0 MobileStatic::ReactToPhysicsImpact(PhysicsObject *, bool)
    virtual void ReactToPhysicsImpact(PhysicsObject* param_1, bool param_2);
    // win1.41 00609320 mac 103bee30 MobileStatic::CanBecomeAPhysicsObject(void)
    virtual bool CanBecomeAPhysicsObject();
    // win1.41 00609010 mac 103bf860 MobileStatic::CreatureMustAvoid(Creature *)
    virtual bool CreatureMustAvoid(Creature* param_1);
    // win1.41 00608ac0 mac 103c0450 MobileStatic::AddToRoutePlan(RPHolder *, Creature *, int, void (*)(int, Point2D, float, int))
    virtual void AddToRoutePlan(RPHolder* param_1, Creature* param_2, int param_3, void (__cdecl*)(int, Point2D, float, int) param_4);
    // win1.41 00439690 mac 100b4420 MobileStatic::IsSolidToNewAbode(void)
    virtual uint32_t IsSolidToNewAbode();
    // win1.41 00439660 mac 100b4240 MobileStatic::GetTastiness(void)
    virtual uint32_t GetTastiness();
    // win1.41 006088e0 mac 103c0530 MobileStatic::SaveObject(LHOSFile &, MapCoords const &)
    virtual uint32_t SaveObject(LHOSFile* param_1, const MapCoords* param_2);

    // Constructors

    // win1.41 00608710 mac 103c0e60 MobileStatic::MobileStatic(MapCoords const &, GMobileStaticInfo const *, Object *, float, float)
    MobileStatic(MapCoords* coords, GMobileStaticInfo* info, Object* param_3, float param_4, float param_5);
};

class GBaseOnly: public Object
{
public:

    // Override methods

    // win1.41 0055d7d0 mac 103be220 GBaseOnly::_dt(void)
    virtual ~GBaseOnly();
    // win1.41 006095c0 mac 103be8a0 GBaseOnly::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // win1.41 0055d7c0 mac 103be2f0 GBaseOnly::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 0055d7b0 mac 103be2b0 GBaseOnly::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 00609540 mac 103be980 GBaseOnly::Draw(void)
    virtual void Draw();
    // win1.41 006093a0 mac 103beb00 GBaseOnly::CallVirtualFunctionsForCreation(MapCoords const &)
    virtual void CallVirtualFunctionsForCreation(const MapCoords* param_1);
    // win1.41 006095e0 mac 103be5b0 GBaseOnly::SaveObject(LHOSFile &, MapCoords const &)
    virtual uint32_t SaveObject(LHOSFile* param_1, const MapCoords* param_2);
};

#endif /* BW1_DECOMP_MOBILE_STATIC_INCLUDED_H */
