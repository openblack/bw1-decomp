#ifndef BW1_DECOMP_LHDLL_LH_TEMPLATE_INCLUDED_H
#define BW1_DECOMP_LHDLL_LH_TEMPLATE_INCLUDED_H

#include <stddef.h> /* For NULL */

#include <re_common.h> /* For bool32_t */

#include "LHDLLLogMacros.h"

#define LH_TEMPLATE_FILEPATH RELEASED_HEADERS_DIRECTORY "LHTemplate.h"

template <class T> class LHFastPointer
{
public:
	// BW1W120 inlined BW1M119 010da8c0 (LHCombined Release)
	T* Get() const { return Pointer; }
	// BW1W120 inlined BW1M119 010daac0 (LHCombined Release)
	void Set(T* pointer) { Pointer = pointer; }

private:
	T* Pointer;
};

template <class T> class LHLinkedNode
{
public:
	// BW1W120 inlined BW1M119 010dab30 (LHCombined Release)
	LHLinkedNode(T data, LHLinkedNode<T>* next)
	{
		Data = data;
		Next.Set(next);
	}

	LHFastPointer<LHLinkedNode<T> > Next;
	T                               Data; /* 0x4 */
};

template <class T> class LHLinkedList
{
public:
	// BW1W120 inlined BW1M119 inlined
	LHLinkedList()
	{
		Count = 0;
		Head.Set(NULL);
	}
	// BW1W120 007ad090 BW1M119 010dad50 (LHCombined Release)
	~LHLinkedList() { LH_ASSERT_AT(496, LH_TEMPLATE_FILEPATH, !Count, "Must Clear List before destructing"); }

	// BW1W120 inlined BW1M119 010da910 (LHCombined Release)
	LHLinkedNode<T>* GetStart() const { return Head.Get(); }

	// BW1W120 007ae6b0 BW1M119 null
	bool32_t Add(T data)
	{
		if (data)
		{
			LHLinkedNode<T>* node = new LHLinkedNode<T>(data, Head.Get());
			if (node)
			{
				Head.Set(node);
				Count++;
			}
			return true;
		}
		return false;
	}

	// BW1W120 inlined BW1M119 null
	T GetNext(T data)
	{
		if (data == NULL)
		{
			if (GetStart() != NULL)
			{
				return GetStart()->Data;
			}
		}
		else
		{
			for (LHLinkedNode<T>* node = Head.Get(); node != NULL; node = node->Next.Get())
			{
				if (node->Data == data)
				{
					node = node->Next.Get();
					if (node != NULL)
					{
						return node->Data;
					}
					return NULL;
				}
			}
		}
		return NULL;
	}

	// BW1W120 007ae6f0 BW1M119 010da770 (LHCombined Release)
	void Remove(T data, bool only_first = false)
	{
		bool deleted_one = false;
		LH_ASSERT_AT(728, LH_TEMPLATE_FILEPATH, Count > 0, "Peter: Linked List Count Error");
		LH_ASSERT_AT(729, LH_TEMPLATE_FILEPATH, Head.Get(), "Peter: Linked List No Head Error");

		LHLinkedNode<T>* last_node = NULL;
		LHLinkedNode<T>* node = Head.Get();
		while (node)
		{
			LHLinkedNode<T>* next = node->Next.Get();
			if (node->Data == data)
			{
				if (node == Head.Get())
				{
					Head.Set(next);
				}
				else
				{
					LH_ASSERT_AT(743, LH_TEMPLATE_FILEPATH, last_node, "Peter: Damn Richard won the bet");
					last_node->Next.Set(node->Next.Get());
				}
				LH_ASSERT_AT(746, LH_TEMPLATE_FILEPATH, Count, "Peter: Count in linked list wrong");
				Count--;
				deleted_one = true;
				delete node;
				if (only_first)
				{
					return;
				}
			}
			else
			{
				last_node = node;
			}
			node = next;
		}
		LH_ASSERT_AT(760, LH_TEMPLATE_FILEPATH, deleted_one == true, "Peter: Not Found in linked list");
	}

	LHFastPointer<LHLinkedNode<T> > Head;
	unsigned long                   Count; /* 0x4 */
};

#endif /* BW1_DECOMP_LHDLL_LH_TEMPLATE_INCLUDED_H */
