#ifndef BW1_DECOMP_LH_LINKED_LIST_INCLUDED_H
#define BW1_DECOMP_LH_LINKED_LIST_INCLUDED_H

#include <stdint.h> /* For uint32_t */
#include <stdlib.h> /* For malloc */

#include "LHFastPointer.h"

template <typename T> class LHLinkedNode
{
public:
	LHFastPointer<LHLinkedNode<T> > next;
	T                               payload;
	inline LHLinkedNode(T val, LHLinkedNode<T>* next_node)
	{
		payload = val;
		next.Set(next_node);
	}
};
template <typename T> class LHLinkedList
{
public:
	LHFastPointer<LHLinkedNode<T> > head;
	uint32_t                        count;
	LHLinkedList();
	inline LHLinkedNode<T>* GetStart() const { return head.Get(); }
	inline bool             Add(T val)
	{
		if (!val)
			return false;
		LHLinkedNode<T>* node = new LHLinkedNode<T>(val, NULL);
		if (node)
		{
			node->next.Set(head.Get());
			head.Set(node);
			++count;
		}
		return true;
	}
	// The flag stops after the first match; it never controls payload ownership.
	inline void Remove(T val, bool only_first = false)
	{
		LHLinkedNode<T>* prev = NULL;
		LHLinkedNode<T>* node = head.Get();
		while (node != NULL)
		{
			LHLinkedNode<T>* next = node->next.Get();
			if (node->payload == val)
			{
				if (node == head.Get())
					head.Set(next);
				else
					prev->next.Set(next);
				count--;
				delete node;
				if (only_first)
					return;
			}
			else
			{
				prev = node;
			}
			node = next;
		}
	}
	inline bool Contains(T val)
	{
		for (LHLinkedNode<T>* node = head.Get(); node != NULL; node = node->next.Get())
		{
			if (node->payload == val)
			{
				return true;
			}
		}
		return false;
	}
	inline LHLinkedNode<T>* GetLastNode()
	{
		LHLinkedNode<T>* node = head.Get();
		if (!node)
		{
			return NULL;
		}
		LHLinkedNode<T>* last;
		do
		{
			last = node;
			node = node->next.Get();
		} while (node);
		return last;
	}

	int AddToEnd(T val);
};

template <typename T> LHLinkedList<T>::LHLinkedList()
{
	// The head's default construction precedes this second clear in the original.
	count = 0;
	head.Clear();
}

template <typename T> int LHLinkedList<T>::AddToEnd(T val)
{
	LHLinkedNode<T>* node;
	if (!val)
	{
		goto fail;
	}
	node = new LHLinkedNode<T>(val, NULL);
	if (!node)
	{
		goto fail;
	}
	{
		LHLinkedNode<T>* last = GetLastNode();
		if (last)
		{
			last->next.Set(node);
			++count;
			return 1;
		}
		head.Set(node);
		++count;
		return 1;
	}
fail:
	return 0;
}

#endif /* BW1_DECOMP_LH_LINKED_LIST_INCLUDED_H */
