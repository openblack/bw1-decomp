#ifndef BW1_DECOMP_WHALE_INCLUDED_H
#define BW1_DECOMP_WHALE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "MobileObject.h" /* For struct MobileObject */

// Forward Declares

class Base;
class GameOSFile;
class GameThing;
class GameThingWithPos;
struct MapCoords;
class Object;

class Whale: public MobileObject
{
public:
    uint8_t field_0x68[0xc];

    // Override methods

    // win1.41 005612c0 mac 1015fe80 Whale::_dt(void)
    virtual ~Whale();
    // win1.41 00774c00 mac 10160d10 Whale::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // win1.41 005612b0 mac 10160000 Whale::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 007752c0 mac 10160090 Whale::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 007752a0 mac 101600f0 Whale::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 005612a0 mac 1015ffd0 Whale::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 007752e0 mac 10160040 Whale::ResolveLoad(void)
    virtual void ResolveLoad();
    // win1.41 00561280 mac 1015ff90 Whale::PhysicsEditorCreate(int)
    virtual void PhysicsEditorCreate(int param_1);
    // win1.41 00775280 mac 10160150 Whale::Process(void)
    virtual uint32_t Process();
    // win1.41 00774e10 mac 101609a0 Whale::Draw(void)
    virtual void Draw();
    // win1.41 00774ca0 mac 10160a20 Whale::CallVirtualFunctionsForCreation(MapCoords const &)
    virtual void CallVirtualFunctionsForCreation(const MapCoords* param_1);
    // win1.41 00561270 mac 1015ff50 Whale::InteractsWithPhysicsObjects(void)
    virtual bool InteractsWithPhysicsObjects();
    // win1.41 00561290 mac 1015ff10 Whale::CanBecomeAPhysicsObject(void)
    virtual bool CanBecomeAPhysicsObject();
};

#endif /* BW1_DECOMP_WHALE_INCLUDED_H */
