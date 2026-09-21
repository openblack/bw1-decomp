#ifndef BW1_DECOMP_P_SYS_EDITOR_INCLUDED_H
#define BW1_DECOMP_P_SYS_EDITOR_INCLUDED_H

class PSysEditorInterface
{
public:
	// BW1W120 0067d610 BW1M119 01093ae0
	static void ProcessFrameInputs();
	// BW1W120 0067d630 BW1M119 01090610
	static void ProcessGameTurn();
	// BW1W120 0067d620 BW1M119 010178a0
	static void Draw3D();
};

#endif /* BW1_DECOMP_P_SYS_EDITOR_INCLUDED_H */
