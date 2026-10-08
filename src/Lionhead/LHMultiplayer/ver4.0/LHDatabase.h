#ifndef BW1_DECOMP_LH_DATABASE_INCLUDED_H
#define BW1_DECOMP_LH_DATABASE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For NULL */
#include <stdint.h> /* For uint16_t, uint32_t */

#include <Lionhead/LHLib/ver5.0/LHReturn.h> /* For enum LH_RETURN */

#include "LHHttp.h" /* For struct LHHttpHeaderStatus */
#include "LHMultiplayerExport.h"

class LHHttp2;
class LHNetUser;
class LHTransportInfo;

enum DBSTATUS
{
	DBSTATUS_ERROR = -1,
	DBSTATUS_COMPLETE = 0,
	DBSTATUS_PENDING = 1,
};

struct DBInfo
{
	uint32_t           Status;
	uint32_t           State;
	char*              Request;
	uint32_t           RequestSize;
	uint16_t           Port;
	LHHttpHeaderStatus HeaderStatus;
	LHHttp2*           Http;
	uint32_t           ResultSize;
	uint32_t           ResultRead;
	char*              Result;
	uint32_t           ResultOffset;

	DBInfo()
	{
		Result = NULL;
		Request = NULL;
		ResultOffset = 0;
		Status = 0;
		State = 0;
		RequestSize = 0;
		Port = 0;
		Http = NULL;
		ResultSize = 0;
		ResultRead = 0;
	}
	~DBInfo() { Reset(); }

	// BW1W120 10007480 BW1M119 010e4250 (LHCombined Release)
	LH_MULTIPLAYER_API void Reset();
};

static_assert(sizeof(DBInfo) == 0x4c, "DBInfo size is incorrect");

// BW1W120 10007aa0 BW1M119 010e33b0 (LHCombined Release)
LH_MULTIPLAYER_API DBSTATUS db_execute_transaction_async(DBInfo* info, char* transaction, LHNetUser* user,
                                                         LHTransportInfo* transport);
// BW1W120 10007720 BW1M119 010e3a50 (LHCombined Release)
LH_MULTIPLAYER_API DBSTATUS db_get_status_async(DBInfo* info);
// BW1W120 10007a40 BW1M119 010e3980 (LHCombined Release)
LH_MULTIPLAYER_API LH_RETURN db_get_result(DBInfo* info, unsigned long* num_rows, unsigned long* num_columns,
                                           char*** data);

#endif /* BW1_DECOMP_LH_DATABASE_INCLUDED_H */
