#ifndef BW1_DECOMP_LH_NET_USER_INCLUDED_H
#define BW1_DECOMP_LH_NET_USER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */
#include <wchar.h>  /* For wchar_t */

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

class LH_MULTIPLAYER_API LHNetUser
{
public:
	struct LH_USER_ID id;
#ifdef VERSION_BW1W120
	uint8_t field_0x4[0x6c];
	wchar_t Name[0x31];
	char    Password[0x4a];
#else
	uint8_t field_0x4[0x8];
	wchar_t Name[0x31];
#endif

	// BW1W120 100013b0
	LH_USER_ID GetID() { return id; }
	// BW1W120 100013c0
	wchar_t* GetName() { return Name; }
};
#ifdef VERSION_BW1W120
static_assert(sizeof(LHNetUser) == 0x11c, "Data type is of wrong size");
#endif

#endif /* BW1_DECOMP_LH_NET_USER_INCLUDED_H */
