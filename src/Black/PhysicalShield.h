#ifndef BW1_DECOMP_PHYSICAL_SHIELD_INCLUDED_H
#define BW1_DECOMP_PHYSICAL_SHIELD_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <Lionhead/LH3DLib/development/LH3DObject.h> /* For enum LH3DObject__ObjectType */

#include "MapShield.h" /* For struct MapShield */

// Forward Declares

class Base;
class EffectValues;
class GPlayer;
class GameOSFile;
class GameThing;
class GameThingWithPos;
class Living;
struct MapCoords;
class Object;
struct PhysOb;
class PhysicsObject;
class Reaction;

class PhysicalShield: public MapShield
{
public:

    // Override methods

    // BW1W120 0072cb20 BW1M100 10533e40 PhysicalShield::_dt(void)
    virtual ~PhysicalShield();
    // BW1W120 0072cc50 BW1M100 105302e0 PhysicalShield::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // BW1W120 0072cb10 BW1M100 10533f80 PhysicalShield::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 0072c410 BW1M100 10530bd0 PhysicalShield::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 0072c700 BW1M100 10530750 PhysicalShield::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 0072cb00 BW1M100 10533f40 PhysicalShield::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // BW1W120 0072d7f0 BW1M100 1052ee20 PhysicalShield::GetImpressiveValue(Living *, Reaction *)
    virtual float GetImpressiveValue(Living* param_1, Reaction* param_2);
    // BW1W120 0072ce60 BW1M100 1052fe10 PhysicalShield::ApplyEffect(EffectValues &, int)
    virtual void ApplyEffect(EffectValues* param_1, int param_2);
    // BW1W120 0072ce80 BW1M100 1052fda0 PhysicalShield::DestroyedByEffect(GPlayer *, float)
    virtual uint32_t DestroyedByEffect(GPlayer* param_1, float param_2);
    // BW1W120 0072cea0 BW1M100 1052fd70 PhysicalShield::Draw(void)
    virtual void Draw();
    // BW1W120 0072ccb0 BW1M100 10530110 PhysicalShield::CallVirtualFunctionsForCreation(MapCoords const &)
    virtual void CallVirtualFunctionsForCreation(const MapCoords* param_1);
    // BW1W120 0072ce50 BW1M100 1052fe80 PhysicalShield::Get3DType(void)
    virtual LH3DObject::ObjectType Get3DType();
    // BW1W120 0072d170 BW1M100 1052f8a0 PhysicalShield::SetDying(void)
    virtual bool SetDying();
    // BW1W120 0072cc80 BW1M100 10530260 PhysicalShield::IsEffectReceiver(EffectValues *)
    virtual uint32_t IsEffectReceiver(EffectValues* param_1);
    // BW1W120 0072d7e0 BW1M100 1052ef50 PhysicalShield::GetPhysicsConstantsType(void)
    virtual uint32_t GetPhysicsConstantsType();
    // BW1W120 0072ceb0 BW1M100 1052fce0 PhysicalShield::SetUpPhysOb(PhysOb *)
    virtual void SetUpPhysOb(PhysOb* param_1);
    // BW1W120 0072d600 BW1M100 1052f2c0 PhysicalShield::InteractsWithPhysicsObjects(void)
    virtual bool InteractsWithPhysicsObjects();
    // BW1W120 0072d610 BW1M100 1052efa0 PhysicalShield::ReactToPhysicsImpact(PhysicsObject *, bool)
    virtual void ReactToPhysicsImpact(PhysicsObject* param_1, bool param_2);
    // BW1W120 0072caf0 BW1M100 10533ee0 PhysicalShield::GetAlwaysRemainsInPhysicsInternalSystem(void)
    virtual bool GetAlwaysRemainsInPhysicsInternalSystem();
    // BW1W120 0072d190 BW1M100 1052f310 PhysicalShield::ProcessShield(void)
    virtual void ProcessShield();
    // BW1W120 0072ced0 BW1M100 1052f980 PhysicalShield::DrawShield(void)
    virtual void DrawShield();
    // BW1W120 0072b8e0 BW1M100 10532c50 PhysicalShield::IsPointDefinietlyWithinShieldVolume(MapCoords const &)
    virtual bool IsPointDefinietlyWithinShieldVolume(const MapCoords* param_1);
};

#endif /* BW1_DECOMP_PHYSICAL_SHIELD_INCLUDED_H */
