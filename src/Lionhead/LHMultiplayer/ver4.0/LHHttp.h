#ifndef BW1_DECOMP_LH_HTTP_INCLUDED_H
#define BW1_DECOMP_LH_HTTP_INCLUDED_H

#include <assert.h>    /* For static_assert */
#include <re_common.h> /* For bool32_t */
#include <time.h>      /* For time_t */

#include <Lionhead/LHLib/ver5.0/LHLinkedList.h>
#include <Lionhead/LHLib/ver5.0/LHReturn.h>
#include "LHMultiplayerExport.h"

class LHSocketTCP;

enum
{
	LH_HTTP_DEFAULT_PORT = 80,
	LH_HTTP_DEFAULT_TIME_OUT = 60,
	LH_HTTP_DEFAULT_MAX_FORWARDINGS = 10,
	LH_HTTP_BLOCK_SIZE = 1024,
	LH_HTTP_CRLF_LENGTH = 2,
	LH_HTTP_SELECT_TIMEOUT_USEC = 10000,
	LH_HTTP2_SELECT_TIMEOUT_USEC = 1,
	LH_HTTP_HOST_LENGTH = 512,
	LH_HTTP_DOCUMENT_TYPE_LENGTH = 512,
	LH_HTTP_HEADER_LENGTH = 512,
	LH_HTTP_REQUEST_LENGTH = 4096,
	LH_HTTP_LINE_LENGTH = 2048,
	LH_HTTP_URI_LENGTH = 2048,
	LH_HTTP_RESPONSE_LINE_LENGTH = 5000,
	LH_HTTP_REDIRECT_HOST_LENGTH = 200,
	LH_HTTP_WORD_LENGTH = 1024,
	LH_HTTP_PORT_LENGTH = 20,
	LH_HTTP_CHUNK_LINE_LENGTH = 1024,
	LH_HTTP_CHUNK_SIZE_LINE_LENGTH = 1000,
	LH_HTTP_CHUNK_END_LENGTH = 10,
	LH_HTTP_CHUNK_TRAILER_LENGTH = 15,
};

enum
{
	LH_HTTP_CODE_OK = 200,
	LH_HTTP_CODE_MULTIPLE_CHOICES = 300,
	LH_HTTP_CODE_BAD_REQUEST = 400,
};

enum
{
	LH_HTTP_REQUEST_STATE_IDLE = 0,
	LH_HTTP_REQUEST_STATE_SENT = 1,
	LH_HTTP_REQUEST_STATE_HEADER_RECEIVED = 2,
};

enum HTTP_REQUEST_TYPE
{
	HTTP_REQUEST_TYPE_GET = 0,
	HTTP_REQUEST_TYPE_PUT = 1,
	HTTP_REQUEST_TYPE_POST = 2,
};

enum HTTP_RECEIVED_STATUS
{
	HTTP_RECEIVED_STATUS_HEADER_COMPLETE = 1,
	HTTP_RECEIVED_STATUS_NO_DATA = 2,
	HTTP_RECEIVED_STATUS_LINE_READ = 3,
};

enum LH_HTTP_STATUS
{
	LH_HTTP_STATUS_NOT_WAITING_FOR_HEADER = -105,
	LH_HTTP_STATUS_NO_REQUEST = -104,
	LH_HTTP_STATUS_TIMED_OUT = -102,
	LH_HTTP_STATUS_RECEIVE_FAILED = -101,
	LH_HTTP_STATUS_SEND_FAILED = -100,
	LH_HTTP_STATUS_SENDING = 1,
	LH_HTTP_STATUS_REQUEST_SENT = 2,
	LH_HTTP_STATUS_RECEIVING_HEADER = 4,
	LH_HTTP_STATUS_HEADER_RECEIVED = 5,
	LH_HTTP_STATUS_RECEIVING = 6,
	LH_HTTP_STATUS_RECEIVED = 7,
	LH_HTTP_STATUS_REQUEST_PREPARED = 8,
	LH_HTTP_STATUS_OK = 1000,
};

