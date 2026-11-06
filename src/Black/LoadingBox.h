#ifndef BW1_DECOMP_LOADING_BOX_INCLUDED_H
#define BW1_DECOMP_LOADING_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

class LoadingBox : public DialogBoxBase
{
public:
	// BW1W120 00cd0b28
	static LoadingBox* Instance;

	// BW1W120 0053d4c0 BW1M119 015ca2b0
	virtual void Init(uint32_t background_style, uint32_t tall_background,
	                  void(__stdcall* callback)(int, SetupBox*, SetupControl*, int, int));
	// BW1W120 0053d4f0 BW1M119 015ca250
	virtual void Destroy();
	// BW1W120 0053d500 BW1M119 015ca210
	virtual void InitControls();

	// BW1W120 0053d510 BW1M119 null
	static void __stdcall ControlCallback(int message, SetupBox* box, SetupControl* control, int data1, int data2);

	// BW1W120 inlined
	~LoadingBox() {}
};

static_assert(sizeof(LoadingBox) == 0x10, "LoadingBox size is incorrect");

#endif /* BW1_DECOMP_LOADING_BOX_INCLUDED_H */
