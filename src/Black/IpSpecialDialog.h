#ifndef BW1_DECOMP_IP_SPECIAL_DIALOG_INCLUDED_H
#define BW1_DECOMP_IP_SPECIAL_DIALOG_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

class IPSpecialDialog : public DialogBoxBase
{
public:
	// Override methods

	// BW1W120 005dd4a0 BW1M100 100fdfa0 IPSpecialDialog::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
	virtual void Init(uint32_t param_1, uint32_t param_2,
	                  void(__stdcall*)(int, SetupBox*, SetupControl*, int, int) param_3);
	// BW1W120 005dd620 BW1M100 100fdf50 IPSpecialDialog::Destroy(void)
	virtual void Destroy();
};

#endif /* BW1_DECOMP_IP_SPECIAL_DIALOG_INCLUDED_H */
