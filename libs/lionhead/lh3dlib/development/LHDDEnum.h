#ifndef BW1_DECOMP_LHDD_ENUM_INCLUDED_H
#define BW1_DECOMP_LHDD_ENUM_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

struct LHDDEnum
{
  char display_name[0xf8];  /* 0x0 */
  uint8_t field_0xf8[0x3e0];
};
static_assert(sizeof(struct LHDDEnum) == 0x4d8, "Data type is of wrong size");

// Non-virtual methods

// win1.41 007dd010 mac 1014d920 LHDDEnum::~LHDDEnum(void)
void __fastcall __dt__8LHDDEnumFv(struct LHDDEnum* this) asm("??_DLHDDEnum@@QAEXXZ");

#endif /* BW1_DECOMP_LHDD_ENUM_INCLUDED_H */
