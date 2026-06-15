#ifndef BW1_DECOMP_POT_INCLUDED_H
#define BW1_DECOMP_POT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For enum RESOURCE_TYPE */

#include "MobileObject.h" /* For struct MobileObject, struct MobileObjectVftable */
#include "Object.h" /* For enum FOOD_TYPE */

// Forward Declares

class Base;
class EffectValues;
class GInterfaceStatus;
class GPotInfo;
class GameOSFile;
class GameThing;
class GameThingWithPos;
struct GestureSystemPacketData;
class LHOSFile;
struct LHPoint;
struct MapCoords;
class MultiMapFixed;
class Object;
class PhysicsObject;
class Town;

class Pot: public MobileObject
{
public:
    RESOURCE_TYPE field_0x68;
    uint32_t field_0x6c;
    uint32_t field_0x70;
    uint8_t field_0x74;

    // Override methods

    // win1.41 0055d5c0 mac 1011c9c0 Pot::_dt(void)
    virtual ~Pot();
    // win1.41 0066d110 mac 1011c930 Pot::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // win1.41 0066d2b0 mac 10004180 Pot::JustAddResource(RESOURCE_TYPE, unsigned long, bool)
    virtual uint32_t JustAddResource(RESOURCE_TYPE param_1, uint32_t param_2, bool param_3);
    // win1.41 0066d410 mac 1011c040 Pot::JustRemoveResource(RESOURCE_TYPE, unsigned long, bool *)
    virtual uint32_t JustRemoveResource(RESOURCE_TYPE param_1, uint32_t param_2, bool* param_3);
    // win1.41 0066d390 mac 10077db0 Pot::JustGetResource(RESOURCE_TYPE, unsigned long, bool *)
    virtual uint32_t JustGetResource(RESOURCE_TYPE param_1, uint32_t param_2, bool* param_3);
    // win1.41 0066d3d0 mac 1011c200 Pot::GetResource(RESOURCE_TYPE)
    virtual uint32_t GetResource(RESOURCE_TYPE param_1);
    // win1.41 0066d290 mac 1011c770 Pot::AddResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool, MapCoords const &, int)
    virtual uint32_t AddResource(RESOURCE_TYPE param_1, uint32_t param_2, GInterfaceStatus* param_3, bool param_4, const MapCoords* param_5, int param_6);
    // win1.41 0066d3f0 mac 1011c180 Pot::RemoveResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool *)
    virtual uint32_t RemoveResource(RESOURCE_TYPE param_1, uint32_t param_2, GInterfaceStatus* param_3, bool* param_4);
    // win1.41 0055d5b0 mac 10116380 Pot::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 0071bde0 mac 1050fbf0 Pot::GetGuidanceResourceType(void)
    virtual uint32_t GetGuidanceResourceType();
    // win1.41 0066d820 mac 1011b6c0 Pot::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 0066d730 mac 1011b830 Pot::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 0055d5a0 mac 10116350 Pot::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 0055d580 mac 101162d0 Pot::GetCreatureBeliefType(void)
    virtual uint32_t GetCreatureBeliefType();
    // win1.41 0066f540 mac 10116750 Pot::GetOverwriteInteractableToolTip(void)
    virtual uint32_t GetOverwriteInteractableToolTip();
    // win1.41 0055d4e0 mac 1000ea20 Pot::IsPoisoned(void)
    virtual uint32_t IsPoisoned();
    // win1.41 0055d4f0 mac 101161d0 Pot::IsSpeedUp(void)
    virtual uint32_t IsSpeedUp();
    // win1.41 0055d500 mac 10116210 Pot::IsPot(void)
    virtual uint32_t IsPot();
    // win1.41 0066f530 mac 101167d0 Pot::GetScriptObjectType(void)
    virtual uint32_t GetScriptObjectType();
    // win1.41 0051bb70 mac 100c5290 Pot::Draw(void)
    virtual void Draw();
    // win1.41 0051bbc0 mac 100c5150 Pot::DrawOutOfMap(bool)
    virtual void DrawOutOfMap(bool param_1);
    // win1.41 0066d130 mac 1011c840 Pot::CallVirtualFunctionsForCreation(MapCoords const &)
    virtual void CallVirtualFunctionsForCreation(const MapCoords* param_1);
    // win1.41 0066f570 mac 10116690 Pot::GetFoodValue(FOOD_TYPE)
    virtual float GetFoodValue(FOOD_TYPE param_1);
    // win1.41 0066f560 mac 10116710 Pot::IsResourceStore(RESOURCE_TYPE)
    virtual bool IsResourceStore(RESOURCE_TYPE param_1);
    // win1.41 0066dd30 mac 1011ac10 Pot::DeleteObjectAndTakeResource(Object *, GInterfaceStatus *)
    virtual bool DeleteObjectAndTakeResource(Object* param_1, GInterfaceStatus* param_2);
    // win1.41 0066f520 mac 10116810 Pot::GetRadiusMultiplierForApplyingPotToPos(void)
    virtual float GetRadiusMultiplierForApplyingPotToPos();
    // win1.41 0055d4c0 mac 100d32d0 Pot::GetResourceType(void)
    virtual RESOURCE_TYPE GetResourceType();
    // win1.41 0055d4d0 mac 10116190 Pot::GetDefaultResource(void)
    virtual int GetDefaultResource();
    // win1.41 0055d550 mac 10116280 Pot::SetPoisonedResource(RESOURCE_TYPE, int)
    virtual void SetPoisonedResource(RESOURCE_TYPE param_1, int param_2);
    // win1.41 0055d510 mac 100011f0 Pot::SetPoisoned(int)
    virtual void SetPoisoned(int param_1);
    // win1.41 0066d6c0 mac 1011bb10 Pot::StartOnFire(void)
    virtual void StartOnFire();
    // win1.41 0066d6d0 mac 1011ba60 Pot::EndOnFire(void)
    virtual void EndOnFire();
    // win1.41 0066d710 mac 1011b9b0 Pot::InterfaceSetInMagicHand(GInterfaceStatus *)
    virtual uint32_t InterfaceSetInMagicHand(GInterfaceStatus* param_1);
    // win1.41 0066dd50 mac 1011aae0 Pot::ValidToApplyThisToObject(GInterfaceStatus *, Object *)
    virtual uint32_t ValidToApplyThisToObject(GInterfaceStatus* param_1, Object* param_2);
    // win1.41 0066ddd0 mac 1011a930 Pot::ApplyThisToObject(GInterfaceStatus *, Object *, GestureSystemPacketData *)
    virtual uint32_t ApplyThisToObject(GInterfaceStatus* param_1, Object* param_2, GestureSystemPacketData* param_3);
    // win1.41 0066de70 mac 1011a7e0 Pot::ApplyThisToMapCoord(GInterfaceStatus *, MapCoords const &, GestureSystemPacketData *)
    virtual uint32_t ApplyThisToMapCoord(GInterfaceStatus* param_1, const MapCoords* param_2, GestureSystemPacketData* param_3);
    // win1.41 0066d650 mac 1011bcb0 Pot::IsEffectReceiver(EffectValues *)
    virtual uint32_t IsEffectReceiver(EffectValues* param_1);
    // win1.41 0066df00 mac 1011a620 Pot::InitialisePhysicsFromHand(LHPoint &, LHPoint &, GInterfaceStatus *, Object *, int)
    virtual uint32_t InitialisePhysicsFromHand(LHPoint* param_1, LHPoint* param_2, GInterfaceStatus* param_3, Object* param_4, int param_5);
    // win1.41 0066cef0 mac 1011cd80 Pot::GetPhysicsConstantsType(void)
    virtual uint32_t GetPhysicsConstantsType();
    // win1.41 0066dbd0 mac 1011ae20 Pot::EndPhysics(PhysicsObject *, bool)
    virtual void EndPhysics(PhysicsObject* param_1, bool param_2);
    // win1.41 0066ced0 mac 1011ce10 Pot::InteractsWithPhysicsObjects(void)
    virtual bool InteractsWithPhysicsObjects();
    // win1.41 0066dc90 mac 1011ac90 Pot::ReactToPhysicsImpact(PhysicsObject *, bool)
    virtual void ReactToPhysicsImpact(PhysicsObject* param_1, bool param_2);
    // win1.41 0066e8f0 mac 10118e10 Pot::CanBecomeAPhysicsObject(void)
    virtual bool CanBecomeAPhysicsObject();
    // win1.41 0066d550 mac 1011bd00 Pot::SaveObject(LHOSFile &, MapCoords const &)
    virtual uint32_t SaveObject(LHOSFile* param_1, const MapCoords* param_2);
    // win1.41 0055d590 mac 10116310 Pot::IsAPotFromABuildingSite(void)
    virtual bool IsAPotFromABuildingSite();

    // Constructors

    // win1.41 inlined mac 1030c590 Pot::Pot(void)
    Pot();
    // win1.41 0066ce60 mac 1011cef0 Pot::Pot(MapCoords const &, GPotInfo const *, unsigned long, Town *, float, float)
    Pot(MapCoords* param_1, GPotInfo* param_2, uint32_t param_3, Town* param_4, float param_5, float param_6);

    // Non-virtual methods

    // win1.41 0066cec0 mac 1011ceb0 Pot::SetToZero(void)
    void SetToZero();
};

#endif /* BW1_DECOMP_POT_INCLUDED_H */
