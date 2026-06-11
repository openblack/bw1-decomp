#ifndef BW1_DECOMP_STREET_LIGHT_INCLUDED_H
#define BW1_DECOMP_STREET_LIGHT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "GameThingWithPos.h" /* For struct GameThingWithPos */

// Forward Declares

class Base;
class GPlayer;
class GameOSFile;
class GameThing;
struct MapCoords;

class GStreetLight: public GameThingWithPos
{
public:
    uint32_t field_0x28;

    // Override methods

    // win1.41 00561420 mac 10535660 GStreetLight::_dt(void)
    virtual ~GStreetLight();
    // win1.41 00734e00 mac 10535d70 GStreetLight::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // win1.41 005613d0 mac 10535700 GStreetLight::GetPlayer(void)
    virtual GPlayer* GetPlayer();
    // win1.41 00561410 mac 10535800 GStreetLight::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 00735160 mac 105358a0 GStreetLight::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 00735140 mac 10535910 GStreetLight::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 00561400 mac 105357c0 GStreetLight::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 00735180 mac 10535840 GStreetLight::ResolveLoad(void)
    virtual void ResolveLoad();
    // win1.41 00735110 mac 10535980 GStreetLight::GetDistanceFromObject(MapCoords const &)
    virtual float GetDistanceFromObject(const MapCoords* param_1);
    // win1.41 005613f0 mac 10535780 GStreetLight::IsStreetLight(void)
    virtual uint32_t IsStreetLight();
    // win1.41 005613e0 mac 10535740 GStreetLight::GetText(void)
    virtual const char* GetText();
};

#endif /* BW1_DECOMP_STREET_LIGHT_INCLUDED_H */
