#ifndef BW1_DECOMP_KEY_BUFFER_INCLUDED_H
#define BW1_DECOMP_KEY_BUFFER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t, uint8_t, uintptr_t */

#include "Base.h" /* For struct Base */

struct GKeyBuffer
{
  struct Base super;  /* 0x0 */
  uintptr_t field_0x8;
  uint8_t field_0xc;
  uint8_t field_0xd;
  uint16_t buffered_keys;
};
static_assert(sizeof(struct GKeyBuffer) == 0x10, "Data type is of wrong size");

static struct BaseVftable* __vt__10GKeyBuffer = (struct BaseVftable*)0x008df780;

// Constructors

// win1.41 0054b930 mac inlined GKeyBuffer::GKeyBuffer(void)
struct GKeyBuffer* __fastcall __ct__10GKeyBuffer(struct GKeyBuffer* this);

#endif /* BW1_DECOMP_KEY_BUFFER_INCLUDED_H */
