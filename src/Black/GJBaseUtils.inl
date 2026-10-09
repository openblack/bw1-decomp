// Member definitions for the templates declared in GJBaseUtils.h, which includes this file.
//
// The original allocates with the source path and line of the allocation; every build embeds its own
// path for this file, and the GJArray::SetSize allocation is on line 428 in all of them.
#if defined(VERSION_BW1W100)
#define GJ_BASE_UTILS_FILE "C:\\dev\\black\\GJBaseUtils.inl"
#elif defined(VERSION_BW1W110)
#define GJ_BASE_UTILS_FILE "C:\\dev\\Black\\GJBaseUtils.inl"
#else
#define GJ_BASE_UTILS_FILE "C:\\dev\\MP\\Black\\GJBaseUtils.inl"
#endif

// GJVector

template <class T> inline GJVector<T>::GJVector() : Data(NULL), Capacity(0), Size(0), GrowthIncrement(10) {}

template <class T> inline GJVector<T>::~GJVector()
{
	for (T* entry = Data; entry < Data + Size; ++entry)
	{
		entry->~T();
	}
	MemoryAllocator.DeAllocate(Data, Capacity);
}

template <class T> inline void GJVector<T>::Clear()
{
	for (T* entry = Data; entry < Data + Size; ++entry)
	{
		entry->~T();
	}
	Size = 0;
}

template <class T> inline void GJVector<T>::PushBack(const T& value)
{
	if (Capacity == Size)
	{
		Grow(Size + GrowthIncrement);
	}
	MemoryAllocator.Construct(Data + Size, value);
	++Size;
}

template <class T> inline void GJVector<T>::Grow(long capacity)
{
	if (capacity > Capacity)
	{
		T* data = MemoryAllocator.Allocate(capacity);
		T* destination = data;
		for (T* entry = Data; entry < Data + Size; ++entry)
		{
			MemoryAllocator.Construct(destination++, *entry);
			entry->~T();
		}
		MemoryAllocator.DeAllocate(Data, Capacity);
		Data = data;
		Capacity = capacity;
	}
}

template <class T> inline long GJVector<T>::GetSize() const
{
	return Size;
}

template <class T> inline T& GJVector<T>::operator[](long index)
{
	return Data[index];
}

// GJArray

template <class T> inline GJArray<T>::GJArray() : Data(NULL), Size(0) {}

template <class T> inline GJArray<T>::~GJArray()
{
	delete[] Data;
}

template <class T> inline void GJArray<T>::Clear()
{
	delete[] Data;
	Data = NULL;
	Size = 0;
}

template <class T> inline long GJArray<T>::SetSize(long size)
{
	if (Size != 0)
	{
		Clear();
	}
	Size = size;
	if (Size != 0)
	{
		Data = new (GJ_BASE_UTILS_FILE, 428) T[Size];
	}
	if (Data == NULL)
	{
		Size = 0;
	}
	return Size;
}

// Fills the first count entries; it does not resize the array.
template <class T> inline void GJArray<T>::FillWith(long count, const T& value)
{
	for (long i = 0; i < count; i++)
	{
		Data[i] = value;
	}
}

template <class T> inline long GJArray<T>::GetSize() const
{
	return Size;
}

template <class T> inline const T& GJArray<T>::Entry(long index) const
{
	return Data[index];
}

template <class T> inline T& GJArray<T>::operator[](long index)
{
	return Data[index];
}

#undef GJ_BASE_UTILS_FILE
