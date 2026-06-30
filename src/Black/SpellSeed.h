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

    // BW1W120 00727fc0 BW1M100 1052cbd0 SpellSeed::_dt(void)
    virtual ~SpellSeed();
    // BW1W120 00728280 BW1M100 1052c390 SpellSeed::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // BW1W120 00727fb0 BW1M100 1052cdf0 SpellSeed::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 00729fb0 BW1M100 10527d30 SpellSeed::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 00729ca0 BW1M100 10528230 SpellSeed::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 00727fa0 BW1M100 1052cdb0 SpellSeed::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // BW1W120 00727f70 BW1M100 1052cce0 SpellSeed::GetCreatureBeliefType(void)
    virtual uint32_t GetCreatureBeliefType();
    // BW1W120 00727f80 BW1M100 1052cd20 SpellSeed::GetOrigin(void)
    virtual uint32_t GetOrigin();
    // BW1W120 007298b0 BW1M100 10529040 SpellSeed::GetPower( const(void))
    virtual float GetPower();
    // BW1W120 007298f0 BW1M100 10529000 SpellSeed::GetPSysPower( const(void))
    virtual float GetPSysPower();
    // BW1W120 00728a00 BW1M100 1052af90 SpellSeed::GetWorshipSite(void)
    virtual WorshipSite* GetWorshipSite();
    // BW1W120 00727f50 BW1M100 1052cc60 SpellSeed::IsSpellSeed(void)
    virtual uint32_t IsSpellSeed();
    // BW1W120 00729c90 BW1M100 10528780 SpellSeed::GetScriptObjectType(void)
    virtual uint32_t GetScriptObjectType();
    // BW1W120 00728f30 BW1M100 1052a420 SpellSeed::InsertMapObject(void)
    virtual void InsertMapObject();
    // BW1W120 00728f40 BW1M100 1052a3e0 SpellSeed::RemoveMapObject(void)
    virtual void RemoveMapObject();
    // BW1W120 00728680 BW1M100 1052b880 SpellSeed::GetHoldType(void)
    virtual HOLD_TYPE GetHoldType();
    // BW1W120 00728640 BW1M100 1052b9c0 SpellSeed::GetHoldRadius(void)
    virtual float GetHoldRadius();
    // BW1W120 00728660 BW1M100 1052b950 SpellSeed::GetHoldLoweringMultiplier(void)
    virtual float GetHoldLoweringMultiplier();
    // BW1W120 00728670 BW1M100 1052b8f0 SpellSeed::GetHoldYRotate(void)
    virtual float GetHoldYRotate();
    // BW1W120 00727f60 BW1M100 1052cc90 SpellSeed::HandShouldFeelWithMeshIntersect(void)
    virtual uint32_t HandShouldFeelWithMeshIntersect();
    // BW1W120 00729850 BW1M100 10529210 SpellSeed::GetMesh( const(void))
    virtual int GetMesh();
    // BW1W120 00518710 BW1M100 100c8c10 SpellSeed::Draw(void)
    virtual void Draw();
    // BW1W120 005190a0 BW1M100 100c7ef0 SpellSeed::DrawOutOfMap(bool)
    virtual void DrawOutOfMap(bool param_1);
    // BW1W120 00728600 BW1M100 1052bac0 SpellSeed::IsG3DObjectDrawnInHand(void)
    virtual bool IsG3DObjectDrawnInHand();
    // BW1W120 00728360 BW1M100 1052bef0 SpellSeed::CallVirtualFunctionsForCreation(MapCoords const &)
    virtual void CallVirtualFunctionsForCreation(const MapCoords* param_1);
    // BW1W120 00728580 BW1M100 1052bba0 SpellSeed::ValidForPlaceInHand(GInterfaceStatus *)
    virtual uint32_t ValidForPlaceInHand(GInterfaceStatus* param_1);
    // BW1W120 00728810 BW1M100 1052b1f0 SpellSeed::InterfaceSetInMagicHand(GInterfaceStatus *)
    virtual uint32_t InterfaceSetInMagicHand(GInterfaceStatus* param_1);
    // BW1W120 00728940 BW1M100 1052b0d0 SpellSeed::InterfaceSetOutMagicHand(GInterfaceStatus *)
    virtual uint32_t InterfaceSetOutMagicHand(GInterfaceStatus* param_1);
    // BW1W120 00728760 BW1M100 1052b4f0 SpellSeed::ValidToRemoveFromHand(GInterfaceStatus *, MapCoords const &)
    virtual uint32_t ValidToRemoveFromHand(GInterfaceStatus* param_1, const MapCoords* param_2);
    // BW1W120 00728f00 BW1M100 1052a460 SpellSeed::RemoveFromHand(GInterfaceStatus *, MapCoords const &)
    virtual uint32_t RemoveFromHand(GInterfaceStatus* param_1, const MapCoords* param_2);
    // BW1W120 007286d0 BW1M100 1052b6d0 SpellSeed::ValidToApplyThisToObject(GInterfaceStatus *, Object *)
    virtual uint32_t ValidToApplyThisToObject(GInterfaceStatus* param_1, Object* param_2);
    // BW1W120 00728d10 BW1M100 1052a720 SpellSeed::ApplyThisToObject(GInterfaceStatus *, Object *, GestureSystemPacketData *)
    virtual uint32_t ApplyThisToObject(GInterfaceStatus* param_1, Object* param_2, GestureSystemPacketData* param_3);
    // BW1W120 00728720 BW1M100 1052b600 SpellSeed::ValidToApplyThisToMapCoord(GInterfaceStatus *, MapCoords const &)
    virtual uint32_t ValidToApplyThisToMapCoord(GInterfaceStatus* param_1, const MapCoords* param_2);
    // BW1W120 00728e20 BW1M100 1052a5d0 SpellSeed::ApplyThisToMapCoord(GInterfaceStatus *, MapCoords const &, GestureSystemPacketData *)
    virtual uint32_t ApplyThisToMapCoord(GInterfaceStatus* param_1, const MapCoords* param_2, GestureSystemPacketData* param_3);
    // BW1W120 00728750 BW1M100 1052b580 SpellSeed::ValidForLockedApplyProcess(GInterfaceStatus *)
    virtual uint32_t ValidForLockedApplyProcess(GInterfaceStatus* param_1);
    // BW1W120 00728eb0 BW1M100 1052a500 SpellSeed::ApplyUnlockProcess(GInterfaceStatus *)
    virtual uint32_t ApplyUnlockProcess(GInterfaceStatus* param_1);
    // BW1W120 007286a0 BW1M100 1052b830 SpellSeed::IsInterfacePowerUpWhenInHand( const(void))
    virtual uint32_t IsInterfacePowerUpWhenInHand();
    // BW1W120 007286b0 BW1M100 1052b7c0 SpellSeed::ApplyOnlyAfterRecSystem(void)
    virtual uint32_t ApplyOnlyAfterRecSystem();
    // BW1W120 0072acd0 BW1M100 10526410 SpellSeed::ThrowObjectFromHand(GInterfaceStatus *, int)
    virtual uint32_t ThrowObjectFromHand(GInterfaceStatus* param_1, int param_2);
    // BW1W120 00728f50 BW1M100 1052a390 SpellSeed::IsEffectReceiver(EffectValues *)
    virtual uint32_t IsEffectReceiver(EffectValues* param_1);
    // BW1W120 00728570 BW1M100 1052bca0 SpellSeed::InteractsWithPhysicsObjects(void)
    virtual bool InteractsWithPhysicsObjects();
    // BW1W120 00729930 BW1M100 10528d60 SpellSeed::ProcessInHand(void)
    virtual bool ProcessInHand();
    // BW1W120 00727f90 BW1M100 1052cd60 SpellSeed::SaveObject(LHOSFile &, MapCoords const &)
    virtual uint32_t SaveObject(LHOSFile* param_1, const MapCoords* param_2);
    // BW1W120 0072a2d0 BW1M100 10527cc0 SpellSeed::GetInHandImmersionTexture(void)
    virtual IMMERSION_EFFECT_TYPE GetInHandImmersionTexture();
};

#endif /* BW1_DECOMP_SPELL_SEED_INCLUDED_H */
