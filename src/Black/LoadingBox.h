#ifndef BW1_DECOMP_LOADING_BOX_INCLUDED_H
#define BW1_DECOMP_LOADING_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

class LoadingBox : public DialogBoxBase
{
public:
	// Override methods

	// BW1W120 0053d4c0 BW1M119 015ca2b0
	virtual void Init(uint32_t param_1, uint32_t param_2,
	                  void(__stdcall*)(int, SetupBox*, SetupControl*, int, int) param_3);
	// BW1W120 0053d4f0 BW1M119 015ca250
	virtual void Destroy();
	// BW1W120 0053d500 BW1M119 015ca210
	virtual void InitControls();
};

#endif /* BW1_DECOMP_LOADING_BOX_INCLUDED_H */
