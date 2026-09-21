#ifndef BW1_DECOMP_PROFILE_EDITOR_INCLUDED_H
#define BW1_DECOMP_PROFILE_EDITOR_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

class ProfileEditor : public DialogBoxBase
{
public:
	uint8_t field_0x10[0x48];

	// Override methods

	// BW1W120 0053dd30 BW1M119 015c93d0
	virtual void Init(uint32_t param_1, uint32_t param_2,
	                  void(__stdcall* param_3)(int, SetupBox*, SetupControl*, int, int));
	// BW1W120 0053e210 BW1M119 015c9370
	virtual void Destroy();
	// BW1W120 0053bd30 BW1M119 015ccc40
	virtual bool CanESCOut();
	// BW1W120 0053e380 BW1M119 015c8fb0
	virtual void InitControls();
};

#endif /* BW1_DECOMP_PROFILE_EDITOR_INCLUDED_H */
