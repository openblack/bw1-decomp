#ifndef BW1_DECOMP_LH_LOBBY_INCLUDED_H
#define BW1_DECOMP_LH_LOBBY_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "LHConnection.h" /* For struct LHConnection */

// Forward Declares

struct LHMPServerStartInfo;
struct LHNetEvent;

enum LOBBY_TYPE
{
  LOBBY_TYPE_INTERNET = 0x0,
  LOBBY_TYPE_LAN = 0x1,
  _LOBBY_TYPE_COUNT = 0x2
};
static_assert(sizeof(enum LOBBY_TYPE) == 0x4, "Data type is of wrong size");

static const char* LOBBY_TYPE_strs[_LOBBY_TYPE_COUNT] = {
  "LOBBY_TYPE_INTERNET",
  "LOBBY_TYPE_LAN",
};

enum LH_OPERATING_MODE
{
  LH_OPERATING_MODE_0 = 0x0,
  _LH_OPERATING_MODE_COUNT = 0x1
};
static_assert(sizeof(enum LH_OPERATING_MODE) == 0x4, "Data type is of wrong size");

static const char* LH_OPERATING_MODE_strs[_LH_OPERATING_MODE_COUNT] = {
  "LH_OPERATING_MODE_0",
};

struct LHLobby
{
  struct LHConnection connection;  /* 0x0 */
};
static_assert(sizeof(struct LHLobby) == 0x90, "Data type is of wrong size");

// Non-virtual methods

// win1.41 1000cb00 mac 100f0d70 LHLobby::OpenLocalLobby(LHMPServerStartInfo *)
enum LH_RETURN __fastcall OpenLocalLobby__7LHLobbyFP19LHMPServerStartInfo(struct LHLobby* this, const void* edx, struct LHMPServerStartInfo* info) asm("?OpenLocalLobby@LHLobby@@QAE?AW4LH_RETURN@@PAULHMPServerStartInfo@@@Z");
// win1.41 1000d440 mac 100efe80 LHLobby::ProcessLobbyPlayerList(LHNetEvent *)
enum LH_RETURN __fastcall ProcessLobbyPlayerList__7LHLobbyFP10LHNetEvent(struct LHLobby* this, const void* edx, struct LHNetEvent* net_event) asm("?ProcessLobbyPlayerList@LHLobby@@QAE?AW4LH_RETURN@@PAULHNetEvent@@@Z");
// win1.41 005ea900 mac 100ed350 LHLobby::_dt(void)
void __fastcall __dt__7LHLobbyFv(struct LHLobby* this) asm("??_GLHLobby@@UAEPAXI@Z");
// win1.41 007c549c mac 100eced0 LHLobby::Close(void)
void __fastcall Close__7LHLobbyFv(struct LHLobby* this) asm("?Close@LHLobby@@UAEXXZ");
// win1.41 007c54a2 mac 100f05c0 LHLobby::ProcessEvent(LHNetEvent *)
enum LH_RETURN __fastcall ProcessEvent__7LHLobbyFP10LHNetEvent(struct LHLobby* this, const void* edx, struct LHNetEvent* param_1) asm("?ProcessEvent@LHLobby@@UAE?AW4LH_RETURN@@PAULHNetEvent@@@Z");

// win1.41 00885740 mac 1019b710 peerStartListingGames
void __cdecl peerStartListingGames(int** param_1, int param_2, int param_3);

#endif /* BW1_DECOMP_LH_LOBBY_INCLUDED_H */
