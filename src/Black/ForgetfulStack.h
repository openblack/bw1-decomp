#ifndef BW1_DECOMP_FORGETFUL_STACK_INCLUDED_H
#define BW1_DECOMP_FORGETFUL_STACK_INCLUDED_H

#include <stdint.h> /* For uint32_t */

template <class T, int N> struct ForgetfulStack
{
	T        Items[N];
	uint32_t NextSlot;
	uint32_t Size;

	// BW1W120 inlined BW1M119 0123a260
	ForgetfulStack() { Clear(); }

	// BW1W120 inlined BW1M119 011e7d10
	void Clear()
	{
		NextSlot = 0;
		Size = 0;
	}
	// BW1W120 inlined BW1M119 inlined
	void Push(const T& item)
	{
		Items[NextSlot] = item;
		NextSlot++;
		if (NextSlot == N)
		{
			NextSlot = 0;
		}
		if (Size < N)
		{
			Size++;
		}
	}
};

#endif /* BW1_DECOMP_FORGETFUL_STACK_INCLUDED_H */
