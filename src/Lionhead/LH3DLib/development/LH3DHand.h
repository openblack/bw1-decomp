#ifndef BW1_DECOMP_LH3D_HAND_INCLUDED_H
#define BW1_DECOMP_LH3D_HAND_INCLUDED_H

struct Vertex3D;

class LH3DHand
{
public:
	// Static methods

	// BW1W120 008631d0 BW1M119 01044730 (LHCombined Release)
	static void Init();
	// BW1W120 008629d0 BW1M119 01044ad0 (LHCombined Release)
	static void __fastcall AddEdge(Vertex3D* a, Vertex3D* b);
	// BW1W120 00863030 BW1M119 01044810 (LHCombined Release)
	static void Draw();
};

#endif /* BW1_DECOMP_LH3D_HAND_INCLUDED_H */
