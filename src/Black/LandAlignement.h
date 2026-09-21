#ifndef BW1_DECOMP_LAND_ALIGNEMENT_INCLUDED_H
#define BW1_DECOMP_LAND_ALIGNEMENT_INCLUDED_H

class GLandAlignement
{
public:
	// TODO: Original member name and data split ownership are unrecovered.
	// BW1W120 00bf3380
	static float VisualTime;
	static void  DrawSky(); // 005e2160
	// BW1W120 005e1fe0 BW1M119 01085950
	static void UpdateTime(float time_increment, float delta_time);
};

#endif /* BW1_DECOMP_LAND_ALIGNEMENT_INCLUDED_H */
