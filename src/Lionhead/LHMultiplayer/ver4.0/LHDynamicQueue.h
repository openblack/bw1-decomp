#ifndef BW1_DECOMP_LH_DYNAMIC_QUEUE_INCLUDED_H
#define BW1_DECOMP_LH_DYNAMIC_QUEUE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For NULL */

template <class T> class LHDynamicQueueNode
{
public:
	T                      Payload;
	LHDynamicQueueNode<T>* Next;

	// BW1W120 inlined BW1M119 0103f300 (LHCombined Release)
	LHDynamicQueueNode(T payload, LHDynamicQueueNode<T>* next) : Payload(payload), Next(next) {}
};

template <class T> class LHDynamicQueue
{
public:
	LHDynamicQueueNode<T>* Head;
	LHDynamicQueueNode<T>* Tail;
	unsigned long          Count;

	// BW1W120 inlined BW1M119 010ee470 (LHCombined Release)
	LHDynamicQueue()
	{
		Head = Tail = NULL;
		Count = 0;
	}
	// BW1W120 inlined BW1M119 010ee3f0 (LHCombined Release)
	~LHDynamicQueue() {}

	// BW1W120 10015a10 BW1M119 null
	unsigned long Add(const T& value);
};

template <class T> unsigned long LHDynamicQueue<T>::Add(const T& value)
{
	LHDynamicQueueNode<T>* node = new LHDynamicQueueNode<T>(value, NULL);
	if (Tail != NULL)
		Tail->Next = node;
	if (Head == NULL)
		Head = node;
	Tail = node;
	return ++Count;
}

#endif /* BW1_DECOMP_LH_DYNAMIC_QUEUE_INCLUDED_H */
