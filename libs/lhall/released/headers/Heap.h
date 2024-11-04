#ifndef BW1_DECOMP_HEAP_INCLUDED_H
#define BW1_DECOMP_HEAP_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

// Forward Declares

struct Heap;

struct HeapVftable
{
  void (__fastcall* SetToZero)(struct Heap* this);  /* 0x0 */
  void (__fastcall* GetActualMemoryRequired)(const struct Heap* this, const void* edx, uint32_t param_1);
};
static_assert(sizeof(struct HeapVftable) == 0x8, "Data type is of wrong size");

struct Heap
{
  struct HeapVftable vftable;  /* 0x0 */
};
static_assert(sizeof(struct Heap) == 0x8, "Data type is of wrong size");

static struct HeapVftable* __vt__4Heap = (struct HeapVftable*)0x00931cc8;

#endif /* BW1_DECOMP_HEAP_INCLUDED_H */
