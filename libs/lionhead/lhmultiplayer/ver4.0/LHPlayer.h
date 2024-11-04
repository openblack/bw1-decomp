#ifndef BW1_DECOMP_LH_PLAYER_INCLUDED_H
#define BW1_DECOMP_LH_PLAYER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */
#include <uchar.h> /* For char16_t */

#include "LHPacketisableObject.h" /* For struct LHPacketisableObject */
#include "LHTransportInfo.h" /* For struct LHTransportInfo */

struct LHPlayer
{
  struct LHPacketisableObject super;  /* 0x0 */
  char user_filename[0x104];
  void* user_data;  /* 0x108 */
  uint32_t user_data_len;
  char16_t name[0x32];  /* 0x110 */
  uint32_t player_id;  /* 0x174 */
  uint32_t user_id;
  void* system_data;
  struct LHTransportInfo transport_info;  /* 0x180 */
  uint32_t field_0x1f4;
  uint32_t field_0x1f8;
  uint32_t field_0x1fc;
};
static_assert(sizeof(struct LHPlayer) == 0x200, "Data type is of wrong size");

#endif /* BW1_DECOMP_LH_PLAYER_INCLUDED_H */
