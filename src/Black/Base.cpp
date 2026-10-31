#include "CellSize.h"
#include <Lionhead/LH3DLib/development/LH3DScaleConstants.h>
#include <Lionhead/LH3DLib/development/LH3DMathConstants.h>
#include "TimerConstants.h"
#if !defined(VERSION_BW1W100) && !defined(VERSION_BW1WCI)
#include "CreatureAttitudeConstants.h"
#endif
#include "Base.h"

#include <stdio.h>  /* For fprintf */
#include <string.h> /* For memset */

#include <Lionhead/LH3DLib/development/LH3DColor.h> /* For struct LH3DColor */
#include <Lionhead/LHLib/ver5.0/LHHeap2.h>          /* For struct UniqueKeyHeap */
#ifndef VERSION_BW1WCI
#include <Lionhead/LHLib/ver5.0/LHMemoryLeak.h> /* For class LHMemoryLeak */
#endif
#include <Lionhead/LHLog/ver4.0/LHDebugStack.h> /* For GetCurrentStackString */

#ifdef VERSION_BW1WCI
#include <fstream.h>  /* For ofstream */
#include <typeinfo.h> /* For type_info */

#include <list>
#include <map>
#include <vector>
#endif

#include "BaseInfo.h"
#include "Game.h"      /* For GGame::g_game */
#include "GameStats.h" /* For GameStats::NumBaseAllocations */
#include "Global.h"    /* For GGlobal::Global */

#ifndef VERSION_BW1W100
// BW1W120 004367d0 BW1M119 null
void operator delete(void* ptr, size_t size, const char* file_name, uint32_t line);
// BW1W120 00436820 BW1M119 null
void operator delete[](void* ptr, size_t size, const char* file_name, uint32_t line);
#endif

#ifdef VERSION_BW1WCI
static float spare;
#else
static LHMemoryLeak MemoryLeak;
#endif
static float unused;

uint32_t GBaseInfo::InfoCount;

static bool TrackMemoryLeaks;

#ifdef VERSION_BW1WCI
#define MEMORY_DIAGNOSTIC_FILE_NAME "c:\\MemoryDiagnosticAudit.txt"
#define BASE_ARRAY_MARKER           0xffffffff
#define BASE_ARRAY_HEADER_WORDS     2

void* Base::operator new(size_t size, const char* file_name, uint32_t line)
{
	return operator new(size);
}

void* Base::operator new[](size_t size, const char* file_name, uint32_t line)
{
	return operator new[](size);
}

void operator delete(void* ptr, size_t size, const char* file_name, uint32_t line)
{
	Base::operator delete(ptr, size);
}

void operator delete[](void* ptr, size_t size, const char* file_name, uint32_t line)
{
	Base::operator delete[](ptr, size);
}

template <class T> struct LessTypeInfo
{
	// BW1WCI inlined BW1MCI119 null
	bool operator()(T* const a, T* const b) const { return a->before(*b) != 0; }
};

struct ByteCount
{
	int Bytes;

	// BW1WCI inlined BW1MCI119 null
	ByteCount() : Bytes(0) {}
	// BW1WCI inlined BW1MCI119 null
	operator int&() { return Bytes; }
};

typedef std::map<void*, unsigned int>                                   AllocationSizeMap;
typedef std::map<const type_info*, int, LessTypeInfo<const type_info> > ClassSizeMap;
typedef std::map<type_info*, ByteCount, LessTypeInfo<type_info> >       ClassUsageMap;
typedef std::list<std::pair<Base*, int> >                               AllocationList;

class MemoryDiagnostic
{
public:
	struct MemoryStats;

