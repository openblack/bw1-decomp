#ifndef BW1_DECOMP_LH_FILE_LH_TEMPLATE_INCLUDED_H
#define BW1_DECOMP_LH_FILE_LH_TEMPLATE_INCLUDED_H

#include <stddef.h> /* For NULL */

#include <re_common.h> /* For bool32_t */

#include "LHFileLogMacros.h"

#ifdef VERSION_BW1WCI
#undef ORIGINAL_LINE
#define ORIGINAL_LINE(line) ((line) + 18)
#endif

#define LH_TEMPLATE_FILEPATH RELEASED_HEADERS_DIRECTORY "LHTemplate.h"

typedef long SLONG;

template <class T> class LHFastPointer
{
public:
	// BW1W120 inlined BW1M119 0113e890 (LHCombined Release)
	LHFastPointer() : Pointer(NULL) {}

	// BW1W120 inlined BW1M119 010052b0 (LHCombined Release)
	T* Get() const { return Pointer; }
	// BW1W120 inlined BW1M119 01169790 (LHCombined Release)
	void Set(T* pointer) { Pointer = pointer; }
	// BW1W120 inlined BW1M119 010c0f30 (LHCombined Release)
	void Clear() { Pointer = NULL; }

private:
	T* Pointer;
};

template <class T> class LHLinkedNode
{
public:
	// BW1W120 inlined BW1M119 0116a210 (LHCombined Release)
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
	// BW1W120 inlined BW1M119 0105b1e0 (LHCombined Release)
	LHLinkedList()
	{
		Count = 0;
		Head.Clear();
	}
	// BW1W120 007be280 BW1M119 010df720 (LHCombined Release)
	~LHLinkedList() { LH_ASSERT_AT(545, LH_TEMPLATE_FILEPATH, !Count, "Must Clear List before destructing"); }

	// BW1W120 inlined BW1M119 inlined
	LHLinkedNode<T>* GetStart() const { return Head.Get(); }

	// BW1W120 inlined BW1M119 inlined
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

	// BW1W120 inlined BW1M119 inlined
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

	// BW1W120 10019ad0 BW1M119 inlined
	void Remove(T data, bool only_first = false)
	{
		bool deleted_one = false;
		LH_ASSERT_AT(777, LH_TEMPLATE_FILEPATH, Count > 0, "Peter: Linked List Count Error");
		LH_ASSERT_AT(778, LH_TEMPLATE_FILEPATH, Head.Get(), "Peter: Linked List No Head Error");

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
					LH_ASSERT_AT(792, LH_TEMPLATE_FILEPATH, last_node, "Peter: Damn Richard won the bet");
					last_node->Next.Set(node->Next.Get());
				}
				LH_ASSERT_AT(795, LH_TEMPLATE_FILEPATH, Count, "Peter: Count in linked list wrong");
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
		LH_ASSERT_AT(809, LH_TEMPLATE_FILEPATH, deleted_one == true, "Peter: Not Found in linked list");
	}

	LHFastPointer<LHLinkedNode<T> > Head;
	unsigned long                   Count; /* 0x4 */
};

#undef ORIGINAL_LINE
#define ORIGINAL_LINE(line) (line)

#endif /* BW1_DECOMP_LH_FILE_LH_TEMPLATE_INCLUDED_H */
