#ifndef BW1_DECOMP_LH_COORD_INCLUDED_H
#define BW1_DECOMP_LH_COORD_INCLUDED_H

#include <assert.h> /* For static_assert */

struct LHCoord
{
  int x;  /* 0x0 */
  int y;
};
static_assert(sizeof(struct LHCoord) == 0x8, "Data type is of wrong size");

// Constructors

// win1.41 inlined mac 1006ebc0 LHCoord::LHCoord(LHCoord const &)
inline void __fastcall __ct__7LHCoordFRC7LHCoord(struct LHCoord* this, const void* edx, const struct LHCoord* other)
{
  __asm__ (
  "mov ecx, dword ptr [%1 + 4]\n"
  "mov eax, dword ptr [%1]\n"
  "mov dword ptr [%0], eax\n"
  "mov dword ptr [%0 + 4], ecx\n"
  :
  : "i" (this), "i" (other)
  : "eax", "ecx", "memory"
  );
}

#endif /* BW1_DECOMP_LH_COORD_INCLUDED_H */
