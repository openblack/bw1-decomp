#ifndef BW1_DECOMP_BONFIRE_INCLUDED_H
#define BW1_DECOMP_BONFIRE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum IMMERSION_EFFECT_TYPE */

#include "Rock.h" /* For struct Rock */

// Forward Declares

class Base;
class GInterfaceStatus;
class GameOSFile;
class GameThing;
class GameThingWithPos;
class LHOSFile;
struct MapCoords;
class Object;
class PhysicsObject;

class Bonfire: public Rock
{
public:

    // Override methods

    // win1.41 00439800 mac 100b3c10 Bonfire::_dt(void)
    virtual ~Bonfire();
    // win1.41 004397f0 mac 100b3ec0 Bonfire::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 00439a00 mac 100b4800 Bonfire::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 00439990 mac 100b48d0 Bonfire::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 004397e0 mac 100b3e80 Bonfire::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 004397c0 mac 100b3dd0 Bonfire::PhysicsEditorCreate(int)
    virtual void PhysicsEditorCreate(int param_1);
    // win1.41 00439a70 mac 100b47a0 Bonfire::GetScriptObjectType(void)
    virtual uint32_t GetScriptObjectType();
    // win1.41 00439a90 mac 1001a450 Bonfire::Draw(void)
    virtual void Draw();
    // win1.41 00439840 mac 100b4c70 Bonfire::CallVirtualFunctionsForCreation(MapCoords const &)
    virtual void CallVirtualFunctionsForCreation(const MapCoords* param_1);
    // win1.41 00439790 mac 100b3cf0 Bonfire::ValidForPlaceInHand(GInterfaceStatus *)
    virtual uint32_t ValidForPlaceInHand(GInterfaceStatus* param_1);
    // win1.41 00439780 mac 100b3ca0 Bonfire::InterfaceValidToTap(GInterfaceStatus *)
    virtual uint32_t InterfaceValidToTap(GInterfaceStatus* param_1);
    // win1.41 004397b0 mac 100b3d80 Bonfire::InteractsWithPhysicsObjects(void)
    virtual bool InteractsWithPhysicsObjects();
    // win1.41 00439a80 mac 100b4750 Bonfire::ReactToPhysicsImpact(PhysicsObject *, bool)
    virtual void ReactToPhysicsImpact(PhysicsObject* param_1, bool param_2);
    // win1.41 004397a0 mac 100b3d40 Bonfire::CanBecomeAPhysicsObject(void)
    virtual bool CanBecomeAPhysicsObject();
    // win1.41 004398a0 mac 100b49b0 Bonfire::SaveObject(LHOSFile &, MapCoords const &)
    virtual uint32_t SaveObject(LHOSFile* param_1, const MapCoords* param_2);
    // win1.41 004397d0 mac 100b3e20 Bonfire::GetInHandImmersionTexture(void)
    virtual IMMERSION_EFFECT_TYPE GetInHandImmersionTexture();
};

#endif /* BW1_DECOMP_BONFIRE_INCLUDED_H */
