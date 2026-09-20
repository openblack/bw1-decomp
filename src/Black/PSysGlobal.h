#ifndef BW1_DECOMP_P_SYS_GLOBAL_INCLUDED_H
#define BW1_DECOMP_P_SYS_GLOBAL_INCLUDED_H

class PSysGlobal
{
public:
	static void DrawLoop(); // 0068f5e0
	// BW1W120 0068f750 BW1M100 1040f3a0
	static void InitializeOneTimeOnly();
	// BW1W120 0068f590 BW1M100 1008ef70 PSysGlobal::GameLoopStart(void)
	static void GameLoopStart();
	// BW1W120 0068f5b0 BW1M100 10083130 PSysGlobal::GameLoopEnd(void)
	static void GameLoopEnd();
	// BW1W120 0068f820 BW1M100 1040f260 PSysGlobal::OnClearMap(void)
	static void OnClearMap();
};

#endif /* BW1_DECOMP_P_SYS_GLOBAL_INCLUDED_H */
