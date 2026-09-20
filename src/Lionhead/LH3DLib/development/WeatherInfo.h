#ifndef BW1_DECOMP_LH3D_WEATHER_INFO_INCLUDED_H
#define BW1_DECOMP_LH3D_WEATHER_INFO_INCLUDED_H

#include <assert.h>
#include <stdint.h>

// Atmosphere cell, not the GBaseInfo-derived GWeatherInfo data table.
struct WeatherInfo
{
	uint8_t field_0x0;
	uint8_t field_0x1;
	uint8_t field_0x2;
	uint8_t field_0x3;
	int8_t  WindX;
	int8_t  WindZ;
	uint8_t field_0x6;
	uint8_t field_0x7;
};

static_assert(sizeof(WeatherInfo) == 8, "WeatherInfo size is incorrect");

#endif /* BW1_DECOMP_LH3D_WEATHER_INFO_INCLUDED_H */
