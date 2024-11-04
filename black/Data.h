#ifndef BW1_DECOMP_DATA_INCLUDED_H
#define BW1_DECOMP_DATA_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "Base.h" /* For struct Base */

struct GData
{
  struct Base super;  /* 0x0 */
  uint32_t rand_seed;
  uint32_t field_0xc;
  uint32_t game_turn;  /* 0x10 */
  uint32_t field_0x14;
  uint32_t field_0x18;
  uint32_t field_0x1c;
  uint32_t field_0x20;
  uint32_t field_0x24;
};
static_assert(sizeof(struct GData) == 0x28, "Data type is of wrong size");

static struct BaseVftable* const __vt__5GData = (struct BaseVftable* const)0x008d6034;

// Constructors

// win1.41 00510500 mac 100c0a70 GData::GData(void)
struct GData* __fastcall __ct__5GDataFv(struct GData* this);

// Non-virtual methods

// win1.41 00510650 mac 1002adb0 GData::Rand(long)
uint32_t __fastcall Rand__5GDataFl(struct GData* this, const void* edx, uint32_t max, const char* src_file, uint32_t src_line);
// win1.41 00510750 mac 100c08f0 GData::Reset(void)
void __fastcall Reset__5GDataFv(struct GData* this);
// win1.41 006de530 mac inlined GData::Rand(float)
float __fastcall Rand__5GDataFf(struct GData* this, const void* edx, float scale, const char* src_file, uint32_t src_line);

#endif /* BW1_DECOMP_DATA_INCLUDED_H */