	// BW1WCI 004396f0 BW1MCI119 null
	void AddHeap(HeapWithPools* heap);
	// BW1WCI inlined BW1MCI119 null
	void AddFreeBlocks(FreeList* free_list);
	// BW1WCI inlined BW1MCI119 null
	void AddBlock(unsigned char*& address, AllocationSizeMap::iterator& freeBlock,
	              AllocationSizeMap::iterator& poolChunk);
	// BW1WCI 00439830 BW1MCI119 null
	void Account(unsigned char*& address, MemoryStats& stats, unsigned int block_size);
	// BW1WCI 004399b0 BW1MCI119 null
	void AddPool(LHPool* pool, unsigned int block_size);
	// BW1WCI 00439bc0 BW1MCI119 null
	void AddPools(LHPool* pool, unsigned int block_size);
	// BW1WCI 00439d00 BW1MCI119 null
	void Print(ostream& out, MemoryStats& stats);
	// BW1WCI inlined BW1MCI119 null
	void Report(ostream& file);

	// BW1WCI 00ccc2e8 BW1MCI119 null
	static ClassSizeMap ClassSizes;

	struct MemoryStats
	{
		unsigned int  Allocated;
		unsigned int  LostInFragmentation;
		unsigned int  ControlStructures;
		unsigned int  Unidentified;
		ClassUsageMap ByClass;

		// BW1WCI 00439640 BW1MCI119 null
		MemoryStats() : Allocated(0), LostInFragmentation(0), ControlStructures(0), Unidentified(0) {}
	};

	// BW1WCI inlined BW1MCI119 null
	void MarkFreeBlocks(std::vector<ByteCount>& freeBlocks, LHPool* pool, unsigned char* first_block,
	                    unsigned int block_size);

	MemoryStats       Heap;
	MemoryStats       Pools;
	unsigned int      PoolSpace;
	AllocationSizeMap PoolChunks;
	AllocationSizeMap FreeBlocks;
};

inline void MemoryDiagnostic::MarkFreeBlocks(std::vector<ByteCount>& freeBlocks, LHPool* pool,
                                             unsigned char* first_block, unsigned int block_size)
{
	for (void** block = (void**)pool->FreeHead; block != NULL; block = (void**)*block)
	{
		freeBlocks[((unsigned char*)block - first_block) / block_size].Bytes = block_size;
	}
}

inline void MemoryDiagnostic::AddFreeBlocks(FreeList* free_list)
{
	for (FreeList* node = free_list; node != NULL; node = node->Next)
	{
		unsigned int size = node->Size;
		FreeBlocks[node] = size;
	}
}

inline void MemoryDiagnostic::AddBlock(unsigned char*& address, AllocationSizeMap::iterator& freeBlock,
                                       AllocationSizeMap::iterator& poolChunk)
{
	if (freeBlock != FreeBlocks.end() && (unsigned char*)freeBlock->first <= address)
	{
		address += freeBlock->second;
		Heap.LostInFragmentation += freeBlock->second;
		freeBlock++;
	}
	else if (poolChunk != PoolChunks.end() && (unsigned char*)poolChunk->first <= address)
	{
		address += poolChunk->second;
		PoolSpace += poolChunk->second;
		poolChunk++;
	}
	else
	{
		Account(address, Heap, 0);
	}
}

class NewAllocationList : public AllocationList
{
public:
	void Add(void* object, unsigned int size);
	void RecordSizes();
};

static AllocationSizeMap AllocationSizeTable;
ClassSizeMap             MemoryDiagnostic::ClassSizes;
static NewAllocationList ObjectAllocations;

static inline void LogAllocation(size_t size, bool32_t array)
{
	if (GGlobal::Global.debug.LogAllocations)
	{
		if (array)
		{
			fprintf(GGame::g_game->AllocationLogFile, "Base new[] called Game Turn %d Size %d\nStack %s\n",
			        GGame::g_game->data.GetGameTurn(), size, GetCurrentStackString());
		}
		else
		{
			fprintf(GGame::g_game->AllocationLogFile, "GT: %d, Base->new(%d)\nstack %s\n",
			        GGame::g_game->data.GetGameTurn(), size, GetCurrentStackString());
		}
	}
}

void* Base::operator new(size_t size)
{
	LogAllocation(size, false);
	void* result = ObjectHeap->New(size);
	ObjectAllocations.Add(result, size);
	memset(result, 0, size);
	GameStats::NumBaseAllocations++;
	return result;
}

