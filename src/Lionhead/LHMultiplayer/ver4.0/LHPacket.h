#ifndef BW1_DECOMP_LH_PACKET_INCLUDED_H
#define BW1_DECOMP_LH_PACKET_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t, uint8_t */

#include "LHNetUser.h" /* For struct LH_USER_ID */

struct LHPacketHeader
{
  uint16_t length;  /* 0x0 */
  uint16_t netevent_type;
  struct LH_USER_ID user_id;
};
static_assert(sizeof(struct LHPacketHeader) == 0x8, "Data type is of wrong size");

struct LHPacket
{
  struct LHPacketHeader header;  /* 0x0 */
  uint8_t payload[0x0];
};
static_assert(sizeof(struct LHPacket) == 0x8, "Data type is of wrong size");

#endif /* BW1_DECOMP_LH_PACKET_INCLUDED_H */
