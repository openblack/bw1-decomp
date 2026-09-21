#ifndef BW1_DECOMP_LOGIN_BOX_INCLUDED_H
#define BW1_DECOMP_LOGIN_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

class LoginBox : public DialogBoxBase
{
public:
	uint8_t field_0x10[0x88c];

	// Override methods

	// BW1W120 00541040 BW1M119 015c58a0
	virtual void Init(uint32_t param_1, uint32_t param_2,
	                  void(__stdcall* param_3)(int, SetupBox*, SetupControl*, int, int));
	// BW1W120 005417f0 BW1M119 015c5870
	virtual void Destroy();
	// Vtable +0x20 at 008decb8.
	// BW1W120 00541840 BW1M119 015c53a0
	virtual void InitControls();

	// Constructors

	// BW1W120 00540260 BW1M119 inlined
	LoginBox();
};

#endif /* BW1_DECOMP_LOGIN_BOX_INCLUDED_H */
