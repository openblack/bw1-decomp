#ifndef BW1_DECOMP_LH_NET_BASE_INCLUDED_H
#define BW1_DECOMP_LH_NET_BASE_INCLUDED_H

#include <stdint.h>

#include <Lionhead/LHMultiplayer/ver4.0/LHNetUser.h> /* For struct LH_USER_ID */

struct LHLobby;
class LHSession;
class LHTransport;
class LHTransportInfo;
struct LHNetUser;
struct SetupBox;

class LHNetBase
{
public:
	// Descriptive name; original constructor at 005ea7b0.
	// Declaration only until the original full storage extent/split is verified.
	// BW1W120 00d204a8
	static LHNetBase Instance;
	// Separate allocation used by LHMessageBox; descriptive name.
	// BW1W120 00d2054c
	static SetupBox* MessageBox;

	LHLobby*     Lobby; /* 0x0 */
	LHLobby*     field_0x4;
	LHLobby*     field_0x8;
	uint32_t     field_0xc;
	uint32_t     field_0x10;
	uint32_t     field_0x14;
	uint32_t     field_0x18;
	LHTransport* Transport; /* 0x1c */
	uint32_t     field_0x20;
	LHSession*   Session; /* 0x24 */
	LHLobby*     field_0x28;
	LHNetUser*   User; /* 0x2c */
	uint32_t     State;
	uint32_t     field_0x34;
	uint32_t     field_0x38;
	uint32_t     field_0x3c;
	char         UserName[100]; /* 0x40, GetUserNameA bound and constructor memset. */

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

// The next Windows object at 00d2054c is a separately allocated SetupBox pointer.
// This is a verified prefix boundary, not an allocation-size assertion.

#endif
