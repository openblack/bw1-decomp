#ifndef BW1_DECOMP_LOBBY_BOX_INCLUDED_H
#define BW1_DECOMP_LOBBY_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <uchar.h> /* For char16_t */

#include <Lionhead/LHLib/ver5.0/LHLinkedList.h> /* For LHLinkedList */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

class LobbyBox : public DialogBoxBase
{
public:
	// BW1W120 00d31af4
	static LobbyBox* Instance;

	uint8_t                 field_0x10[0x10];
	bool                    ControlsInitialised; /* 0x20 */
	bool                    MapChanged;
	uint8_t                 field_0x22[0x5a];
	bool                    field_0x7c;
	uint8_t                 field_0x7d[0x7];
	LHLinkedList<char16_t*> Users; /* 0x84 */

	// Override methods

	// BW1W120 005f5250 BW1M119 015de570
	virtual void Init(uint32_t background_style, uint32_t tall_background,
	                  void(__stdcall* callback)(int, SetupBox*, SetupControl*, int, int));
	// BW1W120 005f5a40 BW1M119 015de510
	virtual void Destroy();
	// BW1W120 005f5a50 BW1M119 015de3c0
	virtual void InitControls();

	// BW1W120 005f5fb0 BW1M119 015dd220
	static void __stdcall ControlCallback(int message, SetupBox* box, SetupControl* control, int x, int y);

	// BW1W120 005f80c0 BW1M119 015dafe0
	void LeaveGameState();
	// BW1W120 005f5eb0 BW1M119 015ddd40
	void SetUserColours();
	// BW1W120 005f5da0 BW1M119 015ddee0
	void SendSecretChatMessage(const char* tag, char* text, char* recipient);
	// BW1W120 inlined BW1M119 015de080
	void SendMapsPresentString();
	// BW1W120 005f5b50 BW1M119 015de130
	void SendMessageA();

	// BW1W120 inlined
	LobbyBox()
	{
		MapChanged = false;
		field_0x7c = false;
	}

	// BW1W120 inlined
	~LobbyBox() {}
};

#endif /* BW1_DECOMP_LOBBY_BOX_INCLUDED_H */
