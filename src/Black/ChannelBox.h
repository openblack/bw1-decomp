#ifndef BW1_DECOMP_CHANNEL_BOX_INCLUDED_H
#define BW1_DECOMP_CHANNEL_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

// Forward Declares

struct SetupList;

class ChannelBox : public DialogBoxBase
{
public:
	uint8_t    field_0x10[0xa7c];
	SetupList* ConditionList; /* 0xa8c */
	uint8_t    field_0xa90[0x34];
	bool       ConditionEnabled[15]; /* 0xac4 */

	// Override methods

	// BW1W120 0061bcd0 BW1M119 01396e20
	virtual void Init(uint32_t param_1, uint32_t param_2,
	                  void(__stdcall* param_3)(int, SetupBox*, SetupControl*, int, int));
	// BW1W120 0061ca50 BW1M119 01396dc0
	virtual void Destroy();
	// BW1W120 0061ca60 BW1M119 01396ad0
	virtual void InitControls();

	// Non-virtual methods

	// BW1W120 0061cc80 BW1M119 inlined
	void UpdateAll();
};

#endif /* BW1_DECOMP_CHANNEL_BOX_INCLUDED_H */
