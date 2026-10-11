#ifndef BW1_DECOMP_ARENA_LIGHT_INCLUDED_H
#define BW1_DECOMP_ARENA_LIGHT_INCLUDED_H

class ArenaLight
{
public:
	// Static data

	// BW1W120 00eb9960 BW1M119 011f38cc (LHCombined Release)
	static ArenaLight* g_cur_arena_light;
	// BW1W120 00eb9964 BW1M119 011f38c8 (LHCombined Release)
	static float g_land_fade;
};

#endif /* BW1_DECOMP_ARENA_LIGHT_INCLUDED_H */
