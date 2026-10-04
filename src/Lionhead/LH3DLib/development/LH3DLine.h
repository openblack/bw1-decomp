#ifndef BW1_DECOMP_LH3D_LINE_INCLUDED_H
#define BW1_DECOMP_LH3D_LINE_INCLUDED_H

struct LH3DColor;
struct LHPoint;

class LH3DLine
{
public:
	// Static methods

	// BW1W120 008398a0 BW1M119 01060720 (LHCombined Release)
	static void AddLine(const LHPoint& from, const LHPoint& to, LH3DColor* from_color, LH3DColor* to_color);
	// BW1W120 008398b0 BW1M119 0100a5c0 (LHCombined Release)
	static void DrawAllPreStored();
};

#endif /* BW1_DECOMP_LH3D_LINE_INCLUDED_H */
