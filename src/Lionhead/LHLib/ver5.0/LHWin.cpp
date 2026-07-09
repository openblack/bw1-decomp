#include <Lionhead/LHLib/ver5.0/LHWin.h>

#include <stdlib.h> /* For calloc, free */

void* operator new(size_t size, const char* file_name, uint32_t line)
{
	return calloc(size, 1);
}

void FreeMemory(void* block)
{
	free(block);
}
