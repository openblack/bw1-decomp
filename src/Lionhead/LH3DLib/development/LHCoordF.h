#ifndef BW1_DECOMP_LH_COORD_F_INCLUDED_H
#define BW1_DECOMP_LH_COORD_F_INCLUDED_H

struct LHCoordF
{
	float x; /* 0x0 */
	float y;

	// BW1W120 inlined BW1M119 01333e70
	float X() const { return x; }
	// BW1W120 inlined BW1M119 01333ea0
	float Y() const { return y; }
	// BW1W120 inlined BW1M119 01095780
	void Set(float newX, float newY)
	{
		x = newX;
		y = newY;
	}
};

#endif /* BW1_DECOMP_LH_COORD_F_INCLUDED_H */
