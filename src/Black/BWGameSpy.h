#ifndef BW1_DECOMP_BW_GAME_SPY_INCLUDED_H
#define BW1_DECOMP_BW_GAME_SPY_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <GameSpy/Peer/peer.h>                        /* For PEER, RoomType, PEERCallbacks */
#include <Lionhead/LHMultiplayer/ver4.0/LHDatabase.h> /* For struct DBInfo */
#include <Lionhead/LHMultiplayer/ver4.0/LHNetUser.h>  /* For struct LH_USER_ID */

#include "LayerCommunication.h" /* For struct LayerCommunication */

class BWGameSpy : public LayerCommunication
{
public:
	enum
	{
		MAX_BANS = 64,
		BAN_NAME_SIZE = 32,
		CHANNEL_NAME_SIZE = 128,
		CHAT_SERVER_SIZE = 256,
	};

	// BW1W120 00c599fc
	static BWGameSpy Instance;
	// BW1W120 009cd4f0
	static PEERCallbacks Callbacks;
	// BW1W120 00c599f4
	static CHAT Chat;
	// BW1W120 00c599f8
	static int NumPlayersEnumerated;
	// BW1W120 00c59a00
	static RoomType CurrentRoom;
	// BW1W120 00c59a04
	static GServer CurrentServer;
	// BW1W120 00c59a14
	static int NumPlayersExpected;
#ifndef VERSION_BW1W100
	// BW1W120 00c59a1c
	static bool Locked;
#endif
	// BW1W120 00c59a20
	static char ChatServer[CHAT_SERVER_SIZE];
	// BW1W120 00c59104
	static char BanChannel[CHANNEL_NAME_SIZE];
	// BW1W120 00c59184
	static char Bans[MAX_BANS][BAN_NAME_SIZE];
	// BW1W120 00c59b20
	static int NumBans;
#ifndef VERSION_BW1W100
	// BW1W120 00c59988
	static CHATChannelMode ChannelMode;
#endif

	// Override methods

	// BW1W120 0043de80 BW1M119 015d8a20
	virtual void SendMessageA(wchar_t* message, bool private_message, MPFEPlayerDetails* player);
	// BW1W120 0043df70 BW1M119 015d8930
	virtual void SendMessageA(const char* message, bool private_message, MPFEPlayerDetails* player);
	// BW1W120 0043e030 BW1M119 015d8800
	virtual void LeaveMainRoom();
	// BW1W120 0043dff0 BW1M119 015d8890
	virtual void LeaveGameChannel();
	// BW1W120 0043e060 BW1M119 015d87a0
	virtual void BeginPlayerEnumeration();
	// BW1W120 004403d0 BW1M119 015d54e0
	virtual void PopulateChannelPlayers(MPFEChannelDetails* channel);
	// BW1W120 0043ddb0 BW1M119 015d5000
	virtual void Process() { Think(); }
	// BW1W120 0043e890 BW1M119 015d7d10
	virtual bool InitialiseLobbyState();
	// BW1W120 0043ff10 BW1M119 015d5930
	virtual void CreateOrJoinRoom(wchar_t* name, wchar_t* password, MPFEChannelDetails* channel);
	// BW1W120 0043e070 BW1M119 015d8720
	virtual void StartGame();
	// BW1W120 0043e290 BW1M119 015d8080
	virtual bool Connect();
	// BW1W120 0043e920 BW1M119 015d7c70
	virtual void Disconnect();
	// BW1W120 004404e0 BW1M119 015d5300
	virtual void KickPlayerFromChannel(MPFEPlayerDetails* player);
	// BW1W120 004405a0 BW1M119 015d51f0
	virtual void BanPlayerInChannel(MPFEPlayerDetails* player);
	// BW1W120 004404c0 BW1M119 015d5460
	virtual int GetNumPeopleInRoom();
#ifndef VERSION_BW1W100
	// BW1W120 00440680 BW1M119 015d5120
	virtual void LockChannel(bool lock);
	// BW1W120 00440700 BW1M119 015d5050
	virtual void SetInvite(bool invite);
#endif

	// Non-virtual methods

	// BW1W120 0043e520 BW1M119 015d7e20
	void Think();

	// Static methods

