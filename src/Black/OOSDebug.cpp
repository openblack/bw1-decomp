#include "OOSDebug.h"

char*         OOSDebug::Buffer;
unsigned long OOSDebug::BufferSize;

unsigned long OOSDebug::GetOverallChecksum()
{
	unsigned long checksum = 0;
	char          index = 0;
	for (unsigned long i = 0; i < BufferSize; i++)
		checksum += Buffer[i] * (++index | 0x10);
	return checksum;
}
