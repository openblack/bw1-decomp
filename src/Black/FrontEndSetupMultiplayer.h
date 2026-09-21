#ifndef BW1_DECOMP_FRONT_END_SETUP_MULTIPLAYER_INCLUDED_H
#define BW1_DECOMP_FRONT_END_SETUP_MULTIPLAYER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

class SetupLandscapeBox : public DialogBoxBase
{
public:
	// Override methods

	// BW1W120 00546280 BW1M119 015d3c30
	virtual void Init(uint32_t param_1, uint32_t param_2,
	                  void(__stdcall* param_3)(int, SetupBox*, SetupControl*, int, int));
	// BW1W120 00546d10 BW1M119 015d3bd0
	virtual void Destroy();
	// BW1W120 0054a210 BW1M119 015d45e0
	virtual void InitSubDialogs();
	// BW1W120 00546d20 BW1M119 015d36b0
	virtual void InitControls();
};

#endif /* BW1_DECOMP_FRONT_END_SETUP_MULTIPLAYER_INCLUDED_H */
