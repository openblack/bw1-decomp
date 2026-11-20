#include "KeyBuffer.h"

GKeyBuffer::~GKeyBuffer()
{
	if (Inputs != NULL)
	{
		delete[] Inputs;
		Inputs = NULL;
	}
}

bool32_t GKeyBuffer::Init(unsigned short capacity)
{
	if (Inputs == NULL)
	{
		Inputs = NEW(19) GKeyInput[capacity];
		Capacity = capacity;
	}
	BufferedKeys = 0;
	return Inputs != NULL;
}

bool32_t GKeyBuffer::AddKey(LH_KEY key, unsigned short modifier)
{
	if (BufferedKeys < Capacity)
	{
		GKeyInput* input = &Inputs[BufferedKeys];
		BufferedKeys++;
		input->Key = key;
		input->Modifier = modifier;
		return true;
	}
	return false;
}

bool32_t GKeyBuffer::AddKeyIfDifferentToPrevious(LH_KEY key, unsigned short modifier)
{
	if (BufferedKeys != 0)
	{
		GKeyInput* current = &Inputs[BufferedKeys];
		if (current[-1].Key == key && current[-1].Modifier == modifier)
		{
			return false;
		}
	}
	return AddKey(key, modifier);
}
