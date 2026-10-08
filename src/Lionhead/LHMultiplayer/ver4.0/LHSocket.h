#ifndef BW1_DECOMP_LH_SOCKET_INCLUDED_H
#define BW1_DECOMP_LH_SOCKET_INCLUDED_H

#include <assert.h>   /* For static_assert */
#include <stdint.h>   /* For uint32_t */
#include <winsock2.h> /* For SOCKET, sockaddr_in, hostent */

#include <Lionhead/LHLib/ver5.0/LHReturn.h> /* For enum LH_RETURN */
#include "LHMultiplayerExport.h"

class LHPacket;
class LHTransportInfo;

class LH_MULTIPLAYER_API LHSocket
{
public:
	// BW1W120 1001fe20 BW1M119 01115440 (LHCombined Release)
	LHSocket();
	// BW1W120 1001fe40 BW1M119 011153c0 (LHCombined Release)
	~LHSocket();

	// BW1W120 purecall BW1M119 purecall
	virtual LH_RETURN Connect(LHTransportInfo* transport_info) = 0;
	// BW1W120 purecall BW1M119 purecall
	virtual LH_RETURN SendDatagram(void* data, unsigned long size, LHTransportInfo* transport_info) = 0;
	// BW1W120 purecall BW1M119 purecall
	virtual LH_RETURN SendDatagramPacket(LHPacket* packet, LHTransportInfo* transport_info) = 0;
	// BW1W120 purecall BW1M119 purecall
	virtual LH_RETURN Disconnect() = 0;
	// BW1W120 purecall BW1M119 purecall
	virtual LH_RETURN Send(void* data, long size) = 0;
	// BW1W120 purecall BW1M119 purecall
	virtual LH_RETURN Receive(void* data, long size, int flags) = 0;
	// BW1W120 purecall BW1M119 purecall
	virtual LH_RETURN SendPacket(LHPacket* packet) = 0;
	// BW1W120 purecall BW1M119 purecall
	virtual LH_RETURN ReceivePacket(LHPacket** packet) = 0;
	// BW1W120 purecall BW1M119 purecall
	virtual LH_RETURN ListenForBroadcastRequests(LHTransportInfo* transport_info) = 0;
	// BW1W120 purecall BW1M119 purecall
	virtual LH_RETURN ReceiveUDPPacket(LHPacket** packet, unsigned long size, LHTransportInfo* transport_info) = 0;

	// BW1W120 1001fe50 BW1M119 01115360 (LHCombined Release)
	static void Shutdown();
	// BW1W120 1001fe60 BW1M119 011152b0 (LHCombined Release)
	static void Startup();
	// BW1W120 1001fef0 BW1M119 01114fe0 (LHCombined Release)
	static LH_RETURN WaitForSocketEvents(unsigned int* sockets, unsigned short count, timeval* timeout);
	// BW1W120 1001fed0 BW1M119 011151a0 (LHCombined Release)
	void ClearLastUDPPacketBuffer();
	// BW1W120 10020000 BW1M119 01114ef0 (LHCombined Release)
	LH_RETURN Resolving(char* host);
	// BW1W120 10020060 BW1M119 01114e50 (LHCombined Release)
	LH_RETURN GetIP(char* ip);
	// BW1W120 100200b0 BW1M119 01114e00 (LHCombined Release)
	long GetIPbin();
	// BW1W120 100200c0 BW1M119 01114d90 (LHCombined Release)
	long GetPort();
	// BW1W120 100200e0 BW1M119 01114d00 (LHCombined Release)
	LH_RETURN GetName(char* name);
	// BW1W120 10020130 BW1M119 01114cc0 (LHCombined Release)
	long GetSendBytesTotal();
	// BW1W120 10020140 BW1M119 01114c80 (LHCombined Release)
	long GetSendBytes();
	// BW1W120 10020150 BW1M119 01114b50 (LHCombined Release)
	LH_RETURN IsReadData();
	// BW1W120 100201e0 BW1M119 01114a20 (LHCombined Release)
	LH_RETURN IsExcept();

	// BW1W120 1006a5b4 BW1M119 01358a80 (LHCombined Release)
	static int InitFlag;

protected:
	// BW1W120 1001fea0 BW1M119 01115220 (LHCombined Release)
	void ClearAllData();

public:
	LHPacket*   LastUDPPacket;  /* 0x4 */
	LHPacket*   LastReadPacket; /* 0x8 */
	sockaddr_in Address;        /* 0xc */
	hostent*    HostEntry;      /* 0x1c */
	uint32_t    SendBytesTotal; /* 0x20 */
	uint32_t    SendBytes;      /* 0x24 */
	SOCKET      Socket;         /* 0x28 */
};
static_assert(sizeof(LHSocket) == 0x2c, "LHSocket size is incorrect");

#endif /* BW1_DECOMP_LH_SOCKET_INCLUDED_H */
