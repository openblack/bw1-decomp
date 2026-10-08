#ifndef BW1_DECOMP_LH_ORDERED_LINKED_LIST_INCLUDED_H
#define BW1_DECOMP_LH_ORDERED_LINKED_LIST_INCLUDED_H

#include <stddef.h> /* For NULL */
#include <stdint.h> /* For uint32_t */

template <typename T> class OrderedNode
{
public:
	T*              data;
	OrderedNode<T>* next;

	// BW1W120 inlined BW1M119 01552c80
	OrderedNode(T* node_data, OrderedNode<T>* next_node) : data(node_data), next(next_node) {}

	// BW1W120 inlined BW1M119 01552be0
	T* GetData() { return data; }
};

template <typename T> class LHOrderedLinkedList
{
public:
	OrderedNode<T>* head; /* 0x0 */
	uint32_t        count;

	// BW1W120 inlined BW1M119 0130f350
	LHOrderedLinkedList() : head(NULL), count(0) {}
	// BW1W120 inlined BW1M119 01552dd0
	~LHOrderedLinkedList() { RemoveAll(); }

	// BW1W120 inlined BW1M119 01552aa0
	OrderedNode<T>* GetHead() { return head; }
	// BW1W120 inlined BW1M119 010f9b90
	uint32_t GetSize() { return count; }
	// BW1W120 inlined BW1M119 010f9750
	uint32_t& GetSizeRef() { return count; }

	// BW1W120 00742310 BW1M119 010f8f60
	void Insert(T* data)
	{
		OrderedNode<T>* node = new OrderedNode<T>(data, NULL);
		OrderedNode<T>* previous = NULL;
		OrderedNode<T>* current;
		for (current = head; current != NULL; current = current->next)
		{
			if (*data < *current->data)
			{
				node->next = current;
				if (previous == NULL)
				{
					head = node;
				}
				else
				{
					previous->next = node;
				}
				break;
			}
			previous = current;
		}
		if (current == NULL)
		{
			if (previous == NULL)
			{
				head = node;
			}
			else
			{
				previous->next = node;
			}
		}
		count++;
	}
	// BW1W120 007424d0 BW1M119 01552af0
	int Remove(T* data)
	{
		OrderedNode<T>* previous = NULL;
		for (OrderedNode<T>* node = head; node != NULL; node = node->next)
		{
			if (node->data == data)
			{
				if (previous == NULL)
				{
					head = head->next;
				}
				else
				{
					previous->next = node->next;
				}
				delete node;
				count--;
				return true;
			}
			previous = node;
		}
		return false;
	}
	// BW1W120 00742480 BW1M119 01552cf0
	void RemoveAll()
	{
		OrderedNode<T>* node;
		while ((node = GetHead()) != NULL)
		{
			Remove(node->GetData());
		}
	}
	// BW1W120 inlined BW1M119 null
	void DeleteAll()
	{
		OrderedNode<T>* node;
		while ((node = GetHead()) != NULL)
		{
			T* data = node->GetData();
			Remove(data);
			delete data;
		}
	}
};

template <typename T> class LHOrderedLinkedListIterator
{
public:
	OrderedNode<T>* current;

	// BW1W120 inlined BW1M119 010f9600
	LHOrderedLinkedListIterator(LHOrderedLinkedList<T>& list) : current(list.head) {}

	// BW1W120 inlined BW1M119 010f94a0
	bool MoreToDo() { return current != NULL; }
	// BW1W120 inlined BW1M119 010f9520
	void operator++(int) { current = current->next; }
	// BW1W120 inlined BW1M119 010f9590
	T* Get() { return current->data; }
};

#endif // BW1_DECOMP_LH_ORDERED_LINKED_LIST_INCLUDED_H
