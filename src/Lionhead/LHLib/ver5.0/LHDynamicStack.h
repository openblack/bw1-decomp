#ifndef BW1_DECOMP_LH_DYNAMIC_STACK_INCLUDED_H
#define BW1_DECOMP_LH_DYNAMIC_STACK_INCLUDED_H

#include <stddef.h> /* For NULL */
#include <stdint.h> /* For uint32_t */

template <typename T> class LHDynamicStackNode
{
public:
	T                      value;
	LHDynamicStackNode<T>* next;

	// BW1W120 inlined BW1M119 01100ce0
	LHDynamicStackNode(T node_value, LHDynamicStackNode<T>* next_node) : value(node_value), next(next_node) {}
};

template <typename T> class LHDynamicStack
{
public:
	LHDynamicStackNode<T>* head;
	uint32_t               size;

	LHDynamicStack() : head(NULL), size(0) {}
	// BW1W120 inlined BW1M119 01101e20
	~LHDynamicStack()
	{
		LHDynamicStackNode<T>* node = head;
		while (node != NULL)
		{
			LHDynamicStackNode<T>* next = node->next;
			delete node;
			node = next;
		}
	}

	// BW1W120 inlined BW1M119 012b1ac0
	uint32_t GetSize() { return size; }
	// BW1W120 inlined BW1M119 012b1b00
	uint32_t& GetSizeRef() { return size; }

	// BW1W120 inlined BW1M119 012b1880
	void Push(T value)
	{
		LHDynamicStackNode<T>* node = new LHDynamicStackNode<T>(value, head);
		head = node;
		size++;
	}

	T Pop()
	{
		LHDynamicStackNode<T>* node = head;
		T                      value = node->value;
		head = node->next;
		delete node;
		size--;
		return value;
	}

	// BW1W120 inlined BW1M119 0113e9f0
	void Remove(T value)
	{
		LHDynamicStackNode<T>* previous = NULL;
		for (LHDynamicStackNode<T>* node = head; node != NULL; node = node->next)
		{
			if (node->value == value)
			{
				if (previous == NULL)
					head = head->next;
				else
					previous->next = node->next;
				delete node;
				size--;
				return;
			}
			previous = node;
		}
	}

	// BW1W120 inlined BW1M119 012b0e30
	T GetNthMember(uint32_t n)
	{
		for (LHDynamicStackNode<T>* node = head; node != NULL; node = node->next)
		{
			if (n == 0)
			{
				return node->value;
			}
			n--;
		}
		return 0;
	}
};

#endif /* BW1_DECOMP_LH_DYNAMIC_STACK_INCLUDED_H */
