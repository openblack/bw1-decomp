#ifndef BW1_DECOMP_S_LOBBY_BOX_INCLUDED_H
#define BW1_DECOMP_S_LOBBY_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

class GSLobbyBox : public DialogBoxBase
{
public:
	uint8_t field_0x10[0x2a4];

	// Override methods

	// BW1W120 00599740 BW1M119 015da130
	virtual void Init(uint32_t param_1, uint32_t param_2,
	                  void(__stdcall*)(int, SetupBox*, SetupControl*, int, int) param_3);
	// BW1W120 0059a250 BW1M119 015d9f10
	virtual void Destroy();
	// BW1W120 0059a0a0 BW1M119 015d9f70
	virtual void InitControls();
};

#endif /* BW1_DECOMP_S_LOBBY_BOX_INCLUDED_H */
