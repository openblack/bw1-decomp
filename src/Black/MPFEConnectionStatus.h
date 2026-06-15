#ifndef BW1_DECOMP_MPFE_CONNECTION_STATUS_INCLUDED_H
#define BW1_DECOMP_MPFE_CONNECTION_STATUS_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <Lionhead/LHMultiplayer/ver4.0/LHLobby.h> /* For enum LOBBY_TYPE */

struct MPFEConnectionStatus
{
    LOBBY_TYPE type; /* 0x0 */

    // Non-virtual methods

    // win1.41 0062dab0 mac 103a1860 MPFEConnectionStatus::IsLanLobby(void)
    bool IsLanLobby();
    // win1.41 0062dac0 mac 103a1810 MPFEConnectionStatus::IsInternetLobby(void)
    bool IsInternetLobby();
};

#endif /* BW1_DECOMP_MPFE_CONNECTION_STATUS_INCLUDED_H */
