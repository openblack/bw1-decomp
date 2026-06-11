#ifndef BW1_DECOMP_WEATHER_THING_INCLUDED_H
#define BW1_DECOMP_WEATHER_THING_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "GameThingWithPos.h" /* For struct GameThingWithPos */

// Forward Declares

class Base;
class GameOSFile;
class GameThing;
struct MapCoords;

class WeatherThing: public GameThingWithPos
{
public:
    uint8_t field_0x28[0x60];

    // Override methods

    // win1.41 0055df60 mac 105a3e00 WeatherThing::_dt(void)
    virtual ~WeatherThing();
    // win1.41 00774130 mac 105a4f00 WeatherThing::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // win1.41 0055df50 mac 105a3fa0 WeatherThing::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 007747e0 mac 105a3fe0 WeatherThing::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 007745c0 mac 105a4300 WeatherThing::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 0055df40 mac 105a3f60 WeatherThing::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 007742e0 mac 105a4be0 WeatherThing::SetPos(MapCoords const &)
    virtual void SetPos(const MapCoords* param_1);
    // win1.41 00774580 mac 105a4680 WeatherThing::SetSpeedInMetres(float, int)
    virtual void SetSpeedInMetres(float param_1, int param_2);
    // win1.41 0055df10 mac 105a3ea0 WeatherThing::IsWeather( const(void))
    virtual uint32_t IsWeather();
    // win1.41 0055df30 mac 105a3f20 WeatherThing::GetText(void)
    virtual const char* GetText();
    // win1.41 00774360 mac 105a4b40 WeatherThing::GetScriptObjectType(void)
    virtual uint32_t GetScriptObjectType();
    // win1.41 0055df20 mac 105a3ee0 WeatherThing::SetAffectedByWind(int)
    virtual void SetAffectedByWind(int param_1);
};

#endif /* BW1_DECOMP_WEATHER_THING_INCLUDED_H */
