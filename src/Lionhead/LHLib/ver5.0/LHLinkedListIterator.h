#ifndef BW1_DECOMP_LH_LINKED_LIST_ITERATOR_INCLUDED_H
#define BW1_DECOMP_LH_LINKED_LIST_ITERATOR_INCLUDED_H

#include "LHLinkedList.h"

template <typename T> class LHLinkedListIterator
{
public:
	LHLinkedNode<T>* Node;
	// BW1W120 inlined BW1M119 inlined
	LHLinkedListIterator(LHLinkedNode<T>* node) { Node = node; }
	// BW1W120 inlined BW1M119 010fee40 (LHCombined Release)
	T Get() { return Node->payload; }
	// BW1W120 inlined BW1M119 inlined
	operator LHLinkedNode<T>*() { return Node; }
	// BW1W120 inlined BW1M119 inlined
	LHLinkedListIterator operator++(int)
	{
		Node = Node->next.Get();
		return *this;
	}
};

#endif /* BW1_DECOMP_LH_LINKED_LIST_ITERATOR_INCLUDED_H */
