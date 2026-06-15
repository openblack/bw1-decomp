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

    // win1.41 0072cb20 mac 10533e40 PhysicalShield::_dt(void)
    virtual ~PhysicalShield();
    // win1.41 0072cc50 mac 105302e0 PhysicalShield::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // win1.41 0072cb10 mac 10533f80 PhysicalShield::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 0072c410 mac 10530bd0 PhysicalShield::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 0072c700 mac 10530750 PhysicalShield::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 0072cb00 mac 10533f40 PhysicalShield::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 0072d7f0 mac 1052ee20 PhysicalShield::GetImpressiveValue(Living *, Reaction *)
    virtual float GetImpressiveValue(Living* param_1, Reaction* param_2);
    // win1.41 0072ce60 mac 1052fe10 PhysicalShield::ApplyEffect(EffectValues &, int)
    virtual void ApplyEffect(EffectValues* param_1, int param_2);
    // win1.41 0072ce80 mac 1052fda0 PhysicalShield::DestroyedByEffect(GPlayer *, float)
    virtual uint32_t DestroyedByEffect(GPlayer* param_1, float param_2);
    // win1.41 0072cea0 mac 1052fd70 PhysicalShield::Draw(void)
    virtual void Draw();
    // win1.41 0072ccb0 mac 10530110 PhysicalShield::CallVirtualFunctionsForCreation(MapCoords const &)
    virtual void CallVirtualFunctionsForCreation(const MapCoords* param_1);
    // win1.41 0072ce50 mac 1052fe80 PhysicalShield::Get3DType(void)
    virtual LH3DObject::ObjectType Get3DType();
    // win1.41 0072d170 mac 1052f8a0 PhysicalShield::SetDying(void)
    virtual bool SetDying();
    // win1.41 0072cc80 mac 10530260 PhysicalShield::IsEffectReceiver(EffectValues *)
    virtual uint32_t IsEffectReceiver(EffectValues* param_1);
    // win1.41 0072d7e0 mac 1052ef50 PhysicalShield::GetPhysicsConstantsType(void)
    virtual uint32_t GetPhysicsConstantsType();
    // win1.41 0072ceb0 mac 1052fce0 PhysicalShield::SetUpPhysOb(PhysOb *)
    virtual void SetUpPhysOb(PhysOb* param_1);
    // win1.41 0072d600 mac 1052f2c0 PhysicalShield::InteractsWithPhysicsObjects(void)
    virtual bool InteractsWithPhysicsObjects();
    // win1.41 0072d610 mac 1052efa0 PhysicalShield::ReactToPhysicsImpact(PhysicsObject *, bool)
    virtual void ReactToPhysicsImpact(PhysicsObject* param_1, bool param_2);
    // win1.41 0072caf0 mac 10533ee0 PhysicalShield::GetAlwaysRemainsInPhysicsInternalSystem(void)
    virtual bool GetAlwaysRemainsInPhysicsInternalSystem();
    // win1.41 0072d190 mac 1052f310 PhysicalShield::ProcessShield(void)
    virtual void ProcessShield();
    // win1.41 0072ced0 mac 1052f980 PhysicalShield::DrawShield(void)
    virtual void DrawShield();
    // win1.41 0072b8e0 mac 10532c50 PhysicalShield::IsPointDefinietlyWithinShieldVolume(MapCoords const &)
    virtual bool IsPointDefinietlyWithinShieldVolume(const MapCoords* param_1);
};

#endif /* BW1_DECOMP_PHYSICAL_SHIELD_INCLUDED_H */
