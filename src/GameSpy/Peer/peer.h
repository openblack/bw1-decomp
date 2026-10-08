#ifndef BW1_DECOMP_GAMESPY_PEER_INCLUDED_H
#define BW1_DECOMP_GAMESPY_PEER_INCLUDED_H

#include <GameSpy/CEngine/goaceng.h> /* For GServer */
#include <GameSpy/Chat/chat.h>       /* For CHAT */

#ifdef __cplusplus
extern "C"
{
#endif

#define PEER_ADD    0
#define PEER_UPDATE 1
#define PEER_REMOVE 2
#define PEER_CLEAR  3

	typedef enum
	{
		TitleRoom,
		GroupRoom,
		StagingRoom,
		NumRooms
	} RoomType;

	typedef enum
	{
		NormalMessage,
		ActionMessage,
		NoticeMessage
	} MessageType;

	typedef void* PEER;

	typedef int PEERBool;
#define PEERFalse 0
#define PEERTrue  1

	typedef void (*peerDisconnectedCallback)(PEER peer, const char* reason, void* param);
	typedef void (*peerRoomMessageCallback)(PEER peer, RoomType roomType, const char* nick, const char* message,
	                                        MessageType messageType, void* param);
	typedef void (*peerRoomUTMCallback)(PEER peer, RoomType roomType, const char* nick, const char* command,
	                                    const char* parameters, void* param);
	typedef void (*peerRoomNameChangedCallback)(PEER peer, RoomType roomType, void* param);
	typedef void (*peerPlayerMessageCallback)(PEER peer, const char* nick, const char* message, MessageType messageType,
	                                          void* param);
	typedef void (*peerPlayerUTMCallback)(PEER peer, const char* nick, const char* command, const char* parameters,
	                                      void* param);
	typedef void (*peerReadyChangedCallback)(PEER peer, const char* nick, PEERBool ready, void* param);
	typedef void (*peerGameStartedCallback)(PEER peer, unsigned int IP, const char* message, void* param);
	typedef void (*peerPlayerJoinedCallback)(PEER peer, RoomType roomType, const char* nick, void* param);
	typedef void (*peerPlayerLeftCallback)(PEER peer, RoomType roomType, const char* nick, void* param);
	typedef void (*peerKickedCallback)(PEER peer, RoomType roomType, const char* nick, const char* reason, void* param);
	typedef void (*peerNewPlayerListCallback)(PEER peer, RoomType roomType, void* param);
	typedef void (*peerPlayerChangedNickCallback)(PEER peer, RoomType roomType, const char* oldNick,
	                                              const char* newNick, void* param);
	typedef void (*peerPlayerInfoCallback)(PEER peer, const char* nick, unsigned int IP, int profileID, void* param);
	typedef void (*peerPingCallback)(PEER peer, const char* nick, int ping, void* param);
	typedef void (*peerCrossPingCallback)(PEER peer, const char* nick1, const char* nick2, int crossPing, void* param);
	typedef void (*peerGOABasicCallback)(PEER peer, PEERBool playing, char* outbuf, int maxlen, void* param);
	typedef void (*peerGOAInfoCallback)(PEER peer, PEERBool playing, char* outbuf, int maxlen, void* param);
	typedef void (*peerGOARulesCallback)(PEER peer, PEERBool playing, char* outbuf, int maxlen, void* param);
	typedef void (*peerGOAPlayersCallback)(PEER peer, PEERBool playing, char* outbuf, int maxlen, void* param);

	typedef struct PEERCallbacks
	{
		peerDisconnectedCallback      disconnected;
		peerRoomMessageCallback       roomMessage;
		peerRoomUTMCallback           roomUTM;
		peerRoomNameChangedCallback   roomNameChanged;
		peerPlayerMessageCallback     playerMessage;
		peerPlayerUTMCallback         playerUTM;
		peerReadyChangedCallback      readyChanged;
		peerGameStartedCallback       gameStarted;
		peerPlayerJoinedCallback      playerJoined;
		peerPlayerLeftCallback        playerLeft;
		peerKickedCallback            kicked;
		peerNewPlayerListCallback     newPlayerList;
		peerPlayerChangedNickCallback playerChangedNick;
		peerPlayerInfoCallback        playerInfo;
		peerPingCallback              ping;
		peerCrossPingCallback         crossPing;
		peerGOABasicCallback          GOABasic;
		peerGOAInfoCallback           GOAInfo;
		peerGOARulesCallback          GOARules;
		peerGOAPlayersCallback        GOAPlayers;
		void*                         param;
	} PEERCallbacks;

	typedef void (*peerNickErrorCallback)(PEER peer, int type, const char* nick, void* param);
	typedef void (*peerConnectCallback)(PEER peer, PEERBool success, void* param);
	typedef void (*peerJoinRoomCallback)(PEER peer, PEERBool success, RoomType roomType, void* param);
	typedef void (*peerListingGamesCallback)(PEER peer, PEERBool success, const char* name, GServer server,
	                                         PEERBool staging, int msg, int progress, void* param);
	typedef void (*peerEnumPlayersCallback)(PEER peer, PEERBool success, RoomType roomType, int index, const char* nick,
	                                        PEERBool host, void* param);

	PEER peerInitialize(PEERCallbacks* callbacks);
	void peerConnect(PEER peer, const char* nick, const char* user, const char* server, int port, int profileID,
	                 peerNickErrorCallback nickErrorCallback, peerConnectCallback connectCallback, void* param,
	                 PEERBool blocking);
	PEERBool peerIsConnected(PEER peer);
	PEERBool peerSetTitle(PEER peer, const char* title, const char* qrSecretKey, const char* engineName,
	                      const char* engineSecretKey, int engineMaxUpdates, PEERBool pingRooms[NumRooms],
	                      PEERBool crossPingRooms[NumRooms]);
	void peerDisconnect(PEER peer);
	void peerShutdown(PEER peer);
	void peerThink(PEER peer);
	CHAT peerGetChat(PEER peer);
	void peerJoinTitleRoom(PEER peer, peerJoinRoomCallback callback, void* param, PEERBool blocking);
	void peerJoinStagingRoom(PEER peer, GServer server, const char* password, peerJoinRoomCallback callback,
	                         void* param, PEERBool blocking);
	void peerCreateStagingRoom(PEER peer, const char* name, int maxPlayers, const char* password,
	                           peerJoinRoomCallback callback, void* param, PEERBool blocking);
	void peerLeaveRoom(PEER peer, RoomType roomType);
	void peerStartListingGames(PEER peer, peerListingGamesCallback callback, void* param);
	void peerStopListingGames(PEER peer);
	void peerMessageRoom(PEER peer, RoomType roomType, const char* message, MessageType messageType);
	const char* peerGetRoomName(PEER peer, RoomType roomType);
	const char* peerGetRoomChannel(PEER peer, RoomType roomType);
	void peerEnumPlayers(PEER peer, RoomType roomType, peerEnumPlayersCallback callback, void* param);
	void peerMessagePlayer(PEER peer, const char* nick, const char* message, MessageType messageType);
	void peerStopGame(PEER peer);
	void peerStateChanged(PEER peer);

#ifdef __cplusplus
}
#endif

#endif /* BW1_DECOMP_GAMESPY_PEER_INCLUDED_H */
