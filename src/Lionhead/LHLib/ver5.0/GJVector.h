#ifndef BW1_DECOMP_GJVECTOR_INCLUDED_H
#define BW1_DECOMP_GJVECTOR_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For offsetof */
#include <new>

// On Mac, BW1M119 01422d70 indexes GJArray<GJVector<long> > with a 0x14 stride.
// The empty allocator is a member, not a base: BW1W120 00562654 passes this + 0x10.
template <typename T> class GJVector
{
public:
	class Allocator
	{
	public:
		// DisplayGesture* specialization: BW1M119 014145e0 / 01414664.
		T*   Allocate(long count) { return count ? (T*)new char[count * sizeof(T)] : NULL; }
		void DeAllocate(T* data, long count) { delete[] (char*)data; }
		// (LHPoint); method name reconstructed.
		// BW1W120 00564900
		void Construct(T* destination, const T& value) { new (destination) T(value); }
	};

	T*        Data;            /* 0x0 */
	long      Capacity;        /* 0x4 */
	long      Size;            /* 0x8 */
	long      GrowthIncrement; /* 0xc */
	Allocator MemoryAllocator; /* 0x10 */

	// Instantiations: BW1M119 01002fb0 (GTPointer<GameThing>), 01002f64 (LHPoint).
	GJVector() : Data(NULL), Capacity(0), Size(0), GrowthIncrement(10) {}

	// Instantiations: BW1M119 013e8780 (GTPointer<GameThing>), 013e8444 (LHPoint).
	~GJVector()
	{
		for (T* entry = Data; entry < Data + Size; ++entry)
		{
			entry->~T();
		}
		MemoryAllocator.DeAllocate(Data, Capacity);
	}

	// Instantiations: BW1M119 01002d90 / 01002e04 (GTPointer<GameThing>).
	void Clear()
	{
		for (T* entry = Data; entry < Data + Size; ++entry)
		{
			entry->~T();
		}
		Size = 0;
	}

	// (GTPointer<GameThing>).
	// BW1W120 005647e0
	void PushBack(const T& value)
	{
		if (Capacity == Size)
		{
			Grow(Size + GrowthIncrement);
		}
		MemoryAllocator.Construct(Data + Size, value);
		++Size;
	}

	// (LHPoint), BW1M119 01317390 (GTPointer<GameThing>).
	// BW1W120 00564920
	void Grow(long capacity)
	{
		if (capacity > Capacity)
		{
			T* data = MemoryAllocator.Allocate(capacity);
			T* destination = data;
			for (T* entry = Data; entry < Data + Size; ++entry, ++destination)
			{
				MemoryAllocator.Construct(destination, *entry);
				// The TEdgeInfo instantiation (BW1M119 01405090) proves destruction after each copy.
				entry->~T();
			}
			MemoryAllocator.DeAllocate(Data, Capacity);
			Data = data;
			Capacity = capacity;
		}
	}

private:
	// TODO: Recover copying before enabling it; an implicit shallow copy would double-free.
	GJVector(const GJVector&);
	GJVector& operator=(const GJVector&);
};

static_assert(sizeof(GJVector<long>) == 0x14, "GJVector size is incorrect");
static_assert(offsetof(GJVector<long>, MemoryAllocator) == 0x10, "GJVector allocator offset is incorrect");

#endif /* BW1_DECOMP_GJVECTOR_INCLUDED_H */
