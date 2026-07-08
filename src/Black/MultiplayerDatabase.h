#ifndef BW1_DECOMP_MULTIPLAYER_DATABASE_INCLUDED_H
#define BW1_DECOMP_MULTIPLAYER_DATABASE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <re_common.h> /* For bool32_t */

// Forward Declares

struct DBInfo;

class MultiplayerDatabase
{
public:
	bool32_t field_0x4;
	DBInfo*  info;
	char*    field_0xc;

	// Override methods

	// BW1W120 00633610 BW1M100 10109f20 MultiplayerDatabase::ReceiveReturnData(void)
	virtual uint32_t ReceiveReturnData();

	// Constructors

	// BW1W120 00633400 BW1M100 1010a230 MultiplayerDatabase::MultiplayerDatabase(void)
	MultiplayerDatabase();
};

#endif /* BW1_DECOMP_MULTIPLAYER_DATABASE_INCLUDED_H */
