#ifndef BW1_DECOMP_LH_TRANSPORT_INFO_INCLUDED_H
#define BW1_DECOMP_LH_TRANSPORT_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t, uint32_t, uint8_t */
#include <string.h> /* For memcpy, memset, strcpy, strlen */

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

enum
{
	LH_TRANSPORT_DEFAULT_PORT = 2611
};

struct LHIAddress
{
	unsigned short port;
	char           ip[0x64];
};

class LH_MULTIPLAYER_API LHTransportInfo : public LHPacketisableObject
{
public:
	LH_TRANSPORT_TYPE type;     /* 0x4 */
	unsigned long     data_len; /* 0x8 */
	union {
		unsigned char data[0x66]; /* 0xc */
		struct
		{
			unsigned short port;
			char           ip[0x64];
		} address;
		struct
		{
			unsigned long First;
			unsigned long Second;
		} Pair;
	};

	// BW1W120 10001460
	LHTransportInfo() { ClearAllData(); }
	// BW1W120 10001490
	LHTransportInfo(LH_TRANSPORT_TYPE type, unsigned long length, void* data) { Set(type, length, data); }
	// BW1W120 10001500
	LHTransportInfo(LHTransportInfo* transport_info) { Set(transport_info); }
	// BW1W120 10001580
	LHTransportInfo(LH_TRANSPORT_TYPE type, char* address) { Set(type, address); }
	// BW1W120 10001620
	LHTransportInfo(LHIAddress* address) { Set(address); }
	// BW1W120 100016f0
	LHTransportInfo(char* ip, unsigned short port)
	{
		LHIAddress address;
		strcpy(address.ip, ip);
		address.port = port;
		Set(&address);
	}
	// BW1W120 100017b0
	LHTransportInfo(unsigned short port) { Set(port); }
	// BW1W120 10001810
	LHTransportInfo(LH_TRANSPORT_TYPE type) { Set(type); }

	// BW1W120 10024360
	virtual unsigned long GetEncodedLength(unsigned long options, void* context);
	// BW1W120 10024370
	virtual unsigned char* EncodeToBuffer(unsigned char* buffer, unsigned long options, void* context);
	// BW1W120 100243b0 BW1M119 0111b620 (LHCombined Release)
	virtual unsigned char* DecodeFromBuffer(unsigned char* buffer);
	// BW1W120 10024420
	virtual void ClearObject();

	// BW1W120 10001440
	void ClearAllData()
	{
		type = (LH_TRANSPORT_TYPE)0;
		data_len = 0;
		memset(data, 0, sizeof(data));
	}
	// BW1W120 10001950
	void Set(LH_TRANSPORT_TYPE type, unsigned long length, void* data)
	{
		// The out-of-line copy compiles the same with either store order; the inlined
		// copy in LHPOP3::OpenConnectionAsync stores the type first.
		if (length == 0 || data != NULL)
		{
			this->type = type;
			data_len = length;
			if (length != 0)
				memcpy(this->data, data, length);
		}
	}
	// BW1W120 100014d0
	void Set(LHTransportInfo* transport_info)
	{
		type = transport_info->type;
		data_len = transport_info->data_len;
		memcpy(data, transport_info->data, data_len);
	}
	// BW1W120 10001540
	void Set(LH_TRANSPORT_TYPE type, char* address) { Set(type, strlen(address) + 1, address); }
	// BW1W120 100015d0
	void Set(LHIAddress* address) { Set(LH_TRANSPORT_TYPE_TCP, strlen(address->ip) + 3, address); }
	// BW1W120 10001670
	void Set(char* ip, unsigned short port)
	{
		LHIAddress address;
		strcpy(address.ip, ip);
		address.port = port;
		Set(&address);
	}
	// BW1W120 10001780
	void Set(unsigned short port) { Set(LH_TRANSPORT_TYPE_UDP, sizeof(port), &port); }
	// BW1W120 100017f0
	void Set(LH_TRANSPORT_TYPE type)
	{
		this->type = type;
		data_len = 0;
	}
	// BW1W120 10001830
	unsigned short GetPort() { return address.port; }
	// BW1W120 10001840
	char* GetIP() { return address.ip; }
	// BW1W120 10001850
	long Compare(LHTransportInfo* transport_info)
	{
		if (transport_info != NULL && type == transport_info->type && data_len == transport_info->data_len &&
		    memcmp(data, transport_info->data, data_len) == 0)
			return 0;
		return 1;
	}
	// BW1W120 10001990
	void UpdateLength()
	{
		if (type >= LH_TRANSPORT_TYPE_TCP && type <= LH_TRANSPORT_TYPE_UDP)
			data_len = strlen(address.ip) + 3;
	}
};

static_assert(sizeof(LHTransportInfo) == 0x74, "LHTransportInfo size is incorrect");

#endif /* BW1_DECOMP_LH_TRANSPORT_INFO_INCLUDED_H */
