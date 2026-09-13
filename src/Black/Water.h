#ifndef BW1_DECOMP_WATER_INCLUDED_H
#define BW1_DECOMP_WATER_INCLUDED_H

class GWater
{
public:
	// BW1W120 0054ba40. TODO: Descriptive name; Mac inlines initialization of g_circle,
	// g_sprite_circle and g_count_activated_circle into GGame's constructor.
	static void InitialiseCircles();
};

#endif /* BW1_DECOMP_WATER_INCLUDED_H */
