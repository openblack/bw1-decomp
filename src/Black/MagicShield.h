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

    // win1.41 0072c230 mac 105340b0 MagicShield::_dt(void)
    virtual ~MagicShield();
    // win1.41 0072c220 mac 10534190 MagicShield::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 0072c3d0 mac 10531080 MagicShield::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 0072c3f0 mac 10531020 MagicShield::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 0072c210 mac 10534150 MagicShield::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 0072c300 mac 10531370 MagicShield::Draw(void)
    virtual void Draw();
    // win1.41 0072c2a0 mac 10531420 MagicShield::CallVirtualFunctionsForCreation(MapCoords const &)
    virtual void CallVirtualFunctionsForCreation(const MapCoords* param_1);
    // win1.41 0072c340 mac 10531220 MagicShield::Get3DType(void)
    virtual LH3DObject::ObjectType Get3DType();
    // win1.41 0072c320 mac 105312c0 MagicShield::SetDying(void)
    virtual bool SetDying();
    // win1.41 0072c310 mac 10531320 MagicShield::IsEffectReceiver(EffectValues *)
    virtual uint32_t IsEffectReceiver(EffectValues* param_1);
    // win1.41 0072c330 mac 10531270 MagicShield::InteractsWithPhysicsObjects(void)
    virtual bool InteractsWithPhysicsObjects();
    // win1.41 0072c2e0 mac 105313e0 MagicShield::ProcessShield(void)
    virtual void ProcessShield();
    // win1.41 0072c2f0 mac 105313a0 MagicShield::DrawShield(void)
    virtual void DrawShield();
    // win1.41 0072b850 mac 10532df0 MagicShield::IsPointDefinietlyWithinShieldVolume(MapCoords const &)
    virtual bool IsPointDefinietlyWithinShieldVolume(const MapCoords* param_1);
};

#endif /* BW1_DECOMP_MAGIC_SHIELD_INCLUDED_H */
