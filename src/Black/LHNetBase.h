#ifndef BW1_DECOMP_LH_NET_BASE_INCLUDED_H
#define BW1_DECOMP_LH_NET_BASE_INCLUDED_H

#include <stdint.h>

#include <Lionhead/LHMultiplayer/ver4.0/LHMPPacketSave.h> /* For struct LHReplayPacketInfo, enum LH_PACKET_SOURCE */
#include <Lionhead/LHMultiplayer/ver4.0/LHNetUser.h>      /* For struct LH_USER_ID */

class LHLobby;
class LHLobbyChannel;
class LHSession;
class LHTransport;
class LHTransportInfo;
class LHNetUser;
struct SetupBox;

enum LH_NET_STATE
{
	LH_NET_STATE_INTERNET = 1,
	LH_NET_STATE_LOCAL_LOBBY = 2,
};

class LHNetBase
{
public:
	// BW1W120 00d204a8
	static LHNetBase Instance;
	// BW1W120 00d2054c
	static SetupBox* MessageBox;

	LHLobby*           Lobby; /* 0x0 */
	LHLobby*           InternetLobby;
	LHLobby*           field_0x8;
	uint32_t           field_0xc;
	LHReplayPacketInfo ReplayInfo; /* 0x10 */
	LHTransport*       Transport;
	LHLobbyChannel*    Channel;
	LHSession*         Session;
	LHLobby*           CurrentLobby;
	LHNetUser*         User;
	LH_NET_STATE       State;
	uint32_t           field_0x34;
	uint32_t           field_0x38;
	void*              Peer;
	char               UserName[100];

	// BW1W120 005ea980 BW1M119 0137e440
	void Shutdown();
	// BW1W120 005eb970 BW1M119 0137d250
	static void UpdateUserData();
	// BW1W120 005ebaf0 BW1M119 0137cd50
	void StartAGame(LH_PACKET_SOURCE source);
	// BW1W120 005eb120
	void Ping(LHTransportInfo* info);
	// BW1W120 005eab10 BW1M119 0137e360
	void SendSpecial(char16_t* text);
	// BW1W120 005eab60 BW1M119 0137e260
	char16_t* AdjustMessage(char16_t* text);
	// BW1W120 005eabe0 BW1M119 0137de30
	void Chat(LH_USER_ID user_id, char16_t* text, LHTransportInfo* transport_info);
	// BW1W120 005eb470 BW1M119 0137d870
	void SendIAmHere(LHTransportInfo* transport_info);
	// BW1W120 005ebd20 BW1M119 0137cbc0
	int WaitUntilGameLoopStarted();
};

// BW1W120 005ea750 BW1M119 0137e980
void RunWebPage(const char* url);

#endif
