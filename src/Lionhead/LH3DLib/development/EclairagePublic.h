#ifndef BW1_DECOMP_ECLAIRAGE_PUBLIC_INCLUDED_H
#define BW1_DECOMP_ECLAIRAGE_PUBLIC_INCLUDED_H

// Forward Declares

struct LHPoint;

struct EclairagePublic
{
	// Static methods

	// BW1W120 00823240 BW1M119 010a25f0 (LHCombined Release)
	static EclairagePublic* Create(LHPoint* pos, long param_2);

	// Non-virtual methods

	// BW1W120 00823420 BW1M119 0107d080 (LHCombined Release)
	void Release();
};

#endif /* BW1_DECOMP_ECLAIRAGE_PUBLIC_INCLUDED_H */
