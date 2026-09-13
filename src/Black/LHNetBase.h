#ifndef BW1_DECOMP_LH_NET_BASE_INCLUDED_H
#define BW1_DECOMP_LH_NET_BASE_INCLUDED_H

#include <stdint.h>

struct LHLobby;
class LHSession;
class LHTransport;
struct LHNetUser;
class SetupBox;

class LHNetBase
{
public:
	// BW1W120 00d204a8. Descriptive name; original constructor at 005ea7b0.
	// Declaration only until the original full storage extent/split is verified.
	static LHNetBase Instance;
	// BW1W120 00d2054c. Separate allocation used by LHMessageBox; descriptive name.
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
};

// The next Windows object at 00d2054c is a separately allocated SetupBox pointer.
// This is a verified prefix boundary, not an allocation-size assertion.

#endif
