#ifndef BW1_DECOMP_MAGIC_SHIELD_INCLUDED_H
#define BW1_DECOMP_MAGIC_SHIELD_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <Lionhead/LH3DLib/development/LH3DObject.h> /* For enum LH3DObject__ObjectType */

#include "MapShield.h" /* For struct MapShield */

// Forward Declares

class Base;
class EffectValues;
class GameOSFile;
class GameThing;
struct MapCoords;
class Object;

class MagicShield: public MapShield
{
public:

    // Override methods

    // BW1W120 0072c230 BW1M100 105340b0 MagicShield::_dt(void)
    virtual ~MagicShield();
    // BW1W120 0072c220 BW1M100 10534190 MagicShield::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 0072c3d0 BW1M100 10531080 MagicShield::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // BW1W120 0072c3f0 BW1M100 10531020 MagicShield::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // BW1W120 0072c210 BW1M100 10534150 MagicShield::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // BW1W120 0072c300 BW1M100 10531370 MagicShield::Draw(void)
    virtual void Draw();
    // BW1W120 0072c2a0 BW1M100 10531420 MagicShield::CallVirtualFunctionsForCreation(MapCoords const &)
    virtual void CallVirtualFunctionsForCreation(const MapCoords* param_1);
    // BW1W120 0072c340 BW1M100 10531220 MagicShield::Get3DType(void)
    virtual LH3DObject::ObjectType Get3DType();
    // BW1W120 0072c320 BW1M100 105312c0 MagicShield::SetDying(void)
    virtual bool SetDying();
    // BW1W120 0072c310 BW1M100 10531320 MagicShield::IsEffectReceiver(EffectValues *)
    virtual uint32_t IsEffectReceiver(EffectValues* param_1);
    // BW1W120 0072c330 BW1M100 10531270 MagicShield::InteractsWithPhysicsObjects(void)
    virtual bool InteractsWithPhysicsObjects();
    // BW1W120 0072c2e0 BW1M100 105313e0 MagicShield::ProcessShield(void)
    virtual void ProcessShield();
    // BW1W120 0072c2f0 BW1M100 105313a0 MagicShield::DrawShield(void)
    virtual void DrawShield();
    // BW1W120 0072b850 BW1M100 10532df0 MagicShield::IsPointDefinietlyWithinShieldVolume(MapCoords const &)
    virtual bool IsPointDefinietlyWithinShieldVolume(const MapCoords* param_1);
};

#endif /* BW1_DECOMP_MAGIC_SHIELD_INCLUDED_H */
