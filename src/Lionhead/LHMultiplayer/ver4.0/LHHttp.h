#ifndef BW1_DECOMP_LH_HTTP_INCLUDED_H
#define BW1_DECOMP_LH_HTTP_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For NULL */
#include <stdint.h> /* For uint16_t, uint32_t */

#include "LHMultiplayerExport.h"

class LHHttpHeaders
{
public:
	void*    Head;
	void*    Tail;
	uint32_t Count;

	LHHttpHeaders()
	{
		Head = Tail = NULL;
		Count = 0;
	}
	~LHHttpHeaders() { Reset(); }

	// BW1W120 1000ac30 BW1M119 010e8390 (LHCombined Release)
	LH_MULTIPLAYER_API void Reset();
};

static_assert(sizeof(LHHttpHeaders) == 0xc, "LHHttpHeaders size is incorrect");

struct LHHttpHeaderStatus
{
	int           Status;
	LHHttpHeaders Headers;
	char*         Location;
	uint32_t      field_0x14;
	uint32_t      ContentLength;
	uint32_t      ContentRead;
	uint16_t      Flags;

	LHHttpHeaderStatus()
	{
		Status = -1;
		Location = NULL;
		ContentLength = 0;
		ContentRead = 0;
		Flags = 0;
	}
	~LHHttpHeaderStatus() { Reset(); }

	// BW1W120 1000aa10 BW1M119 010e8950 (LHCombined Release)
	LH_MULTIPLAYER_API void Reset();
};

static_assert(sizeof(LHHttpHeaderStatus) == 0x24, "LHHttpHeaderStatus size is incorrect");

#endif /* BW1_DECOMP_LH_HTTP_INCLUDED_H */
