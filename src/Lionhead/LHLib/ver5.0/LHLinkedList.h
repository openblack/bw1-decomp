#ifndef BW1_DECOMP_LH_LINKED_LIST_INCLUDED_H
#define BW1_DECOMP_LH_LINKED_LIST_INCLUDED_H

#include <stdint.h> /* For uint32_t */
#include <stdlib.h> /* For malloc */

template <typename T> class LHLinkedNode
{
public:
	LHLinkedNode<T>* next;
	T*               payload;
	inline LHLinkedNode(T* val)
	{
		payload = val;
		next = NULL;
	}
};
template <typename T> class LHLinkedList
{
public:
	LHLinkedNode<T>*        head;
	uint32_t                count;
	inline LHLinkedNode<T>* GetStart() { return head.get(); }
	inline bool             Add(T* val)
	{
		if (!val)
			return false;
		LHLinkedNode<T>* node = new LHLinkedNode<T>(val);
		node->next = head;
		head = node;
		++count;
		return true;
	}
	inline void Remove(T* val)
	{
		LHLinkedNode<T>* prev = NULL;
		LHLinkedNode<T>* node = head;
		while (node != NULL)
		{
			LHLinkedNode<T>* next = node->next;
			if (node->payload == val)
			{
				if (node == head)
					head = next;
				else
					prev->next = next;
				count--;
				delete node;
			}
			else
			{
				prev = node;
			}
			node = next;
		}
	}
	inline bool Contains(T* val)
	{
		for (LHLinkedNode<T>* node = head; node != NULL; node = node->next)
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
		LHLinkedNode<T>* node = head;
		if (!node)
		{
			return NULL;
		}
		LHLinkedNode<T>* last;
		do
		{
			last = node;
			node = node->next;
		} while (node);
		return last;
	}

	int AddToEnd(T* val);
};

template <typename T> int LHLinkedList<T>::AddToEnd(T* val)
{
	LHLinkedNode<T>* node;
	if (!val)
	{
		goto fail;
	}
	node = new LHLinkedNode<T>(val);
	if (!node)
	{
		goto fail;
	}
	{
		LHLinkedNode<T>* last = GetLastNode();
		if (last)
		{
			last->next = node;
			++count;
			return 1;
		}
		head = node;
		++count;
		return 1;
	}
fail:
	return 0;
}

#endif /* BW1_DECOMP_LH_LINKED_LIST_INCLUDED_H */
