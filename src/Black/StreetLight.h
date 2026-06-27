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

    // BW1W120 00561420 BW1M100 10535660 GStreetLight::_dt(void)
    virtual ~GStreetLight();
    // BW1W120 00734e00 BW1M100 10535d70 GStreetLight::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // BW1W120 005613d0 BW1M100 10535700 GStreetLight::GetPlayer(void)
    virtual GPlayer* GetPlayer();
    // BW1W120 00561410 BW1M100 10535800 GStreetLight::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 00735160 BW1M100 105358a0 GStreetLight::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // BW1W120 00735140 BW1M100 10535910 GStreetLight::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // BW1W120 00561400 BW1M100 105357c0 GStreetLight::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // BW1W120 00735180 BW1M100 10535840 GStreetLight::ResolveLoad(void)
    virtual void ResolveLoad();
    // BW1W120 00735110 BW1M100 10535980 GStreetLight::GetDistanceFromObject(MapCoords const &)
    virtual float GetDistanceFromObject(const MapCoords* param_1);
    // BW1W120 005613f0 BW1M100 10535780 GStreetLight::IsStreetLight(void)
    virtual uint32_t IsStreetLight();
    // BW1W120 005613e0 BW1M100 10535740 GStreetLight::GetText(void)
    virtual const char* GetText();
};

#endif /* BW1_DECOMP_STREET_LIGHT_INCLUDED_H */
