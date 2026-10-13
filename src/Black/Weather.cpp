#include "Weather.h"
#include "ClimateInfo.h"
#include "WeatherInfo.h"

GWeatherInfo GWeatherInfo::Infos[WEATHER_INFO_LAST];
GClimateInfo GClimateInfo::Infos[CLIMATE_INFO_LAST];

GBaseInfo* GWeatherInfo::GetBaseInfo(uint32_t& info_count)
{
	info_count = WEATHER_INFO_LAST;
	return Infos;
}

GBaseInfo* GClimateInfo::GetBaseInfo(uint32_t& info_count)
{
	info_count = CLIMATE_INFO_LAST;
	return Infos;
}