	// BW1W120 0043e0a0 BW1M119 015d86e0
	static void PlayerInfoCallback(PEER peer, const char* nick, unsigned int IP, int profileID, void* param);
	// BW1W120 0043e0b0 BW1M119 015d8690
	static void RoomUTMCallback(PEER peer, RoomType roomType, const char* nick, const char* command,
	                            const char* parameters, void* param);
	// BW1W120 0043e0c0 BW1M119 015d8640
	static void PlayerUTMCallback(PEER peer, const char* nick, const char* command, const char* parameters,
	                              void* param);
	// BW1W120 0043e0d0 BW1M119 015d8560
	static void PlayerKickedCallback(PEER peer, RoomType roomType, const char* nick, const char* reason, void* param);
	// BW1W120 0043e180 BW1M119 015d8510
	static void NewPlayerListCallback(PEER peer, RoomType roomType, void* param);
	// BW1W120 0043e190 BW1M119 015d84c0
	static void RoomNameChangedCallback(PEER peer, RoomType roomType, void* param);
	// BW1W120 0043e1a0 BW1M119 015d83e0
	static bool IsOOSChannel(MPFEChannelDetails* channel);
	// BW1W120 0043e960 BW1M119 015d7bc0
	static void DisconnectedCallback(PEER peer, const char* reason, void* param);
	// BW1W120 0043ea50 BW1M119 015d7a10
	static void PlayerMessageCallback(PEER peer, const char* nick, const char* message, MessageType messageType,
	                                  void* param);
	// BW1W120 0043ec50 BW1M119 015d7860
	static void RoomMessageCallback(PEER peer, RoomType roomType, const char* nick, const char* message,
	                                MessageType messageType, void* param);
	// BW1W120 0043ed50 BW1M119 015d7820
	static void ReadyChangedCallback(PEER peer, const char* nick, PEERBool ready, void* param);
	// BW1W120 0043ed60 BW1M119 015d7750
	static void PlayerJoinedCallback(PEER peer, RoomType roomType, const char* nick, void* param);
	// BW1W120 0043edb0 BW1M119 015d7610
	static void PlayerLeftCallback(PEER peer, RoomType roomType, const char* nick, void* param);
	// BW1W120 0043ee70 BW1M119 015d75c0
	static void PlayerChangedNickCallback(PEER peer, RoomType roomType, const char* oldNick, const char* newNick,
	                                      void* param);
	// BW1W120 0043ee80 BW1M119 015d7570
	static void PingCallback(PEER peer, const char* nick, int ping, void* param);
	// BW1W120 0043ee90 BW1M119 015d7420
	static void CrossPingCallback(PEER peer, const char* nick1, const char* nick2, int crossPing, void* param);
	// BW1W120 0043ef30 BW1M119 015d7320
	static void RoomJoined(RoomType roomType);
	// BW1W120 0043f090 BW1M119 015d6f50
	static void GetNameFromServerString(LH_USER_ID id, char* name);
	// BW1W120 0043f230 BW1M119 015d6df0
	static void EnumPlayersCB(PEER peer, PEERBool success, RoomType roomType, int index, const char* nick,
	                          PEERBool host, void* param);
	// BW1W120 0043f2f0 BW1M119 015d6c70
	static void PlayerListChanged(RoomType roomType);
	// BW1W120 0043f360 BW1M119 015d6b10
	static void JoinCallback(PEER peer, PEERBool success, RoomType roomType, void* param);
	// BW1W120 0043f440 BW1M119 015d6a80
	static void ListingGamesCallback(PEER peer, PEERBool success, const char* name, GServer server, PEERBool staging,
	                                 int msg, int progress, void* param);
	// BW1W120 0043f5e0 BW1M119 015d6430
	static void ListGame(GServer server, PEERBool staging, int msg);
	// BW1W120 0043fa10 BW1M119 015d62e0
	static void GOABasicCallback(PEER peer, PEERBool playing, char* outbuf, int maxlen, void* param);
	// BW1W120 0043fb20 BW1M119 015d6160
	static void GOAInfoCallback(PEER peer, PEERBool playing, char* outbuf, int maxlen, void* param);
	// BW1W120 0043fc20 BW1M119 015d6120
	static void GOARulesCallback(PEER peer, PEERBool playing, char* outbuf, int maxlen, void* param);
	// BW1W120 0043fc30 BW1M119 015d5eb0
	static void GOAPlayersCallback(PEER peer, PEERBool playing, char* outbuf, int maxlen, void* param);
	// BW1W120 0043fde0 BW1M119 015d5e00
	static void NickErrorCallback(PEER peer, int type, const char* nick, void* param);
	// BW1W120 0043fe30 BW1M119 015d5c60
	static void ConnectCallback(PEER peer, PEERBool success, void* param);
	// BW1W120 0043fef0 BW1M119 015d5c20
	static void GameStartedCallback(PEER peer, unsigned int IP, const char* message, void* param);
	// Empty; RoomJoined calls it for the title room. Not in the Mac build, whose linker strips it.
	// BW1W120 0043ff00 BW1M119 null
	static void EnterTitleRoom();
	// BW1W120 00440140 BW1M119 015d5840
	static void EnumBanCallback(CHAT chat, CHATBool success, const char* channel, int numBans, const char** bans,
	                            void* param);
	// BW1W120 004401f0 BW1M119 015d5620
	static void EnterGameRoom(bool host, wchar_t* name);
};

#endif /* BW1_DECOMP_BW_GAME_SPY_INCLUDED_H */
