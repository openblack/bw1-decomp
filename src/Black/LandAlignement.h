#ifndef BW1_DECOMP_LAND_ALIGNEMENT_INCLUDED_H
#define BW1_DECOMP_LAND_ALIGNEMENT_INCLUDED_H

class GLandAlignement
{
public:
	// BW1W120 00bf3380. TODO: Original member name and data split ownership are unrecovered.
	static float VisualTime;
	static void  DrawSky(); // 005e2160
	// BW1W120 005e1fe0 BW1M100 10083560 GLandAlignement::UpdateTime(float, float)
	static void UpdateTime(float time_increment, float delta_time);
};

#endif /* BW1_DECOMP_LAND_ALIGNEMENT_INCLUDED_H */
