#ifndef BW1_DECOMP_LH_LOBBY_SERVER_INCLUDED_H
#define BW1_DECOMP_LH_LOBBY_SERVER_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "LHConnection.h" /* For struct LHConnection */

struct LHLobbyServer
{
  struct LHConnection connection;  /* 0x0 */
};
static_assert(sizeof(struct LHLobbyServer) == 0x90, "Data type is of wrong size");

#endif /* BW1_DECOMP_LH_LOBBY_SERVER_INCLUDED_H */
