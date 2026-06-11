#ifndef BW1_DECOMP_WEATHER_INCLUDED_H
#define BW1_DECOMP_WEATHER_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <lionhead/lh3dlib/development/LH3DStorm.h> /* For struct LH3DStorm */

// Forward Declares

struct LHPoint;
class WeatherInfo;

class GWeather: public LH3DStorm
{
public:

    // Override methods

    // win1.41 0083f900 mac inlined GWeather::Update(float)
    virtual void Update(float param_1);
    // win1.41 0083fc90 mac inlined GWeather::DrawClouds(void)
    virtual void DrawClouds();
    // win1.41 008402e0 mac inlined GWeather::DebugDraw(void)
    virtual void DebugDraw();
    // win1.41 008400e0 mac inlined GWeather::CalcAtmos(LHPoint *, WeatherInfo *)
    virtual void CalcAtmos(LHPoint* param_1, WeatherInfo* param_2);
    // win1.41 00770e80 mac 105a36f0 GWeather::_dt(void)
    virtual ~GWeather();
};

#endif /* BW1_DECOMP_WEATHER_INCLUDED_H */
