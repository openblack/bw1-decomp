#include "Weather.h"
#include "ClimateInfo.h"
#include "WeatherInfo.h"

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
