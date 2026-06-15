#ifndef BW1_DECOMP_SPELL_SEED_INCLUDED_H
#define BW1_DECOMP_SPELL_SEED_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For enum HOLD_TYPE, enum IMMERSION_EFFECT_TYPE */

#include "Object.h" /* For struct Object */

// Forward Declares

class Base;
class EffectValues;
class GInterfaceStatus;
class GameOSFile;
class GameThing;
class GameThingWithPos;
struct GestureSystemPacketData;
class LHOSFile;
struct MapCoords;
class WorshipSite;

class SpellSeed: public Object
{
public:
    uint8_t field_0x54[0x4c];

    // Override methods

    // win1.41 00727fc0 mac 1052cbd0 SpellSeed::_dt(void)
    virtual ~SpellSeed();
    // win1.41 00728280 mac 1052c390 SpellSeed::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // win1.41 00727fb0 mac 1052cdf0 SpellSeed::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 00729fb0 mac 10527d30 SpellSeed::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 00729ca0 mac 10528230 SpellSeed::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 00727fa0 mac 1052cdb0 SpellSeed::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 00727f70 mac 1052cce0 SpellSeed::GetCreatureBeliefType(void)
    virtual uint32_t GetCreatureBeliefType();
    // win1.41 00727f80 mac 1052cd20 SpellSeed::GetOrigin(void)
    virtual uint32_t GetOrigin();
    // win1.41 007298b0 mac 10529040 SpellSeed::GetPower( const(void))
    virtual float GetPower();
    // win1.41 007298f0 mac 10529000 SpellSeed::GetPSysPower( const(void))
    virtual float GetPSysPower();
    // win1.41 00728a00 mac 1052af90 SpellSeed::GetWorshipSite(void)
    virtual WorshipSite* GetWorshipSite();
    // win1.41 00727f50 mac 1052cc60 SpellSeed::IsSpellSeed(void)
    virtual uint32_t IsSpellSeed();
    // win1.41 00729c90 mac 10528780 SpellSeed::GetScriptObjectType(void)
    virtual uint32_t GetScriptObjectType();
    // win1.41 00728f30 mac 1052a420 SpellSeed::InsertMapObject(void)
    virtual void InsertMapObject();
    // win1.41 00728f40 mac 1052a3e0 SpellSeed::RemoveMapObject(void)
    virtual void RemoveMapObject();
    // win1.41 00728680 mac 1052b880 SpellSeed::GetHoldType(void)
    virtual HOLD_TYPE GetHoldType();
    // win1.41 00728640 mac 1052b9c0 SpellSeed::GetHoldRadius(void)
    virtual float GetHoldRadius();
    // win1.41 00728660 mac 1052b950 SpellSeed::GetHoldLoweringMultiplier(void)
    virtual float GetHoldLoweringMultiplier();
    // win1.41 00728670 mac 1052b8f0 SpellSeed::GetHoldYRotate(void)
    virtual float GetHoldYRotate();
    // win1.41 00727f60 mac 1052cc90 SpellSeed::HandShouldFeelWithMeshIntersect(void)
    virtual uint32_t HandShouldFeelWithMeshIntersect();
    // win1.41 00729850 mac 10529210 SpellSeed::GetMesh( const(void))
    virtual int GetMesh();
    // win1.41 00518710 mac 100c8c10 SpellSeed::Draw(void)
    virtual void Draw();
    // win1.41 005190a0 mac 100c7ef0 SpellSeed::DrawOutOfMap(bool)
    virtual void DrawOutOfMap(bool param_1);
    // win1.41 00728600 mac 1052bac0 SpellSeed::IsG3DObjectDrawnInHand(void)
    virtual bool IsG3DObjectDrawnInHand();
    // win1.41 00728360 mac 1052bef0 SpellSeed::CallVirtualFunctionsForCreation(MapCoords const &)
    virtual void CallVirtualFunctionsForCreation(const MapCoords* param_1);
    // win1.41 00728580 mac 1052bba0 SpellSeed::ValidForPlaceInHand(GInterfaceStatus *)
    virtual uint32_t ValidForPlaceInHand(GInterfaceStatus* param_1);
    // win1.41 00728810 mac 1052b1f0 SpellSeed::InterfaceSetInMagicHand(GInterfaceStatus *)
    virtual uint32_t InterfaceSetInMagicHand(GInterfaceStatus* param_1);
    // win1.41 00728940 mac 1052b0d0 SpellSeed::InterfaceSetOutMagicHand(GInterfaceStatus *)
    virtual uint32_t InterfaceSetOutMagicHand(GInterfaceStatus* param_1);
    // win1.41 00728760 mac 1052b4f0 SpellSeed::ValidToRemoveFromHand(GInterfaceStatus *, MapCoords const &)
    virtual uint32_t ValidToRemoveFromHand(GInterfaceStatus* param_1, const MapCoords* param_2);
    // win1.41 00728f00 mac 1052a460 SpellSeed::RemoveFromHand(GInterfaceStatus *, MapCoords const &)
    virtual uint32_t RemoveFromHand(GInterfaceStatus* param_1, const MapCoords* param_2);
    // win1.41 007286d0 mac 1052b6d0 SpellSeed::ValidToApplyThisToObject(GInterfaceStatus *, Object *)
    virtual uint32_t ValidToApplyThisToObject(GInterfaceStatus* param_1, Object* param_2);
    // win1.41 00728d10 mac 1052a720 SpellSeed::ApplyThisToObject(GInterfaceStatus *, Object *, GestureSystemPacketData *)
    virtual uint32_t ApplyThisToObject(GInterfaceStatus* param_1, Object* param_2, GestureSystemPacketData* param_3);
    // win1.41 00728720 mac 1052b600 SpellSeed::ValidToApplyThisToMapCoord(GInterfaceStatus *, MapCoords const &)
    virtual uint32_t ValidToApplyThisToMapCoord(GInterfaceStatus* param_1, const MapCoords* param_2);
    // win1.41 00728e20 mac 1052a5d0 SpellSeed::ApplyThisToMapCoord(GInterfaceStatus *, MapCoords const &, GestureSystemPacketData *)
    virtual uint32_t ApplyThisToMapCoord(GInterfaceStatus* param_1, const MapCoords* param_2, GestureSystemPacketData* param_3);
    // win1.41 00728750 mac 1052b580 SpellSeed::ValidForLockedApplyProcess(GInterfaceStatus *)
    virtual uint32_t ValidForLockedApplyProcess(GInterfaceStatus* param_1);
    // win1.41 00728eb0 mac 1052a500 SpellSeed::ApplyUnlockProcess(GInterfaceStatus *)
    virtual uint32_t ApplyUnlockProcess(GInterfaceStatus* param_1);
    // win1.41 007286a0 mac 1052b830 SpellSeed::IsInterfacePowerUpWhenInHand( const(void))
    virtual uint32_t IsInterfacePowerUpWhenInHand();
    // win1.41 007286b0 mac 1052b7c0 SpellSeed::ApplyOnlyAfterRecSystem(void)
    virtual uint32_t ApplyOnlyAfterRecSystem();
    // win1.41 0072acd0 mac 10526410 SpellSeed::ThrowObjectFromHand(GInterfaceStatus *, int)
    virtual uint32_t ThrowObjectFromHand(GInterfaceStatus* param_1, int param_2);
    // win1.41 00728f50 mac 1052a390 SpellSeed::IsEffectReceiver(EffectValues *)
    virtual uint32_t IsEffectReceiver(EffectValues* param_1);
    // win1.41 00728570 mac 1052bca0 SpellSeed::InteractsWithPhysicsObjects(void)
    virtual bool InteractsWithPhysicsObjects();
    // win1.41 00729930 mac 10528d60 SpellSeed::ProcessInHand(void)
    virtual bool ProcessInHand();
    // win1.41 00727f90 mac 1052cd60 SpellSeed::SaveObject(LHOSFile &, MapCoords const &)
    virtual uint32_t SaveObject(LHOSFile* param_1, const MapCoords* param_2);
    // win1.41 0072a2d0 mac 10527cc0 SpellSeed::GetInHandImmersionTexture(void)
    virtual IMMERSION_EFFECT_TYPE GetInHandImmersionTexture();
};

#endif /* BW1_DECOMP_SPELL_SEED_INCLUDED_H */
