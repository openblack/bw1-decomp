#ifndef BW1_DECOMP_NETWORK_INCLUDED_H
#define BW1_DECOMP_NETWORK_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t, uint8_t */

// Forward Declares

struct LHSession;

struct GNetwork
{
  uint8_t field_0x0;
  uint8_t field_0x1;
  uint8_t field_0x2;
  uint8_t field_0x3;
  uint8_t field_0x4;
  uint8_t field_0x5;
  uint8_t field_0x6;
  uint8_t field_0x7;
  uint8_t field_0x8;
  uint8_t field_0x9;
  uint8_t field_0xa;
  uint8_t field_0xb;
  uint8_t field_0xc;
  uint8_t field_0xd;
  uint8_t field_0xe;
  uint8_t field_0xf;
  struct LHSession* session;  /* 0x10 */
};
static_assert(sizeof(struct GNetwork) == 0x14, "Data type is of wrong size");

// Static methods

// win1.41 006349f0 mac 1010bff0 GNetwork::ProcessOnePacket(void)
bool __stdcall ProcessOnePacket__8GNetworkFv(struct GNetwork* this);
// win1.41 006345e0 mac 10017240 GNetwork::ResetStateDebug(void)
void __cdecl ResetStateDebug__8GNetworkFv(void) asm("?ResetStateDebug@GNetwork@@SAXXZ");

// Non-virtual methods

// win1.41 00635290 mac 100229f0 GNetwork::ProcessOneSuperpacket(void)
uint32_t __fastcall ProcessOneSuperpacket__8GNetworkFv(struct GNetwork* this) asm("?ProcessOneSuperpacket@GNetwork@@QAEIXZ");

#endif /* BW1_DECOMP_NETWORK_INCLUDED_H */
