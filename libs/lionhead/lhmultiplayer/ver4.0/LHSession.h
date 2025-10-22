#ifndef BW1_DECOMP_LH_SESSION_INCLUDED_H
#define BW1_DECOMP_LH_SESSION_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint8_t */

#include "LHConnection.h" /* For struct LHConnection */

struct LHSession
{
  struct LHConnection conn;  /* 0x0 */
  uint8_t field_0x88;  /* 0x90 */
  uint8_t field_0x89;
  uint8_t field_0x8a;
  uint8_t field_0x8b;
  int field_0x8c;
  uint8_t field_0x90;
  uint8_t field_0x91;
  uint8_t field_0x92;
  uint8_t field_0x93;
  uint8_t field_0x94;
  uint8_t field_0x95;
  uint8_t field_0x96;
  uint8_t field_0x97;
  uint8_t field_0x98;  /* 0xa0 */
  uint8_t field_0x99;
  uint8_t field_0x9a;
  uint8_t field_0x9b;
  uint8_t field_0x9c;
  uint8_t field_0x9d;
  uint8_t field_0x9e;
  uint8_t field_0x9f;
  int field_0xa0;
  uint8_t field_0xa4;
  uint8_t field_0xa5;
  uint8_t field_0xa6;
  uint8_t field_0xa7;
  uint8_t field_0xa8;  /* 0xb0 */
  uint8_t field_0xa9;
  uint8_t field_0xaa;
  uint8_t field_0xab;
  uint8_t field_0xac;
  uint8_t field_0xad;
  uint8_t field_0xae;
  uint8_t field_0xaf;
};
static_assert(sizeof(struct LHSession) == 0xb8, "Data type is of wrong size");

// Non-virtual methods

// win1.41 1001dab0 mac 10036a3c LHSession::IsSinglePlayer(void)
bool __fastcall IsSinglePlayer__9LHSessionFv(struct LHSession* this) asm("?IsSinglePlayer@LHSession@@QAE_NXZ");
// win1.41 1001e5e0 mac inlined LHSession::NextPacketIsSuperpacket(void)
bool __fastcall NextPacketIsSuperpacket__9LHSessionFv(struct LHSession* this) asm("?NextPacketIsSuperpacket@LHSession@@QAE_NXZ");

#endif /* BW1_DECOMP_LH_SESSION_INCLUDED_H */
