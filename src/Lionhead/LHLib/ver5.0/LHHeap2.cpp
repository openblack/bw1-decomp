#include <Lionhead/LHLib/ver5.0/LHHeap2.h>

#include <stddef.h> /* For size_t */
#include <stdlib.h> /* For rand */
#include <string.h> /* For memset, memcpy, strlen */
#include <stdio.h>  /* For sprintf */
#include <windows.h>

// -----------------------------------------------------------------------------
// External symbols this translation unit depends on.
// -----------------------------------------------------------------------------

// Debug allocator that records the originating file/line.
// BW1W120 007db790 operator new(unsigned int, char const*, unsigned int)
void* operator new(size_t size, const char* file_name, uint32_t line);

// When set, HeapWithPools bypasses the LHPool buckets and routes every request
// straight to the underlying Heap free-list allocator. Defaults to true (pools off).
// BW1W120 00c34098 DoNotUsePools
bool DoNotUsePools = true;

// =============================================================================
// Heap
// =============================================================================

Heap::Heap(unsigned char* base, unsigned int size, unsigned int a4)
{
	Head = NULL;
	FreeListCount = 0;
	Tail = NULL;
	Size = size;
	MemoryPool = base;
	field_24 = a4;
	SetToZero();
}

void Heap::SetToZero()
{
	memset(MemoryPool, 0, Size);
	Head = NULL;
	FreeListCount = 0;
	Tail = NULL;
	unsigned char* memoryPool = MemoryPool;
	unsigned int   size = Size;
	Deallocates = 0;
	InitialFreeNode = (FreeList*)memoryPool;
	((FreeList*)memoryPool)->Init(size);
	FreeList* tail = Tail;
	FreeList* initialFreeNode = InitialFreeNode;
	if (tail)
	{
		tail->Next = initialFreeNode;
		initialFreeNode->Prev = Tail;
		initialFreeNode->Next = NULL;
	}
	else
	{
		Head = initialFreeNode;
	}
	Tail = initialFreeNode;
	FreeListCount = FreeListCount + 1;
	Allocates = 1;
}

unsigned int Heap::GetActualMemoryRequired(unsigned int size) const { return size; }

Heap* Heap::Create(unsigned int size, unsigned int a2)
{
	unsigned char* pool = (unsigned char*)operator new(size, __FILE__, __LINE__);
	if (!pool)
	{
		return NULL;
	}
	Heap* heap = new (__FILE__, __LINE__) Heap(pool, size, a2);
	if (!heap)
	{
		operator delete(pool);
		return NULL;
	}
	return heap;
}

void* Heap::New(int size)
{
	FreeList* node = FindFreeInFreeList(size);
	if (!node)
	{
		Defragment();
		node = FindFreeInFreeList(size);
	}
	if (node)
	{
		void* result;
		if (node->Size == (unsigned int)size)
		{
			DeleteFreeList(node);
			result = node;
		}
		else
		{
			result = node->UseMemory(size);
		}
		++Allocates;
		return result;
	}
	return NULL;
}

void* Heap::NewArray(unsigned int size)
{
	unsigned int* block = (unsigned int*)New(size + 4);
	if (block)
	{
		*block = size + 4;
		return block + 1;
	}
	return NULL;
}

int Heap::Delete(void* ptr, unsigned int size)
{
	++Deallocates;
	return (int)NewFreeList((unsigned char*)ptr, size);
}

int Heap::DeleteArray(void* ptr) { return Delete((char*)ptr - 4, *((unsigned int*)ptr - 1)); }

FreeList* Heap::NewFreeList(unsigned char* addr, unsigned int size)
{
	++Allocates;
	((FreeList*)addr)->Init(size);
	if (Tail)
	{
		Tail->Next = (FreeList*)addr;
		((FreeList*)addr)->Prev = Tail;
		((FreeList*)addr)->Next = NULL;
	}
	else
	{
		Head = (FreeList*)addr;
	}
	Tail = (FreeList*)addr;
	++FreeListCount;
	return (FreeList*)addr;
}

