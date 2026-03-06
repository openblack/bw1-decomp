#ifndef BW1_DECOMP_LH_SERVER_PLAYER_INCLUDED_H
#define BW1_DECOMP_LH_SERVER_PLAYER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <reversing_utils/re_common.h> /* For bool32_t */

#include "LHPlayer.h" /* For struct LHPlayer */

#ifdef __cplusplus

// Forward Declares

class LHConnection;

class LHServerPlayer: public LHPlayer
{
public:
    uint8_t field_0x200[0x10];
    LHConnection* connection; /* 0x210 */
    uint32_t field_0x214;
    bool32_t runs_message_server;
};

#else // __cplusplus

// Forward Declares

struct LHConnection;

struct LHServerPlayer
{
  struct LHPlayer super;  /* 0x0 */
  uint8_t field_0x200[0x10];
  struct LHConnection* connection;  /* 0x210 */
  uint32_t field_0x214;
  bool32_t runs_message_server;
};
static_assert(sizeof(struct LHServerPlayer) == 0x21c, "Data type is of wrong size");

#endif // __cplusplus

#endif /* BW1_DECOMP_LH_SERVER_PLAYER_INCLUDED_H */
