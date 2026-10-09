#ifndef BW1_DECOMP_LH_NET_USER_INCLUDED_H
#define BW1_DECOMP_LH_NET_USER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */
#include <wchar.h>  /* For wchar_t */

#include <re_common.h> /* For bool32_t */

#include <Lionhead/LHLib/ver5.0/LHReturn.h>
#include "LHMultiplayerExport.h"

enum
{
	LH_MAX_NAME_LENGTH = 48,
	LH_MAX_PASSWORD_LENGTH = 48,
	LH_MAX_LOGIN_TEXT_LENGTH = 100,
	LH_MAX_LOBBY_NAME_LENGTH = 64,
	LH_ALL_USERS_ID = 0xffffffff,
};

struct LH_MULTIPLAYER_API LH_USER_ID
{
	enum CATEGORY
	{
		CATEGORY_NONE = 0,
		CATEGORY_PLAYER = 1,
		CATEGORY_MESSAGE_SERVER = 2,
		CATEGORY_LOBBY_SERVER = 3,
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
	bool32_t IsValid() { return id != 0 && id != LH_ALL_USERS_ID; }
	// BW1W120 10001120
	bool32_t IsType(CATEGORY category) { return Category == (unsigned long)category; }
	// BW1W120 10001140
	bool32_t IsServer()
	{
		return Category == CATEGORY_GLOBAL_SERVER || Category == CATEGORY_LOBBY_SERVER ||
		       Category == CATEGORY_MESSAGE_SERVER;
	}
	// BW1W120 10001170
	bool32_t IsGlobal() { return Category == CATEGORY_GLOBAL_SERVER; }
	// BW1W120 10001190
	bool32_t IsPlayer() { return Category == CATEGORY_PLAYER; }
};
static_assert(sizeof(LH_USER_ID) == 0x4, "Data type is of wrong size");

#ifdef LH_MULTIPLAYER_EXPORTS
static LH_USER_ID LH_ALL_USERS(LH_ALL_USERS_ID);
#endif

#include "LHHttp.h"

class LHTransportInfo;

enum LH_LOGIN_CHECK
{
	LH_LOGIN_CHECK_NONE = 0,
	LH_LOGIN_CHECK_IN_PROGRESS = 1,
	LH_LOGIN_CHECK_FAILED = 2,
	LH_LOGIN_CHECK_LOGGED_IN = 3,
	LH_LOGIN_CHECK_CONNECTION_ERROR = 5,
};

class LH_MULTIPLAYER_API LHNetUser
{
public:
	LH_USER_ID    id;          /* 0x000 */
	unsigned long LoginValue1; /* 0x004 */
	unsigned long LoginValue2; /* 0x008 */
#ifdef VERSION_BW1W120
	char LoginText[LH_MAX_LOGIN_TEXT_LENGTH]; /* 0x00c */
#endif
	wchar_t        Name[LH_MAX_NAME_LENGTH + 1];         /* 0x070 */
	char           Password[LH_MAX_PASSWORD_LENGTH + 1]; /* 0x0d2 */
	LH_LOGIN_CHECK LoginState;                           /* 0x104 */
	unsigned long  LoginDocumentSize;                    /* 0x108 */
	unsigned long  LoginDocumentReceived;                /* 0x10c */
	char*          LoginDocument;                        /* 0x110 */
	LHHttp*        Http;                                 /* 0x114 */
	unsigned short HttpResponseCode;                     /* 0x118 */
#ifndef VERSION_BW1W120
	char LoginText[LH_MAX_LOGIN_TEXT_LENGTH];
#endif

	// BW1W120 10001390 BW1M119 inlined
	LHNetUser() { ClearAllData(); }
	// BW1W120 100013b0 BW1M119 010dd1b0 (LHCombined Release)
	LH_USER_ID GetID() { return id; }
	// BW1W120 100013c0 BW1M119 010dd180 (LHCombined Release)
	wchar_t* GetName() { return Name; }
	// BW1W120 100013d0 BW1M119 inlined
	bool32_t IsValid() { return id.IsValid(); }
	// BW1W120 100013f0 BW1M119 inlined
	void ChangeName(wchar_t* name) { SetUserDetails(name, NULL); }
	// BW1W120 10001400 BW1M119 inlined
	char* GetPassword() { return Password; }
	// BW1W120 10001410 BW1M119 inlined
	void ChangeID(unsigned long new_id) { id = new_id; }

	// BW1W120 10017ae0 BW1M119 01103500 (LHCombined Release)
	~LHNetUser();
	// BW1W120 10017a50 BW1M119 01103650 (LHCombined Release)
	void Logout();
	// BW1W120 10017b10 BW1M119 011032b0 (LHCombined Release)
	LH_RETURN Login(char* name, char* password);
	// BW1W120 10017bf0 BW1M119 01102f20 (LHCombined Release)
	LH_RETURN Login(char* name, char* password, LHTransportInfo* server);
	// BW1W120 10017ec0 BW1M119 01102d50 (LHCombined Release)
	LH_RETURN SendLogin(char* name, char* password, LHTransportInfo* server);
	// BW1W120 10018110 BW1M119 011028e0 (LHCombined Release)
	LH_LOGIN_CHECK CheckLogin();
	// BW1W120 100182e0 BW1M119 01102720 (LHCombined Release)
	LH_RETURN Login(LHNetUser* user, LH_USER_ID::CATEGORY category);

private:
	// BW1W120 10017a00 BW1M119 011036c0 (LHCombined Release)
	void ClearAllData();
	// BW1W120 10017a90 BW1M119 01103590 (LHCombined Release)
	LH_RETURN SetUserDetails(wchar_t* name, char* password);
	// BW1W120 10018010 BW1M119 01102b60 (LHCombined Release)
	LH_RETURN ParseUserData(char* document, unsigned long* user_id);
};
#ifdef VERSION_BW1W120
static_assert(sizeof(LHNetUser) == 0x11c, "Data type is of wrong size");
#endif

#endif /* BW1_DECOMP_LH_NET_USER_INCLUDED_H */
