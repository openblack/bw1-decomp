#ifndef BW1_DECOMP_LAND_ALIGNEMENT_INCLUDED_H
#define BW1_DECOMP_LAND_ALIGNEMENT_INCLUDED_H

class CloudInSky
{
public:
	// BW1W120 005e25c0 BW1M119 01043a80
	static void Draw();
};

class GLandAlignement
{
public:
	// TODO: Original member name and data split ownership are unrecovered.
	// BW1W120 00bf3380
	static float VisualTime;
	// BW1W120 00bf337c
	static float TargetAlignement;
	// BW1W120 005e1d10 BW1M119 0137f5a0
	static void Open(unsigned long seed);
	// BW1W120 005e1db0 BW1M119 0137f490
	static void Close();
	// BW1W120 005e2160 BW1M119 01085eb0
	static void DrawSky();
	// BW1W120 005e1fe0 BW1M119 01085950
	static void UpdateTime(float time_increment, float delta_time);
	// BW1W120 005e2240 BW1M119 0108e880
	static void __stdcall SetAlignement(float alignment);
};

#endif /* BW1_DECOMP_LAND_ALIGNEMENT_INCLUDED_H */
