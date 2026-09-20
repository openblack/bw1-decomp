#ifndef BW1_DECOMP_GJVECTOR_INCLUDED_H
#define BW1_DECOMP_GJVECTOR_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For offsetof */
#include <new>

// BW1M100 10419d60 indexes GJArray<GJVector<long> > with a 0x14 stride.
// The empty allocator is a member, not a base: BW1W120 00562654 passes this + 0x10.
template <typename T> class GJVector
{
public:
	class Allocator
	{
	public:
		// BW1M100 1040a0d0 / 1040a150 (DisplayGesture* specialization).
		T*   Allocate(long count) { return count ? (T*)new char[count * sizeof(T)] : NULL; }
		void DeAllocate(T* data, long count) { delete[] (char*)data; }
		// BW1W120 00564900 (LHPoint); method name reconstructed.
		void Construct(T* destination, const T& value) { new (destination) T(value); }
	};

	T*        Data;            /* 0x0 */
	long      Capacity;        /* 0x4 */
	long      Size;            /* 0x8 */
	long      GrowthIncrement; /* 0xc */
	Allocator MemoryAllocator; /* 0x10 */

	// BW1M100 10002fc0 (GTPointer<GameThing>), 10002f70 (LHPoint).
	GJVector() : Data(NULL), Capacity(0), Size(0), GrowthIncrement(10) {}

	// BW1M100 103e0710 (GTPointer<GameThing>), 103e03d0 (LHPoint).
	~GJVector()
	{
		for (T* entry = Data; entry < Data + Size; ++entry)
		{
			entry->~T();
		}
		MemoryAllocator.DeAllocate(Data, Capacity);
	}

	// BW1M100 10002da0 / 10002e10 (GTPointer<GameThing>).
	void Clear()
	{
		for (T* entry = Data; entry < Data + Size; ++entry)
		{
			entry->~T();
		}
		Size = 0;
	}

	// BW1W120 005647e0 BW1M100 103105f0 (GTPointer<GameThing>).
	void PushBack(const T& value)
	{
		if (Capacity == Size)
		{
			Grow(Size + GrowthIncrement);
		}
		MemoryAllocator.Construct(Data + Size, value);
		++Size;
	}

	// BW1W120 00564920 (LHPoint), BW1M100 10310840 (GTPointer<GameThing>).
	void Grow(long capacity)
	{
		if (capacity > Capacity)
		{
			T* data = MemoryAllocator.Allocate(capacity);
			T* destination = data;
			for (T* entry = Data; entry < Data + Size; ++entry, ++destination)
			{
				MemoryAllocator.Construct(destination, *entry);
				// BW1M100 103fa7e0 (TEdgeInfo) proves destruction after each copy.
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
