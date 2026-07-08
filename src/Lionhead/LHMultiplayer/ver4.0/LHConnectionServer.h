#ifndef BW1_DECOMP_LH_CONNECTION_SERVER_INCLUDED_H
#define BW1_DECOMP_LH_CONNECTION_SERVER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

// Forward Declares

class LHConnection;

struct LHConnectionServer
{
	uint32_t field_0x0;

	// Non-virtual methods

	// BW1W120 inlined BW1M100 100e09b0 LHConnectionServer::ConnectToConnection(LHConnection *)
	uint32_t ConnectToConnection(LHConnection* connection);
};

#endif /* BW1_DECOMP_LH_CONNECTION_SERVER_INCLUDED_H */
