#ifndef BW1_DECOMP_MPFE_FILE_TRANSFER_INCLUDED_H
#define BW1_DECOMP_MPFE_FILE_TRANSFER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

struct MPFEPlayerDetails;

class MPFEFileTransfer
{
public:
	char*              SendText;
	uint8_t            field_0x4[0x8];
	char*              Data;      /* 0xc */
	unsigned long      DataSize;  /* 0x10 */
	bool               Receiving; /* 0x14 */
	unsigned long      ReceivedLength;
	bool               Received;     /* 0x1c */
	MPFEPlayerDetails* Sender;       /* 0x20 */
	bool               Sending;      /* 0x24 */
	unsigned long      SentLength;   /* 0x28 */
	unsigned long      LastSendTime; /* 0x2c */
	unsigned long      SendInterval; /* 0x30 */

	// BW1W120 0062ec90 BW1M119 013ad600
	void Reset();
};

static_assert(sizeof(MPFEFileTransfer) == 0x34, "MPFEFileTransfer size is incorrect");

#endif /* BW1_DECOMP_MPFE_FILE_TRANSFER_INCLUDED_H */
