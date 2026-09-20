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

	// BW1W120 00834f80 BW1M100 10023130 LH3DAtmos::GetWeather(const LHPoint&, int)
	static WeatherInfo GetWeather(const LHPoint& point, int recalc);
	// BW1W120 00835180 BW1M100 10012600 LH3DAtmos::GetWeatherSmooth(const LHPoint&, int)
	static WeatherInfo GetWeatherSmooth(const LHPoint& point, int recalc);

	// BW1W120 008357a0 BW1M100 1000ca40 LH3DAtmos::Update3D(float)
	static void Update3D(float time);
	// BW1W120 008367a0 BW1M100 100d5ad0 LH3DAtmos::DrawWindField(void)
	static void DrawWindField();
	// BW1W120 00836250 BW1M100 100232d0 LH3DAtmos::Render3D(void)
	static void Render3D();
	// BW1W120 008366a0 BW1M100 10009dd0 LH3DAtmos::Render2D(void)
	static void Render2D();
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
	// BW1W120 008356e0 BW1M100 10036b20 LH3DAtmos::UpdateGame(float, float)
	static void UpdateGame(float visual_time, float delta_time);
};

#endif /* BW1_DECOMP_LH3D_ATMOS_INCLUDED_H */
