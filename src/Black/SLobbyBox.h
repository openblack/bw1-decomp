#ifndef BW1_DECOMP_S_LOBBY_BOX_INCLUDED_H
#define BW1_DECOMP_S_LOBBY_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <uchar.h> /* For char16_t */

#include <GameSpy/Peer/peer.h>                  /* For RoomType, GServer */
#include <Lionhead/LHLib/ver5.0/LHLinkedList.h> /* For LHLinkedList */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

class LHSession;
typedef struct DArrayImplementation* DArray;
struct SetupBigButton;
struct SetupButton;
struct SetupCheckBox;
struct SetupEdit;
struct SetupList;
struct SetupStaticText;

struct GSLobbyBoxFileTransfer
{
	char     Nick[0x80];
	char*    Data;     /* 0x80 */
	char*    Position; /* 0x84 */
	int      Length;   /* 0x88 */
	int      Received; /* 0x8c */
	bool32_t Complete; /* 0x90 */
};
static_assert(sizeof(GSLobbyBoxFileTransfer) == 0x94, "Data type is of wrong size");

class GSLobbyBox : public DialogBoxBase
{
public:
	// BW1W120 00d09190
	static GSLobbyBox* Instance;

	uint32_t                field_0x10;
	uint32_t                field_0x14;
	uint32_t                field_0x18;
	SetupButton*            OnlineMapsButton;    /* 0x1c */
	bool                    ControlsInitialised; /* 0x20 */
	bool                    MapChanged;
	bool                    OnHold;
	uint8_t                 field_0x23;
	bool32_t                CreatingGame; /* 0x24 */
	char16_t                RoomName[0x100];
	SetupList*              GameList; /* 0x228 */
	SetupList*              ChatList;
	SetupList*              PlayerList;
	SetupButton*            CreateButton;
	SetupBigButton*         StartGameButton; /* 0x238 */
	SetupEdit*              MessageEdit;
	SetupEdit*              GameNameEdit;
	SetupEdit*              PasswordEdit;
	SetupBigButton*         BackButton; /* 0x248 */
	SetupButton*            GameSetupButton;
	SetupStaticText*        StatusText;
	uint32_t                field_0x254;
	SetupStaticText*        PasswordText; /* 0x258 */
	SetupStaticText*        TypeMessageText;
	SetupStaticText*        GameListText;
	SetupStaticText*        ChatRoomText;
	SetupStaticText*        PlayerListText; /* 0x268 */
	SetupEdit*              InfoEdit;
	SetupCheckBox*          SavePacketsCheckBox;
	LHLinkedList<char16_t*> PendingMessages; /* 0x274 */
	RoomType                CurrentRoom;
	char*                   SendBuffer; /* 0x280 */
	char*                   SendPosition;
	int                     SendRemaining;
	int                     SendInterval;
	uint32_t                NextSendTime; /* 0x290 */
	char*                   GameData;
	int                     GameDataLength;
	int                     NumPlayers;
	unsigned int            HostIP; /* 0x2a0 */
	LHSession*              HostSession;
	bool                    Hosting;
	uint8_t                 field_0x2a9[0x3];
	GServer                 SelectedServer;
	DArray                  FileTransfers; /* 0x2b0 */

	// Override methods

	// BW1W120 00599740 BW1M119 015da130
	virtual void Init(uint32_t background_style, uint32_t tall_background,
	                  void(__stdcall* callback)(int, SetupBox*, SetupControl*, int, int));
	// BW1W120 0059a250 BW1M119 015d9f10
	virtual void Destroy();
	// BW1W120 0059a0a0 BW1M119 015d9f70
	virtual void InitControls();

	// BW1W120 0059a2f0 BW1M119 null
	static void __stdcall ControlCallback(int message, SetupBox* box, SetupControl* control, int x, int y);

	// BW1W120 00599ef0 BW1M119 null
	void SendMapsPresentString();
	// BW1W120 00599fa0 BW1M119 null
	void SendSecretChatMessage(const char* tag, char* text, char* recipient);
	// BW1W120 0059a1d0 BW1M119 inlined
	void ReturnToTitleRoom();
	// BW1W120 0059a260 BW1M119 015d9e50
	void FreeInternals();
	// BW1W120 0059a2b0 BW1M119 inlined
	void FreeSendBuffer();
	// BW1W120 0059b260 BW1M119 null
	void SetCreateButtonText(char16_t* text, bool show);
	// BW1W120 0059b2b0 BW1M119 015d9d20
	void CancelButtonClick();
	// BW1W120 0059b360 BW1M119 null
	void SelectGame();
	// BW1W120 0059b4f0 BW1M119 015d9b80
	void PlayerListChanged(RoomType room);
	// BW1W120 0059b5d0 BW1M119 015d9ab0
	void RoomEntered(RoomType room);
	// BW1W120 0059b680 BW1M119 null
	void ReceiveChatMessage(const char* nick, char* message, int is_private);
	// BW1W120 0059bae0 BW1M119 015d9220
	void ListGame(GServer server, PEERBool staging, int message);
	// BW1W120 0059be30 BW1M119 null
	void SendMessageA();
	// BW1W120 0059c030 BW1M119 null
	void PlayerUTM(const char* nick, const char* command, const char* parameters);
	// BW1W120 0059c110 BW1M119 null
	void ResetFileTransfers();
	// BW1W120 0059c160 BW1M119 null
	void StartSendingCharacterFile();
	// BW1W120 0059c2b0 BW1M119 null
	void SendCharacterFileChunk();
	// BW1W120 0059c400 BW1M119 null
	void ReceiveFileStart(const char* nick, const char* parameters);
	// BW1W120 0059c500 BW1M119 null
	void ReceiveFileData(const char* nick, const char* parameters);
	// BW1W120 0059c620 BW1M119 null
	void ReceiveFileEnd(const char* nick, const char* parameters);
	// BW1W120 0059c760 BW1M119 null
	void ShowMessage(char16_t* text, SetupBox* box);
	// BW1W120 0059c7f0 BW1M119 null
	void StartSession();
	// BW1W120 0059cae0 BW1M119 015d8f80
	void LockInGameState(bool host, char16_t* name);
	// BW1W120 0059cc50 BW1M119 015d8cd0
	void LeaveGameState();

	// BW1W120 inlined
	~GSLobbyBox() {}
};
static_assert(sizeof(GSLobbyBox) == 0x2b4, "Data type is of wrong size");

#endif /* BW1_DECOMP_S_LOBBY_BOX_INCLUDED_H */
