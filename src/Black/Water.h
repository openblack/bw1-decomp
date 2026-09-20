#ifndef BW1_DECOMP_WATER_INCLUDED_H
#define BW1_DECOMP_WATER_INCLUDED_H

struct LH3DSprite;

class GWater
{
public:
	// BW1W120 00eb9ab4. Original Mac member name.
	static LH3DSprite* g_sprite_circle;
	// BW1W120 00eb9ab8. Original Mac member name; storage stays extracted.
	static int g_count_activated_circle;
	// BW1W120 00eb9ab0. Descriptive name for the per-frame ambient-wind displacement scale.
	static float CircleWindStep;
	// BW1W120 0054ba40 BW1M100 inlined void GWater::InitialiseCircles(void)
	static void InitialiseCircles();
};

#endif /* BW1_DECOMP_WATER_INCLUDED_H */
