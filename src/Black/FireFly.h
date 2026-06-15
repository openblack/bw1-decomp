#ifndef BW1_DECOMP_FIRE_FLY_INCLUDED_H
#define BW1_DECOMP_FIRE_FLY_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "MapCoords.h" /* For struct MapCoords */
#include "Object.h" /* For struct Object */

// Forward Declares

class Base;
class GameOSFile;
class GameThing;
class GameThingWithPos;
struct LH3DSprite;
class LHOSFile;
class PhysicsObject;

class FireFly: public Object
{
public:
    uint32_t field_0x54;
    LH3DSprite* sprite;
    uint32_t field_0x5c;
    MapCoords field_0x60;
    MapCoords field_0x6c;
    MapCoords field_0x78;
    uint8_t field_0x84[0xc];
    uint32_t field_0x90;
    uint32_t field_0x94;
    uint32_t field_0x98;
    float field_0x9c;
    float field_0xa0;
    float field_0xa4;
    float field_0xa8;
    float field_0xac;
    float field_0xb0;
    float field_0xb4;
    float field_0xb8;
    float field_0xbc;
    uint8_t field_0xc0;

    // Override methods

    // win1.41 0052a310 mac 100d9be0 FireFly::_dt(void)
    virtual ~FireFly();
    // win1.41 0052a4c0 mac 100d9ab0 FireFly::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // win1.41 0052a300 mac 100d66d0 FireFly::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 0052bbc0 mac 100d6850 FireFly::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 0052b870 mac 100d7020 FireFly::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 0052a2f0 mac 100d6690 FireFly::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 0052a1d0 mac 100da180 FireFly::IsMoving( const(void))
    virtual bool IsMoving();
    // win1.41 0052aa90 mac 100d9130 FireFly::Draw(void)
    virtual void Draw();
    // win1.41 0052a510 mac 100d9950 FireFly::CallVirtualFunctionsForCreation(MapCoords const &)
    virtual void CallVirtualFunctionsForCreation(const MapCoords* param_1);
    // win1.41 0052a1a0 mac 100da240 FireFly::InteractsWithPhysicsObjects(void)
    virtual bool InteractsWithPhysicsObjects();
    // win1.41 0052a1b0 mac 100da1f0 FireFly::ReactToPhysicsImpact(PhysicsObject *, bool)
    virtual void ReactToPhysicsImpact(PhysicsObject* param_1, bool param_2);
    // win1.41 0052a1c0 mac 100da1b0 FireFly::CanBecomeAPhysicsObject(void)
    virtual bool CanBecomeAPhysicsObject();
    // win1.41 0052bf10 mac 100d6710 FireFly::SaveObject(LHOSFile &, MapCoords const &)
    virtual uint32_t SaveObject(LHOSFile* param_1, const MapCoords* param_2);

    // Static methods

    // win1.41 0052a200 mac 100d9f20 FireFly::Create(MapCoords const &)
    static FireFly* Create(MapCoords* coord);

    // Constructors

    // win1.41 0052a280 mac 100d9e20 FireFly::FireFly(const MapCoords&)
    FireFly(MapCoords* coords);
    // win1.41 0052a340 mac 100d9e04 FireFly::FireFly(void)
    FireFly();
};

#endif /* BW1_DECOMP_FIRE_FLY_INCLUDED_H */
