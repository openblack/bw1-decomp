#ifndef BW1_DECOMP_LH_HEAP2_INCLUDED_H
#define BW1_DECOMP_LH_HEAP2_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t, uint32_t */

#include <map>

// Forward declares
struct Heap;
struct HeapWithPools;
struct UniqueKeyHeap;

// 12-byte header written at the START of every free region. The free list is
// doubly linked through Next/Prev; Size counts the whole region including this
// header.
struct FreeList
{
	unsigned int Size; /* 0x0 */
	FreeList*    Next; /* 0x4 */
	FreeList*    Prev; /* 0x8 */

	// Non-virtual methods

	// BW1W120 007e1620 FreeList::Init(unsigned long)
	FreeList* Init(unsigned int size);
	// BW1W120 007e1630 FreeList::ExtendSizeIfAddressNextTo(unsigned char const *, unsigned long)
	int ExtendSizeIfAddressNextTo(const unsigned char* addr, unsigned int size);
	// BW1W120 007e1660 FreeList::UseMemory(unsigned long)
	void* UseMemory(unsigned int size);
};
static_assert(sizeof(FreeList) == 0xc, "Data type is of wrong size");

// One ~8 KB chunk of fixed-size blocks. The chunk header is 8 bytes; the blocks
// begin at offset 0x8. Free blocks are threaded through an intrusive free list.
struct LHPool
{
	LHPool* Next;     /* 0x0 next chunk in the bucket's list */
	void*   FreeHead; /* 0x4 head of the intrusive free-block list */

	// Static methods

	// BW1W120 007e1f70 LHPool::AllocateFromPool(LHPool *&, int, Heap *)
	static void* AllocateFromPool(LHPool*& slot, int blockSize, Heap* heap);
	// BW1W120 007e2010 LHPool::ReleaseFromPool(LHPool *&, void *, int, Heap *)
	static int ReleaseFromPool(LHPool*& slot, void* ptr, int blockSize, Heap* heap);
	// BW1W120 007e2170 LHPool::GetCapacity(int)
	static int GetCapacity(int blockSize);
	// BW1W120 inlined LHPool::GetSize(int)
	static int GetSize(int blockSize);
};
static_assert(sizeof(LHPool) == 0x8, "Data type is of wrong size");

// The 4-byte key header that sits immediately before every UniqueKeyHeap
// allocation.
struct HeapKey
{
	unsigned int UniqueId; /* 0x0 */
};

// Test/Alloc/Check record for the standalone Win32-heap stress test.
struct timcheck
{
	uint16_t Size;   /* 0x0 */
	void*    Buffer; /* 0x4 */
};

// A free-list allocator over one fixed, pre-allocated memory region. Foundation
// of the Heap family; HeapWithPools and UniqueKeyHeap stack on top by single
// inheritance. Field names MemoryPool/Size/FreeListCount/Allocates/Deallocates
// are the original identifiers recovered from GetDebugText's format string.
struct Heap
{
	// Implicit vptr at 0x0 (Heap::`vftable' = 0x931cc8), emitted by the virtual
	// methods below.
	FreeList*      Head;            /* 0x4  first free region (LHListHead2::Head) */
	int            FreeListCount;   /* 0x8  number of free regions */
	FreeList*      Tail;            /* 0xc  last free region (LHListHead2::Tail) */
	unsigned char* MemoryPool;      /* 0x10 base of the managed region */
	unsigned int   Size;            /* 0x14 region size in bytes */
	int            Allocates;       /* 0x18 debug counter */
	int            Deallocates;     /* 0x1c debug counter */
	FreeList*      InitialFreeNode; /* 0x20 = MemoryPool; the initial single free node */
	unsigned int   field_24;        /* 0x24 3rd ctor arg; stored, never read */
	int            field_28;        /* 0x28 only copied by HeapStore */

	// Constructors

	// BW1W120 007e0fa0 Heap::Heap(unsigned char *, unsigned long, unsigned long)
	Heap(unsigned char* base, unsigned int size, unsigned int a4);

	// Static methods

	// BW1W120 007e10e0 Heap::Create(unsigned long, unsigned long)
	static Heap* Create(unsigned int size, unsigned int a2);

	// Virtual methods