FreeList* Heap::DeleteFreeList(FreeList* node)
{
	if (Head == node)
	{
		Head = node->Next;
	}
	else
	{
		node->Prev->Next = node->Next;
	}
	if (Tail == node)
	{
		Tail = node->Prev;
	}
	else
	{
		node->Next->Prev = node->Prev;
	}
	--FreeListCount;
	node->Next = NULL;
	node->Prev = NULL;
	--Deallocates;
	return node;
}

FreeList* Heap::FindFreeInFreeList(unsigned int size) const
{
	FreeList* node = NULL;
	while (1)
	{
		node = node ? node->Next : Head;
		if (!node)
		{
			break;
		}
		if (node->Size >= size + 12 || node->Size == size)
		{
			return node;
		}
	}
	return NULL;
}

int Heap::ExtendFreeList(unsigned char* addr, unsigned int size)
{
	FreeList* node = NULL;
	while (1)
	{
		node = node ? node->Next : Head;
		if (!node)
		{
			break;
		}
		if (node->ExtendSizeIfAddressNextTo(addr, size))
		{
			return 1;
		}
	}
	return 0;
}

int Heap::IsAddressInMemoryPool(const void* addr) const { return addr >= MemoryPool && addr < &MemoryPool[Size - 4]; }

int Heap::GetOffsetFromAddress(const void* addr) const { return (unsigned char*)addr - MemoryPool; }

void Heap::Defragment()
{
	for (FreeList* node = Head; node != NULL;)
	{
		FreeList*    next = node->Next;
		unsigned int size = node->Size;
		for (FreeList* other = Head; other != NULL; other = other->Next)
		{
			if (other != node && other->ExtendSizeIfAddressNextTo((const unsigned char*)node, size))
			{
				DeleteFreeList(node);
				break;
			}
		}
		node = next;
	}
}

int Heap::GetFreeMemory() const
{
	int       total = 0;
	FreeList* node = NULL;
	while (1)
	{
		node = node ? node->Next : Head;
		if (!node)
		{
			break;
		}
		total += node->Size;
	}
	return total;
}

int Heap::GetMemoryUsed() const
{
	unsigned int size = Size;
	return size - GetFreeMemory();
}

void* Heap::GetAddressFromOffset(unsigned int offset) const { return &MemoryPool[offset]; }

double Heap::GetDesireToDefragment() const { return (unsigned int)FreeListCount * 0.1f; }

unsigned int Heap::GetLargestMemoryFragment() const
{
	FreeList*    node = NULL;
	unsigned int largest = 0;
	while (1)
	{
		node = node ? node->Next : Head;
		if (!node)
		{
			break;
		}
		if (node->Size > largest)
		{
			largest = node->Size;
		}
	}
	return largest;
}

char* Heap::GetDebugText(char* buf) const
{
	int deallocates = Deallocates;
	int allocates = Allocates;
	int freeListCount = FreeListCount;
	sprintf(buf,
	        "\nMemoryPool: %p, Size: %d FreeMemory: %d MemoryUsed: %d FreeListCount: %d\n"
	        "Allocates: %d Dealocates: %d Largest: %d\n",
	        MemoryPool, Size, GetFreeMemory(), GetMemoryUsed(), freeListCount, allocates, deallocates,
	        GetLargestMemoryFragment());
	return buf;
}

// =============================================================================
// FreeList
// =============================================================================

FreeList* FreeList::Init(unsigned int size)
{
	Size = size;
	return (FreeList*)size;
}

int FreeList::ExtendSizeIfAddressNextTo(const unsigned char* addr, unsigned int size)
{
	if (addr == (const unsigned char*)((char*)this + Size))
	{
		Size += size;
		return 1;
	}
	return 0;
}

void* FreeList::UseMemory(unsigned int size)
{
	unsigned int newSize = Size - size;
	Size = newSize;
	return (char*)this + newSize;
}

// =============================================================================
// HeapWithPools
// =============================================================================

HeapWithPools::HeapWithPools(unsigned char* base, unsigned int size, unsigned int a4) : Heap(base, size, a4) {}

