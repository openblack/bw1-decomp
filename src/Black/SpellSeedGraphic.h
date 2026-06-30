#ifndef BW1_DECOMP_SPELL_SEED_GRAPHIC_INCLUDED_H
#define BW1_DECOMP_SPELL_SEED_GRAPHIC_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum POWER_UP_TYPE, enum SPELL_SEED_TYPE */

#include "GameThingWithPos.h" /* For struct GameThingWithPos */

// Forward Declares

class Base;
class GPlayer;
class Game3DObject;
class GameOSFile;
class GameThing;
struct LHPoint;
struct MapCoords;

class SpellSeedGraphic: public GameThingWithPos
{
public:
    uint32_t field_0x28;
    int* field_0x2c;
    Game3DObject* obj; /* 0x30 */
    float field_0x34;
    float field_0x38;
    float field_0x3c;
    float field_0x40;
    float field_0x44;
    int field_0x48;
    uint32_t field_0x4c;
    int* field_0x50;
    float field_0x54;
    float field_0x58;
    char field_0x5c;
    POWER_UP_TYPE power_up_type; /* 0x60 */
    uint32_t field_0x64;
    uint32_t field_0x68;
    uint32_t field_0x6c;
    uint32_t field_0x70;

    // Override methods

    // BW1W120 00726e50 BW1M100 10521480 SpellSeedGraphic::_dt(void)
    virtual ~SpellSeedGraphic();
    // BW1W120 00726fe0 BW1M100 10523290 SpellSeedGraphic::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // BW1W120 007276a0 BW1M100 10522450 SpellSeedGraphic::GetPlayer(void)
    virtual GPlayer* GetPlayer();
    // BW1W120 007276b0 BW1M100 105223a0 SpellSeedGraphic::SetPlayer(GPlayer *)
    virtual void SetPlayer(GPlayer* param_1);
    // BW1W120 00726e40 BW1M100 105215a0 SpellSeedGraphic::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 00727ac0 BW1M100 10521910 SpellSeedGraphic::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 00727c70 BW1M100 10521650 SpellSeedGraphic::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 00726e30 BW1M100 10521560 SpellSeedGraphic::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // BW1W120 00727e30 BW1M100 105215f0 SpellSeedGraphic::ResolveLoad(void)
    virtual void ResolveLoad();
    // BW1W120 00727340 BW1M100 10522ce0 SpellSeedGraphic::GetScale(void)
    virtual float GetScale();
    // BW1W120 00726e20 BW1M100 10521520 SpellSeedGraphic::GetText(void)
    virtual const char* GetText();
    // BW1W120 007277b0 BW1M100 10522020 SpellSeedGraphic::ForDrawFXGetNumVertices(void)
    virtual int ForDrawFXGetNumVertices();
    // BW1W120 00727800 BW1M100 10521e20 SpellSeedGraphic::ForDrawFXGetVertexPos(long, LHPoint *)
    virtual void ForDrawFXGetVertexPos(int param_1, LHPoint* param_2);

    // Static methods

    // BW1W120 00725ea0 BW1M100 10101da0 SpellSeedGraphic::operator new(unsigned long)
    static SpellSeedGraphic* __nw(uint32_t size);
    // BW1W120 00726f60 BW1M100 10523670 SpellSeedGraphic::Create(MapCoords const &, SPELL_SEED_TYPE, GPlayer *, float, POWER_UP_TYPE)
    static SpellSeedGraphic* Create(const MapCoords* coords, SPELL_SEED_TYPE type, GPlayer* player, float param_4, POWER_UP_TYPE effect);

    // Non-virtual methods

    // BW1W120 00727060 BW1M100 10523210 SpellSeedGraphic::SetPowerUpType(POWER_UP_TYPE)
    void SetPowerUpType(POWER_UP_TYPE type);
    // BW1W120 00727080 BW1M100 10523130 SpellSeedGraphic::CreatePUBand(void)
    void CreatePUBand();
};

#endif /* BW1_DECOMP_SPELL_SEED_GRAPHIC_INCLUDED_H */
