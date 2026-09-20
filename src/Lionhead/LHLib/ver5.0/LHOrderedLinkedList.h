#ifndef BW1_DECOMP_LH_ORDERED_LINKED_LIST_INCLUDED_H
#define BW1_DECOMP_LH_ORDERED_LINKED_LIST_INCLUDED_H

#include <stdint.h> /* For uint32_t */

template <typename T> class OrderedNode
{
public:
	OrderedNode<T>* next;
	T*              payload;
};
template <typename T> class LHOrderedLinkedList
{
public:
	OrderedNode<T>*        head;
	uint32_t               count;
	inline OrderedNode<T>* GetStart() { return head.get(); }
};

#endif // BW1_DECOMP_LH_ORDERED_LINKED_LIST_INCLUDED_H
