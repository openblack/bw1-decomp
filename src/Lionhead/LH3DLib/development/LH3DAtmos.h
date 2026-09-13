#ifndef BW1_DECOMP_LH3D_ATMOS_INCLUDED_H
#define BW1_DECOMP_LH3D_ATMOS_INCLUDED_H

#include "WeatherInfo.h"

struct LHPoint;
// BW1W120 00edd3a0. Original free callback; storage remains in the extracted LH3DAtmos TU.
extern void(__stdcall* g_water_drop_cb)(LHPoint&, float, unsigned long);

class LH3DAtmos
{
public:
	static void Update3D(float time); // 008357a0
	static void DrawWindField();      // 008367a0
	static void Render3D();           // 00836250
	static void Render2D();           // 008366a0
	// BW1W120 00edc348. Original Mac symbol: ambient__9LH3DAtmos.
	static WeatherInfo ambient;
	// BW1W120 008356e0 BW1M100 10078dbc LH3DAtmos::UpdateGame(float, float)
	static void UpdateGame(float visual_time, float delta_time);
};

#endif /* BW1_DECOMP_LH3D_ATMOS_INCLUDED_H */
