#ifndef BW1_DECOMP_LH3D_WEATHER_INFO_INCLUDED_H
#define BW1_DECOMP_LH3D_WEATHER_INFO_INCLUDED_H

#include <assert.h>
#include <limits.h> /* For SCHAR_MIN, SCHAR_MAX */
#include <minmax.h> /* For min */
#include <stdint.h>

// Atmosphere cell, not the GBaseInfo-derived GWeatherInfo data table.
struct WeatherInfo
{
	int8_t Temperature;
	int8_t Rain;
	int8_t Snow;
	int8_t Cloud;
	int8_t WindX;
	int8_t WindZ;
	int8_t SnowDepth;
	int8_t Time;

	// BW1W120 inlined BW1M119 01020350 (LHCombined Release)
	static int Clip(int value)
	{
		if (value < SCHAR_MIN)
		{
			return SCHAR_MIN;
		}
		return min(SCHAR_MAX, value);
	}
	// BW1W120 00835620 BW1M119 inlined
	void Interpolate(const WeatherInfo& from, const WeatherInfo& to, int weight)
	{
		Time = from.Time;
		Temperature = from.Temperature + (((to.Temperature - from.Temperature) * weight) >> 8);
		Rain = from.Rain + (((to.Rain - from.Rain) * weight) >> 8);
		SnowDepth = from.SnowDepth + (((to.SnowDepth - from.SnowDepth) * weight) >> 8);
		Snow = from.Snow + (((to.Snow - from.Snow) * weight) >> 8);
		Cloud = from.Cloud + (((to.Cloud - from.Cloud) * weight) >> 8);
		WindX = from.WindX + (((to.WindX - from.WindX) * weight) >> 8);
		WindZ = from.WindZ + (((to.WindZ - from.WindZ) * weight) >> 8);
	}
};

static_assert(sizeof(WeatherInfo) == 8, "WeatherInfo size is incorrect");

#endif /* BW1_DECOMP_LH3D_WEATHER_INFO_INCLUDED_H */
