#ifndef BW1_DECOMP_LH3D_SKY_INCLUDED_H
#define BW1_DECOMP_LH3D_SKY_INCLUDED_H

class LH3DSky
{
public:
	// BW1W120 00fa2760, original Mac import
	static int g_b_we_are_inside_citadel;
	// BW1W120 00869fa0 BW1M100 100b37d0 LH3DSky::SetDayNightTimes(float,float,float,float)
	static void SetDayNightTimes(float night, float dusk_start, float dusk_end, float day);
};

#endif /* BW1_DECOMP_LH3D_SKY_INCLUDED_H */
