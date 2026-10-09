#ifndef BW1_DECOMP_SLL_INCLUDED_H
#define BW1_DECOMP_SLL_INCLUDED_H

#include <stddef.h> /* For NULL */

template <class T> struct SLLNode
{
	SLLNode<T>* Next;
	SLLNode<T>* Prev;
	T*          Data;

	// BW1W120 inlined BW1M119 010e83e0
	SLLNode(T* data) : Next(NULL), Prev(NULL), Data(data) {}
};

template <class T, bool (*Order)(T*, T*)> class SLL
{
public:
	SLLNode<T>*   First;
	SLLNode<T>*   Last;
	SLLNode<T>*   Current;
	unsigned long Size;

	// BW1W120 inlined BW1M119 0130e380
	SLL()
	{
		First = Last = Current = NULL;
		Size = 0;
	}

	// BW1W120 inlined BW1M119 01002150
	T* GetFirst() { return First != NULL ? First->Data : NULL; }
	// BW1W120 inlined BW1M119 0104e650
	T* GetLast() { return Last != NULL ? Last->Data : NULL; }
	// BW1W120 inlined BW1M119 0104e6c0
	unsigned long GetSize() { return Size; }
};

#endif /* BW1_DECOMP_SLL_INCLUDED_H */
