#ifndef BW1_DECOMP_LAND_ALIGNEMENT_INCLUDED_H
#define BW1_DECOMP_LAND_ALIGNEMENT_INCLUDED_H

class GLandAlignement
{
public:
	// Windows uses no instance: Open's option is caller-cleaned on the stack; results are full EAX.
	// BW1W120 005e1d10 GLandAlignement::Open(unsigned int)
	static unsigned int Open(unsigned int options);
	// BW1W120 005e1db0
	static unsigned int Close();
	// BW1W120 00bf3380. TODO: Original member name and data split ownership are unrecovered.
	static float VisualTime;
	static void  DrawSky(); // 005e2160
	// BW1W120 005e1fe0 BW1M100 10083560 GLandAlignement::UpdateTime(float, float)
	static void UpdateTime(float time_increment, float delta_time);
};

#endif /* BW1_DECOMP_LAND_ALIGNEMENT_INCLUDED_H */
