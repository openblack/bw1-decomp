#ifndef BW1_DECOMP_SOFT_TRI_INCLUDED_H
#define BW1_DECOMP_SOFT_TRI_INCLUDED_H

// A software triangle rasteriser.
struct SoftTri
{
	// BW1W120 00c39b0c BW1M119 011d119c (LHCombined Release)
	static int CLIPY;
	// BW1W120 00faa7cc BW1M119 012d236c (LHCombined Release)
	static int maxy;
	// BW1W120 00faa7d0 BW1M119 012d2370 (LHCombined Release)
	static int miny;

	// BW1W120 0087ff70 BW1M119 0100df70 (LHCombined Release)
	static void __fastcall addedge(float x1, int y1, float x2, int y2);
	// BW1W120 00880050 BW1M119 0100d930 (LHCombined Release)
	static void __fastcall rendertri(void* buffer, int pitch, int color);
};

#endif /* BW1_DECOMP_SOFT_TRI_INCLUDED_H */
