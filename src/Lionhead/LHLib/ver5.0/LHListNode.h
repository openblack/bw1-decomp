#ifndef BW1_DECOMP_LH_LIST_NODE_INCLUDED_H
#define BW1_DECOMP_LH_LIST_NODE_INCLUDED_H

#include <stddef.h> /* For NULL */

template <typename T> struct LHListNode
{
	T* value;

	void Set(T* v) { value = v; }

	LHListNode() { Set(NULL); }
};

#endif
