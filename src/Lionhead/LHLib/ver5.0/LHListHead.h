#ifndef BW1_DECOMP_LH_LIST_HEAD_INCLUDED_H
#define BW1_DECOMP_LH_LIST_HEAD_INCLUDED_H

#include <stdint.h> // For uint32_t

// Plain iteration; the body must not unlink the element it is given.
// Cursor advances in place, successor read after the body:
//   mov <r>,[<r>+next] / test <r>,<r> / jne     8b b6 dd dd dd dd  85 f6  75 xx   (esi)
#define FOREACH_LH_LIST_HEAD(T, var, list) for (T* var = (list).head; var != NULL; var = var->next)

// Reads the successor before running the body, which may unlink the element it is given.
// Successor cached ahead of the call, then moved into the cursor:
//   mov esi,[ecx+next] / call / test esi,esi / mov ecx,esi / jne     85 f6  8b ce  75 xx
#define FOREACH_LH_LIST_HEAD_SAFE(T, var, list)                                                                        \
	for (T* var = (list).head, *var##Next; var != NULL && ((var##Next = var->next), 1); var = var##Next)

template <typename T> // Must have T.next and must be T*
struct LHListHead
{
	T*       head;
	uint32_t count;

	inline LHListHead() : head(NULL), count(0) {}

	// BW1W120 inlined BW1M119 014af430
	T* Get() { return head; }
	// BW1W120 inlined BW1M119 010cd520
	void Set(T* element) { head = element; }
	// BW1W120 inlined BW1M119 01561cd0
	void Clear()
	{
		Set(NULL);
		count = 0;
	}
	// BW1W120 007422b0 BW1M119 inlined
	void RemoveAll()
	{
		T* element = head;
		while (element != NULL)
		{
			T* next = element->next;
			element->next = NULL;
			element = next;
		}
		Clear();
	}
	// BW1W120 007422d0 BW1M119 inlined
	void DeleteAll()
	{
		T* element = head;
		while (element != NULL)
		{
			T* next = element->next;
			if ((element->GameThing::Flags & GAME_THING_FLAG_UNAVAILABLE) == 0)
			{
				element->ToBeDeleted(0);
			}
			element = next;
		}
		Clear();
	}

	// BW1W120 inlined BW1M119 inlined
	void DeleteEach()
	{
		T* element = Get();
		while (element != NULL)
		{
			T* next = element->next.Get();
			delete element;
			element = next;
		}
		Clear();
	}

	// BW1W120 inlined BW1M119 inlined
	void ToBeDeletedEach()
	{
		T* element = head;
		while (element != NULL)
		{
			T* next = element->next;
			element->ToBeDeleted(0);
			element = next;
		}
		Clear();
	}

	// BW1W120 inlined BW1M119 null
	void ToBeDeletedAll()
	{
		T* element;
		while ((element = Get()) != NULL)
		{
			element->ToBeDeleted(0);
		}
	}

	T* Find(T* element)
	{
		T* walker;
		for (walker = Get(); walker != NULL && walker != element; walker = walker->next.Get())
		{
		}
		return walker;
	}

	void AddToFirst(T* element)
	{
		element->next = head;
		head = element;
		++count;
	}

	void AddToLast(T* element);

	T* Get(uint32_t index) const
	{
		T* walker = head;
		for (uint32_t i = 0; walker != NULL && index != i; ++i)
		{
			walker = walker->next;
		}
		return walker;
	}

	// NULL means "before the first", so a walk seeded with NULL needs only one call
	// site:  for (T* v = NULL; (v = list.GetNext(v)) != NULL;)
	// Confirmed against BW1M119 .GetNext__21LHListHead<8Villager>FP8Villager:
	//   if (param_2 == 0) return *param_1; return *(param_2 + 0xe4);
	T* GetNext(T* element) const { return element == NULL ? head : element->next; }

	// BW1W120 inlined BW1M119 inlined
	T* GetPrevious(T* element) const
	{
		if (head == element)
		{
			return NULL;
		}
		T* walker = head;
		while (walker != NULL && walker->next != element)
		{
			walker = walker->next;
		}
		return walker;
	}

	T* GetLast() const
	{
		T* walker = head;
		while (walker != NULL && walker->next != NULL)
		{
			walker = walker->next;
		}
		return walker;
	}

	void Remove(T* element)
	{
		if (head == element)
		{
			head = element->next;
			count--;
			element->next = NULL;
			return;
		}
		for (T* walker = head; walker != NULL; walker = walker->next)
		{
			if (walker->next == element)
			{
				walker->next = element->next;
				count--;
				element->next = NULL;
				return;
			}
		}
	}
};

template <typename T> struct LHListHeadTail : public LHListHead<T>
{
	T* tail;

	// BW1W120 inlined BW1M119 inlined
	LHListHeadTail() : tail(NULL) {}

	// BW1W120 inlined BW1M119 inlined
	void AddToTail(T* element)
	{
		if (tail != NULL)
		{
			tail->next.Set(element);
		}
		tail = element;
		if (this->Get() == NULL)
		{
			this->Set(element);
		}
		this->count++;
	}
};

template <typename T> void LHListHead<T>::AddToLast(T* element)
{
	T* walker = head;
	if (walker != NULL)
	{
		while (walker->next != NULL)
		{
			walker = walker->next;
		}
		walker->next = element;
	}
	else
	{
		head = element;
	}
	element->next = NULL;
	++count;
}

#endif /* BW1_DECOMP_LH_LIST_HEAD_INCLUDED_H */
