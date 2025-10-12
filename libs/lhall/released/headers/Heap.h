#ifndef BW1_DECOMP_HEAP_INCLUDED_H
#define BW1_DECOMP_HEAP_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

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

// Object Oriented datastructures

// win1.41 00bfec28 mac inlined Heap::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__4Heap asm("??_R0?AVHeap@@@8");
// win1.41 009b3018 mac inlined Heap::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__4Heap asm("??_R1A@?0A@A@Heap@@8");
// win1.41 009b3030 mac inlined Heap::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__4Heap asm("??_R2Heap@@8");
// win1.41 009b3038 mac inlined Heap::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__4Heap asm("??_R3Heap@@8");
// win1.41 00931cc4 mac 10730a2c Heap::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__4Heap asm("??_R4Heap@@6B@");
// win1.41 00931cc8 mac 10730a34 Heap::`vftable'
extern const struct HeapVftable __vt__4Heap asm("??_7Heap@@6B@");

// Non-virtual methods

// win1.41 007e1160 mac 1013a820 Heap::New(int)
void* __fastcall New__4HeapFUl(struct Heap* this, const void* edx, int size) asm("?New@Heap@@QAEPAXH@Z");

// Override methods

// win1.41 007e1020 mac 1013ab30 Heap::SetToZero(void)
void __fastcall SetToZero__4HeapFv(struct Heap* this) asm("?SetToZero@Heap@@UAEXXZ");
// win1.41 00643400 mac 1013ae40 Heap::GetActualMemoryRequired( const(unsigned long))
void __fastcall GetActualMemoryRequired__4HeapCFUl(const struct Heap* this, const void* edx, uint32_t param_1) asm("?GetActualMemoryRequired@Heap@@UBEXI@Z");

struct HeapWithPools
{
  struct Heap super;  /* 0x0 */
};
static_assert(sizeof(struct HeapWithPools) == 0x4, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bfebd0 mac inlined HeapWithPools::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__13HeapWithPools asm("??_R0?AVHeapWithPools@@@8");
// win1.41 009b2f90 mac inlined HeapWithPools::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__13HeapWithPools asm("??_R1A@?0A@A@HeapWithPools@@8");

// Non-virtual methods

// win1.41 007e20d0 mac 100404e0 HeapWithPools::New(int)
void* __fastcall New__13HeapWithPoolsFUl(struct HeapWithPools* this, const void* edx, int size) asm("?New@HeapWithPools@@QAEPAXH@Z");

struct UniqueKeyHeap
{
  struct HeapWithPools super;  /* 0x0 */
};
static_assert(sizeof(struct UniqueKeyHeap) == 0x4, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bfebf0 mac inlined UniqueKeyHeap::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__13UniqueKeyHeap asm("??_R0?AVUniqueKeyHeap@@@8");
// win1.41 009b2fa8 mac inlined UniqueKeyHeap::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__13UniqueKeyHeap asm("??_R1A@?0A@A@UniqueKeyHeap@@8");

// Non-virtual methods

// win1.41 007e1830 mac 100405b0 UniqueKeyHeap::New(int)
void* __fastcall New__13UniqueKeyHeapFUl(struct UniqueKeyHeap* this, const void* edx, int size) asm("?New@UniqueKeyHeap@@QAEPAXH@Z");

struct HeapStore
{
  struct UniqueKeyHeap super;  /* 0x0 */
};
static_assert(sizeof(struct HeapStore) == 0x4, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bfec10 mac inlined HeapStore::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__9HeapStore asm("??_R0?AVHeapStore@@@8");
// win1.41 009b2fc0 mac inlined HeapStore::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__9HeapStore asm("??_R1A@?0A@A@HeapStore@@8");
// win1.41 009b2fd8 mac inlined HeapStore::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__9HeapStore asm("??_R2HeapStore@@8");
// win1.41 009b2ff0 mac inlined HeapStore::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__9HeapStore asm("??_R3HeapStore@@8");

// Override methods

// win1.41 007e1780 mac inlined HeapStore::SetToZero(void)
void __fastcall SetToZero__9HeapStoreFv(struct Heap* this) asm("?SetToZero@HeapStore@@UAEXXZ");
// win1.41 00643410 mac inlined HeapStore::GetActualMemoryRequired( const(unsigned long))
void __fastcall GetActualMemoryRequired__9HeapStoreCFUl(const struct Heap* this, const void* edx, uint32_t param_1) asm("?GetActualMemoryRequired@HeapStore@@UBEXI@Z");

#endif /* BW1_DECOMP_HEAP_INCLUDED_H */
