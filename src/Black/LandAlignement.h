#ifndef BW1_DECOMP_LAND_ALIGNEMENT_INCLUDED_H
#define BW1_DECOMP_LAND_ALIGNEMENT_INCLUDED_H

class GLandAlignement
{
public:
	// BW1W120 005e1d10 unsigned int GLandAlignement::Open(unsigned int)
	static unsigned int Open(unsigned int options);
	// BW1W120 005e1db0 unsigned int GLandAlignement::Close(void)
	static unsigned int Close();
	// BW1W120 00bf3380. TODO: Original member name and data split ownership are unrecovered.
	static float VisualTime;
	// BW1W120 005e2160 void GLandAlignement::DrawSky(void)
	static void DrawSky();
	// BW1W120 005e1fe0 BW1M100 10083560 void GLandAlignement::UpdateTime(float, float)
	static void UpdateTime(float time_increment, float delta_time);
};

#endif /* BW1_DECOMP_LAND_ALIGNEMENT_INCLUDED_H */
