#ifndef BW1_DECOMP_SCAFFOLD_INCLUDED_H
#define BW1_DECOMP_SCAFFOLD_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For enum RESOURCE_TYPE */

#include "MobileObject.h" /* For struct MobileObject */

// Forward Declares

class Base;
class Creature;
class GInterfaceStatus;
class GameOSFile;
class GameThing;
class GameThingWithPos;
struct GestureSystemPacketData;
class LHOSFile;
struct LHPoint;
class Living;
struct MapCoords;
class Object;
class PhysicsObject;
class Reaction;
class Town;

class Scaffold: public MobileObject
{
public:
    uint8_t field_0x68[0x34];

    // Override methods

    // BW1W120 0055e150 BW1M100 10143e00 Scaffold::_dt(void)
    virtual ~Scaffold();
    // BW1W120 006e83e0 BW1M100 10143cd0 Scaffold::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // BW1W120 0055e120 BW1M100 1013e660 Scaffold::GetTown(void)
    virtual Town* GetTown();
    // BW1W120 006eaef0 BW1M100 1013eaf0 Scaffold::AddResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool, MapCoords const &, int)
    virtual uint32_t AddResource(RESOURCE_TYPE param_1, uint32_t param_2, GInterfaceStatus* param_3, bool param_4, const MapCoords* param_5, int param_6);
    // BW1W120 005181a0 BW1M100 100c8e20 Scaffold::DrawInHand(GInterfaceStatus *)
    virtual void DrawInHand(GInterfaceStatus* param_1);
    // BW1W120 0055e140 BW1M100 1013e6d0 Scaffold::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 006ea3d0 BW1M100 10140100 Scaffold::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // BW1W120 006ea240 BW1M100 10140340 Scaffold::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // BW1W120 0055e130 BW1M100 1013e690 Scaffold::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // BW1W120 006ea560 BW1M100 1013ffc0 Scaffold::ResolveLoad(void)
    virtual void ResolveLoad();
    // BW1W120 006ea9d0 BW1M100 1013f6d0 Scaffold::GetOverwritePickUpToolTip(void)
    virtual uint32_t GetOverwritePickUpToolTip();
    // BW1W120 006e9860 BW1M100 10141650 Scaffold::GetOverwriteDropToolTip(void)
    virtual uint32_t GetOverwriteDropToolTip();
    // BW1W120 006ea770 BW1M100 1013fba0 Scaffold::GetImpressiveValue(Living *, Reaction *)
    virtual float GetImpressiveValue(Living* param_1, Reaction* param_2);
    // BW1W120 006ea9e0 BW1M100 1013f670 Scaffold::GetUpdateOfBoredomValue(Reaction *, GameThingWithPos *)
    virtual float GetUpdateOfBoredomValue(Reaction* param_1, GameThingWithPos* param_2);
    // BW1W120 004e3fc0 BW1M100 105e6330 Scaffold::CanBePickedUpByCreature(Creature *)
    virtual uint32_t CanBePickedUpByCreature(Creature* param_1);
    // BW1W120 004e3ff0 BW1M100 105e6220 Scaffold::CanBeStolenByCreature(Creature *)
    virtual uint32_t CanBeStolenByCreature(Creature* param_1);
    // BW1W120 004e4070 BW1M100 105e6100 Scaffold::IsStealableScaffold(Creature *)
    virtual uint32_t IsStealableScaffold(Creature* param_1);
    // BW1W120 0055e100 BW1M100 1013e5d0 Scaffold::IsScaffold(void)
    virtual uint32_t IsScaffold();
    // BW1W120 006eab60 BW1M100 1013f280 Scaffold::GetScriptObjectType(void)
    virtual uint32_t GetScriptObjectType();
    // BW1W120 006e9890 BW1M100 10141590 Scaffold::ActualMoveMapObject(MapCoords const &)
    virtual void ActualMoveMapObject(const MapCoords* param_1);
    // BW1W120 006ea5c0 BW1M100 1013fd30 Scaffold::Draw(void)
    virtual void Draw();
    // BW1W120 006e8540 BW1M100 10143a70 Scaffold::CallVirtualFunctionsForCreation(MapCoords const &)
    virtual void CallVirtualFunctionsForCreation(const MapCoords* param_1);
    // BW1W120 006eaea0 BW1M100 1013ec20 Scaffold::IsResourceStore(RESOURCE_TYPE)
    virtual bool IsResourceStore(RESOURCE_TYPE param_1);
    // BW1W120 006eaec0 BW1M100 1013eb90 Scaffold::DeleteObjectAndTakeResource(Object *, GInterfaceStatus *)
    virtual bool DeleteObjectAndTakeResource(Object* param_1, GInterfaceStatus* param_2);
    // BW1W120 0055e0f0 BW1M100 1013e590 Scaffold::GetResourceType(void)
    virtual RESOURCE_TYPE GetResourceType();
    // BW1W120 006e9d30 BW1M100 10140dd0 Scaffold::GetDefaultResource(void)
    virtual int GetDefaultResource();
    // BW1W120 006e96a0 BW1M100 10141b10 Scaffold::ValidForPlaceInHand(GInterfaceStatus *)
    virtual uint32_t ValidForPlaceInHand(GInterfaceStatus* param_1);
    // BW1W120 006e96e0 BW1M100 101419a0 Scaffold::InterfaceSetInMagicHand(GInterfaceStatus *)
    virtual uint32_t InterfaceSetInMagicHand(GInterfaceStatus* param_1);
    // BW1W120 006e9770 BW1M100 10141720 Scaffold::InterfaceSetOutMagicHand(GInterfaceStatus *)
    virtual uint32_t InterfaceSetOutMagicHand(GInterfaceStatus* param_1);
    // BW1W120 006e9900 BW1M100 101413a0 Scaffold::ValidToApplyThisToObject(GInterfaceStatus *, Object *)
    virtual uint32_t ValidToApplyThisToObject(GInterfaceStatus* param_1, Object* param_2);
    // BW1W120 006e99e0 BW1M100 10141130 Scaffold::ApplyThisToObject(GInterfaceStatus *, Object *, GestureSystemPacketData *)
    virtual uint32_t ApplyThisToObject(GInterfaceStatus* param_1, Object* param_2, GestureSystemPacketData* param_3);
    // BW1W120 006e9d80 BW1M100 10140c50 Scaffold::InterfaceValidToTap(GInterfaceStatus *)
    virtual uint32_t InterfaceValidToTap(GInterfaceStatus* param_1);
    // BW1W120 006e9dd0 BW1M100 10140af0 Scaffold::InterfaceTap(GInterfaceStatus *)
    virtual uint32_t InterfaceTap(GInterfaceStatus* param_1);
    // BW1W120 006eab70 BW1M100 1013f210 Scaffold::ThrowObjectFromHand(GInterfaceStatus *, int)
    virtual uint32_t ThrowObjectFromHand(GInterfaceStatus* param_1, int param_2);
    // BW1W120 006ea8a0 BW1M100 1013f9a0 Scaffold::InitialisePhysicsFromHand(LHPoint &, LHPoint &, GInterfaceStatus *, Object *, int)
    virtual uint32_t InitialisePhysicsFromHand(LHPoint* param_1, LHPoint* param_2, GInterfaceStatus* param_3, Object* param_4, int param_5);
    // BW1W120 006ea840 BW1M100 1013faa0 Scaffold::InitialisePhysics(LHPoint const &, LHPoint const &, Object *, bool, GInterfaceStatus *)
    virtual uint32_t InitialisePhysics(const LHPoint* param_1, const LHPoint* param_2, Object* param_3, bool param_4, GInterfaceStatus* param_5);
    // BW1W120 006e8770 BW1M100 10143680 Scaffold::GetPhysicsConstantsType(void)
    virtual uint32_t GetPhysicsConstantsType();
    // BW1W120 006e8780 BW1M100 101434e0 Scaffold::EndPhysics(PhysicsObject *, bool)
    virtual void EndPhysics(PhysicsObject* param_1, bool param_2);
    // BW1W120 0055e110 BW1M100 1013e610 Scaffold::InteractsWithPhysicsObjects(void)
    virtual bool InteractsWithPhysicsObjects();
    // BW1W120 006ea940 BW1M100 1013f890 Scaffold::ReactToPhysicsImpact(PhysicsObject *, bool)
    virtual void ReactToPhysicsImpact(PhysicsObject* param_1, bool param_2);
    // BW1W120 006ea910 BW1M100 1013f8e0 Scaffold::CanBecomeAPhysicsObject(void)
    virtual bool CanBecomeAPhysicsObject();
    // BW1W120 006e8570 BW1M100 101436c0 Scaffold::ProcessInHand(void)
    virtual bool ProcessInHand();
    // BW1W120 006eaf30 BW1M100 1013e710 Scaffold::SaveObject(LHOSFile &, MapCoords const &)
    virtual uint32_t SaveObject(LHOSFile* param_1, const MapCoords* param_2);
};

#endif /* BW1_DECOMP_SCAFFOLD_INCLUDED_H */
