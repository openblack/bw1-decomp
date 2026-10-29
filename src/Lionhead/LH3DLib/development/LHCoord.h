#ifndef BW1_DECOMP_LH_COORD_INCLUDED_H
#define BW1_DECOMP_LH_COORD_INCLUDED_H

#include <assert.h> /* For static_assert */

struct LHCoord
{
	int x; /* 0x0 */
	int y;

	// Constructors

	// BW1W120 inlined BW1M119 010202a0
	LHCoord() {}
	// BW1W120 inlined BW1M119 01014170
	LHCoord(long x, long y) : x(x), y(y) {}
	// BW1W120 inlined BW1M119 01071330
	LHCoord(const LHCoord* other);

	// BW1W120 007e5af0 BW1M119 011458c0 (LHCombined Release)
	// Defined out-of-line where the screen is in scope (LHWin.cpp); inlined at call sites.
	void AddMSWindowOffset();
	// BW1W120 inlined BW1M119 01014140
	long X() const { return x; }
	// BW1W120 inlined BW1M119 0101fcf0
	long Y() const { return y; }
	// BW1W120 inlined BW1M119 01020480
	void Set(long _x, long _y)
	{
		x = _x;
		y = _y;
	}
	// BW1W120 inlined BW1M119 01144c70 (LHCombined Release)
	void XSet(long _x) { x = _x; }
	// BW1W120 inlined BW1M119 01144be0 (LHCombined Release)
	void YSet(long _y) { y = _y; }
	// BW1W120 inlined BW1M119 011450f0 (LHCombined Release)
	void Add(long dx, long dy)
	{
		x += dx;
		y += dy;
	}
};

#endif /* BW1_DECOMP_LH_COORD_INCLUDED_H */