void MemoryDiagnostic::AddHeap(HeapWithPools* heap)
{
	AddFreeBlocks(heap->Head);
	AllocationSizeMap::iterator freeBlock = FreeBlocks.begin();
	AllocationSizeMap::iterator poolChunk = PoolChunks.begin();
	PoolSpace = 0;
	unsigned char* address = heap->MemoryPool;
	while (address < heap->MemoryPool + heap->Size)
	{
		AddBlock(address, freeBlock, poolChunk);
	}
}

static inline unsigned int RoundToPoolBlock(unsigned int size, unsigned int block_size)
{
	if (block_size != 0)
	{
		size = (size + (HEAP_POOL_SIZE_STEP - 1)) / HEAP_POOL_SIZE_STEP * HEAP_POOL_SIZE_STEP;
	}
	return size;
}

inline void MemoryDiagnostic::Account(unsigned char*& address, MemoryStats& stats, unsigned int block_size)
{
	address += sizeof(HeapKey);
	uint32_t* header = (uint32_t*)address;
	if (*header == BASE_ARRAY_MARKER)
	{
		header++;
		unsigned int     size = *header;
		const type_info& type = typeid(*(Base*)(header + BASE_ARRAY_HEADER_WORDS));
		stats.ByClass[(type_info*)&type] += size + sizeof(HeapKey);
		stats.Allocated += size + sizeof(HeapKey);
		address += size;
	}
	else
	{
		AllocationSizeMap::iterator known = AllocationSizeTable.find(header);
		if (known != AllocationSizeTable.end())
		{
			unsigned int size = known->second + sizeof(HeapKey);
			size = RoundToPoolBlock(size, block_size);
			size -= sizeof(HeapKey);
			stats.Unidentified += size + sizeof(HeapKey);
			stats.Allocated += size + sizeof(HeapKey);
			address += size;
		}
		else
		{
			const type_info& type = typeid(*(Base*)header);
			unsigned int     size = ClassSizes[&type] + sizeof(HeapKey);
			size = RoundToPoolBlock(size, block_size);
			size -= sizeof(HeapKey);
			stats.ByClass[(type_info*)&type] += size + sizeof(HeapKey);
			stats.Allocated += size + sizeof(HeapKey);
			address += size;
		}
	}
}

inline void MemoryDiagnostic::AddPool(LHPool* pool, unsigned int block_size)
{
	unsigned int capacity = LHPool::GetCapacity(block_size);
	PoolChunks[pool] = pool->Size + sizeof(LHPool);
	std::vector<ByteCount> freeBlocks;
	freeBlocks.resize(capacity);
	Pools.ControlStructures += sizeof(LHPool);
	unsigned char* address = (unsigned char*)(pool + 1);
	MarkFreeBlocks(freeBlocks, pool, address, block_size);
	for (unsigned int i = 0; i < capacity; i++)
	{
		if (freeBlocks[i].Bytes != 0)
		{
			Pools.LostInFragmentation += block_size;
			address += block_size;
		}
		else
		{
			Account(address, Pools, block_size);
		}
	}
}

void MemoryDiagnostic::AddPools(LHPool* pool, unsigned int block_size)
{
	while (pool != NULL)
	{
		AddPool(pool, block_size);
		pool = pool->Next;
	}
}

void MemoryDiagnostic::Print(ostream& out, MemoryStats& stats)
{
	out << "Allocated\t" << stats.Allocated << "\n";
	out << "LostInFragmentation\t" << stats.LostInFragmentation << "\n";
	out << "ControlStructures\t" << stats.ControlStructures << "\n";
	out << "By class:" << "\n";
	out << "\tclass:\"<unidentified>\"\tused:\t" << stats.Unidentified << "\n";
	for (ClassUsageMap::iterator it = stats.ByClass.begin(); it != stats.ByClass.end(); it++)
	{
		int size = ClassSizes[it->first];
		out << "\tclass:\"" << it->first->name() << "\"\tused:\t" << it->second << "\tsize:\t" << size << "\n";
	}
}

