#ifndef BW1_DECOMP_FIRE_EFFECT_INCLUDED_H
#define BW1_DECOMP_FIRE_EFFECT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "GameThing.h" /* For struct GameThing */

// Forward Declares

class Base;
class FireGraphic;
class GPlayer;
class GameOSFile;
struct LHPoint;
class Object;

class FireEffect: public GameThing
{
public:
    float temperature; /* 0x14 */
    float temperature2;
    Object* source;
    GPlayer* player; /* 0x20 */
    GameThing* thing;
    uint32_t field_0x28;
    uint32_t field_0x2c;
    uint32_t field_0x30;
    uint32_t field_0x34;
    uint8_t field_0x38;
    FireEffect* next;
    uint8_t field_0x40[0x8];
    uint32_t field_0x48;
    uint32_t field_0x4c;

    // Override methods

    // win1.41 0072eae0 mac 10150470 FireEffect::_dt(void)
    virtual ~FireEffect();
    // win1.41 0072ebe0 mac 101500c0 FireEffect::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // win1.41 0072ee70 mac 1014fd50 FireEffect::Get3DSoundPos(LHPoint *)
    virtual int Get3DSoundPos(LHPoint* param_1);
    // win1.41 0072eab0 mac 1014cc60 FireEffect::GetPlayer(void)
    virtual GPlayer* GetPlayer();
    // win1.41 0072ead0 mac 10150910 FireEffect::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 00730df0 mac 1014bcc0 FireEffect::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 00730b00 mac 1014c110 FireEffect::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 0072eac0 mac 101508d0 FireEffect::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 007310d0 mac 1014bc70 FireEffect::ResolveLoad(void)
    virtual void ResolveLoad();

    // Constructors

    // win1.41 0072ea80 mac 10150740 FireEffect::FireEffect(void)
    FireEffect();

    // Non-virtual methods

    // win1.41 00730ad0 mac 1014c5c0 FireEffect::CreateSprites(void)
    FireGraphic* CreateSprites();
    // win1.41 00732ae0 mac 10149240 FireEffect::GetFirstCaused(void)
    uint32_t GetFirstCaused();
};

#endif /* BW1_DECOMP_FIRE_EFFECT_INCLUDED_H */
