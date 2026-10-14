#ifndef BW1_DECOMP_LH_STACK_INCLUDED_H
#define BW1_DECOMP_LH_STACK_INCLUDED_H

#include <stdint.h> /* For uint32_t */

template <typename T, int N> class LHStack
{
public:
	T        Data[N];
	uint32_t Current;

	LHStack() { SetToZero(); }

	// BW1W120 inlined BW1M119 012b0060
	void SetToZero() { Current = 0; }
	// BW1W120 inlined BW1M119 010fffb0
	uint32_t Size() const { return Current; }
	// BW1W120 inlined BW1M119 012ae500
	void Push(T value) { Data[Current++] = value; }
	// BW1W120 inlined BW1M119 0159c600
	T Pop() { return Data[--Current]; }
	// BW1W120 inlined BW1M119 012af000
	T&   operator[](uint32_t index) { return Data[index]; }
	void Remove(T value)
	{
		for (uint32_t i = 0; i < Current; i++)
		{
			if (Data[i] == value)
			{
				for (uint32_t j = i; j < Current - 1; j++)
				{
					Data[j] = Data[j + 1];
				}
				Current--;
				return;
			}
		}
	}
};

#endif /* BW1_DECOMP_LH_STACK_INCLUDED_H */
