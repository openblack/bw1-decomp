#ifndef BW1_DECOMP_LOADING_BOX_INCLUDED_H
#define BW1_DECOMP_LOADING_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

class LoadingBox : public DialogBoxBase
{
public:
	// Override methods

	// BW1W120 0053d4c0 BW1M100 105c34f0 LoadingBox::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
	virtual void Init(uint32_t param_1, uint32_t param_2,
	                  void(__stdcall*)(int, SetupBox*, SetupControl*, int, int) param_3);
	// BW1W120 0053d4f0 BW1M100 105c3490 LoadingBox::Destroy(void)
	virtual void Destroy();
	// BW1W120 0053d500 BW1M100 105c3450 LoadingBox::InitControls(void)
	virtual void InitControls();
};

#endif /* BW1_DECOMP_LOADING_BOX_INCLUDED_H */
