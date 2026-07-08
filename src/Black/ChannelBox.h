#ifndef BW1_DECOMP_CHANNEL_BOX_INCLUDED_H
#define BW1_DECOMP_CHANNEL_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

class ChannelBox : public DialogBoxBase
{
public:
	uint8_t field_0x10[0xac4];

	// Override methods

	// BW1W120 0061bcd0 BW1M100 1038f640 ChannelBox::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
	virtual void Init(uint32_t param_1, uint32_t param_2,
	                  void(__stdcall*)(int, SetupBox*, SetupControl*, int, int) param_3);
	// BW1W120 0061ca50 BW1M100 1038f5e0 ChannelBox::Destroy(void)
	virtual void Destroy();
	// BW1W120 0061ca60 BW1M100 1038f2f0 ChannelBox::InitControls(void)
	virtual void InitControls();
};

#endif /* BW1_DECOMP_CHANNEL_BOX_INCLUDED_H */
