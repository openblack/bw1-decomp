#ifndef BW1_DECOMP_LH_TRANSPORT_INFO_INCLUDED_H
#define BW1_DECOMP_LH_TRANSPORT_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t, uint32_t, uint8_t */
#include <string.h> /* For memcpy, memset */

#include <Lionhead/LHLib/ver5.0/LHReturn.h> /* For enum LH_RETURN */
#include "LHPacketisableObject.h"
#include "LHMultiplayerExport.h"

enum LH_TRANSPORT_TYPE
{
	LH_TRANSPORT_TYPE_BASE = 0x1,
	LH_TRANSPORT_TYPE_SYNC = 0x2,
	LH_TRANSPORT_TYPE_ASYNC = 0x3,
	LH_TRANSPORT_TYPE_TCP = 0x4,
	LH_TRANSPORT_TYPE_UDP = 0x5,
	_LH_TRANSPORT_TYPE_COUNT = 0x6
};

class LH_MULTIPLAYER_API LHTransportInfo : public LHPacketisableObject
{
public:
	LH_TRANSPORT_TYPE type; /* 0x4 */
	int               data_len;
	uint16_t          port;
	char              ip[0x64];

	// BW1W120 10001460
	LHTransportInfo()
	{
		type = (LH_TRANSPORT_TYPE)0;
		data_len = 0;
		memset(&port, 0, sizeof(port) + sizeof(ip));
	}
	// BW1W120 10001490
	LHTransportInfo(LH_TRANSPORT_TYPE transport_type, unsigned long length, void* data)
	{
		Set(transport_type, length, data);
	}
	// BW1W120 10001950
	void Set(LH_TRANSPORT_TYPE transport_type, unsigned long length, void* data)
	{
		if (length == 0 || data != NULL)
		{
			data_len = length;
			type = transport_type;
			if (length != 0)
			{
				memcpy(&port, data, length);
			}
		}
	}
	// BW1W120 10024360
	virtual unsigned long GetEncodedLength(unsigned long options, void* context);
	// BW1W120 10024370
	virtual unsigned char* EncodeToBuffer(unsigned char* buffer, unsigned long options, void* context);

	// BW1W120 100243b0 BW1M119 0111b620 (LHCombined Release)
	virtual uint8_t* DecodeFromBuffer(uint8_t* data);
	// BW1W120 10024420
	virtual void ClearObject();
};

static_assert(sizeof(LHTransportInfo) == 0x74, "LHTransportInfo size is incorrect");

#endif /* BW1_DECOMP_LH_TRANSPORT_INFO_INCLUDED_H */
