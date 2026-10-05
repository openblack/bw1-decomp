#ifndef BW1_DECOMP_LH_QUEUE_INCLUDED_H
#define BW1_DECOMP_LH_QUEUE_INCLUDED_H

#include <stdint.h> /* For uint32_t */

template <class T, int SIZE> class LHQueue
{
public:
	uint32_t Head;
	uint32_t Tail;
	T        Items[SIZE];

	// BW1W120 inlined BW1M119 inlined
	LHQueue() { SetToZero(); }

	// BW1W120 inlined BW1M119 01552470
	void SetToZero()
	{
		Head = 0;
		Tail = 0;
	}
	// BW1W120 inlined BW1M119 inlined
	void Push(T item)
	{
		Items[Tail] = item;
		Tail++;
		if (Tail == SIZE)
		{
			Tail = 0;
		}
	}
	// BW1W120 inlined BW1M119 01552400
	T& Pop()
	{
		T& item = Items[Head];
		Head++;
		if (Head == SIZE)
		{
			Head = 0;
		}
		return item;
	}
	// BW1W120 inlined BW1M119 inlined
	uint32_t GetSize() { return Head <= Tail ? Tail - Head : Tail - Head + SIZE; }
};

#endif /* BW1_DECOMP_LH_QUEUE_INCLUDED_H */
