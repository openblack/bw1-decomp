#ifndef BW1_DECOMP_MOBILE_STATIC_INCLUDED_H
#define BW1_DECOMP_MOBILE_STATIC_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For enum HOLD_TYPE, enum RESOURCE_TYPE */

#include "MultiMapFixed.h" /* For struct MultiMapFixed */
#include "Object.h"        /* For struct Object */

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

class MobileStatic : public MultiMapFixed
{
public:
	Object* field_0x7c;
	uint8_t field_0x80[0x8];

	// Override methods

	// BW1W120 0055d760 BW1M100 103c0dd0 MobileStatic::_dt(void)
	virtual ~MobileStatic();
	// BW1W120 00608760 BW1M100 103c0d80 MobileStatic::ToBeDeleted(int)
	virtual void ToBeDeleted(int param_1);
	// BW1W120 006088b0 BW1M100 103c0890 MobileStatic::GetPlayer(void)
	virtual GPlayer* GetPlayer();
	// BW1W120 004396a0 BW1M100 100b4460 MobileStatic::IsFunctional(void)
	virtual bool IsFunctional();
	// BW1W120 0055d750 BW1M100 103b9760 MobileStatic::GetDebugText(void)
	virtual char* GetDebugText();
	// BW1W120 00608590 BW1M100 103c1060 MobileStatic::Load(GameOSFile &)
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00608650 BW1M100 103c0f20 MobileStatic::Save(GameOSFile &)
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0055d740 BW1M100 103b9720 MobileStatic::GetSaveType(void)
	virtual uint32_t GetSaveType();
	// BW1W120 0055d720 BW1M100 103af140 MobileStatic::PhysicsEditorCreate(int)
	virtual void PhysicsEditorCreate(int param_1);
	// BW1W120 00608b10 BW1M100 103c03d0 MobileStatic::GetCreatureBeliefType(void)
	virtual uint32_t GetCreatureBeliefType();
	// BW1W120 00439700 BW1M100 100b4650 MobileStatic::IsCastShadowAtNight(void)
	virtual uint32_t IsCastShadowAtNight();
	// BW1W120 004e48d0 BW1M100 105e48e0 MobileStatic::CanBeEatenByCreature(Creature *)
	virtual uint32_t CanBeEatenByCreature(Creature* param_1);
	// BW1W120 00439640 BW1M100 100b4190 MobileStatic::CanBePlayedWithByCreature(Creature *)
	virtual uint32_t CanBePlayedWithByCreature(Creature* param_1);
	// BW1W120 004e4cc0 BW1M100 105e3bc0 MobileStatic::CanBePickedUpByCreature(Creature *)
	virtual uint32_t CanBePickedUpByCreature(Creature* param_1);
	// BW1W120 00439630 BW1M100 100b4140 MobileStatic::CanBeStompedOnByCreature(Creature *)
	virtual uint32_t CanBeStompedOnByCreature(Creature* param_1);
	// BW1W120 004e4c40 BW1M100 105e3cd0 MobileStatic::IsToyAwayFromHome(Creature *)
	virtual uint32_t IsToyAwayFromHome(Creature* param_1);
	// BW1W120 00609020 BW1M100 103bf7d0 MobileStatic::IsToy(Creature *)
	virtual uint32_t IsToy(Creature* param_1);
	// BW1W120 00609050 BW1M100 103bf750 MobileStatic::IsToyBall(Creature *)
	virtual uint32_t IsToyBall(Creature* param_1);
	// BW1W120 00609070 BW1M100 103bf6d0 MobileStatic::IsToyDie(Creature *)
	virtual uint32_t IsToyDie(Creature* param_1);
	// BW1W120 00609090 BW1M100 103bf650 MobileStatic::IsToyCuddly(Creature *)
	virtual uint32_t IsToyCuddly(Creature* param_1);
	// BW1W120 00609110 BW1M100 1004d490 MobileStatic::IsFence(void)
	virtual uint32_t IsFence();
	// BW1W120 004396d0 BW1M100 100b4580 MobileStatic::CanBeUsedForThrowingDamageByCreature(Creature *)
	virtual uint32_t CanBeUsedForThrowingDamageByCreature(Creature* param_1);
	// BW1W120 00439650 BW1M100 100b41e0 MobileStatic::CanBeThrownInTheSeaPlayfully(Creature *)
	virtual uint32_t CanBeThrownInTheSeaPlayfully(Creature* param_1);
	// BW1W120 0055d710 BW1M100 103af0f0 MobileStatic::GetCreatureMimicType(void)
	virtual uint32_t GetCreatureMimicType();
	// BW1W120 004d1af0 BW1M100 10243160 MobileStatic::GetHowMuchCreatureWantsToLookAtMe(void)
	virtual float GetHowMuchCreatureWantsToLookAtMe();
	// BW1W120 004396f0 BW1M100 100b4610 MobileStatic::IsMobileStatic(void)
	virtual uint32_t IsMobileStatic();
	// BW1W120 00609330 BW1M100 10008460 MobileStatic::GetScriptObjectType(void)
	virtual uint32_t GetScriptObjectType();
	// BW1W120 00439610 BW1M100 100b40c0 MobileStatic::GetXAngle(void)
	virtual float GetXAngle();
	// BW1W120 00439620 BW1M100 100b4100 MobileStatic::GetZAngle(void)
	virtual float GetZAngle();
	// BW1W120 00608ce0 BW1M100 103bfe40 MobileStatic::SetXYZAngles(float, float, float)
	virtual void SetXYZAngles(float param_1, float param_2, float param_3);
	// BW1W120 00608d60 BW1M100 103bfd10 MobileStatic::SetXYZAnglesAndScale(float, float, float, float)
	virtual void SetXYZAnglesAndScale(float param_1, float param_2, float param_3, float param_4);
	// BW1W120 006096a0 BW1M100 103be560 MobileStatic::BlocksTownClearArea( const(void))
	virtual bool BlocksTownClearArea();
	// BW1W120 006091b0 BW1M100 10097420 MobileStatic::GetHoldType(void)
	virtual HOLD_TYPE GetHoldType();
	// BW1W120 00609230 BW1M100 10097510 MobileStatic::GetHoldLoweringMultiplier(void)
	virtual float GetHoldLoweringMultiplier();
	// BW1W120 00439680 BW1M100 100b42d0 MobileStatic::GetMesh( const(void))
	virtual int GetMesh();
	// BW1W120 00517f60 BW1M100 10042f50 MobileStatic::Draw(void)
	virtual void Draw();
	// BW1W120 00439670 BW1M100 100b4280 MobileStatic::CanBePickedUp(void)
	virtual bool CanBePickedUp();
	// BW1W120 00608de0 BW1M100 103bfb00 MobileStatic::GetWorldMatrix(LHMatrix *)
	virtual void GetWorldMatrix(LHMatrix* param_1);
	// BW1W120 00609700 BW1M100 103be330 MobileStatic::CallVirtualFunctionsForCreation(MapCoords const &)
	virtual void CallVirtualFunctionsForCreation(const MapCoords* param_1);
	// BW1W120 006096b0 BW1M100 103be4f0 MobileStatic::GetResourceType(void)
	virtual RESOURCE_TYPE GetResourceType();
	// BW1W120 006096d0 BW1M100 103be450 MobileStatic::GetDefaultResource(void)
	virtual int GetDefaultResource();
	// BW1W120 0055d730 BW1M100 103c12f0 MobileStatic::ValidForPlaceInHand(GInterfaceStatus *)
	virtual uint32_t ValidForPlaceInHand(GInterfaceStatus* param_1);
	// BW1W120 00608bb0 BW1M100 103c0120 MobileStatic::ValidToApplyThisToObject(GInterfaceStatus *, Object *)
	virtual uint32_t ValidToApplyThisToObject(GInterfaceStatus* param_1, Object* param_2);
	// BW1W120 00608c30 BW1M100 103bff70 MobileStatic::ApplyThisToObject(GInterfaceStatus *, Object *, GestureSystemPacketData *)
	virtual uint32_t ApplyThisToObject(GInterfaceStatus* param_1, Object* param_2, GestureSystemPacketData* param_3);
	// BW1W120 004396c0 BW1M100 100b4510 MobileStatic::ValidToApplyThisToMapCoord(GInterfaceStatus *, MapCoords const &)
	virtual uint32_t ValidToApplyThisToMapCoord(GInterfaceStatus* param_1, const MapCoords* param_2);
	// BW1W120 00608b30 BW1M100 103c0270 MobileStatic::ApplyThisToMapCoord(GInterfaceStatus *, MapCoords const &, GestureSystemPacketData *)
	virtual uint32_t ApplyThisToMapCoord(GInterfaceStatus* param_1, const MapCoords* param_2,
	                                     GestureSystemPacketData* param_3);
	// BW1W120 004396b0 BW1M100 100b44c0 MobileStatic::ApplyOnlyAfterReleased(void)
	virtual uint32_t ApplyOnlyAfterReleased();
	// BW1W120 00609270 BW1M100 103bee80 MobileStatic::GetPhysicsConstantsType(void)
	virtual uint32_t GetPhysicsConstantsType();
	// BW1W120 00608f40 BW1M100 103bf9c0 MobileStatic::GetBoundingSphere(LHPoint &, float &)
	virtual void GetBoundingSphere(LHPoint* param_1, float* param_2);
	// BW1W120 006090b0 BW1M100 103bf550 MobileStatic::InteractsWithPhysicsObjects(void)
	virtual bool InteractsWithPhysicsObjects();
	// BW1W120 00609260 BW1M100 103beff0 MobileStatic::ChecksVerticesVObjects(void)
	virtual uint32_t ChecksVerticesVObjects();
	// BW1W120 00609210 BW1M100 103bf080 MobileStatic::PhysicallyDestroysAbodes(void)
	virtual uint32_t PhysicallyDestroysAbodes();
	// BW1W120 00608fc0 BW1M100 103bf8c0 MobileStatic::ReactToPhysicsImpact(PhysicsObject *, bool)
	virtual void ReactToPhysicsImpact(PhysicsObject* param_1, bool param_2);
	// BW1W120 00609320 BW1M100 103bee30 MobileStatic::CanBecomeAPhysicsObject(void)
	virtual bool CanBecomeAPhysicsObject();
	// BW1W120 00609010 BW1M100 103bf860 MobileStatic::CreatureMustAvoid(Creature *)
	virtual bool CreatureMustAvoid(Creature* param_1);
	// BW1W120 00608ac0 BW1M100 103c0450 MobileStatic::AddToRoutePlan(RPHolder *, Creature *, int, void (*)(int, Point2D, float, int))
	virtual void AddToRoutePlan(RPHolder* param_1, Creature* param_2, int param_3,
	                            void(__cdecl* param_4)(int, Point2D, float, int));
	// BW1W120 00439690 BW1M100 100b4420 MobileStatic::IsSolidToNewAbode(void)
	virtual uint32_t IsSolidToNewAbode();
	// BW1W120 00439660 BW1M100 100b4240 MobileStatic::GetTastiness(void)
	virtual uint32_t GetTastiness();
	// BW1W120 006088e0 BW1M100 103c0530 MobileStatic::SaveObject(LHOSFile &, MapCoords const &)
	virtual uint32_t SaveObject(LHOSFile* param_1, const MapCoords* param_2);

