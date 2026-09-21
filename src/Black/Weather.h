#ifndef BW1_DECOMP_WEATHER_INCLUDED_H
#define BW1_DECOMP_WEATHER_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <Lionhead/LH3DLib/development/LH3DStorm.h> /* For struct LH3DStorm */

// Forward Declares

struct LHPoint;
struct WeatherInfo;

class GWeather : public LH3DStorm
{
public:
	// Override methods

	// BW1W120 0083f900 BW1M119 inlined
	virtual void Update(float param_1);
	// BW1W120 0083fc90 BW1M119 inlined
	virtual void DrawClouds();
	// BW1W120 008402e0 BW1M119 inlined
	virtual void DebugDraw();
	// BW1W120 008400e0 BW1M119 inlined
	virtual void CalcAtmos(LHPoint* param_1, WeatherInfo* param_2);
	// BW1W120 00770e80 BW1M119 015aa3f0
	virtual ~GWeather();
};

#endif /* BW1_DECOMP_WEATHER_INCLUDED_H */
