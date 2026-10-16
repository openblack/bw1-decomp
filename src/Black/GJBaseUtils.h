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

	// BW1W120 inlined BW1M119 010348b0
	long GetSize() const;
	// BW1W120 inlined BW1M119 0101ced0
	T& operator[](long index);
	// BW1W120 inlined BW1M119 0140d420
	const T& operator[](long index) const;

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
	// Instantiations: BW1M119 012ff1b0 (float), 01342a80 (KPSI_Element<float>), 014881b0 (PosScaleRotation).
	T& Entry(long index) const;
	// Instantiations: BW1M119 01343190 (float), 013431d0 (KPSI_Element<float>).
	T& operator[](long index);

	T*   Data;
	long Size;
};

// A ring buffer: Add overwrites the oldest entry once the array is full, and Entry(0) is the newest entry.
// On Mac, SetMaxSize calls GJArray::Clear and GJArray::SetSize on the start of the object.
template <class T> class GJCircularArray
{
public:
	// BW1W120 inlined BW1M119 01315770
	GJCircularArray() : NumFilled(0), Head(-1) {}

	// BW1W120 inlined BW1M119 0142d080
	void SetMaxSize(long size);
	// BW1W120 inlined BW1M119 0142d4e0
	void Add(const T& item);
	// BW1W120 006a7e30 BW1M119 0142d5e0
	T& Entry(long index) const;
	// BW1W120 inlined BW1M119 0142d6f0
	long GetMaxSize() const { return Array.Size; }
	// BW1W120 inlined BW1M119 01442730
	long GetNumFilled() const { return NumFilled; }

	GJArray<T> Array;
	long       NumFilled;
	long       Head;
};

// Intrusive list: T has Previous and Next pointers.
template <class T> class GJDoubleLinkList
{
public:
	class Iterator
	{
	public:
		// BW1W120 inlined BW1M119 013e9400
		Iterator(GJDoubleLinkList<T>& list) : Current(list.First) {}
		// BW1W120 inlined BW1M119 01054290
		Iterator(const Iterator& other) : Current(other.Current) {}

		// BW1W120 inlined BW1M119 013e91f0
		bool IsFinished() { return Current == NULL; }
		// BW1W120 inlined BW1M119 013e9250
		Iterator operator++(int)
		{
			Current = Current->Next;
			return *this;
		}
		// BW1W120 inlined BW1M119 01054c80
		T* operator->() const { return Current; }
		// BW1W120 inlined BW1M119 0148ced0
		T*& GetRef() { return Current; }

		T* Current;
	};

	// BW1W120 inlined BW1M119 0109e7c0
	GJDoubleLinkList() : First(NULL), Count(0) {}
	// BW1W120 inlined BW1M119 013ed760
	~GJDoubleLinkList() {}

	// BW1W120 00677400 BW1M119 0108ab60
	void InsertIntoList(T* item);
	// BW1W120 inlined BW1M119 01014c70
	void RemoveFromList(T* item);
	// BW1W120 inlined BW1M119 01054460
	T* Head() { return First; }
	// BW1W120 inlined BW1M119 0108c1c0
	long GetCount() { return Count; }

	T*   First;
	long Count;
};

template <class T> class GJLowPassFilterVariableStep
{
public:
	// BW1W120 inlined BW1M119 0130d350
	GJLowPassFilterVariableStep() : Initialised(false) {}

	// BW1W120 inlined BW1M119 01342690
	const T& GetValue() { return Value; }
	// BW1W120 inlined BW1M119 013426e0
	void Init(const T& value, float time_constant);
	// BW1W120 inlined BW1M119 013427a0
	void Update(float time, const T& value);

	T     Value;
	float TimeConstant;
	bool  Initialised;
};

template <class T> class SimpleSpline
{
public:
	// BW1W120 inlined BW1M119 0130d3a0
	SimpleSpline() {}

	// BW1W120 inlined BW1M119 013f11a0
	void InitParams(const T& p0, const T& p1, const T& p2, const T& p3);
	// BW1W120 inlined BW1M119 013f15e0
	T EvalAtT(float t);

	T Coefficients[4];
};

// BW1W120 inlined BW1M119 01442840
template <class To, class From> inline To assert_cast(From from)
{
	return static_cast<To>(from);
}

#include "GJBaseUtils.inl"

#endif /* BW1_DECOMP_GJ_BASE_UTILS_INCLUDED_H */
