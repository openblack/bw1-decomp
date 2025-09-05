#ifndef BW1_DECOMP_LOCAL_BASE_INCLUDED_H
#define BW1_DECOMP_LOCAL_BASE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For size_t */
#include <stdint.h> /* For uint32_t */

#include "Base.h" /* For struct Base */

struct LocalBase
{
  struct Base super;  /* 0x0 */
};
static_assert(sizeof(struct LocalBase) == 0x8, "Data type is of wrong size");

// win1.41 008a9a40 mac 1099bd98 LocalBase::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__9LocalBase asm("??_R4LocalBase@@6B@");

// win1.41 008a9a44 mac 1099bda8 LocalBase::`vftable'
extern const struct BaseVftable __vt__9LocalBase asm("??_7LocalBase@@6B@");

// Static methods

// win1.41 005f8790 mac 1009eb9c LocalBase::operator new(unsigned long)
struct LocalBase* __cdecl __nw__9LocalBaseFUl(size_t size, const char* file_name, uint32_t line);

// Constructors

// win1.41 inlined mac 1034ab30 LocalBase::LocalBase(void)
struct LocalBase* __fastcall __ct__9LocalBaseFv(struct LocalBase* this);

#endif /* BW1_DECOMP_LOCAL_BASE_INCLUDED_H */
