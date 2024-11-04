#ifndef BW1_DECOMP_LHDLL_INCLUDED_H
#define BW1_DECOMP_LHDLL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t, uintptr_t */

// Forward Declares

struct LHTransport;

struct LHDLLVftable
{
  uintptr_t field_0x0;
  uintptr_t field_0x4;
};
static_assert(sizeof(struct LHDLLVftable) == 0x8, "Data type is of wrong size");

struct LHDLL
{
  struct LHDLLVftable* vftable;  /* 0x0 */
  uint8_t field_0x4;
  void* hmodule;
  struct LHTransport* transport;
  int field_0x10;
  uint32_t field_0x14;
  uint32_t field_0x18;
  uint32_t field_0x1c;
  char* library_path;  /* 0x20 */
};
static_assert(sizeof(struct LHDLL) == 0x24, "Data type is of wrong size");

static struct LHDLLVftable* const __vt__5LHDLL = (struct LHDLLVftable* const)0x0099f014;

// Static methods

// win1.41 007ad230 mac 100db740 LHDLL::AddToInternalList(LHDLL*)
struct LHDLL* __cdecl AddToInternalList__5LHDLLFP5LHDLL(struct LHDLL* param_1);

// Constructors

// win1.41 007ad370 mac 1061e11c LHDLL::LHDLL(const char*)
struct LHDLL* __fastcall __ct__5LHDLLFPCc(struct LHDLL* this, const void* edx, char* library_path);

// Non-virtual methods

// win1.41 007ad4c0 mac 1061e14c LHDLL::~LHDLL(void)
void __fastcall __dt__5LHDLLFv(struct LHDLL* this);

// win1.41 0087fc60 mac 100d98b0 LHIlib::LH3DRenderClose(void)
int __cdecl LH3DRenderClose__6LHIlibFv(void);

#endif /* BW1_DECOMP_LHDLL_INCLUDED_H */
