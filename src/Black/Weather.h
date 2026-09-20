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

	// BW1W120 00773d10 BW1M100 105a3900 RainInfo::RainInfo(void)
	RainInfo();
	// BW1W120 00773d30 BW1M100 105a38b0 RainInfo::Init(float, float)
	void Init(float param_1, float param_2);
	// BW1W120 00773d50 BW1M100 105a3870 RainInfo::Reset(void)
	void Reset();
	// BW1W120 00773d60 BW1M100 1000ea60 RainInfo::Process(float, float)
	void Process(float param_1, float param_2);
};

class TempInfo
{
public:
	float ActualTemp;
	float GoalTemp;

	// BW1W120 00773ec0 BW1M100 105a3da0 TempInfo::TempInfo(void)
	TempInfo();
	// BW1W120 00773ed0 BW1M100 105a3c90 TempInfo::Init(float, float)
	void Init(float param_1, float param_2);
	// BW1W120 00773f40 BW1M100 10078300 TempInfo::Process(float, float)
	void Process(float param_1, float param_2);
};

class WindInfo
{
public:
	float WindX;
	float WindZ;
	float field_0x8;

	// BW1W120 00774a80 BW1M100 105a53a0 WindInfo::WindInfo(void)
	WindInfo();
	// BW1W120 00774a90 BW1M100 105a5370 WindInfo::Init(void)
	void Init();
	// BW1W120 00774aa0 BW1M100 1000ec10 WindInfo::Process(float, float, float)
	void Process(float param_1, float param_2, float rain_desire);
};

class GWeather : public LH3DStorm
{
public:
	// The allocation at 00770f10 is 0x3c8; the constructor clears only the first added word.
	// LH3DStorm's complete storage extent is verified, but its renderer tail remains opaque.
	uint32_t field_0x3c0;
	uint32_t field_0x3c4;

	// BW1W120 00770e50 BW1M100 inlined GWeather::GWeather(StormInfo&)
	GWeather(StormInfo& info);
	// BW1W120 00770ea0 BW1M100 105a3340 GWeather::CreateWeather(LHPoint, float, float, float, const GWeatherInfo*)
	static GWeather* CreateWeather(LHPoint point, float param_2, float param_3, float param_4,
	                               const GWeatherInfo* info);
	// BW1W120 00770f10 BW1M100 105a3290 GWeather::CreateWeather(StormInfo&)
	static GWeather* CreateWeather(StormInfo& info);

	// Override methods

	// BW1W120 0083f900 BW1M100 1000e110 LH3DStorm::Update(float)
	virtual void Update(float param_1);
	// BW1W120 0083fc90 BW1M100 1001de80 LH3DStorm::DrawClouds(void)
	virtual void DrawClouds();
	// BW1W120 008402e0 BW1M100 100ba4c0 LH3DStorm::DebugDraw(void)
	virtual void DebugDraw();
	// BW1W120 008400e0 BW1M100 100200b0 LH3DStorm::CalcAtmos(LHPoint&, WeatherInfo&)
	virtual void CalcAtmos(LHPoint* param_1, WeatherInfo* param_2);
	// BW1W120 inlined BW1M100 105a36f0 GWeather::~GWeather(void)
	virtual ~GWeather();
};

#endif /* BW1_DECOMP_WEATHER_INCLUDED_H */
