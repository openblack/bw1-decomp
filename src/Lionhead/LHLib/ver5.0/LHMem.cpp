#include <Lionhead/LHLib/ver5.0/LHMem.h>

#include <stdlib.h> /* For malloc, free */
#include <string.h> /* For memset */

void* __stdcall LHMem::Alloc(size_t size)
{
	return malloc(size);
}

void* __stdcall LHMem::AllocFilled(size_t size, int fill)
{
	void* mem = malloc(size);
	if (mem)
	{
		memset(mem, fill, size);
	}
	return mem;
}

int __stdcall LHMem::Free(void* mem)
{
	free(mem);
	return 0;
}
