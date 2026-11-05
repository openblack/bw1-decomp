#ifndef BW1_DECOMP_MPFE_FILE_TRANSFER_INCLUDED_H
#define BW1_DECOMP_MPFE_FILE_TRANSFER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <wchar.h>  /* For wchar_t */

struct MPFEPlayerDetails;

#define MPFE_FILE_TRANSFER_CHUNK_SIZE             400
#define MPFE_FILE_TRANSFER_LAN_SEND_INTERVAL      20
#define MPFE_FILE_TRANSFER_INTERNET_SEND_INTERVAL 300

class MPFEFileTransfer
{
public:
	char*              SendText;
	unsigned long      EncodedLength;    /* 0x4 */
	unsigned long      CompressedLength; /* 0x8 */
	char*              Data;             /* 0xc */
	unsigned long      DataSize;         /* 0x10 */
	bool               Receiving;        /* 0x14 */
	unsigned long      ReceivedLength;
	bool               Received;     /* 0x1c */
	MPFEPlayerDetails* Sender;       /* 0x20 */
	bool               Sending;      /* 0x24 */
	unsigned long      SentLength;   /* 0x28 */
	unsigned long      LastSendTime; /* 0x2c */
	unsigned long      SendInterval; /* 0x30 */

	// BW1W120 0062ec40 BW1M119 013ad7e0
	MPFEFileTransfer();
	// BW1W120 0062ec50 BW1M119 013ad6c0
	~MPFEFileTransfer();

	// BW1W120 0062ec90 BW1M119 013ad600
	void Reset();
	// BW1W120 0062ece0 BW1M119 null
	void FreeBuffers();
	// BW1W120 0062ed20 BW1M119 013ad3c0
	void Process();
	// BW1W120 0062ee90 BW1M119 013ad320
	static void ProcessIncomming(wchar_t* message, MPFEPlayerDetails* from);
	// BW1W120 0062eed0 BW1M119 013ad060
	void ProcessThisDataIncomming(wchar_t* message, MPFEPlayerDetails* from);
	// BW1W120 0062f0b0 BW1M119 013acd20
	void StartSending(char* data, unsigned long size, bool send_header);
	// BW1W120 0062f1e0 BW1M119 inlined
	void CompressAndEncode();
	// BW1W120 0062f2c0 BW1M119 inlined
	static void Encode(char* text, const char* data, unsigned long length);
	// BW1W120 0062f330 BW1M119 inlined
	void DecodeAndUncompress();
	// BW1W120 0062f3c0 BW1M119 inlined
	static void Decode(char* data, const char* text, unsigned long length);
};

static_assert(sizeof(MPFEFileTransfer) == 0x34, "MPFEFileTransfer size is incorrect");

#endif /* BW1_DECOMP_MPFE_FILE_TRANSFER_INCLUDED_H */
