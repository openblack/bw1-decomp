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
  struct HeapVftable* vftable;  /* 0x0 */
};
static_assert(sizeof(struct Heap) == 0x4, "Data type is of wrong size");

static struct HeapVftable* const __vt__4Heap = (struct HeapVftable* const)0x00931cc8;

// Non-virtual methods

// win1.41 007e1160 mac 1013a820 Heap::New(int)
void* __thiscall New__4HeapFUl(struct Heap* this, const void* edx, int size) asm("?New@Heap@@QAEPAXH@Z");

struct HeapWithPools
{
  struct Heap super;  /* 0x0 */
};
static_assert(sizeof(struct HeapWithPools) == 0x4, "Data type is of wrong size");

// Non-virtual methods

// win1.41 007e20d0 mac 100404e0 HeapWithPools::New(int)
void* __thiscall New__13HeapWithPoolsFUl(struct HeapWithPools* this, const void* edx, int size) asm("?New@HeapWithPools@@QAEPAXH@Z");

struct UniqueKeyHeap
{
  struct HeapWithPools super;  /* 0x0 */
};
static_assert(sizeof(struct UniqueKeyHeap) == 0x4, "Data type is of wrong size");

// Non-virtual methods

// win1.41 007e1830 mac 100405b0 UniqueKeyHeap::New(int)
void* __thiscall New__13UniqueKeyHeapFUl(struct UniqueKeyHeap* this, const void* edx, int size) asm("?New@UniqueKeyHeap@@QAEPAXH@Z");

#endif /* BW1_DECOMP_HEAP_INCLUDED_H */
