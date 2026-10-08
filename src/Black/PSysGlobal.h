#ifndef BW1_DECOMP_P_SYS_GLOBAL_INCLUDED_H
#define BW1_DECOMP_P_SYS_GLOBAL_INCLUDED_H

// Forward Declares

struct LHPoint;
class Object;

class PSysGlobal
{
public:
	static void DrawLoop(); // 0068f5e0
	// BW1W120 0068f750 BW1M119 01418710
	static void InitializeOneTimeOnly();
	// BW1W120 0068f590 BW1M119 01091210
	static void GameLoopStart();
	// BW1W120 0068f5b0 BW1M119 01085520
	static void GameLoopEnd();
	// BW1W120 0068f820 BW1M119 014185d0
	static void OnClearMap();
	// BW1W120 00681230 BW1M119 013fe990
	static void ExplodeObjectMesh(Object* object, bool param_2);
	// BW1W120 00681260 BW1M119 013fe770
	static void ExplodeObjectMesh(Object* object, const LHPoint& point, float param_3, float param_4, bool param_5);
};

#endif /* BW1_DECOMP_P_SYS_GLOBAL_INCLUDED_H */
