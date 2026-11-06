#ifndef BW1_DECOMP_S_LOBBY_BOX_INCLUDED_H
#define BW1_DECOMP_S_LOBBY_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <uchar.h> /* For char16_t */

#include <Lionhead/LHLib/ver5.0/LHLinkedList.h> /* For LHLinkedList */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

class GSLobbyBox : public DialogBoxBase
{
public:
	uint8_t                 field_0x10[0x10];
	bool                    ControlsInitialised; /* 0x20 */
	uint8_t                 field_0x21[0x253];
	LHLinkedList<char16_t*> Users; /* 0x274 */
	uint8_t                 field_0x27c[0x38];

	// Override methods

	// BW1W120 00599740 BW1M119 015da130
	virtual void Init(uint32_t background_style, uint32_t tall_background,
	                  void(__stdcall* callback)(int, SetupBox*, SetupControl*, int, int));
	// BW1W120 0059a250 BW1M119 015d9f10
	virtual void Destroy();
	// BW1W120 0059a0a0 BW1M119 015d9f70
	virtual void InitControls();

	// BW1W120 inlined
	~GSLobbyBox() {}
};

#endif /* BW1_DECOMP_S_LOBBY_BOX_INCLUDED_H */