class LH_MULTIPLAYER_API LHHttp
{
public:
	LHSocketTCP*        Socket;
	char                Host[LH_HTTP_HOST_LENGTH];                  /* 0x4 */
	char                DocumentType[LH_HTTP_DOCUMENT_TYPE_LENGTH]; /* 0x204 */
	unsigned long       DocumentSize;                               /* 0x404 */
	bool32_t            Chunked;                                    /* 0x408 */
	LHLinkedList<char*> SentHeaders;                                /* 0x40c */
	LHLinkedList<char*> ReceivedHeaders;                            /* 0x414 */
	unsigned long       DocumentReceived;                           /* 0x41c */
	bool                HeaderReceived;                             /* 0x420 */
	unsigned short      StatusCode;                                 /* 0x422 */

	// BW1W120 10009350 BW1M119 010ea8a0 (LHCombined Release)
	LHHttp();
	// BW1W120 10009380 BW1M119 010ea7f0 (LHCombined Release)
	~LHHttp();

	// BW1W120 100093d0 BW1M119 010ea6f0 (LHCombined Release)
	LH_RETURN Open(char* host, unsigned short port);
	// BW1W120 10009510 BW1M119 010ea660 (LHCombined Release)
	LH_RETURN Close();
	// BW1W120 10009550 BW1M119 010ea380 (LHCombined Release)
	LH_RETURN SendRequest(HTTP_REQUEST_TYPE type, char* uri);
	// BW1W120 10009710 BW1M119 010ea200 (LHCombined Release)
	LH_RETURN SendHeader(char* header);
	// BW1W120 100098d0 BW1M119 010e9ee0 (LHCombined Release)
	LH_RETURN SendEndOfRequest();
	// BW1W120 10009940 BW1M119 010e9d40 (LHCombined Release)
	LH_RETURN SendRawData(char* data, unsigned long size, unsigned long* sent, bool wait);
	// BW1W120 10009a20 BW1M119 010e9cd0 (LHCombined Release)
	LH_RETURN GetDocumentType(char* type);
	// BW1W120 10009a50 BW1M119 010e9bd0 (LHCombined Release)
	LH_RETURN GetDocumentSize(unsigned long* size);
	// BW1W120 10009b30 BW1M119 010e9a30 (LHCombined Release)
	LH_RETURN GetDocument(char* document, unsigned long* size);
	// BW1W120 10009c90 BW1M119 010e95d0 (LHCombined Release)
	LH_RETURN GetServerResponseHeader(unsigned short* status);
	// BW1W120 1000a130 BW1M119 010e9410 (LHCombined Release)
	LH_RETURN UploadFile(char* file, char* uri);
	// BW1W120 1000a270 BW1M119 010e9270 (LHCombined Release)
	LH_RETURN GetUntilCRLF(char* line, unsigned long* length);
	// BW1W120 1000a380 BW1M119 010e9210 (LHCombined Release)
	LH_RETURN IsDataAvailable();
	// BW1W120 1000a390 BW1M119 010e8f90 (LHCombined Release)
	LH_RETURN CheckServerResponseHeader(unsigned short* status, HTTP_RECEIVED_STATUS* received);
	// BW1W120 1000a770 BW1M119 010e8c20 (LHCombined Release)
	void CleanData();
	// BW1W120 1000a860 BW1M119 010e8a60 (LHCombined Release)
	LH_RETURN GetDocumentAsync(char* document, unsigned long* received);

private:
	// BW1W120 100097d0 BW1M119 010ea100 (LHCombined Release)
	LH_RETURN SendHeaderInternal(char* header);
	// BW1W120 10009840 BW1M119 010e9fc0 (LHCombined Release)
	LH_RETURN SendInternalEndOfRequest(bool32_t send_headers);
	// BW1W120 1000a610 BW1M119 010e8d10 (LHCombined Release)
	LH_RETURN ParseURI(char* url, char* host, unsigned short* port, char* uri);
};
static_assert(sizeof(LHHttp) == 0x424, "LHHttp size is incorrect");

class LH_MULTIPLAYER_API LHHttpHeaders
{
public:
	LHLinkedList<char*> Headers;
	char*               HeaderString; /* 0x8 */