inline void NewAllocationList::RecordSizes()
{
	AllocationSizeTable.clear();
	for (iterator it = begin(); it != end(); it++)
	{
		AllocationSizeTable[it->first] = it->second;
	}
}

inline void MemoryDiagnostic::Report(ostream& file)
{
	UniqueKeyHeap* heap = Base::ObjectHeap;
	for (int i = 0; i < HEAP_POOL_COUNT; i++)
	{
		LHPool* pool = heap->Pools[i];
		if (pool != NULL)
		{
			AddPool(pool, (i + 1) * HEAP_POOL_SIZE_STEP);
			AddPools(pool->Next, (i + 1) * HEAP_POOL_SIZE_STEP);
		}
	}
	AddHeap(heap);
	file << "Logging heap\n";
	Print(file, Heap);
	file << "HeapsEstimateOfPoolSpace:\t" << PoolSpace << "\n";
	file << "Logging pools\n";
	Print(file, Pools);
	file << "The actual free blocks: ";
	for (AllocationSizeMap::iterator it = FreeBlocks.begin(); it != FreeBlocks.end(); it++)
	{
		file << "Size: " << it->second << " At: " << it->first << "\n";
	}
}

// BW1WCI inlined BW1MCI119 null
static inline void RecordAllocationSizes()
{
	ObjectAllocations.RecordSizes();
}

inline void NewAllocationList::Add(void* object, unsigned int size)
{
	if (object == NULL)
	{
		RecordAllocationSizes();
		ofstream file(MEMORY_DIAGNOSTIC_FILE_NAME);
		file << "Heap failure diagnostic - allocation request " << size << "\n";
		MemoryDiagnostic report;
		report.Report(file);
		file << "That's all folks. Just flushing...\n";
		file.flush();
	}
	push_back(std::make_pair((Base*)object, (int)size));
}

void* Base::operator new[](size_t size)
{
	LogAllocation(size, true);
	uint32_t  total = size + BASE_ARRAY_HEADER_WORDS * sizeof(uint32_t);
	uint32_t* block = (uint32_t*)ObjectHeap->New(total);
	if (block != NULL)
	{
		*block = BASE_ARRAY_MARKER;
		uint32_t* sizeWord = block + 1;
		*sizeWord = total;
		memset(block + BASE_ARRAY_HEADER_WORDS, 0, size);
		return block + BASE_ARRAY_HEADER_WORDS;
	}
	return NULL;
}
#else
void* Base::operator new(size_t size, const char* file_name, uint32_t line)
{
	if (GGame::g_game != NULL && GGlobal::Global.debug.LogAllocations)
	{
		fprintf(GGame::g_game->AllocationLogFile, "GT: %d, File:%s, Line:%d ", GGame::g_game->data.GetGameTurn(),
		        file_name, line);
	}
	void* result = operator new(size);
	if (TrackMemoryLeaks)
	{
		MemoryLeak.LogAllocation(file_name, line, result, size);
	}
	return result;
}

void* Base::operator new[](size_t size, const char* file_name, uint32_t line)
{
	if (GGame::g_game != NULL && GGlobal::Global.debug.LogAllocations)
	{
		fprintf(GGame::g_game->AllocationLogFile, "GT array: %d, File:%s, Line:%d ", GGame::g_game->data.GetGameTurn(),
		        file_name, line);
	}
	void* result = operator new[](size);
	if (TrackMemoryLeaks)
	{
		MemoryLeak.LogAllocation(file_name, line, result, size);
	}
	return result;
}

#ifndef VERSION_BW1W100
void operator delete(void* ptr, size_t size, const char* file_name, uint32_t line)
{
	if (GGame::g_game != NULL && GGlobal::Global.debug.LogAllocations)
	{
		fprintf(GGame::g_game->AllocationLogFile, "GT: %d, File:%s, Line:%d - DELETING ",
		        GGame::g_game->data.GetGameTurn(), file_name, line);
	}
	Base::operator delete(ptr, size);
}

