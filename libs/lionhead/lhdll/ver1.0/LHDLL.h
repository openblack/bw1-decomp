#ifndef BW1_DECOMP_LHDLL_INCLUDED_H
#define BW1_DECOMP_LHDLL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

// Forward Declares

struct LHDLL;
struct LHTransport;

struct LHDLLVftable
{
  uint32_t (__fastcall* GetAPI)(struct LHDLL* this);  /* 0x0 */
  uint32_t (__fastcall* ResetAPI)(struct LHDLL* this);
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

// Object Oriented datastructures

// win1.41 00c0d108 mac inlined LHDLL::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__5LHDLL asm("??_R0?AVLHDLL@@@8");
// win1.41 009b8ea8 mac inlined LHDLL::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__5LHDLL asm("??_R1A@?0A@A@LHDLL@@8");
// win1.41 0099f010 mac 109c41fc LHDLL::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__5LHDLL asm("??_R4LHDLL@@6B@");
// win1.41 0099f014 mac 109c4204 LHDLL::`vftable'
extern const struct LHDLLVftable __vt__5LHDLL asm("??_7LHDLL@@6B@");

// Static methods

// win1.41 007ad230 mac 100db740 LHDLL::AddToInternalList(LHDLL*)
struct LHDLL* __cdecl AddToInternalList__5LHDLLFP5LHDLL(struct LHDLL* param_1) asm("?AddToInternalList@LHDLL@@SAPAV1@PAV1@@Z");

// Constructors

// win1.41 007ad370 mac 1061e11c LHDLL::LHDLL(const char*)
struct LHDLL* __fastcall __ct__5LHDLLFPCc(struct LHDLL* this, const void* edx, char* library_path) asm("??0LHDLL@@QAE@PBD@Z");

// Non-virtual Destructors

// win1.41 007ad4c0 mac 1061e14c LHDLL::~LHDLL(void)
void __fastcall __dt__5LHDLLFv(struct LHDLL* this) asm("??_DLHDLL@@QAEXXZ");

// win1.41 0087fc60 mac 100d98b0 LHIlib::LH3DRenderClose(void)
int __cdecl LH3DRenderClose__6LHIlibFv(void) asm("?LH3DRenderClose@LHIlib@@SAHXZ");

#endif /* BW1_DECOMP_LHDLL_INCLUDED_H */
