#ifndef BW1_DECOMP_LH3D_SKY_INCLUDED_H
#define BW1_DECOMP_LH3D_SKY_INCLUDED_H

class LH3DSky
{
public:
	// Original Mac import
	// BW1W120 00fa2760 BW1M119 012d3540 (LHCombined Release)
	static int g_b_we_are_inside_citadel;
	// BW1W120 00fa2768 BW1M119 012d3524 (LHCombined Release)
	static int LightningGlow;
	// BW1W120 00fa26a4 BW1M119 012d3528 (LHCombined Release)
	static unsigned long topcol;
	// BW1W120 0086a160 BW1M119 01037b10 (LHCombined Release)
	static float Time2OldSkoolTime(float time);
	// BW1W120 00869fa0 BW1M119 010b2070 (LHCombined Release)
	static void SetDayNightTimes(float night, float dusk_start, float dusk_end, float day);
	// BW1W120 0086a1b0 BW1M119 01033e10 (LHCombined Release)
	static float Time2SkyType(float time);
	// BW1W120 0086bb60 BW1M119 01014060 (LHCombined Release)
	static void PostDrawSun();
	// BW1W120 0086c220 BW1M119 010af360 (LHCombined Release)
	static float ComputeAlphaEclairagePublique();
};

#endif /* BW1_DECOMP_LH3D_SKY_INCLUDED_H */
