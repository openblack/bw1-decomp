#ifndef BW1_DECOMP_EVERLASTING_GRAPH_INCLUDED_H
#define BW1_DECOMP_EVERLASTING_GRAPH_INCLUDED_H

#include <stdint.h> /* For uint16_t */
#include <string.h> /* For memset */

template <typename T, int SIZE, int PARAM> class EverlastingGraph
{
public:
	T              Data[SIZE];
	unsigned long  Size;
	unsigned long  Index;
	unsigned short SamplesPerSlot;
	unsigned short SamplesInSlot;

	// BW1W120 inlined BW1M119 01034470
	void Add(T value)
	{
		Data[Index] += value / SamplesPerSlot;
		if (++SamplesInSlot == SamplesPerSlot)
		{
			if (++Index == Size)
			{
				Index = 0;
				for (unsigned long i = 0; i < Size; i += 2)
				{
					Data[Index] = (Data[i] + Data[i + 1]) * 0.5f;
					Index++;
				}
				memset(&Data[Index], 0, Index);
				SamplesPerSlot *= 2;
			}
			SamplesInSlot = 0;
		}
	}
};

#endif /* BW1_DECOMP_EVERLASTING_GRAPH_INCLUDED_H */
