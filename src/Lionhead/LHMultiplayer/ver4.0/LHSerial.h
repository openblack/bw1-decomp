#ifndef BW1_DECOMP_LH_SERIAL_INCLUDED_H
#define BW1_DECOMP_LH_SERIAL_INCLUDED_H

#include <windows.h> /* For HANDLE, BOOL */

#include <Lionhead/LHLib/ver5.0/LHReturn.h>
#include "LHMultiplayerExport.h"

class LHPacket;
class LHTransportInfo;

struct LHSerialAddress
{
	unsigned short Port;
	unsigned short BaudRate;
	int            Parity;
};

class LH_MULTIPLAYER_API LHSerial
{
public:
	HANDLE    Handle;
	BOOL      Connected;
	LHPacket* Packet;

	// BW1W120 1001bf90 BW1M119 null
	LHSerial();
	// BW1W120 1001bfa0 BW1M119 null
	~LHSerial();
	// BW1W120 1001bfb0 BW1M119 null
	LH_RETURN Connect(LHTransportInfo* info);
	// BW1W120 1001c0e0 BW1M119 null
	LH_RETURN Disconnect();
	// BW1W120 1001c130 BW1M119 null
	LH_RETURN Send(void* data, unsigned long size);
	// BW1W120 1001c150 BW1M119 null
	LH_RETURN Receive(void* data, unsigned long size);
	// BW1W120 1001c190 BW1M119 null
	LH_RETURN SendPacket(LHPacket* packet);
	// BW1W120 1001c1b0 BW1M119 null
	LH_RETURN RecievePacket(LHPacket** packet);
	// BW1W120 1001c230 BW1M119 null
	unsigned long GetWaitingSize();
};

#endif /* BW1_DECOMP_LH_SERIAL_INCLUDED_H */
