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
		for (uint32_t i = 0; i < index && walker != NULL; ++i)
		{
			walker = walker->next;
		}
		return walker;
	}

	T* GetNext(T* element) const { return element->next; }

	T* GetLast() const
	{
		T* walker = head;
		while (walker != NULL && GetNext(walker) != NULL)
		{
			walker = GetNext(walker);
		}
		return walker;
	}

	void Remove(T* element)
	{
		if (head == element)
		{
			head = element->next;
		}
		else
		{
			T* walker = head;
			while (true)
			{
				if (walker == NULL)
				{
					return;
				}
				T* next = walker->next;
				if (next == element)
				{
					break;
				}
				walker = next;
			}
			walker->next = element->next;
		}
		count--;
		element->next = NULL;
	}
};

#endif /* BW1_DECOMP_LH_LIST_HEAD_INCLUDED_H */
