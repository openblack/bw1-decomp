#ifndef BW1_DECOMP_CONFIG_INCLUDED_H
#define BW1_DECOMP_CONFIG_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include <lionhead/lhfile/ver3.0/LHOSFile.h> /* For struct LHOSFile */

struct Config
{
  struct LHOSFile file;  /* 0x0 */
  uint8_t field_0x8[0x104];
  int field_0x10c;
};
static_assert(sizeof(struct Config) == 0x110, "Data type is of wrong size");

// Non-virtual methods

// win1.41 0046b1f0 mac 100bf310 Config::Process(void)
void __fastcall Process__6ConfigFv(struct Config* this) asm("?Process@Config@@QAEXXZ");
// win1.41 0046b290 mac 100befa0 Config::ProcessOneGameTurn(void)
void __fastcall ProcessOneGameTurn__6ConfigFv(struct Config* this) asm("?ProcessOneGameTurn@Config@@QAEXXZ");

// win1.41 0046b0b0 mac 100bf450 ConfigGetFPS(void)
int __cdecl ConfigGetFPS__Fv(void);

#endif /* BW1_DECOMP_CONFIG_INCLUDED_H */