void operator delete[](void* ptr, size_t size, const char* file_name, uint32_t line)
{
	if (GGame::g_game != NULL && GGlobal::Global.debug.LogAllocations)
	{
		fprintf(GGame::g_game->AllocationLogFile, "GT array: %d, File:%s, Line:%d - DELETING ",
		        GGame::g_game->data.GetGameTurn(), file_name, line);
	}
	Base::operator delete[](ptr, size);
}
#endif

void* Base::operator new(size_t size)
{
	if (GGlobal::Global.debug.LogAllocations)
	{
		fprintf(GGame::g_game->AllocationLogFile, "GT: %d, Base->new(%d)\nstack %s\n",
		        GGame::g_game->data.GetGameTurn(), size, GetCurrentStackString());
	}
	void* result = ObjectHeap->New(size);
	memset(result, 0, size);
	GameStats::NumBaseAllocations++;
	return result;
}

void* Base::operator new[](size_t size)
{
	if (GGlobal::Global.debug.LogAllocations)
	{
		fprintf(GGame::g_game->AllocationLogFile, "Base new[] called Game Turn %d Size %d\nStack %s\n",
		        GGame::g_game->data.GetGameTurn(), size, GetCurrentStackString());
	}
	size_t* block = (size_t*)ObjectHeap->New(size + sizeof(size_t));
	if (block != NULL)
	{
		*block = size + sizeof(size_t);
		memset(block + 1, 0, size);
		return block + 1;
	}
	return NULL;
}

#endif

Base::~Base()
{
	destroyed = true;
}

#ifdef VERSION_BW1WCI
static inline void RecordDeletion(void* ptr)
{
	if (ptr == NULL)
	{
		ObjectAllocations.RecordSizes();
	}
	else
	{
		for (AllocationList::iterator it = ObjectAllocations.begin(); it != ObjectAllocations.end(); ++it)
		{
			if (it->first != ptr)
			{
				int& classSize = MemoryDiagnostic::ClassSizes[&typeid(*it->first)];
				if (classSize != it->second)
				{
					classSize = it->second;
				}
			}
		}
		ObjectAllocations.clear();
	}
}

void Base::operator delete(void* ptr, size_t size)
{
	RecordDeletion(ptr);
	if (GGlobal::Global.debug.LogAllocations)
	{
		fprintf(GGame::g_game->AllocationLogFile, "GT: %d Base delete called Size %d \nStack %s\n",
		        GGame::g_game->data.GetGameTurn(), size, GetCurrentStackString());
	}
	ObjectHeap->Delete(ptr, size);
}

void Base::operator delete[](void* ptr, size_t size)
{
	RecordDeletion(ptr);
	if (GGlobal::Global.debug.LogAllocations && GGame::g_game->AllocationLogFile != NULL)
	{
		fprintf(GGame::g_game->AllocationLogFile, "Base delete[] called Game Turn %d Size %d \nStack %s\n",
		        GGame::g_game->data.GetGameTurn(), size, GetCurrentStackString());
	}
	ObjectHeap->Delete((uint32_t*)ptr - BASE_ARRAY_HEADER_WORDS, *((uint32_t*)ptr - 1));
}
#else
void Base::operator delete(void* ptr, size_t size)
{
	if (GGlobal::Global.debug.LogAllocations)
	{
		fprintf(GGame::g_game->AllocationLogFile, "GT: %d Base delete called Size %d \nStack %s\n",
		        GGame::g_game->data.GetGameTurn(), size, GetCurrentStackString());
	}
	ObjectHeap->Delete(ptr, size);
}

void Base::operator delete[](void* ptr, size_t size)
{
	if (GGlobal::Global.debug.LogAllocations && GGame::g_game->AllocationLogFile != NULL)
	{
		fprintf(GGame::g_game->AllocationLogFile, "Base delete[] called Game Turn %d Size %d \nStack %s\n",
		        GGame::g_game->data.GetGameTurn(), size, GetCurrentStackString());
	}
	ObjectHeap->Delete((size_t*)ptr - 1, *((size_t*)ptr - 1));
}
#endif

#ifndef VERSION_BW1W100
int Base::GetIndexOffset(void* address)
{
	return ObjectHeap->GetOffsetFromAddress(address);
}
#endif

