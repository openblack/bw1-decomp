#ifndef BW1_DECOMP_LH3D_ATMOS_INCLUDED_H
#define BW1_DECOMP_LH3D_ATMOS_INCLUDED_H

#include "LHPoint.h"
#include "WeatherInfo.h"

struct LH3DMaterial;

// BW1W120 00edd3a0. Original free callback; storage remains in the extracted LH3DAtmos TU.
extern void(__stdcall* g_water_drop_cb)(LHPoint&, float, unsigned long);

class LH3DAtmos
{
public:
	// Descriptive names for original atmosphere-owned storage, initialized by 00835ad0.
	// Declaration only: storage remains in the extracted LH3DAtmos unit.
	static unsigned int  IsOpen;           // 00edd38c
	static LH3DMaterial* AdditiveMaterial; // 00edc364, render mode 0xd
	static LH3DMaterial* AtmosMaterial;    // 00edc368, render mode 6

	// BW1W120 00834f80; Mac GetWeather__9LH3DAtmosFRC7LHPointi
	static WeatherInfo GetWeather(const LHPoint& point, int recalc);
	// BW1W120 00835180; Mac GetWeatherSmooth__9LH3DAtmosFRC7LHPointi
	static WeatherInfo GetWeatherSmooth(const LHPoint& point, int recalc);

	static void Update3D(float time); // 008357a0
	static void DrawWindField();      // 008367a0
	static void Render3D();           // 00836250
	static void Render2D();           // 008366a0
	// BW1W120 00edc348. Original Mac symbol: ambient__9LH3DAtmos.
	static WeatherInfo ambient;
	// BW1W120 inlined BW1M100 1008ed70 LH3DAtmos::GetWind(const WeatherInfo&)
	static LHPoint GetWind(const WeatherInfo& weather)
	{
		LHPoint wind;
		wind.x = (float)weather.WindX * 0.125f;
		wind.y = 0.0f;
		wind.z = (float)weather.WindZ * 0.125f;
		return wind;
	}
	// BW1W120 008356e0 BW1M100 10078dbc LH3DAtmos::UpdateGame(float, float)
	static void UpdateGame(float visual_time, float delta_time);
};

#endif /* BW1_DECOMP_LH3D_ATMOS_INCLUDED_H */
