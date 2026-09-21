#include "Network.h"

#include "ColourConstants.h" /* For White */
#include <Lionhead/LHMultiplayer/ver4.0/LHSession.h>

// Original Mac name SendPacket(GPacket*, unsigned long).
// BW1W120 00635450
LH_RETURN GNetwork::fn_00635450(void* packet, unsigned long length)
{
	return session->Write(packet, length);
}
