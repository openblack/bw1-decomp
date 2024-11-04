#ifndef BW1_DECOMP_LHMP_SERVER_START_INFO_INCLUDED_H
#define BW1_DECOMP_LHMP_SERVER_START_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include <reversing_utils/re_common.h> /* For bool32_t */

#include "LHLobby.h" /* For enum LH_OPERATING_MODE */

// Forward Declares

struct LHNetUser;
struct LHTransportInfo;

struct LHMPServerStartInfo
{
  struct LHNetUser* user;  /* 0x0 */
  struct LHTransportInfo* listener_address;
  char* registered_name;
  uint8_t field_0xc[0x18];
  char* user_file;  /* 0x24 */
  char* game_file;
  enum LH_OPERATING_MODE operating_mode;
  bool32_t run_message_server;  /* 0x30 */
  uint8_t field_0x34[0xc88];
};
static_assert(sizeof(struct LHMPServerStartInfo) == 0xcbc, "Data type is of wrong size");

#endif /* BW1_DECOMP_LHMP_SERVER_START_INFO_INCLUDED_H */
