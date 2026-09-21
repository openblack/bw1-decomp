#ifndef BW1_DECOMP_SETUP_ONLINE_LANDSCAPES_INCLUDED_H
#define BW1_DECOMP_SETUP_ONLINE_LANDSCAPES_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

class SetupOnlineLandscapes : public DialogBoxBase
{
public:
	// Override methods

	// BW1W120 00547ff0 BW1M119 015d2610
	virtual void Init(uint32_t param_1, uint32_t param_2,
	                  void(__stdcall*)(int, SetupBox*, SetupControl*, int, int) param_3);
	// BW1W120 005482a0 BW1M119 015d25a0
	virtual void Destroy();
	// BW1W120 00549910 BW1M119 015d09e0
	virtual void Show();
	// BW1W120 005482b0 BW1M119 015d2540
	virtual void InitControls();
};

#endif /* BW1_DECOMP_SETUP_ONLINE_LANDSCAPES_INCLUDED_H */
