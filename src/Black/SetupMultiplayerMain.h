#ifndef BW1_DECOMP_SETUP_MULTIPLAYER_MAIN_INCLUDED_H
#define BW1_DECOMP_SETUP_MULTIPLAYER_MAIN_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

class SetupMultiplayerMain : public DialogBoxBase
{
public:
	// Override methods

	// BW1W120 00549b60 BW1M119 015d4a80
	virtual void Init(uint32_t param_1, uint32_t param_2,
	                  void(__stdcall*)(int, SetupBox*, SetupControl*, int, int) param_3);
	// BW1W120 00549f80 BW1M119 015d4a20
	virtual void Destroy();
	// BW1W120 0054a180 BW1M119 015d46a0
	virtual void InitSubDialogs();
	// BW1W120 00549f90 BW1M119 015d4920
	virtual void InitControls();
};

#endif /* BW1_DECOMP_SETUP_MULTIPLAYER_MAIN_INCLUDED_H */
