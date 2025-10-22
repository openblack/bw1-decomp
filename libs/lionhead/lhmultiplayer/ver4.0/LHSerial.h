#ifndef BW1_DECOMP_LH_SERIAL_INCLUDED_H
#define BW1_DECOMP_LH_SERIAL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

// Forward Declares

struct LHPacket;

struct LHSerial
{
  uint32_t field_0x0;
  uint32_t field_0x4;
  struct LHPacket* packet;
};
static_assert(sizeof(struct LHSerial) == 0xc, "Data type is of wrong size");

// Non-virtual methods

// win1.41 1001c190 mac inlined LHSerial::SendPacket(LHPacket*)
enum LH_RETURN __fastcall SendPacket__8LHSerialFP8LHPacket(struct LHSerial* this, const void* edx, struct LHPacket* packet) asm("?SendPacket@LHSerial@@QAE?AW4LH_RETURN@@PAULHPacket@@@Z");
// win1.41 1001c1b0 mac inlined LHSerial::RecievePacket(LHPacket **)
enum LH_RETURN __fastcall RecievePacket__8LHSerialFPP8LHPacket(struct LHSerial* this, const void* edx, struct LHPacket** packet) asm("?RecievePacket@LHSerial@@QAE?AW4LH_RETURN@@PAPAULHPacket@@@Z");

#endif /* BW1_DECOMP_LH_SERIAL_INCLUDED_H */
