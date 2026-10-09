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

	// BW1W120 10001440 BW1M119 010e2370 (LHCombined Release)
	void ClearAllData()
	{
		type = (LH_TRANSPORT_TYPE)0;
		data_len = 0;
		memset(data, 0, sizeof(data));
	}
	// BW1W120 10001460 BW1M119 0103efb0 (LHCombined Release)
	LHTransportInfo() { ClearAllData(); }
	// BW1W120 10001490 BW1M119 inlined
	LHTransportInfo(LH_TRANSPORT_TYPE type, unsigned long length, void* data) { Set(type, length, data); }
	// BW1W120 100014d0 BW1M119 010e2de0 (LHCombined Release)
	void Set(LHTransportInfo* transport_info)
	{
		type = transport_info->type;
		data_len = transport_info->data_len;
		memcpy(data, transport_info->data, data_len);
	}
	// BW1W120 10001500 BW1M119 inlined
	LHTransportInfo(LHTransportInfo* transport_info) { Set(transport_info); }
	// BW1W120 10001540 BW1M119 inlined
	void Set(LH_TRANSPORT_TYPE type, char* address) { Set(type, strlen(address) + 1, address); }
	// BW1W120 10001580 BW1M119 inlined
	LHTransportInfo(LH_TRANSPORT_TYPE type, char* address) { Set(type, address); }
	// BW1W120 100015d0 BW1M119 010fd6e0 (LHCombined Release)
	void Set(LHIAddress* address) { Set(LH_TRANSPORT_TYPE_TCP, strlen(address->ip) + 3, address); }
	// BW1W120 10001620 BW1M119 inlined
	LHTransportInfo(LHIAddress* address) { Set(address); }
	// BW1W120 10001670 BW1M119 010e2e70 (LHCombined Release)
	void Set(char* ip, unsigned short port)
	{
		LHIAddress address;
		strcpy(address.ip, ip);
		address.port = port;
		Set(&address);
	}
	// BW1W120 100016f0 BW1M119 010fd660 (LHCombined Release)
	LHTransportInfo(char* ip, unsigned short port)
	{
		LHIAddress address;
		strcpy(address.ip, ip);
		address.port = port;
		Set(&address);
	}
	// BW1W120 10001780 BW1M119 01115ac0 (LHCombined Release)
	void Set(unsigned short port) { Set(LH_TRANSPORT_TYPE_UDP, sizeof(port), &port); }
	// BW1W120 100017b0 BW1M119 inlined
	LHTransportInfo(unsigned short port) { Set(port); }
	// BW1W120 100017f0 BW1M119 010eec30 (LHCombined Release)
	void Set(LH_TRANSPORT_TYPE type)
	{
		this->type = type;
		data_len = 0;
	}
	// BW1W120 10001810 BW1M119 0110b620 (LHCombined Release)
	LHTransportInfo(LH_TRANSPORT_TYPE type) { Set(type); }
	// BW1W120 10001830 BW1M119 010fd790 (LHCombined Release)
	unsigned short GetPort() { return address.port; }
	// BW1W120 10001840 BW1M119 0110cf90 (LHCombined Release)
	char* GetIP() { return address.ip; }
	// BW1W120 10001850 BW1M119 inlined
	long Compare(LHTransportInfo* transport_info)
	{
		if (transport_info != NULL && type == transport_info->type && data_len == transport_info->data_len &&
		    memcmp(data, transport_info->data, data_len) == 0)
			return 0;
		return 1;
	}

	// BW1W120 10001950 BW1M119 010e2f00 (LHCombined Release)
	void Set(LH_TRANSPORT_TYPE type, unsigned long length, void* data);
	// BW1W120 10001990 BW1M119 inlined
	void UpdateLength();

	// BW1W120 100243f0 BW1M119 0111b5a0 (LHCombined Release)
	static LHTransportInfo* Create();

	// BW1W120 10024360 BW1M119 0111b8e0 (LHCombined Release)
	virtual unsigned long GetEncodedLength(unsigned long options, void* context);
	// BW1W120 10024370 BW1M119 0111b780 (LHCombined Release)
	virtual unsigned char* EncodeToBuffer(unsigned char* buffer, unsigned long options, void* context);
	// BW1W120 100243b0 BW1M119 0111b620 (LHCombined Release)
	virtual unsigned char* DecodeFromBuffer(unsigned char* buffer);
	// BW1W120 10024420 BW1M119 0111b520 (LHCombined Release)
	virtual void ClearObject();
};

inline void LHTransportInfo::Set(LH_TRANSPORT_TYPE type, unsigned long length, void* data)
{
	if (length == 0 || data != NULL)
	{
		this->type = type;
		data_len = length;
		if (length != 0)
			memcpy(this->data, data, length);
	}
}

inline void LHTransportInfo::UpdateLength()
{
	if (type >= LH_TRANSPORT_TYPE_TCP && type <= LH_TRANSPORT_TYPE_UDP)
		data_len = strlen(address.ip) + 3;
}

static_assert(sizeof(LHTransportInfo) == 0x74, "LHTransportInfo size is incorrect");

#endif /* BW1_DECOMP_LH_TRANSPORT_INFO_INCLUDED_H */
