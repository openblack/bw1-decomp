#ifndef BW1_DECOMP_MPFE_CREATE_GAME_INCLUDED_H
#define BW1_DECOMP_MPFE_CREATE_GAME_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

class MPFECreateGame : public DialogBoxBase
{
public:
	// Override methods

	// BW1W120 0062a630 BW1M119 013a3760
	virtual void Init(uint32_t param_1, uint32_t param_2,
	                  void(__stdcall* param_3)(int, SetupBox*, SetupControl*, int, int));
	// BW1W120 0062ab00 BW1M119 013a3720
	virtual void Destroy();
	// Vtable +0x20 at 009307c8.
	// BW1W120 0062a370 BW1M119 013a3df0
	virtual void InitControls();
};

#endif /* BW1_DECOMP_MPFE_CREATE_GAME_INCLUDED_H */
