#ifndef BW1_DECOMP_LH_DYNAMIC_QUEUE_INCLUDED_H
#define BW1_DECOMP_LH_DYNAMIC_QUEUE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For NULL */

// Singly linked FIFO. Only the constructors and destructor survive on Mac; the Windows DLL
// inlines everything except an out-of-line LHDynamicQueue<LHNetEvent*> append (10015a10).

template <class T> class LHDynamicQueueNode
{
public:
	T                      Payload;
	LHDynamicQueueNode<T>* Next;

	// Mac symbol: LHDynamicQueueNode<LHNetEvent*>::LHDynamicQueueNode(LHNetEvent*, LHDynamicQueueNode<LHNetEvent*>*)
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
	// Mac and Windows both store Tail before Head.
	LHDynamicQueue()
	{
		Head = Tail = NULL;
		Count = 0;
	}
	// BW1W120 inlined BW1M119 010ee3f0 (LHCombined Release)
	~LHDynamicQueue() {}

	// TODO: name fabricated. Defined outside the class so that it is not an inline candidate: the
	// Windows DLL always calls it (LHDynamicQueue<LHNetEvent*> 10015a10, <unsigned long*> 1001f3f0).
	unsigned long Add(const T& val);
};

template <class T> unsigned long LHDynamicQueue<T>::Add(const T& val)
{
	LHDynamicQueueNode<T>* node = new LHDynamicQueueNode<T>(val, NULL);
	if (Tail != NULL)
		Tail->Next = node;
	if (Head == NULL)
		Head = node;
	Tail = node;
	return ++Count;
}

#endif /* BW1_DECOMP_LH_DYNAMIC_QUEUE_INCLUDED_H */
