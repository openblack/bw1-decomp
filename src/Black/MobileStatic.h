#ifndef BW1_DECOMP_MOBILE_STATIC_INCLUDED_H
#define BW1_DECOMP_MOBILE_STATIC_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h>        /* For enum HOLD_TYPE, enum RESOURCE_TYPE */
#include <chlasm/ScriptEnums.h> /* For enum SCRIPT_OBJECT_TYPE */

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

	// BW1W120 0055d760 BW1M119 013c8b90
	virtual ~MobileStatic();
	// BW1W120 00608760 BW1M119 013c8b40
	virtual void ToBeDeleted(int param_1);
	// BW1W120 006088b0 BW1M119 013c8650
	virtual GPlayer* GetPlayer();
	// BW1W120 004396a0 BW1M119 010b6fd0
	virtual bool32_t IsFunctional();
	// BW1W120 0055d750 BW1M119 013c1970
	virtual char* GetDebugText();
	// BW1W120 00608590 BW1M119 013c8e20
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00608650 BW1M119 013c8ce0
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0055d740 BW1M119 013c1930
	virtual uint32_t GetSaveType();
	// BW1W120 0055d720 BW1M119 013b7140
	virtual void PhysicsEditorCreate(int param_1);
	// BW1W120 00608b10 BW1M119 013c8190
	virtual uint32_t GetCreatureBeliefType();
	// BW1W120 00439700 BW1M119 010b71c0
	virtual bool32_t IsCastShadowAtNight();
	// BW1W120 004e48d0 BW1M119 015ec5e0
	virtual bool32_t CanBeEatenByCreature(Creature* param_1);
	// BW1W120 00439640 BW1M119 010b6d00
	virtual bool32_t CanBePlayedWithByCreature(Creature* param_1);
	// BW1W120 004e4cc0 BW1M119 015eb8c0
	virtual bool32_t CanBePickedUpByCreature(Creature* param_1);
	// BW1W120 00439630 BW1M119 010b6cb0
	virtual bool32_t CanBeStompedOnByCreature(Creature* param_1);
	// BW1W120 004e4c40 BW1M119 015eb9d0
	virtual bool32_t IsToyAwayFromHome(Creature* param_1);
	// BW1W120 00609020 BW1M119 013c7590
	virtual bool32_t IsToy(Creature* param_1);
	// BW1W120 00609050 BW1M119 013c7510
	virtual bool32_t IsToyBall(Creature* param_1);
	// BW1W120 00609070 BW1M119 013c7490
	virtual bool32_t IsToyDie(Creature* param_1);
	// BW1W120 00609090 BW1M119 013c7410
	virtual bool32_t IsToyCuddly(Creature* param_1);
	// BW1W120 00609110 BW1M119 0104fe20
	virtual bool32_t IsFence();
	// BW1W120 004396d0 BW1M119 010b70f0
	virtual bool32_t CanBeUsedForThrowingDamageByCreature(Creature* param_1);
	// BW1W120 00439650 BW1M119 010b6d50
	virtual bool32_t CanBeThrownInTheSeaPlayfully(Creature* param_1);
	// BW1W120 0055d710 BW1M119 013b70f0
	virtual uint32_t GetCreatureMimicType();
	// BW1W120 004d1af0 BW1M119 01247a50
	virtual float GetHowMuchCreatureWantsToLookAtMe();
	// BW1W120 004396f0 BW1M119 010b7180
	virtual bool32_t IsMobileStatic();
	// BW1W120 00609330 BW1M119 01008370
	virtual SCRIPT_OBJECT_TYPE GetScriptObjectType();
	// BW1W120 00439610 BW1M119 010b6c30
	virtual float GetXAngle();
	// BW1W120 00439620 BW1M119 010b6c70
	virtual float GetZAngle();
	// BW1W120 00608ce0 BW1M119 013c7c00
	virtual void SetXYZAngles(float param_1, float param_2, float param_3);
	// BW1W120 00608d60 BW1M119 013c7ad0
	virtual void SetXYZAnglesAndScale(float param_1, float param_2, float param_3, float param_4);
	// BW1W120 006096a0 BW1M119 013c6320
	virtual bool32_t BlocksTownClearArea() const;
	// BW1W120 006091b0 BW1M119 01099370
	virtual HOLD_TYPE GetHoldType();
	// BW1W120 00609230 BW1M119 01099460
	virtual float GetHoldLoweringMultiplier();
	// BW1W120 00439680 BW1M119 010b6e40
	virtual MESH_LIST GetMesh() const;
	// BW1W120 00517f60 BW1M119 01045990
	virtual void Draw();
	// BW1W120 00439670 BW1M119 010b6df0
	virtual bool32_t CanBePickedUp();
	// BW1W120 00608de0 BW1M119 013c78c0
	virtual void GetWorldMatrix(LHMatrix* param_1);
	// BW1W120 00609700 BW1M119 013c60f0
	virtual void CallVirtualFunctionsForCreation(const MapCoords& param_1);
	// BW1W120 006096b0 BW1M119 013c62b0
	virtual RESOURCE_TYPE GetResourceType();
	// BW1W120 006096d0 BW1M119 013c6210
	virtual int GetDefaultResource();
	// BW1W120 0055d730 BW1M119 013c90b0
	virtual bool32_t ValidForPlaceInHand(GInterfaceStatus* param_1);
	// BW1W120 00608bb0 BW1M119 013c7ee0
	virtual uint32_t ValidToApplyThisToObject(GInterfaceStatus* param_1, Object* param_2);
	// BW1W120 00608c30 BW1M119 013c7d30
	virtual uint32_t ApplyThisToObject(GInterfaceStatus* param_1, Object* param_2, GestureSystemPacketData* param_3);
	// BW1W120 004396c0 BW1M119 010b7080
	virtual uint32_t ValidToApplyThisToMapCoord(GInterfaceStatus* status, const MapCoords& coords);
	// BW1W120 00608b30 BW1M119 013c8030
	virtual uint32_t ApplyThisToMapCoord(GInterfaceStatus* status, const MapCoords& coords,
	                                     GestureSystemPacketData* param_3);
	// BW1W120 004396b0 BW1M119 010b7030
	virtual uint32_t ApplyOnlyAfterReleased();
	// BW1W120 00609270 BW1M119 013c6c20
	virtual uint32_t GetPhysicsConstantsType();
	// BW1W120 00608f40 BW1M119 013c7780
	virtual void GetBoundingSphere(LHPoint& param_1, float& param_2);
	// BW1W120 006090b0 BW1M119 013c7310
	virtual bool InteractsWithPhysicsObjects();
	// BW1W120 00609260 BW1M119 013c6d90
	virtual bool ChecksVerticesVObjects();
	// BW1W120 00609210 BW1M119 013c6e20
	virtual bool32_t PhysicallyDestroysAbodes();
	// BW1W120 00608fc0 BW1M119 013c7680
	virtual void ReactToPhysicsImpact(PhysicsObject* param_1, bool param_2);
	// BW1W120 00609320 BW1M119 013c6bd0
	virtual bool32_t CanBecomeAPhysicsObject();
	// BW1W120 00609010 BW1M119 013c7620
	virtual bool32_t CreatureMustAvoid(Creature* param_1);
	// BW1W120 00608ac0 BW1M119 013c8210
	virtual void AddToRoutePlan(RPHolder* param_1, Creature* param_2, int param_3,
	                            void(__cdecl* param_4)(int, Point2D, float, int));
	// BW1W120 00439690 BW1M119 010b6f90
	virtual bool32_t IsSolidToNewAbode();
	// BW1W120 00439660 BW1M119 010b6db0
	virtual uint32_t GetTastiness();
	// BW1W120 006088e0 BW1M119 013c82f0
	virtual uint32_t SaveObject(LHOSFile& param_1, const MapCoords& param_2);

	// Constructors

	// BW1W120 00608710 BW1M119 013c8c20
	MobileStatic(const MapCoords& coords, const GMobileStaticInfo* info, Object* param_3, float param_4, float param_5);
};

class GBaseOnly : public Object
{
public:
	// BW1W120 006094e0 BW1M119 013c67f0
	static void ReleaseAll();
	// Override methods

	// BW1W120 0055d7d0 BW1M119 013c5fe0
	virtual ~GBaseOnly();
	// BW1W120 006095c0 BW1M119 013c6660
	virtual void ToBeDeleted(int param_1);
	// BW1W120 0055d7c0 BW1M119 013c60b0
	virtual char* GetDebugText();
	// BW1W120 0055d7b0 BW1M119 013c6070
	virtual uint32_t GetSaveType();
	// BW1W120 00609540 BW1M119 013c6740
	virtual void Draw();
	// BW1W120 006093a0 BW1M119 013c68c0
	virtual void CallVirtualFunctionsForCreation(const MapCoords& param_1);
	// BW1W120 006095e0 BW1M119 013c6370
	virtual uint32_t SaveObject(LHOSFile& param_1, const MapCoords& param_2);
};

#endif /* BW1_DECOMP_MOBILE_STATIC_INCLUDED_H */
