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

    // BW1W120 0055d5c0 BW1M100 1011c9c0 Pot::_dt(void)
    virtual ~Pot();
    // BW1W120 0066d110 BW1M100 1011c930 Pot::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // BW1W120 0066d2b0 BW1M100 10004180 Pot::JustAddResource(RESOURCE_TYPE, unsigned long, bool)
    virtual uint32_t JustAddResource(RESOURCE_TYPE param_1, uint32_t param_2, bool param_3);
    // BW1W120 0066d410 BW1M100 1011c040 Pot::JustRemoveResource(RESOURCE_TYPE, unsigned long, bool *)
    virtual uint32_t JustRemoveResource(RESOURCE_TYPE param_1, uint32_t param_2, bool* param_3);
    // BW1W120 0066d390 BW1M100 10077db0 Pot::JustGetResource(RESOURCE_TYPE, unsigned long, bool *)
    virtual uint32_t JustGetResource(RESOURCE_TYPE param_1, uint32_t param_2, bool* param_3);
    // BW1W120 0066d3d0 BW1M100 1011c200 Pot::GetResource(RESOURCE_TYPE)
    virtual uint32_t GetResource(RESOURCE_TYPE param_1);
    // BW1W120 0066d290 BW1M100 1011c770 Pot::AddResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool, MapCoords const &, int)
    virtual uint32_t AddResource(RESOURCE_TYPE param_1, uint32_t param_2, GInterfaceStatus* param_3, bool param_4, const MapCoords* param_5, int param_6);
    // BW1W120 0066d3f0 BW1M100 1011c180 Pot::RemoveResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool *)
    virtual uint32_t RemoveResource(RESOURCE_TYPE param_1, uint32_t param_2, GInterfaceStatus* param_3, bool* param_4);
    // BW1W120 0055d5b0 BW1M100 10116380 Pot::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 0071bde0 BW1M100 1050fbf0 Pot::GetGuidanceResourceType(void)
    virtual uint32_t GetGuidanceResourceType();
    // BW1W120 0066d820 BW1M100 1011b6c0 Pot::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // BW1W120 0066d730 BW1M100 1011b830 Pot::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // BW1W120 0055d5a0 BW1M100 10116350 Pot::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // BW1W120 0055d580 BW1M100 101162d0 Pot::GetCreatureBeliefType(void)
    virtual uint32_t GetCreatureBeliefType();
    // BW1W120 0066f540 BW1M100 10116750 Pot::GetOverwriteInteractableToolTip(void)
    virtual uint32_t GetOverwriteInteractableToolTip();
    // BW1W120 0055d4e0 BW1M100 1000ea20 Pot::IsPoisoned(void)
    virtual uint32_t IsPoisoned();
    // BW1W120 0055d4f0 BW1M100 101161d0 Pot::IsSpeedUp(void)
    virtual uint32_t IsSpeedUp();
    // BW1W120 0055d500 BW1M100 10116210 Pot::IsPot(void)
    virtual uint32_t IsPot();
    // BW1W120 0066f530 BW1M100 101167d0 Pot::GetScriptObjectType(void)
    virtual uint32_t GetScriptObjectType();
    // BW1W120 0051bb70 BW1M100 100c5290 Pot::Draw(void)
    virtual void Draw();
    // BW1W120 0051bbc0 BW1M100 100c5150 Pot::DrawOutOfMap(bool)
    virtual void DrawOutOfMap(bool param_1);
    // BW1W120 0066d130 BW1M100 1011c840 Pot::CallVirtualFunctionsForCreation(MapCoords const &)
    virtual void CallVirtualFunctionsForCreation(const MapCoords* param_1);
    // BW1W120 0066f570 BW1M100 10116690 Pot::GetFoodValue(FOOD_TYPE)
    virtual float GetFoodValue(FOOD_TYPE param_1);
    // BW1W120 0066f560 BW1M100 10116710 Pot::IsResourceStore(RESOURCE_TYPE)
    virtual bool IsResourceStore(RESOURCE_TYPE param_1);
    // BW1W120 0066dd30 BW1M100 1011ac10 Pot::DeleteObjectAndTakeResource(Object *, GInterfaceStatus *)
    virtual bool DeleteObjectAndTakeResource(Object* param_1, GInterfaceStatus* param_2);
    // BW1W120 0066f520 BW1M100 10116810 Pot::GetRadiusMultiplierForApplyingPotToPos(void)
    virtual float GetRadiusMultiplierForApplyingPotToPos();
    // BW1W120 0055d4c0 BW1M100 100d32d0 Pot::GetResourceType(void)
    virtual RESOURCE_TYPE GetResourceType();
    // BW1W120 0055d4d0 BW1M100 10116190 Pot::GetDefaultResource(void)
    virtual int GetDefaultResource();
    // BW1W120 0055d550 BW1M100 10116280 Pot::SetPoisonedResource(RESOURCE_TYPE, int)
    virtual void SetPoisonedResource(RESOURCE_TYPE param_1, int param_2);
    // BW1W120 0055d510 BW1M100 100011f0 Pot::SetPoisoned(int)
    virtual void SetPoisoned(int param_1);
    // BW1W120 0066d6c0 BW1M100 1011bb10 Pot::StartOnFire(void)
    virtual void StartOnFire();
    // BW1W120 0066d6d0 BW1M100 1011ba60 Pot::EndOnFire(void)
    virtual void EndOnFire();
    // BW1W120 0066d710 BW1M100 1011b9b0 Pot::InterfaceSetInMagicHand(GInterfaceStatus *)
    virtual uint32_t InterfaceSetInMagicHand(GInterfaceStatus* param_1);
    // BW1W120 0066dd50 BW1M100 1011aae0 Pot::ValidToApplyThisToObject(GInterfaceStatus *, Object *)
    virtual uint32_t ValidToApplyThisToObject(GInterfaceStatus* param_1, Object* param_2);
    // BW1W120 0066ddd0 BW1M100 1011a930 Pot::ApplyThisToObject(GInterfaceStatus *, Object *, GestureSystemPacketData *)
    virtual uint32_t ApplyThisToObject(GInterfaceStatus* param_1, Object* param_2, GestureSystemPacketData* param_3);
    // BW1W120 0066de70 BW1M100 1011a7e0 Pot::ApplyThisToMapCoord(GInterfaceStatus *, MapCoords const &, GestureSystemPacketData *)
    virtual uint32_t ApplyThisToMapCoord(GInterfaceStatus* param_1, const MapCoords* param_2, GestureSystemPacketData* param_3);
    // BW1W120 0066d650 BW1M100 1011bcb0 Pot::IsEffectReceiver(EffectValues *)
    virtual uint32_t IsEffectReceiver(EffectValues* param_1);
    // BW1W120 0066df00 BW1M100 1011a620 Pot::InitialisePhysicsFromHand(LHPoint &, LHPoint &, GInterfaceStatus *, Object *, int)
    virtual uint32_t InitialisePhysicsFromHand(LHPoint* param_1, LHPoint* param_2, GInterfaceStatus* param_3, Object* param_4, int param_5);
    // BW1W120 0066cef0 BW1M100 1011cd80 Pot::GetPhysicsConstantsType(void)
    virtual uint32_t GetPhysicsConstantsType();
    // BW1W120 0066dbd0 BW1M100 1011ae20 Pot::EndPhysics(PhysicsObject *, bool)
    virtual void EndPhysics(PhysicsObject* param_1, bool param_2);
    // BW1W120 0066ced0 BW1M100 1011ce10 Pot::InteractsWithPhysicsObjects(void)
    virtual bool InteractsWithPhysicsObjects();
    // BW1W120 0066dc90 BW1M100 1011ac90 Pot::ReactToPhysicsImpact(PhysicsObject *, bool)
    virtual void ReactToPhysicsImpact(PhysicsObject* param_1, bool param_2);
    // BW1W120 0066e8f0 BW1M100 10118e10 Pot::CanBecomeAPhysicsObject(void)
    virtual bool CanBecomeAPhysicsObject();
    // BW1W120 0066d550 BW1M100 1011bd00 Pot::SaveObject(LHOSFile &, MapCoords const &)
    virtual uint32_t SaveObject(LHOSFile* param_1, const MapCoords* param_2);
    // BW1W120 0055d590 BW1M100 10116310 Pot::IsAPotFromABuildingSite(void)
    virtual bool IsAPotFromABuildingSite();

    // Constructors

    // BW1W120 inlined BW1M100 1030c590 Pot::Pot(void)
    Pot();
    // BW1W120 0066ce60 BW1M100 1011cef0 Pot::Pot(MapCoords const &, GPotInfo const *, unsigned long, Town *, float, float)
    Pot(MapCoords* param_1, GPotInfo* param_2, uint32_t param_3, Town* param_4, float param_5, float param_6);

    // Non-virtual methods

    // BW1W120 0066cec0 BW1M100 1011ceb0 Pot::SetToZero(void)
    void SetToZero();
};

#endif /* BW1_DECOMP_POT_INCLUDED_H */