Base* Base::GetIndexPtr(unsigned long offset)
{
	return (Base*)ObjectHeap->GetAddressFromOffset(offset);
}

int Base::GetIndexOffset() const
{
	return ObjectHeap->GetOffsetFromAddress(this);
}

int Base::GetUniqueId() const
{
	return ObjectHeap->GetUniqueIdFromAddress((void*)this);
}

int Base::GetUniqueId(void* address)
{
	return ObjectHeap->GetUniqueIdFromAddress(address);
}

int Base::GetUniqueId(unsigned long offset)
{
	UniqueKeyHeap* heap = ObjectHeap;
	return heap->GetUniqueIdFromAddress(heap->GetAddressFromOffset(offset));
}

#ifndef VERSION_BW1W100
bool32_t Base::IsUniqueIdAtAddressTheSame(void* address, unsigned long id)
{
	return ObjectHeap->IsUniqueIdAtAddressTheSame(address, id);
}
#endif

bool32_t Base::IsUniqueIdAtOffsetTheSame(unsigned long offset, unsigned long id)
{
	UniqueKeyHeap* heap = ObjectHeap;
	return heap->IsUniqueIdAtAddressTheSame(heap->GetAddressFromOffset(offset), id);
}

void Base::SetInfo(BaseInfo* info) const
{
	int offset = ObjectHeap->GetOffsetFromAddress(this);
	int id = ObjectHeap->GetUniqueIdFromAddress((void*)this);
	info->AddressOffset = offset;
	info->UniqueId = id;
}

#ifdef VERSION_BW1WCI
GBaseInfo::GBaseInfo()
{
	index = GBASE_INFO_NO_INDEX;
}

GBaseInfo::~GBaseInfo() {}
#endif

bool32_t BaseInfo::IsValid() const
{
	if (UniqueId != 0 && (UniqueId != BASE_INFO_INVALID || AddressOffset != BASE_INFO_INVALID))
	{
		return Base::IsUniqueIdAtOffsetTheSame(AddressOffset, UniqueId);
	}
	return false;
}

Base* BaseInfo::GetBase() const
{
	if (!IsValid())
	{
		return NULL;
	}
	return Base::GetIndexPtr(AddressOffset);
}

void BaseInfo::SetInvalid()
{
	UniqueId = BASE_INFO_INVALID;
	AddressOffset = BASE_INFO_INVALID;
}

void BaseInfo::Set(Base* base)
{
	if (base != NULL)
	{
		base->SetInfo(this);
	}
	else
	{
		Clear();
	}
}

#ifdef VERSION_BW1WCI
void GBaseInfo::SetInfoID(unsigned long id)
{
	index = id;
}

unsigned long GBaseInfo::GetInfoID() const
{
	return index;
}

GBaseInfo* GBaseInfo::GetInfoPtr(unsigned long id)
{
	GBaseInfo* found = NULL;
	if (id != GBASE_INFO_NO_INDEX)
	{
		for (GBaseInfo* info = GGame::g_game->GameLists.BaseInfos.Get(); info != NULL; info = info->next.Get())
		{
			if (info->GetInfoID() == id)
			{
				found = info;
				break;
			}
		}
	}
	return found;
}

void GBaseInfo::SetInfoID()
{
	GGame::g_game->GameLists.BaseInfos.AddToFirst(this);
}
#else
void GBaseInfo::SetInfoID()
{
	index = InfoCount++;
	GGame::g_game->GameLists.BaseInfos.AddToFirst(this);
}

unsigned long GBaseInfo::GetInfoID() const
{
	return GGame::g_game->GameLists.BaseInfos.GetIndexFromTHead((GBaseInfo*)this);
}

GBaseInfo* GBaseInfo::GetInfoPtr(unsigned long index)
{
	return GGame::g_game->GameLists.BaseInfos.Get(index);
}
#endif

LH3DColor GBaseInfo::GetDebugColor() const
{
	return LH3DColor(0xff, 0xff, 0xff);
}
