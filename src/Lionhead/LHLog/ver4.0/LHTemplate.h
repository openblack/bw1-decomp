#ifndef BW1_DECOMP_LH_TEMPLATE_INCLUDED_H
#define BW1_DECOMP_LH_TEMPLATE_INCLUDED_H

#include <stddef.h> /* For NULL */

#include <re_common.h> /* For bool32_t */

#include "LHAssert.h"

#define LH_TEMPLATE_FILEPATH "C:\\dev\\Libs\\LHALL\\RELEASED\\Headers\\LHTemplate.h"

typedef long SLONG;

template <class T> class LHFastPointer
{
public:
	// BW1W120 inlined BW1M119 0116ee70 (LHCombined Release)
	T* Get() const { return Pointer; }
	// BW1W120 inlined BW1M119 0116fe10 (LHCombined Release)
	void Set(T* pointer) { Pointer = pointer; }

private:
	T* Pointer;
};

template <class T> class LHLinkedNode
{
public:
	// BW1W120 inlined BW1M119 0116fe80 (LHCombined Release)
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
	// BW1W120 100074f0 BW1M119 0116fef0 (LHCombined Release)
	LHLinkedList()
	{
		Count = 0;
		Head.Set(NULL);
	}
	// BW1W120 10007500 BW1M119 0116f010 (LHCombined Release)
	~LHLinkedList() { LH_ASSERT_AT(!Count, "Must Clear List before destructing", LH_TEMPLATE_FILEPATH, 563); }

	// BW1W120 inlined BW1M119 0116eec0 (LHCombined Release)
	LHLinkedNode<T>* GetStart() const { return Head.Get(); }

	// BW1W120 100075f0 BW1M119 null
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

	// BW1W120 10007630 BW1M119 null
	LHLinkedNode<T>* GetNodeAtPosition(long position)
	{
		LH_ASSERT_CORRECTIVE_AT(Count > 0, "Paul: Linked List Count Error", return 0;, LH_TEMPLATE_FILEPATH, 679);
		LH_ASSERT_CORRECTIVE_AT(Head.Get(), "Paul: Linked List Has No Head", return 0;, LH_TEMPLATE_FILEPATH, 680);
		LH_ASSERT_CORRECTIVE_AT(position < (SLONG)Count, "Paul: Linked List Position Wanted Less than Count", return 0;
		                        , LH_TEMPLATE_FILEPATH, 681);

		LHLinkedNode<T>* t_node = Head.Get();
		for (long i = 0; i < position; i++)
		{
			t_node = t_node->Next.Get();
		}

		LH_ASSERT_AT(t_node, "Paul: Linked List Value Returning Is Null", LH_TEMPLATE_FILEPATH, 691);
		return t_node;
	}

	// BW1W120 10008230 BW1M119 null
	T GetAtPosition(long position)
	{
		LHLinkedNode<T>* t_node = GetNodeAtPosition(position);
		LH_ASSERT_CORRECTIVE_AT(t_node, "No node at position", return 0;, LH_TEMPLATE_FILEPATH, 700);
		return t_node->Data;
	}

	// BW1W120 10007a20 BW1M119 0116f090 (LHCombined Release)
	void Remove(T data, bool only_first = false)
	{
		bool deleted_one = false;
		LH_ASSERT_AT(Count > 0, "Peter: Linked List Count Error", LH_TEMPLATE_FILEPATH, 795);
		LH_ASSERT_AT(Head.Get(), "Peter: Linked List No Head Error", LH_TEMPLATE_FILEPATH, 796);

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
					LH_ASSERT_AT(last_node, "Peter: Damn Richard won the bet", LH_TEMPLATE_FILEPATH, 810);
					last_node->Next.Set(node->Next.Get());
				}
				LH_ASSERT_AT(Count, "Peter: Count in linked list wrong", LH_TEMPLATE_FILEPATH, 813);
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
		LH_ASSERT_AT(deleted_one == true, "Peter: Not Found in linked list", LH_TEMPLATE_FILEPATH, 827);
	}

	LHFastPointer<LHLinkedNode<T> > Head;
	unsigned long                   Count; /* 0x4 */
};

#endif /* BW1_DECOMP_LH_TEMPLATE_INCLUDED_H */
