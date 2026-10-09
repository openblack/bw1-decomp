#ifndef BW1_DECOMP_LH_DYNAMIC_STACK_INCLUDED_H
#define BW1_DECOMP_LH_DYNAMIC_STACK_INCLUDED_H

#include <stddef.h> /* For NULL */
#include <stdint.h> /* For uint32_t */

template <typename T> class LHDynamicStack
{
public:
	struct Node
	{
		T     value;
		Node* next;
	};

	Node*    head;
	uint32_t size;

	LHDynamicStack() : head(NULL), size(0) {}
	~LHDynamicStack()
	{
		Node* node = head;
		while (node != NULL)
		{
			Node* next = node->next;
			delete node;
			node = next;
		}
	}
};

#endif /* BW1_DECOMP_LH_DYNAMIC_STACK_INCLUDED_H */
