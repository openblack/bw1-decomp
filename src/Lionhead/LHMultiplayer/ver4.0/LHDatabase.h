#ifndef BW1_DECOMP_LH_DATABASE_INCLUDED_H
#define BW1_DECOMP_LH_DATABASE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For NULL */
#include <stdint.h> /* For uint16_t, uint32_t */
#include <time.h>   /* For time_t */

#include <Lionhead/LHLib/ver5.0/LHReturn.h> /* For enum LH_RETURN */

#include "LHHttp.h" /* For struct LHHttpHeaderStatus */
#include "LHMultiplayerExport.h"

class LHHttp2;
class LHNetUser;
class LHTransportInfo;

enum
{
	LH_DATABASE_SERVER_LENGTH = 0xfc,
	LH_DATABASE_URL_LENGTH = 0x400,
	LH_DATABASE_SERVER_NAME_LENGTH = 256,
	LH_DATABASE_LANGUAGE_LENGTH = 12,
	LH_DATABASE_DEFAULT_BW_VERSION = 100,
	LH_DATABASE_TIME_OUT = 120,
	LH_DATABASE_BUFFER_PADDING = 10,
	LH_DATABASE_REQUEST_TRAILER_LENGTH = 6,
	LH_DATABASE_CRYPT_BLOCK_SIZE = 8,
	LH_DATABASE_URI_ESCAPE_LENGTH = 3,
	LH_DATABASE_URI_ESCAPE_BUFFER_SIZE = 16,
	LH_DATABASE_FIELD_START = '\x02',
	LH_DATABASE_FIELD_END = '\x03',
};

enum DBSTATUS
{
	DBSTATUS_ERROR = -1,
	DBSTATUS_COMPLETE = 0,
	DBSTATUS_PENDING = 1,
};

enum DBINFO_STATE
{
	DBINFO_STATE_IDLE = 0,
	DBINFO_STATE_SENDING_REQUEST = 2,
	DBINFO_STATE_RECEIVING_HEADER = 3,
	DBINFO_STATE_RECEIVING_DOCUMENT = 4,
	DBINFO_STATE_COMPLETE = 6,
	DBINFO_STATE_REDIRECTED = 7,
	DBINFO_STATE_DOCUMENT_RECEIVED = 8,
};

struct LH_MULTIPLAYER_API DBInfo
{
	uint32_t           Status;
	uint32_t           State;        /* 0x4 */
	char*              Result;       /* 0x8 */
	uint32_t           RequestSize;  /* 0xc */
	uint16_t           Port;         /* 0x10 */
	LHHttpHeaderStatus HeaderStatus; /* 0x14 */
	LHHttp2*           Http;         /* 0x38 */
	uint32_t           ResultSize;   /* 0x3c */
	time_t             RequestTime;  /* 0x40 */
	char*              Request;      /* 0x44 */
	uint32_t           BytesSent;    /* 0x48 */

	// BW1W120 10007160 BW1M119 inlined
	DBInfo()
	{
		Request = NULL;
		Result = NULL;
		BytesSent = 0;
		Status = 0;
		State = DBINFO_STATE_IDLE;
		RequestSize = 0;
		Port = 0;
		Http = NULL;
		ResultSize = 0;
		RequestTime = 0;
	}
	// BW1W120 100071a0 BW1M119 inlined
	~DBInfo() { Reset(); }

	// BW1W120 10007480 BW1M119 010e4250 (LHCombined Release)
	void Reset();
};

static_assert(sizeof(DBInfo) == 0x4c, "DBInfo size is incorrect");

// BW1W120 10007260 BW1M119 010e45b0 (LHCombined Release)
void encipher(unsigned long* v, unsigned long* w, const unsigned long* k);
// BW1W120 100072f0 BW1M119 010e4460 (LHCombined Release)
void decipher(unsigned long* v, unsigned long* w, const unsigned long* k);
// BW1W120 10007390 BW1M119 010e4320 (LHCombined Release)
int MyCrypt(char* source, char* destination, int length, char decrypt);

// BW1W120 100075b0 BW1M119 010e4140 (LHCombined Release)
LH_RETURN URIEncode(char* source, char* destination);

// BW1W120 10007640 BW1M119 010e3fb0 (LHCombined Release)
LH_MULTIPLAYER_API LH_RETURN LHWebEncode(char* data, unsigned long length, char** encoded,
                                         unsigned long* encoded_length);
// BW1W120 100076a0 BW1M119 010e3ec0 (LHCombined Release)
LH_MULTIPLAYER_API LH_RETURN LHWebDecode(char* data, unsigned long length, char** decoded,
                                         unsigned long* decoded_length);
// BW1W120 10007710 BW1M119 010e3e60 (LHCombined Release)
LH_MULTIPLAYER_API void LHWebEncodingFreePtr(char* data);

// BW1W120 10007720 BW1M119 010e3a50 (LHCombined Release)
LH_MULTIPLAYER_API DBSTATUS db_get_status_async(DBInfo* info);
// BW1W120 10007a40 BW1M119 010e3980 (LHCombined Release)
LH_MULTIPLAYER_API LH_RETURN db_get_result(DBInfo* info, unsigned long* num_columns, unsigned long* num_rows,
                                           char*** data);
// BW1W120 10007aa0 BW1M119 010e33b0 (LHCombined Release)
LH_MULTIPLAYER_API DBSTATUS db_execute_transaction_async(DBInfo* info, char* transaction, LHNetUser* user,
                                                         LHTransportInfo* transport);
// BW1W120 10008000 BW1M119 010e3100 (LHCombined Release)
LH_MULTIPLAYER_API LH_RETURN db_parse_sql_returnbuffer(char* buffer, char*** data, unsigned long* num_columns,
                                                       unsigned long* num_rows);
// BW1W120 100081d0 BW1M119 010e3070 (LHCombined Release)
LH_MULTIPLAYER_API void db_free_data(char** data);
// BW1W120 10008200 BW1M119 010e2b50 (LHCombined Release)
LH_MULTIPLAYER_API LH_RETURN db_execute_transaction(char* transaction, unsigned long* num_columns,
                                                    unsigned long* num_rows, char*** data, LHTransportInfo* transport);

#endif /* BW1_DECOMP_LH_DATABASE_INCLUDED_H */
