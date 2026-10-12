#ifndef BW1_DECOMP_P_SYS_EDITOR_INCLUDED_H
#define BW1_DECOMP_P_SYS_EDITOR_INCLUDED_H

#include <chlasm/LHKeyBoard.h> /* For enum LH_KEY */
#include <re_common.h>         /* For bool32_t */

class PSysEditorInterface
{
public:
	// BW1W120 0067d610 BW1M119 01093ae0
	static void ProcessFrameInputs();
	// BW1W120 0067d630 BW1M119 01090610
	static void ProcessGameTurn();
	// BW1W120 0067d620 BW1M119 010178a0
	static void Draw3D();
	// BW1W120 0067d5d0 BW1M119 013fb240
	static bool32_t PCInput(LH_KEY key, unsigned short modifier);
};

#endif /* BW1_DECOMP_P_SYS_EDITOR_INCLUDED_H */