void* HeapWithPools::New(int size)
{
	if (DoNotUsePools || (unsigned int)size >= 0x100)
	{
		return Heap::New(size);
	}
	return LHPool::AllocateFromPool(Pools[((unsigned int)size - 1) >> 3], 8 * (((unsigned int)size + 7) >> 3), this);
}

int HeapWithPools::Delete(void* ptr, unsigned int size)
{
	if (DoNotUsePools || size >= 0x100)
	{
		return Heap::Delete(ptr, size);
	}
	return LHPool::ReleaseFromPool(Pools[(size - 1) >> 3], ptr, 8 * ((size + 7) >> 3), this);
}

// =============================================================================
// LHPool
// =============================================================================

int LHPool::GetCapacity(int blockSize) { return 0x2000 / blockSize; }

int LHPool::GetSize(int blockSize) { return blockSize * GetCapacity(blockSize); }

void* LHPool::AllocateFromPool(LHPool*& slot, int blockSize, Heap* heap)
{
	LHPool** link = &slot;
	LHPool*  chunk = slot;
	if (chunk)
	{
		while (!chunk->FreeHead)
		{
			link = &chunk->Next;
			chunk = chunk->Next;
			if (!chunk)
			{
				goto grow;
			}
		}
		void* block = (*link)->FreeHead;
		(*link)->FreeHead = *(void**)block;
		return block;
	}

grow:
	int capacity = GetCapacity(blockSize);
	chunk = (LHPool*)heap->New(blockSize * capacity + 8);
	if (chunk)
	{
		LHPool* block = chunk + 1;
		chunk->Next = NULL;
		int remaining = capacity - 1;
		chunk[1].Next = NULL;
		while (remaining)
		{
			block->FreeHead = (void*)remaining;
			block = (LHPool*)((char*)block + blockSize);
			--remaining;
			block->Next = (LHPool*)((char*)block - blockSize);
		}
		block->FreeHead = (void*)remaining;
		chunk->FreeHead = block;
	}
	*link = chunk;
	if (chunk)
	{
		void** freeHead = (void**)chunk->FreeHead;
		chunk->FreeHead = *freeHead;
		return freeHead;
	}
	return heap->New(blockSize);
}

int LHPool::ReleaseFromPool(LHPool*& slot, void* ptr, int blockSize, Heap* heap)
{
	int result = 0;
	for (LHPool* chunk = slot; chunk != NULL;)
	{
		int offset = (unsigned char*)ptr - (unsigned char*)chunk - 8;
		if (offset < 0 || offset >= blockSize * GetCapacity(blockSize))
		{
			result = 0;
		}
		else
		{
			if (chunk->FreeHead)
			{
				*(void**)ptr = chunk->FreeHead;
				*((int*)ptr + 1) = *((int*)chunk->FreeHead + 1);
				chunk->FreeHead = ptr;
			}
			else
			{
				chunk->FreeHead = ptr;
				*(void**)ptr = NULL;
				*((int*)ptr + 1) = GetCapacity(blockSize);
			}
			result = 2 - (--*((int*)chunk->FreeHead + 1) != 0);
		}
		if (result)
		{
			if (!--result)
			{
				return result;
			}
			if (!--result)
			{
				LHPool* next = chunk->Next;
				result = heap->Delete(chunk, blockSize * GetCapacity(blockSize) + 8);
				slot = next;
				return result;
			}
		}
		else
		{
			chunk = chunk->Next;
		}
	}
	return result;
}

// =============================================================================
// UniqueKeyHeap
// =============================================================================

UniqueKeyHeap::UniqueKeyHeap(unsigned char* base, unsigned int size, unsigned int a4) : HeapWithPools(base, size, a4)
{
	memset(Pools, 0, sizeof(Pools));
	NextUniqueId = 1;
}

void UniqueKeyHeap::SetToZero()
{
	Heap::SetToZero();
	NextUniqueId = 1;
}

unsigned int UniqueKeyHeap::GetActualMemoryRequired(unsigned int size) const { return size + 4; }

