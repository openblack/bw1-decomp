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

// win1.41 00931cc4 mac 10730a2c Heap::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__4Heap asm("??_R4Heap@@6B@");

// win1.41 00931cc8 mac 10730a34 Heap::`vftable'
extern const struct HeapVftable __vt__4Heap asm("??_7Heap@@6B@");

// Non-virtual methods

// win1.41 007e1160 mac 1013a820 Heap::New(int)
void* __fastcall New__4HeapFUl(struct Heap* this, const void* edx, int size) asm("?New@Heap@@QAEPAXH@Z");

struct HeapWithPools
{
  struct Heap super;  /* 0x0 */
};
static_assert(sizeof(struct HeapWithPools) == 0x4, "Data type is of wrong size");

// Non-virtual methods

// win1.41 007e20d0 mac 100404e0 HeapWithPools::New(int)
void* __fastcall New__13HeapWithPoolsFUl(struct HeapWithPools* this, const void* edx, int size) asm("?New@HeapWithPools@@QAEPAXH@Z");

struct UniqueKeyHeap
{
  struct HeapWithPools super;  /* 0x0 */
};
static_assert(sizeof(struct UniqueKeyHeap) == 0x4, "Data type is of wrong size");

// Non-virtual methods

// win1.41 007e1830 mac 100405b0 UniqueKeyHeap::New(int)
void* __fastcall New__13UniqueKeyHeapFUl(struct UniqueKeyHeap* this, const void* edx, int size) asm("?New@UniqueKeyHeap@@QAEPAXH@Z");

#endif /* BW1_DECOMP_HEAP_INCLUDED_H */
