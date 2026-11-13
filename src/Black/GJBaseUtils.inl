// GJVector

template <class T> inline GJVector<T>::GJVector() : Data(NULL), Capacity(0), Size(0), GrowthIncrement(10) {}

template <class T> inline GJVector<T>::~GJVector()
{
	T* end = Data + Size;
	for (T* entry = Data; entry < end; ++entry)
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
		Grow(Size + GrowthIncrement);
	MemoryAllocator.Construct(Data + Size, value);
	++Size;
}

template <class T> inline void GJVector<T>::SetSize(long size)
{
	if (size > Size)
	{
		IncSizeTo(size);
	}
	else if (size < Size)
	{
		DecSizeTo(size);
	}
}

template <class T> inline void GJVector<T>::IncSizeTo(long size)
{
	Grow(size);
	T* end = Data + size;
	T* entry = Data + Size;
	while (entry < end)
	{
		MemoryAllocator.Construct(entry++);
	}
	Size = size;
}

template <class T> inline void GJVector<T>::DecSizeTo(long size)
{
	T* end = Data + Size;
	for (T* entry = Data + size; entry < end; ++entry)
	{
		entry->~T();
	}
	Size = size;
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

template <class T> inline GJVector<T>& GJVector<T>::operator=(const GJVector<T>& other)
{
	if (this == &other)
	{
		return *this;
	}
	T* data = MemoryAllocator.Allocate(other.Size);
	T* destination = data;
	for (T* entry = other.Data; entry < other.Data + other.Size; ++entry)
	{
		MemoryAllocator.Construct(destination++, *entry);
	}
	MemoryAllocator.DeAllocate(Data, Capacity);
	Data = data;
	Size = Capacity = other.Size;
	return *this;
}

template <class T> inline long GJVector<T>::GetSize() const
{
	return Size;
}

template <class T> inline T* GJVector<T>::GetMemBuffer()
{
	return Data;
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
		Data = NEW(428) T[Size];
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

template <class T> inline T& GJArray<T>::Entry(long index) const
{
	return Data[index];
}

template <class T> inline T& GJArray<T>::operator[](long index)
{
	return Data[index];
}

// GJCircularArray

template <class T> inline void GJCircularArray<T>::SetMaxSize(long size)
{
	Array.Clear();
	Array.SetSize(size);
	NumFilled = 0;
	Head = -1;
}

template <class T> inline void GJCircularArray<T>::Add(const T& item)
{
	if (Array.Size != 0)
	{
		Head = (Head + 1) % Array.Size;
		if (NumFilled < GetMaxSize())
		{
			NumFilled++;
		}
		Entry(0) = item;
	}
}

template <class T> inline T& GJCircularArray<T>::Entry(long index) const
{
	return Array.Data[(Head - index + Array.GetSize()) % Array.GetSize()];
}

// GJDoubleLinkList

template <class T> inline void GJDoubleLinkList<T>::InsertIntoList(T* item)
{
	item->Next = First;
	item->Previous = NULL;
	if (First)
	{
		First->Previous = item;
	}
	First = item;
	Count++;
}

template <class T> inline void GJDoubleLinkList<T>::RemoveFromList(T* item)
{
	if (item->Previous)
	{
		item->Previous->Next = item->Next;
	}
	else
	{
		First = item->Next;
	}
	if (item->Next)
	{
		item->Next->Previous = item->Previous;
	}
	Count--;
	item->Next = NULL;
	item->Previous = NULL;
}
