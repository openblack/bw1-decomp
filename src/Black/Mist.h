#ifndef BW1_DECOMP_MIST_INCLUDED_H
#define BW1_DECOMP_MIST_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "GameThingWithPos.h" /* For struct GameThingWithPos */

// Forward Declares

class Base;
class GPlayer;
class GameOSFile;
class GameThing;
struct MapCoords;
struct MistListNode;

class Mist: public GameThingWithPos
{
public:
    uint32_t field_0x28;
    float field_0x2c;
    uint32_t field_0x30;
    float field_0x34;
    uint8_t field_0x38[0x14];
    uint32_t field_0x4c;
    Mist* next; /* 0x50 */

    // Override methods

    // win1.41 0055ebd0 mac 101045f0 Mist::_dt(void)
    virtual ~Mist();
    // win1.41 00606300 mac 10105480 Mist::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // win1.41 0055eb70 mac 10104680 Mist::GetPlayer(void)
    virtual GPlayer* GetPlayer();
    // win1.41 0055ebc0 mac 10104780 Mist::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 00606a10 mac 10104820 Mist::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 00606920 mac 10104980 Mist::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 0055ebb0 mac 10104750 Mist::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 00606af0 mac 101047c0 Mist::ResolveLoad(void)
    virtual void ResolveLoad();
    // win1.41 0055eba0 mac 10104710 Mist::GetCreatureBeliefType(void)
    virtual uint32_t GetCreatureBeliefType();
    // win1.41 006067d0 mac 10104c90 Mist::GetDistanceFromObject(MapCoords const &)
    virtual float GetDistanceFromObject(const MapCoords* param_1);
    // win1.41 0055eb90 mac 101046e0 Mist::IsMist(void)
    virtual uint32_t IsMist();
    // win1.41 0055eb80 mac 101046b0 Mist::GetText(void)
    virtual const char* GetText();
    // win1.41 00606910 mac 10104af0 Mist::GetScriptObjectType(void)
    virtual uint32_t GetScriptObjectType();

    // Constructors

    // win1.41 00606270 mac 101056c0 Mist::Mist(MapCoords const &, float, unsigned long, float)
    Mist(MapCoords* coords, float param_3, uint32_t param_4, float param_5);
};

#endif /* BW1_DECOMP_MIST_INCLUDED_H */
