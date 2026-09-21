#ifndef BW1_DECOMP_LOBBY_BOX_INCLUDED_H
#define BW1_DECOMP_LOBBY_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

class LobbyBox : public DialogBoxBase
{
public:
	uint8_t field_0x10[0x7c];

	// Override methods

	// BW1W120 005f5250 BW1M119 015de570
	virtual void Init(uint32_t param_1, uint32_t param_2,
	                  void(__stdcall* param_3)(int, SetupBox*, SetupControl*, int, int));
	// BW1W120 005f5a40 BW1M119 015de510
	virtual void Destroy();
	// BW1W120 005f5a50 BW1M119 015de3c0
	virtual void InitControls();
};

#endif /* BW1_DECOMP_LOBBY_BOX_INCLUDED_H */