	// BW1W120 007e1020 Heap::SetToZero(void)
	virtual void SetToZero();
	// BW1W120 00643400 Heap::GetActualMemoryRequired(unsigned long)
	// TODO: symbols.txt records this as ?GetActualMemoryRequired@Heap@@UBEXI@Z
	// (void return), but the code returns the size unchanged. Out of the
	// LHHeap2.cpp split (COMDAT-placed at 0x643400).
	virtual unsigned int GetActualMemoryRequired(unsigned int size) const;

	// Non-virtual methods

	// BW1W120 007e1160 Heap::New(int)
	void* New(int size);
	// BW1W120 007e11d0 Heap::NewArray(unsigned long)
	void* NewArray(unsigned int size);
	// BW1W120 007e1200 Heap::Delete(void *, unsigned long)
	int Delete(void* ptr, unsigned int size);
	// BW1W120 007e1220 Heap::DeleteArray(void *)
	int DeleteArray(void* ptr);
	// BW1W120 007e1240 Heap::NewFreeList(unsigned char const *, unsigned long)
	FreeList* NewFreeList(unsigned char* addr, unsigned int size);
	// BW1W120 007e12a0 Heap::DeleteFreeList(FreeList *)
	FreeList* DeleteFreeList(FreeList* node);
	// BW1W120 007e12f0 Heap::FindFreeInFreeList(unsigned long)
	FreeList* FindFreeInFreeList(unsigned int size) const;
	// BW1W120 007e1330 Heap::ExtendFreeList(unsigned char *, unsigned long)
	int ExtendFreeList(unsigned char* addr, unsigned int size);
	// BW1W120 007e1380 Heap::IsAddressInMemoryPool(void const *)
	int IsAddressInMemoryPool(const void* addr) const;
	// BW1W120 007e13b0 Heap::GetOffsetFromAddress(void const *)
	int GetOffsetFromAddress(const void* addr) const;
	// BW1W120 007e13c0 Heap::Defragment(void)
	void Defragment();
	// BW1W120 007e1420 Heap::GetFreeMemory(void)
	int GetFreeMemory() const;
	// BW1W120 007e1440 Heap::GetMemoryUsed(void)
	int GetMemoryUsed() const;
	// BW1W120 007e1450 Heap::GetAddressFromOffset(unsigned long)
	void* GetAddressFromOffset(unsigned int offset) const;
	// BW1W120 007e1460 Heap::GetDesireToDefragment(void)
	double GetDesireToDefragment() const;
	// BW1W120 007e1480 Heap::GetLargestMemoryFragment(void)
	unsigned int GetLargestMemoryFragment() const;
	// BW1W120 007e14b0 Heap::GetDebugText(char *)
	char* GetDebugText(char* buf) const;
};
static_assert(sizeof(Heap) == 0x2c, "Data type is of wrong size");

// Adds size-bucketed object pools (LHPool) on top of Heap. Requests smaller than
// 256 bytes are rounded up to a multiple of 8 and served from a per-bucket
// LHPool free list; larger requests fall through to Heap.
struct HeapWithPools : Heap
{
	std::map<int, LHPool*> PoolMap;   /* 0x2c opaque std::map<int,LHPool*> */
	LHPool*                Pools[32]; /* 0x3c buckets 8,16,..,256 */

	// Constructors

	// BW1W120 inlined HeapWithPools::HeapWithPools(unsigned char *, unsigned long, unsigned long)
	HeapWithPools(unsigned char* base, unsigned int size, unsigned int a4);

	// Non-virtual methods

	// BW1W120 007e20d0 HeapWithPools::New(int)
	void* New(int size);
	// BW1W120 007e2110 HeapWithPools::Delete(void *, unsigned long)
	int Delete(void* ptr, unsigned int size);
};
static_assert(sizeof(HeapWithPools) == 0xbc, "Data type is of wrong size");

// Tags each allocation with a monotonically increasing unique key, stored in a
// 4-byte HeapKey header immediately before the returned pointer. Used to catch
// use-after-free and wild pointers. This is the primary game allocator (gBaseHeap).
struct UniqueKeyHeap : HeapWithPools
{
	unsigned int NextUniqueId; /* 0xbc starts at 1 */

	// Constructors

