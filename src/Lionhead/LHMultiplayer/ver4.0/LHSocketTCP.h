#ifndef BW1_DECOMP_LH_SOCKET_TCP_INCLUDED_H
#define BW1_DECOMP_LH_SOCKET_TCP_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "LHSocket.h" /* For class LHSocket */

// Forward Declares

class LHPacket;
class LHTransportInfo;

// TODO: values unknown; only named by CheckActivity's Mac signature.
enum LH_ACTIVITY_TYPE
{
	LH_ACTIVITY_TYPE_0 = 0x0,
};

// TODO: contents unknown; the implicit operator= copies it as one struct, and the
// constructor's speed timer lives in its last 16 bytes.
struct LHSocketTCPStats
{
	uint8_t       field_0x0[0x100];
	unsigned long StartTick; /* 0x100 */
	long          Elapsed;
	float         Speed;
	float         PreviousSpeed;
};

class LH_MULTIPLAYER_API LHSocketTCP : public LHSocket
{
public:
	// BW1W120 10020260 BW1M119 01114900 (LHCombined Release)
	LHSocketTCP();
	// BW1W120 100203d0 BW1M119 011147d0 (LHCombined Release)
	LHSocketTCP(int socket);
	// BW1W120 10020540 BW1M119 01114650 (LHCombined Release)
	LHSocketTCP(int socket, sockaddr_in* address);
	// BW1W120 100210a0 BW1M119 011134a0 (LHCombined Release)
	~LHSocketTCP();

	// BW1W120 100206e0 BW1M119 011143d0 (LHCombined Release)
	virtual LH_RETURN Connect(LHTransportInfo* transport_info);
	// BW1W120 10021860 BW1M119 01112410 (LHCombined Release)
	virtual LH_RETURN SendDatagram(void* data, unsigned long size, LHTransportInfo* transport_info);
	// BW1W120 10021830 BW1M119 01112770 (LHCombined Release)
	virtual LH_RETURN SendDatagramPacket(LHPacket* packet, LHTransportInfo* transport_info);
	// BW1W120 10021030 BW1M119 01113540 (LHCombined Release)
	virtual LH_RETURN Disconnect();
	// BW1W120 10020900 BW1M119 01114300 (LHCombined Release)
	virtual LH_RETURN Send(void* data, long size);
	// BW1W120 10020b80 BW1M119 01113db0 (LHCombined Release)
	virtual LH_RETURN Receive(void* data, long size, int param_3);
	// BW1W120 100210c0 BW1M119 01113400 (LHCombined Release)
	virtual LH_RETURN SendPacket(LHPacket* packet);
	// BW1W120 10021120 BW1M119 01113240 (LHCombined Release)
	virtual LH_RETURN ReceivePacket(LHPacket** packet);
	// BW1W120 10021a20 BW1M119 01112060 (LHCombined Release)
	virtual LH_RETURN ListenForBroadcastRequests(LHTransportInfo* transport_info);
	// BW1W120 10021470 BW1M119 01112cd0 (LHCombined Release)
	virtual LH_RETURN ReceiveUDPPacket(LHPacket** packet, unsigned long size, LHTransportInfo* transport_info);

	// BW1W120 10021500 BW1M119 01112bb0 (LHCombined Release)
	static LH_RETURN sockaddr_inFromLHTransportInfo(sockaddr_in* address, LHTransportInfo* transport_info);
	// BW1W120 10021560 BW1M119 01112aa0 (LHCombined Release)
	static LH_RETURN LHTransportInfoFromsockaddr_in(LHTransportInfo* transport_info, sockaddr_in* address);
	// BW1W120 10021d10 BW1M119 01111d40 (LHCombined Release)
	static char* GetIPAddress();

	// BW1W120 10020960 BW1M119 01114090 (LHCombined Release)
	LH_RETURN PreparePacketToWrite(LHPacket* packet);
	// BW1W120 10020aa0 BW1M119 01113f50 (LHCombined Release)
	LH_RETURN FlushBuffer();
	// BW1W120 10020b50 BW1M119 01113ef0 (LHCombined Release)
	bool Flushed();
	// BW1W120 10020c30 BW1M119 01113ac0 (LHCombined Release)
	LH_RETURN DoAttemptReadPacketNonBlocking();
	// BW1W120 10020e20 BW1M119 01113a60 (LHCombined Release)
	void ResetReadPacket();
	// BW1W120 10020e40 BW1M119 01113850 (LHCombined Release)
	LH_RETURN DecompressPacketIfCompressed();
	// BW1W120 10020f20 BW1M119 01113780 (LHCombined Release)
	void GetLastReadPacket(LHPacket** packet);
	// BW1W120 10020f80 BW1M119 01113660 (LHCombined Release)
	LH_RETURN ReceiveRaw(void* data, long* size);
	// BW1W120 100210e0 BW1M119 01113350 (LHCombined Release)
	LH_RETURN GetNewPacket(unsigned long size);
	// BW1W120 100211b0 BW1M119 01112ff0 (LHCombined Release)
	LH_RETURN AcceptConnections(unsigned short port);
	// BW1W120 10021350 BW1M119 01112e00 (LHCombined Release)
	LH_RETURN GetDatagram(void* data, unsigned long size, unsigned long* received, LHTransportInfo* transport_info,
	                      unsigned long param_5);
	// BW1W120 10021610 BW1M119 01112890 (LHCombined Release)
	LH_RETURN GetNewConnectedSocket(LHSocketTCP** socket, unsigned long param_2);
	// BW1W120 10021be0 BW1M119 01111eb0 (LHCombined Release)
	LH_RETURN GetSocketInfo(LHTransportInfo* transport_info, int local);
	// BW1W120 10021d80 BW1M119 01111b80 (LHCombined Release)
	bool CheckActivity(LH_ACTIVITY_TYPE type);
	// BW1W120 10021e20 BW1M119 01111ab0 (LHCombined Release)
	LH_RETURN SetBlockingMode(bool blocking);
	// BW1W120 10021e80 BW1M119 01111970 (LHCombined Release)
	bool HasTimedOut();

	// BW1W120 100090f0
	void* GetSignal() { return Signal; }
	// BW1W120 10009100
	bool IsDisconnected() { return Socket == INVALID_SOCKET; }
	// BW1W120 10009110
	bool IsConnected() { return Socket != INVALID_SOCKET; }

	// The implicit copy members (10009120/10009230, emitted in LHHttp.cpp) fix these
	// boundaries: operator= copies each array byte by byte and the stats struct as a block.
	char             WriteBuffer[0x20004];  /* 0x2c */
	char             ReadBuffer[0x10002];   /* 0x20030 */
	char*            ReadPointer;           /* 0x30034 */
	char             PacketBuffer[0x20004]; /* 0x30038 */
	char*            PacketStart;           /* 0x5003c */
	char*            PacketEnd;             /* 0x50040 */
	short            field_0x50044;
	unsigned long    field_0x50048;
	unsigned long    field_0x5004c;
	LHSocketTCPStats Stats;  /* 0x50050 */
	void*            Signal; /* 0x50160 */
	bool             field_0x50164;
};
static_assert(sizeof(LHSocketTCP) == 0x50168, "LHSocketTCP size is incorrect");

#endif /* BW1_DECOMP_LH_SOCKET_TCP_INCLUDED_H */
