#ifndef BW1_DECOMP_GJ_BASE_UTILS_INCLUDED_H
#define BW1_DECOMP_GJ_BASE_UTILS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <new>      /* For placement new */
#include <stddef.h> /* For NULL, offsetof */

#include <Lionhead/LHLib/ver5.0/LHWin.h> /* For operator new(size_t, const char*, uint32_t) */

// "GJ" is most likely Giles Jermy, credited for Black & White game programming.
//
// Giles Jermy's container templates. Every executable embeds "<dev path>\Black\GJBaseUtils.inl" for the
// allocation in GJArray::SetSize, so the class templates are declared here and their members are
// defined in GJBaseUtils.inl, included at the end of this header.
//
// The Mac build (the only one with symbols for template instances) also instantiates GJSortableVector,
// GJDoubleLinkList (with a nested iterator), GJCircularArray and GJLowPassFilterVariableStep. They are
// all used only by the Black executable, never by the Lionhead libraries, and presumably lived here
// as well; they are not reconstructed yet.

// On Mac, BW1M119 01422d70 indexes GJArray<GJVector<long> > with a 0x14 stride.
// The empty allocator is a member, not a base: BW1W120 00562654 passes this + 0x10.
template <class T> class GJVector
{
public:
	class Allocator
	{
	public:
		// DisplayGesture* specialization: BW1M119 014145e0 / 01414664.
		T*   Allocate(long count) { return count ? (T*)new char[count * sizeof(T)] : NULL; }
		void DeAllocate(T* data, long count) { delete[] (char*)data; }
		// BW1W120 00564900
		void Construct(T* destination, const T& value) { new (destination) T(value); }
	};

	// Instantiations: BW1M119 01002fb0 (GTPointer<GameThing>), 01002f64 (LHPoint).
	GJVector();
	// Instantiations: BW1M119 013e8780 (GTPointer<GameThing>), 013e8444 (LHPoint).
	~GJVector();

	// Instantiations: BW1M119 01002d90 / 01002e04 (GTPointer<GameThing>).
	void Clear();
	// (GTPointer<GameThing>).
	// BW1W120 005647e0
	void PushBack(const T& value);
	// (LHPoint), BW1M119 01317390 (GTPointer<GameThing>).
	// BW1W120 00564920
	void Grow(long capacity);

	T*        Data;
	long      Capacity;
	long      Size;
	long      GrowthIncrement;
	Allocator MemoryAllocator;

private:
	GJVector(const GJVector&);
	GJVector& operator=(const GJVector&);
};

// A fixed-size heap array. Unlike GJVector it constructs its entries with new[] and has no spare
// capacity: SetSize discards the old contents.
template <class T> class GJArray
{
public:
	// Instantiations: BW1M119 013424e0 (KPSI_Element<float>), 01159590 (BurnSFX).
	GJArray();
	// Instantiations: BW1M119 012ff1f0 (float), 013f0140 (long), 01342440 (KPSI_Element<float>).
	~GJArray();

	// Instantiations: BW1M119 012ff450 (float), 013f1d70 (long), 01343400 (KPSI_Element<float>).
	void Clear();
	// Instantiations: BW1M119 012ff3a0 (float), 013f16f0 (long), 01342b50 (KPSI_Element<float>).
	long SetSize(long size);
	// Instantiations: BW1M119 013f17a0 (long), 014192e0 (const char*).
	void FillWith(long count, const T& value);

	// Instantiations: BW1M119 013bc350 (unsigned char), 01091630 (BurnSFX).
	long GetSize() const;
	// Instantiations: BW1M119 012ff1b0 (float), 01342a80 (KPSI_Element<float>).
	const T& Entry(long index) const;
	// Instantiations: BW1M119 01343190 (float), 013431d0 (KPSI_Element<float>).
	T& operator[](long index);

	T*   Data;
	long Size;
};

#include "GJBaseUtils.inl"

#endif /* BW1_DECOMP_GJ_BASE_UTILS_INCLUDED_H */
