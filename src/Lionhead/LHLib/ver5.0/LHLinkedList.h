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
	// BW1W120 inlined BW1M119 0132a2a0
	~LHLinkedList() {}
	LHLinkedList(T val)
	{
		count = 0;
		head.Clear();
		Add(val);
	}
	inline LHLinkedNode<T>* GetStart() const { return head.Get(); }
	T                       GetHead() { return head.Get() != NULL ? head.Get()->payload : NULL; }
	// BW1W120 10013b80
	inline int Add(T val)
	{
		if (val)
		{
			LHLinkedNode<T>* node = new LHLinkedNode<T>(val, head.Get());
			if (node)
			{
				head.Set(node);
				++count;
			}
			return 1;
		}
		return 0;
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
	// BW1W120 00742230 BW1M119 01560ce0
	int IsThisInList(T val)
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
	// BW1W120 00742260 BW1M119 inlined
	void RemoveAll()
	{
		LHLinkedNode<T>* node;
		while ((node = head.Get()) != NULL)
		{
			Remove(node->payload);
		}
	}
	// BW1W120 inlined BW1M119 01100fc0
	void DeleteAll()
	{
		LHLinkedNode<T>* node;
		while ((node = head.Get()) != NULL)
		{
			T val = node->payload;
			Remove(val);
			delete val;
		}
	}
	// BW1W120 inlined BW1M119 null
	void ToBeDeletedAll()
	{
		LHLinkedNode<T>* node;
		while ((node = head.Get()) != NULL)
		{
			T val = node->payload;
			val->ToBeDeleted(0);
			if (IsThisInList(val))
			{
				Remove(val);
			}
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
		if (node)
		{
			LHLinkedNode<T>* last;
			do
			{
				last = node;
				node = node->next.Get();
			} while (node);
			return last;
		}
		return NULL;
	}

	// BW1W120 inlined BW1M119 012aa9e0
	inline LHLinkedNode<T>* GetNodeAtPosition(long position)
	{
		if (count <= 0)
			return NULL;
		if (head.Get() == NULL)
			return NULL;
		if (position >= (long)count)
			return NULL;
		LHLinkedNode<T>* node = head.Get();
		for (long i = 0; i < position; i++)
			node = node->next.Get();
		return node;
	}
	// BW1W120 inlined BW1M119 010dd460
	inline T GetAtPosition(long position)
	{
		LHLinkedNode<T>* node = GetNodeAtPosition(position);
		return node != NULL ? node->payload : NULL;
	}

	// BW1W120 inlined BW1M119 inlined
	inline LHLinkedNode<T>* GetPreviousNode(LHLinkedNode<T>* node)
	{
		LHLinkedNode<T>* walker = head.Get();
		while (walker != NULL && walker->next.Get() != node)
		{
			walker = walker->next.Get();
		}
		return walker;
	}

	// BW1W120 00595a80 BW1M119 01339810
	int AddToEnd(T val)
	{
		if (val)
		{
			LHLinkedNode<T>* node = new LHLinkedNode<T>(val, NULL);
			if (node)
			{
				LHLinkedNode<T>* last = GetLastNode();
				if (last)
				{
					last->next.Set(node);
				}
				else
				{
					head.Set(node);
				}
				++count;
				return 1;
			}
		}
		return 0;
	}
	// Returns the matching node, not its payload (BW1M119 012564c0 for CreatureBelief*).
	LHLinkedNode<T>* Find(T value);
	// For LHPlayer*. NULL starts at the head.
	// BW1W120 00555cc0
	T FindNext(T value)
	{
		if (value == NULL)
		{
			if (GetStart() != NULL)
			{
				return GetStart()->payload;
			}
		}
		else
		{
			for (LHLinkedNode<T>* node = head.Get(); node != NULL; node = node->next.Get())
			{
				if (node->payload == value)
				{
					node = node->next.Get();
					if (node != NULL)
					{
						return node->payload;
					}
					return NULL;
				}
			}
		}
		return NULL;
	}
};

template <typename T> LHLinkedNode<T>* LHLinkedList<T>::Find(T value)
{
	for (LHLinkedNode<T>* node = head.Get(); node != NULL; node = node->next.Get())
	{
		if (node->payload == value)
		{
			return node;
		}
	}
	return NULL;
}

template <typename T> LHLinkedList<T>::LHLinkedList()
{
	// The head's default construction precedes this second clear in the original.
	count = 0;
	head.Clear();
}

#endif /* BW1_DECOMP_LH_LINKED_LIST_INCLUDED_H */