	// Constructors

	// BW1W120 00608710 BW1M100 103c0e60 MobileStatic::MobileStatic(MapCoords const &, GMobileStaticInfo const *, Object *, float, float)
	MobileStatic(MapCoords* coords, GMobileStaticInfo* info, Object* param_3, float param_4, float param_5);
};

class GBaseOnly : public Object
{
public:
	// Override methods

	// BW1W120 0055d7d0 BW1M100 103be220 GBaseOnly::_dt(void)
	virtual ~GBaseOnly();
	// BW1W120 006095c0 BW1M100 103be8a0 GBaseOnly::ToBeDeleted(int)
	virtual void ToBeDeleted(int param_1);
	// BW1W120 0055d7c0 BW1M100 103be2f0 GBaseOnly::GetDebugText(void)
	virtual char* GetDebugText();
	// BW1W120 0055d7b0 BW1M100 103be2b0 GBaseOnly::GetSaveType(void)
	virtual uint32_t GetSaveType();
	// BW1W120 00609540 BW1M100 103be980 GBaseOnly::Draw(void)
	virtual void Draw();
	// BW1W120 006093a0 BW1M100 103beb00 GBaseOnly::CallVirtualFunctionsForCreation(MapCoords const &)
	virtual void CallVirtualFunctionsForCreation(const MapCoords* param_1);
	// BW1W120 006095e0 BW1M100 103be5b0 GBaseOnly::SaveObject(LHOSFile &, MapCoords const &)
	virtual uint32_t SaveObject(LHOSFile* param_1, const MapCoords* param_2);
};

#endif /* BW1_DECOMP_MOBILE_STATIC_INCLUDED_H */
