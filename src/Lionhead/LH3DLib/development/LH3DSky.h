#ifndef BW1_DECOMP_LH3D_SKY_INCLUDED_H
#define BW1_DECOMP_LH3D_SKY_INCLUDED_H

#define HOURS_PER_DAY 24.0f
#define SKY_NOON_TIME 12.0f

enum SKY_TIME_SEGMENT
{
	SKY_TIME_SEGMENT_NIGHT,
	SKY_TIME_SEGMENT_DAWN,
	SKY_TIME_SEGMENT_DUSK,
	SKY_TIME_SEGMENT_SUNRISE,
	SKY_TIME_SEGMENT_DAY,
};

class LH3DSky
{
public:
	// Original Mac import
	// BW1W120 00fa2760 BW1M119 012d3540 (LHCombined Release)
	static int g_b_we_are_inside_citadel;
	// BW1W120 00869fa0 BW1M119 010b2070 (LHCombined Release)
	static void SetDayNightTimes(float night, float dusk_start, float dusk_end, float day);
	// BW1W120 0086a1b0 BW1M119 01033e10 (LHCombined Release)
	static float Time2SkyType(float time);
	// BW1W120 0086bb60 BW1M119 01014060 (LHCombined Release)
	static void PostDrawSun();
	static float ConvertTime(float time, float from_night, float from_dusk_start, float from_dusk_end, float from_day,
	                         float to_night, float to_dusk_start, float to_dusk_end, float to_day);
};

#endif /* BW1_DECOMP_LH3D_SKY_INCLUDED_H */
