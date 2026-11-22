#ifndef BW1_DECOMP_LOBBY_BOX_INCLUDED_H
#define BW1_DECOMP_LOBBY_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <uchar.h> /* For char16_t */

#include <Lionhead/LHLib/ver5.0/LHLinkedList.h> /* For LHLinkedList */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

class LHLobby;
class LHLobbyChannel;
struct SetupBigButton;
struct SetupButton;
struct SetupCheckBox;
struct SetupEdit;
struct SetupList;
struct SetupStaticText;

enum LOBBY_BOX_CONTROL_ID
{
	LOBBY_BOX_CONTROL_ID_STATUS = 0,
	LOBBY_BOX_CONTROL_ID_GAME_LIST = 1,
	LOBBY_BOX_CONTROL_ID_CHAT_LIST = 2,
	LOBBY_BOX_CONTROL_ID_PLAYER_LIST = 3,
	LOBBY_BOX_CONTROL_ID_JOIN = 4,
	LOBBY_BOX_CONTROL_ID_DISCONNECT = 5,
	LOBBY_BOX_CONTROL_ID_REFRESH = 6,
	LOBBY_BOX_CONTROL_ID_CREATE = 7,
	LOBBY_BOX_CONTROL_ID_GAME_NAME = 8,
	LOBBY_BOX_CONTROL_ID_PASSWORD = 9,
	LOBBY_BOX_CONTROL_ID_MESSAGE = 10,
	LOBBY_BOX_CONTROL_ID_LEAVE = 11,
	LOBBY_BOX_CONTROL_ID_START_GAME = 12,
	LOBBY_BOX_CONTROL_ID_BACK = 14,
	LOBBY_BOX_CONTROL_ID_SAVE_PACKETS = 15,
	LOBBY_BOX_CONTROL_ID_GAME_SETUP = 16,
	LOBBY_BOX_CONTROL_ID_ONLINE_MAPS = 666,
	LOBBY_BOX_CONTROL_ID_INFO = 998,
	LOBBY_BOX_CONTROL_ID_TEXT = 999,
};

class LobbyBox : public DialogBoxBase
{
public:
	// BW1W120 00d31af4
	static LobbyBox* Instance;

	uint32_t                field_0x10;
	uint32_t                field_0x14;
	uint32_t                field_0x18;
	SetupButton*            OnlineMapsButton;    /* 0x1c */
	bool                    ControlsInitialised; /* 0x20 */
	bool                    MapChanged;
	uint8_t                 field_0x22[0x2];
	bool32_t                CreatingGame; /* 0x24 */
	bool32_t                Hosting;
	SetupList*              GameList; /* 0x2c */
	SetupList*              ChatList;
	SetupList*              PlayerList;
	SetupButton*            JoinButton; /* 0x38 */
	SetupButton*            RefreshButton;
	SetupButton*            CreateButton;
	SetupBigButton*         StartGameButton; /* 0x44 */
	SetupEdit*              MessageEdit;
	SetupEdit*              GameNameEdit;
	SetupEdit*              PasswordEdit; /* 0x50 */
	SetupBigButton*         BackButton;
	SetupButton*            GameSetupButton;
	SetupStaticText*        StatusText;
	uint32_t                field_0x60; /* 0x60 */
	SetupStaticText*        PasswordText;
	SetupStaticText*        TypeMessageText;
	SetupStaticText*        GameListText;
	SetupStaticText*        ChatRoomText; /* 0x70 */
	SetupStaticText*        PlayerListText;
	SetupEdit*              InfoEdit;
	bool                    OnHold;
	uint8_t                 field_0x7d[0x3];
	SetupCheckBox*          SavePacketsCheckBox; /* 0x80 */
	LHLinkedList<char16_t*> PendingMessages;     /* 0x84 */

	// BW1W120 005f5250 BW1M119 015de570
	virtual void Init(uint32_t background_style, uint32_t tall_background,
	                  void(__stdcall* callback)(int, SetupBox*, SetupControl*, int, int));
	// BW1W120 005f5a40 BW1M119 015de510
	virtual void Destroy();
	// BW1W120 005f5a50 BW1M119 015de3c0
	virtual void InitControls();

	// BW1W120 005f5fb0 BW1M119 015dd220
	static void __stdcall ControlCallback(int message, SetupBox* box, SetupControl* control, int x, int y);

	// BW1W120 005f5b50 BW1M119 015de130
	void SendMessageA();
	// BW1W120 005f5cf0 BW1M119 015de080
	void SendMapsPresentString();
	// BW1W120 005f5da0 BW1M119 015ddee0
	void SendSecretChatMessage(const char* tag, char* text, char* recipient);
	// BW1W120 005f5eb0 BW1M119 015ddd40
	void SetUserColours();
	// BW1W120 005f6a70 BW1M119 015dd0b0
	void Disconnect();
	// BW1W120 005f6b80 BW1M119 015dcea0
	void Connect();
	// BW1W120 005f6cf0 BW1M119 null
	void ShowMessage(char16_t* text, SetupBox* box);
	// BW1W120 005f6d80 BW1M119 015db950
	void ProcessNetEvents(int x, int y, SetupBox* box);
	// BW1W120 005f7d10 BW1M119 015db580
	void SelectLobby();
	// BW1W120 005f7f70 BW1M119 015db310
	void LockInGameState(bool locked, char16_t* name);
	// BW1W120 005f80c0 BW1M119 015dafe0
	void LeaveGameState();
	// BW1W120 005f8330 BW1M119 015da9d0
	void ResetUsers(LHLobby* lobby, LHLobbyChannel* channel);

	// BW1W120 inlined
	LobbyBox()
	{
		MapChanged = false;
		OnHold = false;
	}

	// BW1W120 inlined
	~LobbyBox() {}
};
static_assert(sizeof(LobbyBox) == 0x8c, "Data type is of wrong size");

#endif /* BW1_DECOMP_LOBBY_BOX_INCLUDED_H */
