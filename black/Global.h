#ifndef BW1_DECOMP_GLOBAL_INCLUDED_H
#define BW1_DECOMP_GLOBAL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "Debug.h" /* For struct GDebug */

// Forward Declares

struct GAudio;

struct GGlobal
{
  struct GAudio* audio;  /* 0x0 */
  struct GDebug debug;
  void* (__cdecl* field_0x2d2ac)( void );
  uint32_t field_0x2d2b0;
  uint32_t field_0x2d2b4;
  uint32_t field_0x2d2b8;
  uint32_t field_0x2d2bc;
  uint32_t field_0x2d2c0;
  uint32_t field_0x2d2c4;
  uint32_t field_0x2d2c8;
  uint32_t field_0x2d2cc;
  uint32_t field_0x2d2d0;
  uint32_t field_0x2d2d4;
  uint32_t field_0x2d2d8;
  uint32_t field_0x2d2dc;
  uint32_t field_0x2d2e0;
  void* (__cdecl* field_0x2d2e4)( void );
  uint8_t field_0x2d2e8[0xc];
  char current_directory[0x100];  /* 0x2d2f4 */
  uint8_t field_0x2d3f4[0x10c];
};
static_assert(sizeof(struct GGlobal) == 0x2d500, "Data type is of wrong size");

// Non-virtual methods

// win1.41 005910f0 mac 1032d3a0 GGlobal::DisplayPlayerTextMessages(void)
void __fastcall DisplayPlayerTextMessages__7GGlobalFv(struct GGlobal* this) asm("?DisplayPlayerTextMessages@GGlobal@@QAEXXZ");

#endif /* BW1_DECOMP_GLOBAL_INCLUDED_H */