	// BW1W120 007e1670 UniqueKeyHeap::UniqueKeyHeap(unsigned char *, unsigned long, unsigned long)
	UniqueKeyHeap(unsigned char* base, unsigned int size, unsigned int a4);

	// Static methods

	// BW1W120 007e17a0 UniqueKeyHeap::Create(unsigned long, unsigned long)
	static UniqueKeyHeap* Create(unsigned int size, unsigned int a2);

	// Virtual methods

	// BW1W120 007e1780 UniqueKeyHeap::SetToZero(void)
	virtual void SetToZero();
	// BW1W120 00643410 UniqueKeyHeap::GetActualMemoryRequired(unsigned long)
	virtual unsigned int GetActualMemoryRequired(unsigned int size) const;

	// Non-virtual methods

	// BW1W120 007e1830 UniqueKeyHeap::New(int)
	void* New(int size);
	// BW1W120 007e1860 UniqueKeyHeap::NewArray(unsigned long)
	void* NewArray(unsigned int size);
	// BW1W120 007e1890 UniqueKeyHeap::Delete(void *, unsigned long)
	int Delete(void* ptr, unsigned int size);
	// BW1W120 007e18d0 UniqueKeyHeap::DeleteArray(void *)
	int DeleteArray(void* ptr);
	// BW1W120 007e1900 UniqueKeyHeap::UseUniqueId(void *)
	void* UseUniqueId(HeapKey* key);
	// BW1W120 007e1920 UniqueKeyHeap::GetDebugText(char *)
	char* GetDebugText(char* buf) const;
	// BW1W120 007e1960 UniqueKeyHeap::CheckKeyIsValid(HeapKey const *)
	int CheckKeyIsValid(const HeapKey* key) const;
	// BW1W120 007e19a0 UniqueKeyHeap::GetUniqueIdFromAddress(void *)
	int GetUniqueIdFromAddress(void* addr) const;
	// BW1W120 007e19b0 UniqueKeyHeap::GetUniqueIdFromAddressNoCheck(void *)
	int GetUniqueIdFromAddressNoCheck(void* addr) const;
	// BW1W120 007e19e0 UniqueKeyHeap::GetKeyFromAddress(void *)
	HeapKey* GetKeyFromAddress(void* addr) const;
	// BW1W120 007e19f0 UniqueKeyHeap::IsUniqueIdAtAddressTheSame(void *, unsigned long)
	int IsUniqueIdAtAddressTheSame(void* addr, unsigned int id) const;
	// BW1W120 007e1a10 UniqueKeyHeap::GetDebugTextAtAddress(void *, char *)
	char* GetDebugTextAtAddress(void* addr, char* buf) const;
	// BW1W120 007e1a50 UniqueKeyHeap::Check(timcheck *)
	int Check(timcheck* rec);
	// BW1W120 007e1a80 UniqueKeyHeap::Alloc(timcheck *)
	int Alloc(timcheck* rec);
	// BW1W120 007e1b20 UniqueKeyHeap::Test(void)
	void Test();
};
static_assert(sizeof(UniqueKeyHeap) == 0xc0, "Data type is of wrong size");

// A snapshot buffer that can Store/Restore a whole UniqueKeyHeap (state + pool
// bytes + pool map). Mirrors the UniqueKeyHeap layout at 0x00-0xbf, then adds the
// live heap pointer and the saved value of the first free node.
struct HeapStore : UniqueKeyHeap
{
	UniqueKeyHeap* LiveHeap;            /* 0xc0 the UniqueKeyHeap being snapshotted */
	unsigned int   SavedFirstNodeValue; /* 0xc4 */

	// Non-virtual methods

	// BW1W120 007e1bc0 HeapStore::Init(UniqueKeyHeap *)
	int Init(UniqueKeyHeap* heap);
	// BW1W120 007e1be0 HeapStore::Store(void)
	void Store();
	// BW1W120 007e1df0 HeapStore::Restore(void)
	void* Restore();
};
static_assert(sizeof(HeapStore) == 0xc8, "Data type is of wrong size");
// Note: NextUniqueId at 0xbc is inherited from UniqueKeyHeap; HeapStore reuses
// that slot to hold the saved unique-id counter across Store/Restore.

#endif /* BW1_DECOMP_LH_HEAP2_INCLUDED_H */
