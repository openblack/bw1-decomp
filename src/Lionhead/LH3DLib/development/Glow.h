#ifndef BW1_DECOMP_GLOW_INCLUDED_H
#define BW1_DECOMP_GLOW_INCLUDED_H

// Forward Declares

struct LH3DColor;
struct LHPoint;

class GlowManager
{
public:
	// Non-virtual methods

	// BW1W120 0083d860 BW1M119 010cec40 (LHCombined Release)
	void DrawGlowAtPoint(LHPoint& point, LH3DColor& colour, float size);
	// BW1W120 0083dfe0 BW1M119 010cdc10 (LHCombined Release)
	void DrawWhiteGlow(LHPoint param_1, LHPoint param_2, float param_3, float param_4, float param_5, float param_6,
	                   unsigned long colour);
};

#endif /* BW1_DECOMP_GLOW_INCLUDED_H */
