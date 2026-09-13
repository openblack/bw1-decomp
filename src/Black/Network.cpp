#include "Network.h"

#include "ColourConstants.h" /* For White */
#include <Lionhead/LHMultiplayer/ver4.0/LHSession.h>

// BW1W120 00635450. Original Mac name SendPacket(GPacket*, unsigned long).
LH_RETURN GNetwork::fn_00635450(void* packet, unsigned long length)
{
	return session->Write(packet, length);
}
