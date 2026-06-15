#ifndef BW1_DECOMP_MAGIC_VORTEX_INCLUDED_H
#define BW1_DECOMP_MAGIC_VORTEX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For enum VORTEX_TYPE */

#include "MobileStatic.h" /* For struct MobileStatic */
#include "MultiMapFixed.h" /* For struct MultiMapFixedVftable */

// Forward Declares

class Base;
class Creature;
class EffectValues;
class Flock;
class GInterfaceStatus;
class GVortexInfo;
class GameOSFile;
class GameThing;
class GameThingWithPos;
struct MapCoords;
class MultiMapFixed;
class Object;
class PhysicsObject;
class Town;
class Villager;

class LandscapeVortex: public MobileStatic
{
public:
    LandscapeVortex* next; /* 0x88 */
    float field_0x8c;
    float field_0x90;
    uint32_t field_0x94;
    uint32_t field_0x98;
    uint32_t field_0x9c;
    uint32_t field_0xa0;
    uint32_t field_0xa4;
    uint32_t field_0xa8;
    uint32_t field_0xac;
    uint32_t field_0xb0;
    uint32_t field_0xb4;
    uint8_t field_0xb8;
    uint32_t field_0xbc;
    uint32_t field_0xc0;
    uint32_t field_0xc4;
    uint32_t field_0xc8;
    uint32_t field_0xcc;
    uint32_t field_0xd0;
    uint32_t field_0xd4;
    uint32_t field_0xd8;
    uint32_t field_0xdc;
    VORTEX_TYPE type; /* 0xe0 */
    uint32_t field_0xe4;
    float field_0xe8;

    // Override methods

    // win1.41 005fe7f0 mac 103b7ce0 LandscapeVortex::_dt(void)
    virtual ~LandscapeVortex();
    // win1.41 005fe8f0 mac 103b63a0 LandscapeVortex::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // win1.41 00600210 mac 103b3c80 LandscapeVortex::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 00600000 mac 103b4050 LandscapeVortex::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 005fd610 mac 103b93a0 LandscapeVortex::PhysicsEditorCreate(int)
    virtual void PhysicsEditorCreate(int param_1);
    // win1.41 005fd620 mac 103b93e0 LandscapeVortex::CanBePickedUpByCreature(Creature *)
    virtual uint32_t CanBePickedUpByCreature(Creature* param_1);
    // win1.41 005fd630 mac 103b9430 LandscapeVortex::CanBeSetOnFire(Creature *)
    virtual uint32_t CanBeSetOnFire(Creature* param_1);
    // win1.41 005fd640 mac 103b9480 LandscapeVortex::CanBeStompedOnByCreature(Creature *)
    virtual uint32_t CanBeStompedOnByCreature(Creature* param_1);
    // win1.41 005fd650 mac 103b94e0 LandscapeVortex::CanBeThrownByCreature(Creature *)
    virtual uint32_t CanBeThrownByCreature(Creature* param_1);
    // win1.41 005fd660 mac 103b9530 LandscapeVortex::CanBePutInAStoragePit(Creature *)
    virtual uint32_t CanBePutInAStoragePit(Creature* param_1);
    // win1.41 005fd670 mac 103b9580 LandscapeVortex::CanBeDestroyedByStoning(Creature *)
    virtual uint32_t CanBeDestroyedByStoning(Creature* param_1);
    // win1.41 005fd680 mac 103b95d0 LandscapeVortex::CanBeStonedAndEatenByCreature(Creature *)
    virtual uint32_t CanBeStonedAndEatenByCreature(Creature* param_1);
    // win1.41 005fd690 mac 103b9630 LandscapeVortex::CanBeExaminedByCreature(Creature *)
    virtual uint32_t CanBeExaminedByCreature(Creature* param_1);
    // win1.41 005fd6a0 mac 103b9680 LandscapeVortex::CanBeFoughtByCreature(Creature *)
    virtual uint32_t CanBeFoughtByCreature(Creature* param_1);
    // win1.41 005fd6b0 mac 103b96d0 LandscapeVortex::CanActAsAContainer(Creature *)
    virtual uint32_t CanActAsAContainer(Creature* param_1);
    // win1.41 005ffff0 mac 103b4430 LandscapeVortex::GetScriptObjectType(void)
    virtual uint32_t GetScriptObjectType();
    // win1.41 005fedf0 mac 103b5d50 LandscapeVortex::Create3DObject(void)
    virtual void Create3DObject();
    // win1.41 005fd600 mac 103b9350 LandscapeVortex::HandShouldFeelWithMeshIntersect(void)
    virtual uint32_t HandShouldFeelWithMeshIntersect();
    // win1.41 005fee20 mac 103b5d10 LandscapeVortex::GetMesh( const(void))
    virtual int GetMesh();
    // win1.41 005ffdc0 mac 103b4900 LandscapeVortex::Draw(void)
    virtual void Draw();
    // win1.41 005fee30 mac 103b5770 LandscapeVortex::CallVirtualFunctionsForCreation(MapCoords const &)
    virtual void CallVirtualFunctionsForCreation(const MapCoords* param_1);
    // win1.41 005ff300 mac 103b5710 LandscapeVortex::ValidForPlaceInHand(GInterfaceStatus *)
    virtual uint32_t ValidForPlaceInHand(GInterfaceStatus* param_1);
    // win1.41 005fffa0 mac 103b4580 LandscapeVortex::IsEffectReceiver(EffectValues *)
    virtual uint32_t IsEffectReceiver(EffectValues* param_1);
    // win1.41 005fff80 mac 103b4620 LandscapeVortex::InteractsWithPhysicsObjects(void)
    virtual bool InteractsWithPhysicsObjects();
    // win1.41 005fff90 mac 103b45d0 LandscapeVortex::CanBecomeAPhysicsObject(void)
    virtual bool CanBecomeAPhysicsObject();

