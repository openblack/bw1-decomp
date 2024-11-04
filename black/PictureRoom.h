#ifndef BW1_DECOMP_PICTURE_ROOM_INCLUDED_H
#define BW1_DECOMP_PICTURE_ROOM_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include "TempleRoom.h" /* For struct TempleRoom */

struct PictureRoomBase
{
  struct TempleRoom super;  /* 0x0 */
  uint8_t field_0xec[0x74];
};
static_assert(sizeof(struct PictureRoomBase) == 0x160, "Data type is of wrong size");

static struct TempleRoomVftable* const __vt__15PictureRoomBase = (struct TempleRoomVftable* const)0x0099ed78;

// Constructors

// win1.41 0078f110 mac 10114a00 PictureRoomBase::PictureRoomBase(char const *)
struct TempleRoom* __fastcall __ct__15PictureRoomBaseFPCc(struct PictureRoomBase* this, const void* edx, const char* param_1);

#endif /* BW1_DECOMP_PICTURE_ROOM_INCLUDED_H */
