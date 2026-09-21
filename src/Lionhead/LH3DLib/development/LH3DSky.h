#ifndef BW1_DECOMP_LH3D_SKY_INCLUDED_H
#define BW1_DECOMP_LH3D_SKY_INCLUDED_H

class LH3DSky
{
public:
	// Original Mac import
	// BW1W120 00fa2760 BW1M119 012d3540 (LHCombined Release)
	static int g_b_we_are_inside_citadel;
	// BW1W120 00869fa0 BW1M119 010b2070 (LHCombined Release)
	static void SetDayNightTimes(float night, float dusk_start, float dusk_end, float day);
};

#endif /* BW1_DECOMP_LH3D_SKY_INCLUDED_H */