    // Constructors

    // win1.41 005fe7a0 mac 103b69b0 LandscapeVortex::LandscapeVortex(void)
    LandscapeVortex();

    // Non-virtual methods

    // win1.41 005fd570 mac 103b8c60 LandscapeVortex::GetVortexInfo(void)
    GVortexInfo* GetVortexInfo();
};

class LandscapeVortexIn: public LandscapeVortex
{
public:

    // Override methods

    // win1.41 005fd7b0 mac 103b98f0 LandscapeVortexIn::_dt(void)
    virtual ~LandscapeVortexIn();
    // win1.41 005fd860 mac 103b8770 LandscapeVortexIn::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // win1.41 005fd7a0 mac 103b99f0 LandscapeVortexIn::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 00600550 mac 103b3a80 LandscapeVortexIn::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 00600460 mac 103b3b80 LandscapeVortexIn::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 005fd790 mac 103b99b0 LandscapeVortexIn::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 005fd970 mac 103b8540 LandscapeVortexIn::GetPhysicsConstantsType(void)
    virtual uint32_t GetPhysicsConstantsType();
    // win1.41 005fd8c0 mac 103b8720 LandscapeVortexIn::InteractsWithPhysicsObjects(void)
    virtual bool InteractsWithPhysicsObjects();
    // win1.41 005fd8d0 mac 103b86b0 LandscapeVortexIn::ShouldPhysicsRaiseObjectUntilNotIntersectingThis(Object *)
    virtual void ShouldPhysicsRaiseObjectUntilNotIntersectingThis(Object* param_1);
    // win1.41 005fd8e0 mac 103b8590 LandscapeVortexIn::ReactToPhysicsImpact(PhysicsObject *, bool)
    virtual void ReactToPhysicsImpact(PhysicsObject* param_1, bool param_2);
    // win1.41 005fd980 mac 103b84a0 LandscapeVortexIn::CreatureMustAvoid(Creature *)
    virtual bool CreatureMustAvoid(Creature* param_1);
};

class LandscapeVortexOut: public LandscapeVortex
{
public:

    // Override methods

    // win1.41 005fdde0 mac 103b97a0 LandscapeVortexOut::_dt(void)
    virtual ~LandscapeVortexOut();
    // win1.41 005fdf10 mac 103b78f0 LandscapeVortexOut::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // win1.41 005fddd0 mac 103b98a0 LandscapeVortexOut::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 00600880 mac 103b3300 LandscapeVortexOut::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 00600630 mac 103b3690 LandscapeVortexOut::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 005fddc0 mac 103b9860 LandscapeVortexOut::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 005fdfe0 mac 103b77f0 LandscapeVortexOut::SetTown(Town *)
    virtual void SetTown(Town* param_1);
};

class LandscapeVortexVolc: public LandscapeVortex
{
public:

    // Override methods

    // win1.41 005fd700 mac 103b9200 LandscapeVortexVolc::_dt(void)
    virtual ~LandscapeVortexVolc();
    // win1.41 005fd6f0 mac 103b9300 LandscapeVortexVolc::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 005fd6e0 mac 103b92c0 LandscapeVortexVolc::GetSaveType(void)
    virtual uint32_t GetSaveType();
};

#endif /* BW1_DECOMP_MAGIC_VORTEX_INCLUDED_H */
