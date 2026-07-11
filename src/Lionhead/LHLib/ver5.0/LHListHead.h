#ifndef BW1_DECOMP_LH_LIST_HEAD_INCLUDED_H
#define BW1_DECOMP_LH_LIST_HEAD_INCLUDED_H

#include <stdint.h> // For uint32_t

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
