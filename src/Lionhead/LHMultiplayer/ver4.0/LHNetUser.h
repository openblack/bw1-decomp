#ifndef BW1_DECOMP_LH_NET_USER_INCLUDED_H
#define BW1_DECOMP_LH_NET_USER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */
#include <wchar.h>  /* For wchar_t */

#include <uchar.h> /* For char16_t */

#include <Lionhead/LHLib/ver5.0/LHReturn.h>
#include "LHMultiplayerExport.h"

struct LH_MULTIPLAYER_API LH_USER_ID
{
	enum CATEGORY
	{
		CATEGORY_NONE = 0,
		CATEGORY_PLAYER = 1,
		CATEGORY_LOBBY_SERVER = 2,
		CATEGORY_SESSION_SERVER = 3,
		CATEGORY_GLOBAL_SERVER = 4
	};

	union {
		uint32_t id;
		struct
		{
			unsigned long Number : 29;
			unsigned long Category : 3;
		};
	};

	// BW1W120 100010b0 BW1M119 0100e950
	LH_USER_ID() { id = 0; }
	// BW1W120 100010c0
	LH_USER_ID(unsigned long value) { id = value; }
	// BW1W120 100010d0
	operator unsigned long() { return id; }
	// BW1W120 100010e0
	LH_USER_ID operator=(unsigned long& value)
	{
		id = value;
		return *this;
	}
	// BW1W120 10001100
	int IsValid() { return id != 0 && id != 0xffffffff; }
	// BW1W120 10001120
	int IsType(CATEGORY category) { return Category == (unsigned long)category; }
	// BW1W120 10001140
	int IsServer()
	{
		return Category == CATEGORY_GLOBAL_SERVER || Category == CATEGORY_SESSION_SERVER ||
		       Category == CATEGORY_LOBBY_SERVER;
	}
	// BW1W120 10001170
	int IsGlobal() { return Category == CATEGORY_GLOBAL_SERVER; }
	// BW1W120 10001190
	int IsPlayer() { return Category == CATEGORY_PLAYER; }
};
static_assert(sizeof(LH_USER_ID) == 0x4, "Data type is of wrong size");

#ifdef LH_MULTIPLAYER_EXPORTS
// Every LHMultiplayerR.dll TU dynamically initialises its own copy of this at startup,
// while game TUs that include this header have none. The Mac build constructs
// LH_USER_ID(-1) in place at each use instead.
// TODO: name fabricated.
static LH_USER_ID LH_ALL_USERS(0xffffffff);
#endif

class LHHttp;
class LHTransportInfo;

enum LH_LOGIN_CHECK
{
	LH_LOGIN_CHECK_0 = 0x0,
};

class LH_MULTIPLAYER_API LHNetUser
{
public:
	LH_USER_ID id; /* 0x0 */
#ifdef VERSION_BW1W120
	uint32_t      field_0x4;
	uint32_t      field_0x8;
	unsigned char field_0xc[0x64];
	char16_t      Name[0x31];     /* 0x70 */
	char          Password[0x31]; /* 0xd2 */
	unsigned char field_0x104[0xc];
	void*         field_0x110; /* operator delete in Logout */
	LHHttp*       Http;        /* 0x114 */
	uint32_t      field_0x118;
#else
	uint8_t field_0x4[0x8];
	wchar_t Name[0x31];
#endif

	// BW1W120 10001390
	LHNetUser() { ClearAllData(); }
	// BW1W120 10017ae0
	~LHNetUser();
	// BW1W120 100013b0
	LH_USER_ID GetID() { return id; }
	// BW1W120 100013c0
	char16_t* GetName() { return Name; }
	// BW1W120 10017a50
	void Logout();
	// BW1W120 100182e0
	LH_RETURN Login(LHNetUser* user, LH_USER_ID::CATEGORY category);

private:
	// BW1W120 10017a00
	void ClearAllData();
};
#ifdef VERSION_BW1W120
static_assert(sizeof(LHNetUser) == 0x11c, "Data type is of wrong size");
#endif

#endif /* BW1_DECOMP_LH_NET_USER_INCLUDED_H */
