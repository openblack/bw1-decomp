#include <Lionhead/LHLib/ver5.0/LHMem.h>

#include <windows.h>

#include <Lionhead/LHLib/ver5.0/LHSystem.h>

#include <stdlib.h> /* For malloc, free */
#include <string.h> /* For memset */

void* __stdcall LHMem::Alloc(size_t size)
{
	return malloc(size);
}

#ifndef VERSION_BW1W100

void* __stdcall LHMem::AllocFilled(size_t size, int fill)
{
	void* mem = malloc(size);
	if (mem)
	{
		memset(mem, fill, size);
	}
	return mem;
}

#endif // VERSION_BW1W100

int __stdcall LHMem::Free(void* mem)
{
	free(mem);
	return 0;
}

#ifndef VERSION_BW1W100

LH_RETURN LHBankToMem::Convert()
{
	LHBankToMem* entry = this;
	while (entry->Mem != NULL)
	{
		*entry->Mem = LHSys::TheSystem.ScriptResources[entry->Bank].data;
		entry++;
	}
	return LH_OK;
}

#endif // VERSION_BW1W100
