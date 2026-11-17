#ifndef BW1_DECOMP_MULTIPLAYER_DATABASE_INCLUDED_H
#define BW1_DECOMP_MULTIPLAYER_DATABASE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <re_common.h> /* For bool32_t */

enum MULTIPLAYER_DATABASE_RESULT
{
	MULTIPLAYER_DATABASE_RESULT_IDLE = 0,
	MULTIPLAYER_DATABASE_RESULT_PENDING = 1,
	MULTIPLAYER_DATABASE_RESULT_COMPLETE = 2,
	MULTIPLAYER_DATABASE_RESULT_ERROR = 3,
};

// Forward Declares

struct DBInfo;

class MultiplayerDatabase
{
public:
	int     Status; /* 0x4 */
	DBInfo* info;
	char*   field_0xc;

	// Override methods

	// BW1W120 purecall
	virtual uint32_t Send() = 0;
	// BW1W120 00633610 BW1M119 01113730
	virtual uint32_t ReceiveReturnData();

	// Constructors

	// BW1W120 00633400 BW1M119 01113a40
	MultiplayerDatabase();
	// BW1W120 00633480 BW1M119 01113960
	~MultiplayerDatabase();

	// BW1W120 006334c0 BW1M119 011138c0
	void Stop();
	// BW1W120 00633620 BW1M119 011135b0
	uint32_t Refresh();
};

#endif /* BW1_DECOMP_MULTIPLAYER_DATABASE_INCLUDED_H */
