#ifndef BW1_DECOMP_GOLDEN_SHOWER_INCLUDED_H
#define BW1_DECOMP_GOLDEN_SHOWER_INCLUDED_H

// Forward Declares

struct LHPoint;

class GoldenShower
{
public:
	// Static methods

	// BW1W120 006ca7a0 BW1M119 01480b60
	static GoldenShower* Create();

	// Non-virtual methods

	// BW1W120 006ca7d0 BW1M119 01480ae0
	void Release();
	// BW1W120 006ca910 BW1M119 0101cac0
	void SetPosition(const LHPoint& position);
	// BW1W120 006ca930 BW1M119 01022bc0
	void AddDrawing();
};

#endif /* BW1_DECOMP_GOLDEN_SHOWER_INCLUDED_H */
