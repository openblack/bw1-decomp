#ifndef BW1_DECOMP_HISTORY_BOX_INCLUDED_H
#define BW1_DECOMP_HISTORY_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

class HistoryBox : public DialogBoxBase
{
public:
	uint8_t field_0x10[0xc];

	// Override methods

	// BW1W120 00545230 BW1M119 015c0920
	virtual void Init(uint32_t param_1, uint32_t param_2,
	                  void(__stdcall*)(int, SetupBox*, SetupControl*, int, int) param_3);
	// BW1W120 005453b0 BW1M119 015c08c0
	virtual void Destroy();
	// BW1W120 00545460 BW1M119 015c0710
	virtual bool WantsKeyControl();
	// BW1W120 00545470 BW1M119 015c0620
	virtual bool WantsMouseControl();
	// BW1W120 005454f0 BW1M119 015c05e0
	virtual bool CanESCOut();
	// BW1W120 005453c0 BW1M119 015c0880
	virtual void InitControls();
};

#endif /* BW1_DECOMP_HISTORY_BOX_INCLUDED_H */
