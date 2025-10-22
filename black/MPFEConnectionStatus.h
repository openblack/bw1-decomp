#ifndef BW1_DECOMP_MPFE_CONNECTION_STATUS_INCLUDED_H
#define BW1_DECOMP_MPFE_CONNECTION_STATUS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */

#include <lionhead/lhmultiplayer/ver4.0/LHLobby.h> /* For enum LOBBY_TYPE */

struct MPFEConnectionStatus
{
  enum LOBBY_TYPE type;  /* 0x0 */
};
static_assert(sizeof(struct MPFEConnectionStatus) == 0x4, "Data type is of wrong size");

// Non-virtual methods

// win1.41 0062dab0 mac 103a1860 MPFEConnectionStatus::IsLanLobby(void)
bool __fastcall IsLanLobby__20MPFEConnectionStatusFv(struct MPFEConnectionStatus* this) asm("?IsLanLobby@MPFEConnectionStatus@@QAE_NXZ");
// win1.41 0062dac0 mac 103a1810 MPFEConnectionStatus::IsInternetLobby(void)
bool __fastcall IsInternetLobby__20MPFEConnectionStatusFv(struct MPFEConnectionStatus* this) asm("?IsInternetLobby@MPFEConnectionStatus@@QAE_NXZ");

#endif /* BW1_DECOMP_MPFE_CONNECTION_STATUS_INCLUDED_H */
