#ifndef BW1_DECOMP_WEATHER_INCLUDED_H
#define BW1_DECOMP_WEATHER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h>

#include <Lionhead/LH3DLib/development/LH3DStorm.h> /* For struct LH3DStorm */

// Forward Declares

struct LHPoint;
struct WeatherInfo;
struct StormInfo;
class GWeatherInfo;

// Original type/method names survive in the Mac Weather.cpp symbols. Member names below
// are descriptive. Their bodies belong to the neighboring extracted units, not this one.
class RainInfo
{
public:
	float   Desire;
	int     field_0x4;
	int     RainingTurns;
	uint8_t Flags;
	uint8_t field_0xd[3];

	// BW1W120 00773d10, 00773d30, 00773d50, 00773d60
	RainInfo();
	void Init(float param_1, float param_2);
	void Reset();
	void Process(float param_1, float param_2);
};

class TempInfo
{
public:
	float ActualTemp;
	float GoalTemp;

	// BW1W120 00773ec0, 00773ed0, 00773f40
	TempInfo();
	void Init(float param_1, float param_2);
	void Process(float param_1, float param_2);
};

class WindInfo
{
public:
	float WindX;
	float WindZ;
	float field_0x8;

	// BW1W120 00774a80, 00774a90, 00774aa0
	WindInfo();
	void Init();
	void Process(float param_1, float param_2, float rain_desire);
};

static_assert(sizeof(RainInfo) == 0x10, "RainInfo size is incorrect");
static_assert(sizeof(TempInfo) == 8, "TempInfo size is incorrect");
static_assert(sizeof(WindInfo) == 0xc, "WindInfo size is incorrect");

class GWeather : public LH3DStorm
{
public:
	// The allocation at 00770f10 is 0x3c8; the constructor clears only the first added word.
	// LH3DStorm's complete storage extent is verified, but its renderer tail remains opaque.
	uint32_t field_0x3c0;
	uint32_t field_0x3c4;

	// BW1W120 00770e50 (inlined on Mac)
	GWeather(StormInfo& info);
	// BW1W120 00770ea0; Mac CreateWeather__8GWeatherF7LHPointfffPC12GWeatherInfo
	static GWeather* CreateWeather(LHPoint point, float param_2, float param_3, float param_4,
	                               const GWeatherInfo* info);
	// BW1W120 00770f10; Mac CreateWeather__8GWeatherFR9StormInfo
	static GWeather* CreateWeather(StormInfo& info);

	// Override methods

	// BW1W120 0083f900 BW1M100 inlined GWeather::Update(float)
	virtual void Update(float param_1);
	// BW1W120 0083fc90 BW1M100 inlined GWeather::DrawClouds(void)
	virtual void DrawClouds();
	// BW1W120 008402e0 BW1M100 inlined GWeather::DebugDraw(void)
	virtual void DebugDraw();
	// BW1W120 008400e0 BW1M100 inlined GWeather::CalcAtmos(LHPoint *, WeatherInfo *)
	virtual void CalcAtmos(LHPoint* param_1, WeatherInfo* param_2);
	// BW1W120 00770e80 BW1M100 105a36f0 GWeather::_dt(void)
	virtual ~GWeather();
};

static_assert(sizeof(GWeather) == 0x3c8, "GWeather size is incorrect");

#endif /* BW1_DECOMP_WEATHER_INCLUDED_H */