UniqueKeyHeap* UniqueKeyHeap::Create(unsigned int size, unsigned int a2)
{
	unsigned char* pool = (unsigned char*)operator new(size, __FILE__, __LINE__);
	if (!pool)
	{
		return NULL;
	}
	UniqueKeyHeap* heap = new (__FILE__, __LINE__) UniqueKeyHeap(pool, size, a2);
	if (!heap)
	{
		operator delete(pool);
		return NULL;
	}
	return heap;
}

void* UniqueKeyHeap::New(int size)
{
	HeapKey* key = (HeapKey*)HeapWithPools::New(size + 4);
	if (key)
	{
		return UseUniqueId(key);
	}
	return NULL;
}

void* UniqueKeyHeap::NewArray(unsigned int size)
{
	HeapKey* key = (HeapKey*)Heap::NewArray(size + 4);
	if (key)
	{
		return UseUniqueId(key);
	}
	return NULL;
}

int UniqueKeyHeap::Delete(void* ptr, unsigned int size)
{
	HeapKey* key = GetKeyFromAddress(ptr);
	int      result = CheckKeyIsValid(key);
	if (result)
	{
		key->UniqueId = 0;
		result = HeapWithPools::Delete(key, size + 4);
	}
	return result;
}

int UniqueKeyHeap::DeleteArray(void* ptr)
{
	HeapKey* key = GetKeyFromAddress(ptr);
	int      result = CheckKeyIsValid(key);
	if (result)
	{
		key->UniqueId = 0;
		result = Heap::DeleteArray(key);
	}
	return result;
}

void* UniqueKeyHeap::UseUniqueId(HeapKey* key)
{
	unsigned int id = NextUniqueId;
	NextUniqueId = id + 1;
	key->UniqueId = id;
	return &key[1];
}

char* UniqueKeyHeap::GetDebugText(char* buf) const
{
	Heap::GetDebugText(buf);
	sprintf(&buf[strlen(buf)], "UniqueKey: %d\n", NextUniqueId);
	return buf;
}

int UniqueKeyHeap::CheckKeyIsValid(const HeapKey* key) const
{
	int result = IsAddressInMemoryPool(key);
	if (!result)
	{
		return result;
	}
	result = key->UniqueId;
	if (!result)
	{
		return result;
	}
	return key->UniqueId < NextUniqueId;
}

int UniqueKeyHeap::GetUniqueIdFromAddress(void* addr) const { return GetUniqueIdFromAddressNoCheck(addr); }

int UniqueKeyHeap::GetUniqueIdFromAddressNoCheck(void* addr) const
{
	HeapKey* key = GetKeyFromAddress(addr);
	if (CheckKeyIsValid(key))
	{
		return key->UniqueId;
	}
	return 0;
}

HeapKey* UniqueKeyHeap::GetKeyFromAddress(void* addr) const { return (HeapKey*)((char*)addr - 4); }

int UniqueKeyHeap::IsUniqueIdAtAddressTheSame(void* addr, unsigned int id) const
{
	return GetUniqueIdFromAddressNoCheck(addr) == (int)id;
}

char* UniqueKeyHeap::GetDebugTextAtAddress(void* addr, char* buf) const
{
	unsigned int offset = GetOffsetFromAddress(addr);
	sprintf(buf, "%p: [key=%d, offset=%d, off->addr=%d]\n", addr, GetKeyFromAddress(addr), offset,
	        GetAddressFromOffset(offset));
	return buf;
}

// =============================================================================
// UniqueKeyHeap — standalone Win32-heap integrity stress test (diagnostic only)
// =============================================================================

// Win32 heap and failure counter used by the Test/Alloc/Check diagnostic.
// BW1W120 00e90600 / 00e905fc
static HANDLE gTestHeap;
static int    gTestFailures;

int UniqueKeyHeap::Check(timcheck* rec)
{
	int             checksum = 0;
	unsigned short* buffer = (unsigned short*)rec->Buffer;
	short           count = *buffer;
	unsigned char*  result = (unsigned char*)(buffer + 4);
	if (count > 0)
	{
		int n = count;
		do
		{
			checksum += *result;
			++result;
			--n;
		} while (n);
	}
	return (int)result;
}

