#ifndef BW1_DECOMP_LH_NET_BASE_INCLUDED_H
#define BW1_DECOMP_LH_NET_BASE_INCLUDED_H

#include <stdint.h>

#include <Lionhead/LHMultiplayer/ver4.0/LHNetUser.h> /* For struct LH_USER_ID */

class LHLobby;
class LHSession;
class LHTransport;
class LHTransportInfo;
class LHNetUser;
struct SetupBox;

class LHNetBase
{
public:
	// BW1W120 00d204a8
	static LHNetBase Instance;
	// BW1W120 00d2054c
	static SetupBox* MessageBox;

	LHLobby*     Lobby; /* 0x0 */
	LHLobby*     field_0x4;
	LHLobby*     field_0x8;
	uint32_t     field_0xc;
	uint32_t     field_0x10;
	uint32_t     field_0x14;
	uint32_t     field_0x18;
	LHTransport* Transport;
	uint32_t     field_0x20;
	LHSession*   Session;
	LHLobby*     field_0x28;
	LHNetUser*   User;
	uint32_t     State;
	uint32_t     field_0x34;
	uint32_t     field_0x38;
	void*        Peer;
	char         UserName[100];

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
};

#endif
