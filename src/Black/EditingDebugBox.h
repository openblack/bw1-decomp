#ifndef BW1_DECOMP_EDITING_DEBUG_BOX_INCLUDED_H
#define BW1_DECOMP_EDITING_DEBUG_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

class EditingDebugBox : public DialogBoxBase
{
public:
	// Override methods

	// BW1W120 0053d520 BW1M119 015ca010
	virtual void Init(uint32_t param_1, uint32_t param_2,
	                  void(__stdcall*)(int, SetupBox*, SetupControl*, int, int) param_3);
	// BW1W120 0053d6f0 BW1M119 015c9fb0
	virtual void Destroy();
	// BW1W120 0053d700 BW1M119 015c9f30
	virtual void InitControls();
};

#endif /* BW1_DECOMP_EDITING_DEBUG_BOX_INCLUDED_H */
