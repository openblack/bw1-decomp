#ifndef BW1_DECOMP_WEATHER_INFO_INCLUDED_H
#define BW1_DECOMP_WEATHER_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For WEATHER_INFO_LAST */

#include "BaseInfo.h"    /* For struct GBaseInfo */
#include "InfoLoaders.h" /* For INFO_DATA_BLOCK */
#include <Lionhead/LH3DLib/development/WeatherInfo.h>

// Forward Declares

class Base;

class GWeatherInfo : public GBaseInfo
{
public:
	// Seven 0x64-byte records constructed at 00770da0 and destroyed at 00770e00.
	// TODO: Recover the individual weather preset fields.
	uint8_t field_0x10[0x54];
	// Override methods

	// BW1W120 00770e30 BW1M119 015aa220
	virtual ~GWeatherInfo();
	// BW1W120 00770dd0 BW1M119 015aa340
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);

	// Static data

	// BW1W120 00dcb5f8
	static GWeatherInfo Infos[WEATHER_INFO_LAST];

	// Static methods

	// BW1W120 inlined BW1M119 015aa120
	static GWeatherInfo* GetInfo() { return Infos; }

	// TODO(#377): The original declared this class in Weather.h.
	INFO_DATA_BLOCK(field_0x10, field_0x10)
	INFO_ROOT_LOADERS("Weather.h", 24)
};

static_assert(sizeof(GWeatherInfo) == 0x64, "GWeatherInfo size is incorrect");

#endif /* BW1_DECOMP_WEATHER_INFO_INCLUDED_H */