	// BW1W120 10001200 BW1M119 010e58a0 (LHCombined Release)
	LHHttpHeaders() { HeaderString = NULL; }
	// BW1W120 10001210 BW1M119 010e5660 (LHCombined Release)
	~LHHttpHeaders() { Reset(); }

	// BW1W120 1000ac30 BW1M119 010e8390 (LHCombined Release)
	void Reset();
	// BW1W120 1000aca0 BW1M119 010e82a0 (LHCombined Release)
	void AddHeader(char* header);
	// BW1W120 1000acf0 BW1M119 010e8070 (LHCombined Release)
	void AddHeader(char* name, char* value);
	// BW1W120 1000ae00 BW1M119 010e7f40 (LHCombined Release)
	char* GetHeader(char* name);
	// BW1W120 1000ae70 BW1M119 010e7f00 (LHCombined Release)
	LHLinkedList<char*>* GetLinkedList();
	// BW1W120 1000ae80 BW1M119 010e7d80 (LHCombined Release)
	char* GetHeaderString();
	// BW1W120 1000af70 BW1M119 010e7d00 (LHCombined Release)
	void DeleteHeaderString();
};
static_assert(sizeof(LHHttpHeaders) == 0xc, "LHHttpHeaders size is incorrect");

struct LH_MULTIPLAYER_API LHHttpHeaderStatus
{
	unsigned long  Status;
	LHHttpHeaders  Headers;       /* 0x4 */
	char*          Location;      /* 0x10 */
	long           ContentLength; /* 0x14 */
	char*          LocationHost;  /* 0x18 */
	char*          LocationURI;   /* 0x1c */
	unsigned short LocationPort;  /* 0x20 */

	// BW1W120 10001270
	LHHttpHeaderStatus()
	{
		Status = (unsigned long)-1;
		Location = NULL;
		LocationHost = NULL;
		LocationURI = NULL;
		LocationPort = 0;
	}
	// BW1W120 100012a0 BW1M119 010e5790 (LHCombined Release)
	~LHHttpHeaderStatus() { Reset(); }

	// BW1W120 1000aa10 BW1M119 010e8950 (LHCombined Release)
	void Reset();
	// BW1W120 1000aab0 BW1M119 010e8730 (LHCombined Release)
	void ParseLocationData();
	// BW1W120 1000abd0 BW1M119 010e86c0 (LHCombined Release)
	char* GetLocationHost();
	// BW1W120 1000abe0 BW1M119 010e8650 (LHCombined Release)
	char* GetLocationURI();
	// BW1W120 1000abf0 BW1M119 010e85e0 (LHCombined Release)
	unsigned short GetLocationPort();
};
static_assert(sizeof(LHHttpHeaderStatus) == 0x24, "LHHttpHeaderStatus size is incorrect");

struct LHHttpDocumentParts
{
	char*         Data;
	unsigned long Size;
	unsigned long Received;

	LHHttpDocumentParts()
	{
		Data = NULL;
		Size = 0;
		Received = 0;
	}
	// BW1W120 1000ac00 BW1M119 010e8530 (LHCombined Release)
	~LHHttpDocumentParts();
};

class LH_MULTIPLAYER_API LHHttp2
{
public:
	LHSocketTCP*                       Socket;
	char                               Host[LH_HTTP_HOST_LENGTH];       /* 0x4 */
	unsigned short                     Port;                            /* 0x204 */
	char*                              Request;                         /* 0x208 */
	unsigned long                      SendSize;                        /* 0x20c */
	unsigned long                      RequestLength;                   /* 0x210 */
	LHHttpHeaders*                     RequestHeaders;                  /* 0x214 */
	LHHttpHeaders*                     ResponseHeaders;                 /* 0x218 */
	unsigned long                      TimeOut;                         /* 0x21c */
	time_t                             LastActivity;                    /* 0x220 */
	bool                               Waiting;                         /* 0x224 */
	unsigned short                     RequestState;                    /* 0x226 */
	unsigned long                      ReadSize;                        /* 0x228 */
	unsigned long                      MaxForwardings;                  /* 0x22c */
	unsigned long                      Forwardings;                     /* 0x230 */
	char                               HeaderLine[LH_HTTP_LINE_LENGTH]; /* 0x234 */
	unsigned long                      HeaderLineLength;                /* 0xa34 */
	LHLinkedList<LHHttpDocumentParts*> DocumentParts;                   /* 0xa38 */
	bool32_t                           Chunked;                         /* 0xa40 */
	unsigned long                      ChunkSize;                       /* 0xa44 */
	unsigned long                      ChunkReceived;                   /* 0xa48 */
	char                               ChunkLine[LH_HTTP_LINE_LENGTH];  /* 0xa4c */
	unsigned long                      ChunkLineLength;                 /* 0x124c */
	bool                               ChunkHeaderRead;                 /* 0x1250 */
	LHHttpDocumentParts*               CurrentPart;                     /* 0x1254 */

