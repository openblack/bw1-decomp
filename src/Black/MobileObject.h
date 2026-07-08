#ifndef BW1_DECOMP_MOBILE_OBJECT_INCLUDED_H
#define BW1_DECOMP_MOBILE_OBJECT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum HOLD_TYPE, enum RESOURCE_TYPE */

#include "BaseInfo.h" /* For struct GBaseInfo */
#include "Mobile.h"   /* For struct Mobile, struct MobileVftable */

// Forward Declares

class Base;
class Creature;
class GInterfaceStatus;
class GMobileObjectInfo;
class GPlayer;
class GameOSFile;
class GameThing;
class GameThingWithPos;
struct GestureSystemPacketData;
struct LHMatrix;
class LHOSFile;
struct MapCell;
struct MapCoords;
class Object;
class PhysicsObject;
struct RPHolder;

class MobileObject : public Mobile
{
public:
	Object*  object; /* 0x58 */
	uint32_t field_0x5C;
	uint32_t field_0x60;
	uint32_t field_0x64;

	// Override methods

	// BW1W120 0055d080 BW1M100 103bdd30 MobileObject::_dt(void)
	virtual ~MobileObject();
	// BW1W120 00606f00 BW1M100 103bdb30 MobileObject::ToBeDeleted(int)
	virtual void ToBeDeleted(int param_1);
	// BW1W120 00607230 BW1M100 103bd130 MobileObject::GetPlayer(void)
	virtual GPlayer* GetPlayer();
	// BW1W120 00425be0 BW1M100 100adc60 MobileObject::GetDebugText(void)
	virtual char* GetDebugText();
	// BW1W120 00607d00 BW1M100 103bb660 MobileObject::Load(GameOSFile &)
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00607c40 BW1M100 103bb7a0 MobileObject::Save(GameOSFile &)
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 00425bd0 BW1M100 100adc20 MobileObject::GetSaveType(void)
	virtual uint32_t GetSaveType();
	// BW1W120 00607ab0 BW1M100 103bbc80 MobileObject::PhysicsEditorCreate(int)
	virtual void PhysicsEditorCreate(int param_1);
	// BW1W120 00607430 BW1M100 103bcc00 MobileObject::GetCreatureBeliefType(void)
	virtual uint32_t GetCreatureBeliefType();
	// BW1W120 00425bb0 BW1M100 100adb90 MobileObject::CanBePlayedWithByCreature(Creature *)
	virtual uint32_t CanBePlayedWithByCreature(Creature* param_1);
	// BW1W120 00425b90 BW1M100 100adae0 MobileObject::CanBeStompedOnByCreature(Creature *)
	virtual uint32_t CanBeStompedOnByCreature(Creature* param_1);
	// BW1W120 004e4ce0 BW1M100 105e3ad0 MobileObject::IsMushroom(Creature *)
	virtual uint32_t IsMushroom(Creature* param_1);
	// BW1W120 00425b70 BW1M100 100ada60 MobileObject::CanBeUsedToHoldWater(Creature *)
	virtual uint32_t CanBeUsedToHoldWater(Creature* param_1);
	// BW1W120 00425ba0 BW1M100 100adb30 MobileObject::CanBeThrownInTheSeaPlayfully(Creature *)
	virtual uint32_t CanBeThrownInTheSeaPlayfully(Creature* param_1);
	// BW1W120 00425b60 BW1M100 100ada10 MobileObject::GetCreatureMimicType(void)
	virtual uint32_t GetCreatureMimicType();
	// BW1W120 00425bc0 BW1M100 100adbe0 MobileObject::IsMobileObject(void)
	virtual uint32_t IsMobileObject();
	// BW1W120 006079e0 BW1M100 103bc0b0 MobileObject::IsPoisoned(void)
	virtual uint32_t IsPoisoned();
	// BW1W120 00607b60 BW1M100 103bbc40 MobileObject::GetScriptObjectType(void)
	virtual uint32_t GetScriptObjectType();
	// BW1W120 00425b10 BW1M100 100ad890 MobileObject::GetXAngle(void)
	virtual float GetXAngle();
	// BW1W120 00425b20 BW1M100 100ad8d0 MobileObject::GetZAngle(void)
	virtual float GetZAngle();
	// BW1W120 00607460 BW1M100 103bcad0 MobileObject::SetXYZAngles(float, float, float)
	virtual void SetXYZAngles(float param_1, float param_2, float param_3);
	// BW1W120 006074e0 BW1M100 103bc9a0 MobileObject::SetXYZAnglesAndScale(float, float, float, float)
	virtual void SetXYZAnglesAndScale(float param_1, float param_2, float param_3, float param_4);
	// BW1W120 00607790 BW1M100 103bc240 MobileObject::MoveAlongPath(void)
	virtual uint32_t MoveAlongPath();
	// BW1W120 00607210 BW1M100 103bd180 MobileObject::Create3DObject(void)
	virtual void Create3DObject();
	// BW1W120 00607250 BW1M100 103bd0c0 MobileObject::InsertMapObjectToCell(MapCell *)
	virtual void InsertMapObjectToCell(MapCell* cell);
	// BW1W120 00607260 BW1M100 103bd050 MobileObject::RemoveMapObjectFromCell(MapCell *)
	virtual void RemoveMapObjectFromCell(MapCell* param_1);
	// BW1W120 00607120 BW1M100 103bd480 MobileObject::GetHoldType(void)
	virtual HOLD_TYPE GetHoldType();
	// BW1W120 00607130 BW1M100 103bd3f0 MobileObject::GetHoldLoweringMultiplier(void)
	virtual float GetHoldLoweringMultiplier();
	// BW1W120 00425b40 BW1M100 100ad960 MobileObject::GetMesh( const(void))
	virtual int GetMesh();
	// BW1W120 00518150 BW1M100 10036400 MobileObject::Draw(void)
	virtual void Draw();
	// BW1W120 00425b30 BW1M100 100ad910 MobileObject::CanBePickedUp(void)
	virtual bool CanBePickedUp();
	// BW1W120 00607560 BW1M100 103bc790 MobileObject::GetWorldMatrix(LHMatrix *)
	virtual void GetWorldMatrix(LHMatrix* param_1);
	// BW1W120 00607150 BW1M100 103bd200 MobileObject::CallVirtualFunctionsForCreation(MapCoords const &)
	virtual void CallVirtualFunctionsForCreation(const MapCoords* param_1);
	// BW1W120 00607c20 BW1M100 103bb8f0 MobileObject::GetResourceType(void)
	virtual RESOURCE_TYPE GetResourceType();
	// BW1W120 00607bf0 BW1M100 103bb9a0 MobileObject::GetDefaultResource(void)
	virtual int GetDefaultResource();
	// BW1W120 00607b70 BW1M100 103bbb30 MobileObject::ValidToApplyThisToObject(GInterfaceStatus *, Object *)
	virtual uint32_t ValidToApplyThisToObject(GInterfaceStatus* param_1, Object* param_2);
	// BW1W120 00607bc0 BW1M100 103bba60 MobileObject::ApplyThisToObject(GInterfaceStatus *, Object *, GestureSystemPacketData *)
	virtual uint32_t ApplyThisToObject(GInterfaceStatus* param_1, Object* param_2, GestureSystemPacketData* param_3);
	// BW1W120 006079f0 BW1M100 103bbfc0 MobileObject::GetPhysicsConstantsType(void)
	virtual uint32_t GetPhysicsConstantsType();
	// BW1W120 00607a20 BW1M100 103bbe50 MobileObject::ReactToPhysicsImpact(PhysicsObject *, bool)
	virtual void ReactToPhysicsImpact(PhysicsObject* param_1, bool param_2);
	// BW1W120 00607aa0 BW1M100 103bbe00 MobileObject::CanBecomeAPhysicsObject(void)
	virtual bool CanBecomeAPhysicsObject();
	// BW1W120 00607410 BW1M100 103bcc90 MobileObject::AddToRoutePlan(RPHolder *, Creature *, int, void (*)(int, Point2D, float, int))
	virtual void AddToRoutePlan(RPHolder* param_1, Creature* param_2, int param_3,
	                            void(__cdecl* param_4)(int, Point2D, float, int));
	// BW1W120 00425b50 BW1M100 100ad9d0 MobileObject::GetTastiness(void)
	virtual uint32_t GetTastiness();
	// BW1W120 00607270 BW1M100 103bcd10 MobileObject::SaveObject(LHOSFile &, MapCoords const &)
	virtual uint32_t SaveObject(LHOSFile* param_1, const MapCoords* param_2);

	// Static methods

	// BW1W120 00606fc0 BW1M100 1008e240 MobileObject::AddMobileObjectCheckSum(void)
	static void AddMobileObjectCheckSum();

	// Constructors

	// BW1W120 00600d80 BW1M100 1011a5a0 MobileObject::MobileObject(void)
	MobileObject();
	// BW1W120 00606e40 BW1M100 103bde00 MobileObject::MobileObject(MapCoords const &, GMobileObjectInfo const *, Object *, float, float)
	MobileObject(MapCoords* coords, const GMobileObjectInfo* info, Object* param_4, float param_5, float param_6);
};

class GSpeedThreshold : public GBaseInfo
{
public:
	// Override methods

	// BW1W120 00606bd0 BW1M100 103ba910 GSpeedThreshold::_dt(void)
	virtual ~GSpeedThreshold();
	// BW1W120 00606b70 BW1M100 103baa30 GSpeedThreshold::GetBaseInfo(unsigned long &)
	virtual GBaseInfo* GetBaseInfo(uint32_t* param_1);
};

#endif /* BW1_DECOMP_MOBILE_OBJECT_INCLUDED_H */
