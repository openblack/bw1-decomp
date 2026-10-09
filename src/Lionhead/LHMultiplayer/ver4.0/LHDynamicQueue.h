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
	// BW1W120 100242f0 BW1M119 inlined
	unsigned long AddToFront(const T& value);
	// BW1W120 10024270 BW1M119 inlined
	void AddAtPosition(const T& value, unsigned long position);

	// BW1W120 inlined BW1M119 inlined
	T RemoveFromFront()
	{
		LHDynamicQueueNode<T>* node = Head;
		T                      payload = node->Payload;
		Head = node->Next;
		delete node;
		if (--Count == 0)
			Head = Tail = NULL;
		return payload;
	}

	// BW1W120 inlined BW1M119 inlined
	T RemoveAtPosition(unsigned long position)
	{
		T                      payload = NULL;
		LHDynamicQueueNode<T>* previous = NULL;
		for (LHDynamicQueueNode<T>* node = Head; node != NULL; node = node->Next)
		{
			if (position == 0)
			{
				payload = node->Payload;
				if (previous != NULL)
					previous->Next = node->Next;
				else
					Head = node->Next;
				if (node->Next == NULL)
					Tail = previous;
				delete node;
				break;
			}
			previous = node;
			position--;
		}
		if (--Count == 0)
			Head = Tail = NULL;
		return payload;
	}

	// BW1W120 inlined BW1M119 inlined
	void DeleteAll()
	{
		LHDynamicQueueNode<T>* next;
		for (LHDynamicQueueNode<T>* node = Head; node != NULL; node = next)
		{
			next = node->Next;
			delete node->Payload;
			delete node;
		}
		Count = 0;
		Head = Tail = NULL;
	}
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

template <class T> unsigned long LHDynamicQueue<T>::AddToFront(const T& value)
{
	LHDynamicQueueNode<T>* node = new LHDynamicQueueNode<T>(value, NULL);
	if (Head == NULL)
	{
		Head = node;
		Tail = node;
	}
	else
	{
		node->Next = Head;
		Head = node;
	}
	return ++Count;
}

template <class T> void LHDynamicQueue<T>::AddAtPosition(const T& value, unsigned long position)
{
	if (position > Count)
		return;

	LHDynamicQueueNode<T>* node = new LHDynamicQueueNode<T>(value, NULL);
	LHDynamicQueueNode<T>* next = Head;
	LHDynamicQueueNode<T>* previous = NULL;
	if (position == 0)
	{
		if (next != NULL)
			node->Next = next;
		Head = node;
	}
	else
	{
		for (unsigned long i = 0; i < position; i++)
		{
			previous = next;
			next = next->Next;
		}
		if (previous != NULL)
			previous->Next = node;
	}
	node->Next = next;
	if (previous == Tail)
		Tail = node;
	Count++;
}

#endif /* BW1_DECOMP_LH_DYNAMIC_QUEUE_INCLUDED_H */
