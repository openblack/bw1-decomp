#ifndef BW1_DECOMP_LH_SOCKET_INCLUDED_H
#define BW1_DECOMP_LH_SOCKET_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

// Forward Declares

struct LHPacket;
class LHTransportInfo;

class LHSocket
{
public:
	uint32_t field_0x4;
	uint32_t field_0x8;
	uint32_t field_0xc;
	uint8_t  IpBin[0x4]; /* 0x10 */
	uint32_t field_0x14;
	uint32_t field_0x18;
	char**   name;
	uint32_t SendBytesTotal; /* 0x20 */
	uint32_t SendBytes;
	uint32_t ConnectionStatus;
};

#endif /* BW1_DECOMP_LH_SOCKET_INCLUDED_H */