	// BW1W120 1000af90 BW1M119 010e7a20 (LHCombined Release)
	LHHttp2();
	// BW1W120 1000b0c0 BW1M119 010e78f0 (LHCombined Release)
	~LHHttp2();

	// BW1W120 1000b160 BW1M119 010e77a0 (LHCombined Release)
	void Reset();
	// BW1W120 1000b2a0 BW1M119 010e7670 (LHCombined Release)
	LH_RETURN Open(char* host, unsigned short port);
	// BW1W120 1000b430 BW1M119 010e75e0 (LHCombined Release)
	LH_RETURN Close();
	// BW1W120 1000b470 BW1M119 010e72c0 (LHCombined Release)
	LH_HTTP_STATUS PrepareRequest(HTTP_REQUEST_TYPE type, char* uri, LHHttpHeaders* headers, char* data,
	                              unsigned long data_length);
	// BW1W120 1000b7c0 BW1M119 010e7110 (LHCombined Release)
	LH_RETURN SendRawData(char* data, unsigned long size, unsigned long* sent, bool wait);
	// BW1W120 1000b8a0 BW1M119 010e7090 (LHCombined Release)
	void ResetRequest();
	// BW1W120 1000b8e0 BW1M119 010e6eb0 (LHCombined Release)
	LH_HTTP_STATUS SendRequestAsync();
	// BW1W120 1000ba00 BW1M119 010e6e40 (LHCombined Release)
	LH_RETURN IsDataAvailable();
	// BW1W120 1000ba20 BW1M119 010e6b10 (LHCombined Release)
	LH_HTTP_STATUS ReceiveHeaderAsync();
	// BW1W120 1000bcf0 BW1M119 010e6860 (LHCombined Release)
	LH_HTTP_STATUS GetHeader(LHHttpHeaderStatus& status);
	// BW1W120 1000be30 BW1M119 010e6710 (LHCombined Release)
	LH_HTTP_STATUS GetUntilCRLF(char* line, unsigned long* length);
	// BW1W120 1000bee0 BW1M119 010e6520 (LHCombined Release)
	void ResetDocumentRecv();
	// BW1W120 1000bf90 BW1M119 010e5ec0 (LHCombined Release)
	LH_HTTP_STATUS ReceiveDocumentAsync();
	// BW1W120 1000c380 BW1M119 010e5e10 (LHCombined Release)
	unsigned long GetDocumentSize();
	// BW1W120 1000c3a0 BW1M119 010e5bf0 (LHCombined Release)
	LH_HTTP_STATUS GetDocument(char* document);
	// BW1W120 1000c400 BW1M119 010e59c0 (LHCombined Release)
	LH_HTTP_STATUS HelperGetDocument(bool redirected);

	// BW1W120 10001320
	unsigned long GetTimeOut() { return TimeOut; }
	// BW1W120 10001330
	unsigned long GetReadSize() { return ReadSize; }
	// BW1W120 10001340
	unsigned long GetSendSize() { return SendSize; }
	// BW1W120 10001360
	unsigned long GetMaxForwardings() { return MaxForwardings; }
};
static_assert(sizeof(LHHttp2) == 0x1258, "LHHttp2 size is incorrect");

#endif /* BW1_DECOMP_LH_HTTP_INCLUDED_H */
