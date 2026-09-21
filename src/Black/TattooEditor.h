#ifndef BW1_DECOMP_TATTOO_EDITOR_INCLUDED_H
#define BW1_DECOMP_TATTOO_EDITOR_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

class TattooEditor : public DialogBoxBase
{
public:
	uint8_t field_0x10[0x3218];

	// Override methods

	// BW1W120 00542510 BW1M119 015c4900
	virtual void Init(uint32_t param_1, uint32_t param_2,
	                  void(__stdcall*)(int, SetupBox*, SetupControl*, int, int) param_3);
	// BW1W120 005427e0 BW1M119 015c48a0
	virtual void Destroy();
	// BW1W120 0053bd20 BW1M119 015ccbc0
	virtual bool CanESCOut();
	// BW1W120 005433e0 BW1M119 015c3740
	virtual void InitControls();
};

#endif /* BW1_DECOMP_TATTOO_EDITOR_INCLUDED_H */
