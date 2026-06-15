#ifndef BW1_DECOMP_MOBILE_OBJECT_INCLUDED_H
#define BW1_DECOMP_MOBILE_OBJECT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum HOLD_TYPE, enum RESOURCE_TYPE */

#include "BaseInfo.h" /* For struct GBaseInfo */
#include "Mobile.h" /* For struct Mobile, struct MobileVftable */

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

class MobileObject: public Mobile
{
public:
    Object* object; /* 0x58 */
    uint32_t field_0x5C;
    uint32_t field_0x60;
    uint32_t field_0x64;

    // Override methods

    // win1.41 0055d080 mac 103bdd30 MobileObject::_dt(void)
    virtual ~MobileObject();
    // win1.41 00606f00 mac 103bdb30 MobileObject::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // win1.41 00607230 mac 103bd130 MobileObject::GetPlayer(void)
    virtual GPlayer* GetPlayer();
    // win1.41 00425be0 mac 100adc60 MobileObject::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 00607d00 mac 103bb660 MobileObject::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 00607c40 mac 103bb7a0 MobileObject::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 00425bd0 mac 100adc20 MobileObject::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 00607ab0 mac 103bbc80 MobileObject::PhysicsEditorCreate(int)
    virtual void PhysicsEditorCreate(int param_1);
    // win1.41 00607430 mac 103bcc00 MobileObject::GetCreatureBeliefType(void)
    virtual uint32_t GetCreatureBeliefType();
    // win1.41 00425bb0 mac 100adb90 MobileObject::CanBePlayedWithByCreature(Creature *)
    virtual uint32_t CanBePlayedWithByCreature(Creature* param_1);
    // win1.41 00425b90 mac 100adae0 MobileObject::CanBeStompedOnByCreature(Creature *)
    virtual uint32_t CanBeStompedOnByCreature(Creature* param_1);
    // win1.41 004e4ce0 mac 105e3ad0 MobileObject::IsMushroom(Creature *)
    virtual uint32_t IsMushroom(Creature* param_1);
    // win1.41 00425b70 mac 100ada60 MobileObject::CanBeUsedToHoldWater(Creature *)
    virtual uint32_t CanBeUsedToHoldWater(Creature* param_1);
    // win1.41 00425ba0 mac 100adb30 MobileObject::CanBeThrownInTheSeaPlayfully(Creature *)
    virtual uint32_t CanBeThrownInTheSeaPlayfully(Creature* param_1);
    // win1.41 00425b60 mac 100ada10 MobileObject::GetCreatureMimicType(void)
    virtual uint32_t GetCreatureMimicType();
    // win1.41 00425bc0 mac 100adbe0 MobileObject::IsMobileObject(void)
    virtual uint32_t IsMobileObject();
    // win1.41 006079e0 mac 103bc0b0 MobileObject::IsPoisoned(void)
    virtual uint32_t IsPoisoned();
    // win1.41 00607b60 mac 103bbc40 MobileObject::GetScriptObjectType(void)
    virtual uint32_t GetScriptObjectType();
    // win1.41 00425b10 mac 100ad890 MobileObject::GetXAngle(void)
    virtual float GetXAngle();
    // win1.41 00425b20 mac 100ad8d0 MobileObject::GetZAngle(void)
    virtual float GetZAngle();
    // win1.41 00607460 mac 103bcad0 MobileObject::SetXYZAngles(float, float, float)
    virtual void SetXYZAngles(float param_1, float param_2, float param_3);
    // win1.41 006074e0 mac 103bc9a0 MobileObject::SetXYZAnglesAndScale(float, float, float, float)
    virtual void SetXYZAnglesAndScale(float param_1, float param_2, float param_3, float param_4);
    // win1.41 00607790 mac 103bc240 MobileObject::MoveAlongPath(void)
    virtual uint32_t MoveAlongPath();
    // win1.41 00607210 mac 103bd180 MobileObject::Create3DObject(void)
    virtual void Create3DObject();
    // win1.41 00607250 mac 103bd0c0 MobileObject::InsertMapObjectToCell(MapCell *)
    virtual void InsertMapObjectToCell(MapCell* cell);
    // win1.41 00607260 mac 103bd050 MobileObject::RemoveMapObjectFromCell(MapCell *)
    virtual void RemoveMapObjectFromCell(MapCell* param_1);
    // win1.41 00607120 mac 103bd480 MobileObject::GetHoldType(void)
    virtual HOLD_TYPE GetHoldType();
    // win1.41 00607130 mac 103bd3f0 MobileObject::GetHoldLoweringMultiplier(void)
    virtual float GetHoldLoweringMultiplier();
    // win1.41 00425b40 mac 100ad960 MobileObject::GetMesh( const(void))
    virtual int GetMesh();
    // win1.41 00518150 mac 10036400 MobileObject::Draw(void)
    virtual void Draw();
    // win1.41 00425b30 mac 100ad910 MobileObject::CanBePickedUp(void)
    virtual bool CanBePickedUp();
    // win1.41 00607560 mac 103bc790 MobileObject::GetWorldMatrix(LHMatrix *)
    virtual void GetWorldMatrix(LHMatrix* param_1);
    // win1.41 00607150 mac 103bd200 MobileObject::CallVirtualFunctionsForCreation(MapCoords const &)
    virtual void CallVirtualFunctionsForCreation(const MapCoords* param_1);
    // win1.41 00607c20 mac 103bb8f0 MobileObject::GetResourceType(void)
    virtual RESOURCE_TYPE GetResourceType();
    // win1.41 00607bf0 mac 103bb9a0 MobileObject::GetDefaultResource(void)
    virtual int GetDefaultResource();
    // win1.41 00607b70 mac 103bbb30 MobileObject::ValidToApplyThisToObject(GInterfaceStatus *, Object *)
    virtual uint32_t ValidToApplyThisToObject(GInterfaceStatus* param_1, Object* param_2);
    // win1.41 00607bc0 mac 103bba60 MobileObject::ApplyThisToObject(GInterfaceStatus *, Object *, GestureSystemPacketData *)
    virtual uint32_t ApplyThisToObject(GInterfaceStatus* param_1, Object* param_2, GestureSystemPacketData* param_3);
    // win1.41 006079f0 mac 103bbfc0 MobileObject::GetPhysicsConstantsType(void)
    virtual uint32_t GetPhysicsConstantsType();
    // win1.41 00607a20 mac 103bbe50 MobileObject::ReactToPhysicsImpact(PhysicsObject *, bool)
    virtual void ReactToPhysicsImpact(PhysicsObject* param_1, bool param_2);
    // win1.41 00607aa0 mac 103bbe00 MobileObject::CanBecomeAPhysicsObject(void)
    virtual bool CanBecomeAPhysicsObject();
    // win1.41 00607410 mac 103bcc90 MobileObject::AddToRoutePlan(RPHolder *, Creature *, int, void (*)(int, Point2D, float, int))
    virtual void AddToRoutePlan(RPHolder* param_1, Creature* param_2, int param_3, void (__cdecl*)(int, Point2D, float, int) param_4);
    // win1.41 00425b50 mac 100ad9d0 MobileObject::GetTastiness(void)
    virtual uint32_t GetTastiness();
    // win1.41 00607270 mac 103bcd10 MobileObject::SaveObject(LHOSFile &, MapCoords const &)
    virtual uint32_t SaveObject(LHOSFile* param_1, const MapCoords* param_2);

    // Static methods

    // win1.41 00606fc0 mac 1008e240 MobileObject::AddMobileObjectCheckSum(void)
    static void AddMobileObjectCheckSum();

    // Constructors

    // win1.41 00600d80 mac 1011a5a0 MobileObject::MobileObject(void)
    MobileObject();
    // win1.41 00606e40 mac 103bde00 MobileObject::MobileObject(MapCoords const &, GMobileObjectInfo const *, Object *, float, float)
    MobileObject(MapCoords* coords, const GMobileObjectInfo* info, Object* param_4, float param_5, float param_6);
};

class GSpeedThreshold: public GBaseInfo
{
public:

    // Override methods

    // win1.41 00606bd0 mac 103ba910 GSpeedThreshold::_dt(void)
    virtual ~GSpeedThreshold();
    // win1.41 00606b70 mac 103baa30 GSpeedThreshold::GetBaseInfo(unsigned long &)
    virtual GBaseInfo* GetBaseInfo(uint32_t* param_1);
};

#endif /* BW1_DECOMP_MOBILE_OBJECT_INCLUDED_H */
