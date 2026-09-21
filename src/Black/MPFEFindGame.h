#ifndef BW1_DECOMP_MPFE_FIND_GAME_INCLUDED_H
#define BW1_DECOMP_MPFE_FIND_GAME_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

class MPFEFindGame : public DialogBoxBase
{
public:
	// Override methods

	// BW1W120 0062f650 BW1M119 013adb40
	virtual void Init(uint32_t param_1, uint32_t param_2,
	                  void(__stdcall* param_3)(int, SetupBox*, SetupControl*, int, int));
	// BW1W120 0062f8c0 BW1M119 013adb10
	virtual void Destroy();
	// Vtable +0x20 at 00930900.
	// BW1W120 0062f8d0 BW1M119 013ad9c0
	virtual void InitControls();
};

#endif /* BW1_DECOMP_MPFE_FIND_GAME_INCLUDED_H */
