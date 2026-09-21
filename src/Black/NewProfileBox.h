#ifndef BW1_DECOMP_NEW_PROFILE_BOX_INCLUDED_H
#define BW1_DECOMP_NEW_PROFILE_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

class NewProfileBox : public DialogBoxBase
{
public:
	uint8_t field_0x10[0x14];

	// Override methods

	// BW1W120 0053ce80 BW1M119 015ca7b0
	virtual void Init(uint32_t param_1, uint32_t param_2,
	                  void(__stdcall*)(int, SetupBox*, SetupControl*, int, int) param_3);
	// BW1W120 0053d150 BW1M119 015ca750
	virtual void Destroy();
	// BW1W120 0053bd10 BW1M119 015ccca0
	virtual bool CanESCOut();
	// BW1W120 0053d160 BW1M119 015ca650
	virtual void InitControls();
};

#endif /* BW1_DECOMP_NEW_PROFILE_BOX_INCLUDED_H */
