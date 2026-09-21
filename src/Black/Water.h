#ifndef BW1_DECOMP_WATER_INCLUDED_H
#define BW1_DECOMP_WATER_INCLUDED_H

struct LH3DSprite;

class GWater
{
public:
	// Original Mac member name.
	// BW1W120 00eb9ab4 BW1M119 011e3d90 (LHCombined Release)
	static LH3DSprite* g_sprite_circle;
	// TODO: Descriptive name; Mac inlines initialization of g_circle,
	// g_sprite_circle and g_count_activated_circle into GGame's constructor.
	// BW1W120 0054ba40
	static void InitialiseCircles();
};

#endif /* BW1_DECOMP_WATER_INCLUDED_H */
