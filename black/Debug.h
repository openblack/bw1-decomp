#ifndef BW1_DECOMP_DEBUG_INCLUDED_H
#define BW1_DECOMP_DEBUG_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t, uint32_t, uint8_t */

#include <lhall/released/headers/LHTimer.h> /* For struct LHTimer */

struct GDebug
{
  struct LHTimer field_0x0;
  uint32_t field_0x110;
  uint32_t field_0x114;
  uint32_t field_0x118;
  uint32_t field_0x11c;
  uint32_t field_0x120;
  uint32_t field_0x124;
  uint32_t field_0x128;
  uint32_t field_0x12c;
  uint32_t field_0x130;
  uint32_t field_0x134;
  uint32_t field_0x138;
  uint32_t field_0x13c;
  uint32_t field_0x140;
  uint32_t field_0x144;
  uint32_t field_0x148;
  uint32_t field_0x14c;
  uint32_t field_0x150;
  uint32_t field_0x154;
  uint32_t field_0x158;
  uint32_t field_0x15c;
  uint8_t field_0x160[0x2d040];
  uint32_t field_0x2d1a0;
  uint8_t field_0x2d1a4[0xe0];
  int field_0x2d284;
  uint32_t field_0x2d288;
  uint32_t field_0x2d28c;
  uint32_t field_0x2d290;
  uint32_t field_0x2d294;
  uint32_t field_0x2d298;
  uint32_t field_0x2d29c;
  uint32_t field_0x2d2a0;
  uint32_t field_0x2d2a4;
};
static_assert(sizeof(struct GDebug) == 0x2d2a8, "Data type is of wrong size");

// Static methods

// win1.41 00511da0 mac 1002c710 GDebug::SetMessage(unsigned short, char *,...)
void __cdecl SetMessage__6GDebugFUsPce(struct GDebug* debug, uint16_t param_2, char* fmt, ... ) asm("?SetMessage@GDebug@@SAXGPADZZ");

#endif /* BW1_DECOMP_DEBUG_INCLUDED_H */
