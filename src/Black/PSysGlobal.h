#ifndef BW1_DECOMP_P_SYS_GLOBAL_INCLUDED_H
#define BW1_DECOMP_P_SYS_GLOBAL_INCLUDED_H

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
};

#endif /* BW1_DECOMP_P_SYS_GLOBAL_INCLUDED_H */
