#ifndef BW1_DECOMP_CD_BOX_INCLUDED_H
#define BW1_DECOMP_CD_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

class CDBox : public DialogBoxBase
{
public:
	uint8_t field_0x10[0x24];

	// Override methods

	// BW1W120 00543d80 BW1M100 105bb960 CDBox::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
	virtual void Init(uint32_t param_1, uint32_t param_2,
	                  void(__stdcall*)(int, SetupBox*, SetupControl*, int, int) param_3);
	// BW1W120 00544040 BW1M100 105bb910 CDBox::Destroy(void)
	virtual void Destroy();
	// BW1W120 00544050 BW1M100 105bb850 CDBox::InitControls(void)
	virtual void InitControls();
};

#endif /* BW1_DECOMP_CD_BOX_INCLUDED_H */