int UniqueKeyHeap::Alloc(timcheck* rec)
{
	int count = rand() % 1000;
	rec->Size = (unsigned short)(count + 8);
	unsigned short* buffer = (unsigned short*)HeapAlloc(gTestHeap, 0, (short)count + 8);
	rec->Buffer = buffer;
	if (!buffer)
	{
		return ++gTestFailures;
	}
	rec->Size = (unsigned short)(count + 8);
	*buffer = (unsigned short)count;
	unsigned char* data = (unsigned char*)rec->Buffer + 8;
	short          checksum = 0;
	for (int i = 0; i < (short)count; ++i)
	{
		unsigned char value = (unsigned char)rand();
		data[i] = value;
		checksum += value;
	}
	((unsigned short*)rec->Buffer)[1] = checksum;
	int result = checksum + 1;
	((int*)rec->Buffer)[1] = result;
	return result;
}

void UniqueKeyHeap::Test()
{
	timcheck records[1000];

	int iteration = 0;
	gTestFailures = 0;
	gTestHeap = HeapCreate(0, Size, Size);
	memset(records, 0, sizeof(records));
	while (1)
	{
		++iteration;
		int       index = rand() % 1000;
		timcheck* rec = &records[index];
		if (rec->Buffer)
		{
			Check(rec);
			HeapFree(gTestHeap, 0, rec->Buffer);
			rec->Buffer = NULL;
			rec->Size = 0;
		}
		else
		{
			Alloc(rec);
		}
		if (iteration % 10000 == 0)
		{
			gTestFailures = 0;
		}
	}
}

// =============================================================================
// HeapStore
// =============================================================================

int HeapStore::Init(UniqueKeyHeap* heap)
{
	Head = NULL;
	FreeListCount = 0;
	Tail = NULL;
	LiveHeap = heap;
	return (int)heap;
}

// TODO: Store/Restore deep-copy the std::map<int,LHPool*> pool map with inlined
// MSVC _Tree operations. Faithful matching of that inlined STL code is deferred;
// the scalar/pool-byte snapshot below reflects the observed behaviour.
void HeapStore::Store()
{
	NextUniqueId = LiveHeap->NextUniqueId; // SavedNextUniqueId slot (0xbc)
	MemoryPool = LiveHeap->MemoryPool;
	Size = LiveHeap->Size;
	Allocates = LiveHeap->Allocates;
	Deallocates = LiveHeap->Deallocates;
	InitialFreeNode = LiveHeap->InitialFreeNode;
	field_24 = LiveHeap->field_24;
	field_28 = LiveHeap->field_28;
	SavedFirstNodeValue = LiveHeap->Head->Size;

	for (int i = 60; i < 188; i += 4)
	{
		*(void**)((char*)this + i) = *(void**)((char*)LiveHeap + i);
	}
	PoolMap = LiveHeap->PoolMap; // deep copy

	Head = LiveHeap->Head;
	Tail = LiveHeap->Tail;
	FreeListCount = LiveHeap->FreeListCount;
	DoNotUsePools = 0;
}

void* HeapStore::Restore()
{
	LiveHeap->NextUniqueId = NextUniqueId; // SavedNextUniqueId slot (0xbc)
	LiveHeap->MemoryPool = MemoryPool;
	LiveHeap->Size = Size;
	LiveHeap->Allocates = Allocates;
	LiveHeap->Deallocates = Deallocates;
	LiveHeap->InitialFreeNode = InitialFreeNode;
	LiveHeap->field_24 = field_24;
	LiveHeap->field_28 = field_28;
	LiveHeap->Head = Head;
	LiveHeap->Tail = Tail;
	LiveHeap->FreeListCount = FreeListCount;

	for (int i = 60; i < 188; i += 4)
	{
		*(void**)((char*)LiveHeap + i) = *(void**)((char*)this + i);
	}
	LiveHeap->PoolMap = PoolMap; // deep copy

	FreeList* tail = LiveHeap->Tail;
	if (tail)
	{
		tail->Next = NULL;
	}
	FreeList* head = LiveHeap->Head;
	if (head)
	{
		head->Size = SavedFirstNodeValue;
	}
	return head;
}
