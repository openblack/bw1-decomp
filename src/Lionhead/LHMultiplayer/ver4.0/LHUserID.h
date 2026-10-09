#ifndef BW1_DECOMP_LH_USER_ID_INCLUDED_H
#define BW1_DECOMP_LH_USER_ID_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <re_common.h> /* For bool32_t */

#include "LHMultiplayerExport.h"

enum
{
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

#endif /* BW1_DECOMP_LH_USER_ID_INCLUDED_H */
