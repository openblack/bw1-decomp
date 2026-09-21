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

	// BW1W120 00633610 BW1M119 01113730
	virtual uint32_t ReceiveReturnData();

	// Constructors

	// BW1W120 00633400 BW1M119 01113a40
	MultiplayerDatabase();
	// BW1W120 00633480 BW1M119 01113960
	~MultiplayerDatabase();
};

#endif /* BW1_DECOMP_MULTIPLAYER_DATABASE_INCLUDED_H */
