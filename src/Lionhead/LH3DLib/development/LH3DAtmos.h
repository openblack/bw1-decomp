#ifndef BW1_DECOMP_LH3D_ATMOS_INCLUDED_H
#define BW1_DECOMP_LH3D_ATMOS_INCLUDED_H

#include "WeatherInfo.h"

class LH3DAtmos
{
public:
	// BW1W120 00edc348. Original Mac symbol: ambient__9LH3DAtmos.
	static WeatherInfo ambient;
	// BW1W120 008356e0 BW1M100 10078dbc LH3DAtmos::UpdateGame(float, float)
	static void UpdateGame(float visual_time, float delta_time);
};

#endif /* BW1_DECOMP_LH3D_ATMOS_INCLUDED_H */
