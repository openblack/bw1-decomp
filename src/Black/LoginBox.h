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

	// BW1W120 00541040 BW1M100 105beb60 LoginBox::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
	virtual void Init(uint32_t param_1, uint32_t param_2,
	                  void(__stdcall*)(int, SetupBox*, SetupControl*, int, int) param_3);
	// BW1W120 005417f0 BW1M100 105beb30 LoginBox::Destroy(void)
	virtual void Destroy();

	// Constructors

	// BW1W120 00540260 BW1M100 inlined LoginBox::LoginBox(void)
	LoginBox();
};

#endif /* BW1_DECOMP_LOGIN_BOX_INCLUDED_H */
