#ifndef BW1_DECOMP_LOADER_ANON_INCLUDED_H
#define BW1_DECOMP_LOADER_ANON_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

// Forward Declares

class LHFile;

struct LoaderAnon
{
	uint32_t field_0x0[0x46];
	char     TextBuffer[0x2000]; /* 0x118, fabricated name */
	char*    Cursor;             /* 0x2118, fabricated name */
	uint32_t ErrorCount;         /* 0x211c, fabricated name */
	uint32_t field_0x2120;

	// BW1W120 005f2af0 BW1M100 101009b0 LoaderAnon::LoaderAnon(char *, char *, char *)
	LoaderAnon(char* detail_prefix, char* enum_prefix, char* load_id);
	// BW1W120 005f3120 BW1M100 10100140 LoaderAnon::LoadData(char *, unsigned long, unsigned long *)
	unsigned long LoadData(char* info_str, unsigned long index, unsigned long* buffer);
};
static_assert(sizeof(LoaderAnon) == 0x2124, "Data type is of wrong size");

// BW1W120 00432ab0 BW1M100 10187980 LoadIt<CreatureDesireDependency>(LoaderAnon *, char *, CreatureDesireDependency *, unsigned long, bool, LHFile *)
// BW1W120 00433f00 BW1M100 10185870 LoadIt<GVillagerStateTableInfo>(LoaderAnon *, char *, GVillagerStateTableInfo *, unsigned long, bool, LHFile *)
template <typename T>
void __cdecl LoadIt(LoaderAnon* loader, char* info_str, T* info_array, unsigned long count, bool use_binary,
                    LHFile* file)
{
	if (use_binary)
	{
		for (unsigned long i = 0; i < count; i++)
			info_array[i].LoadBinary(file);
	}
	else
	{
		for (unsigned long i = 0; i < count; i++)
		{
			loader->Cursor = loader->TextBuffer;
			unsigned long size = loader->LoadData(info_str, i, (unsigned long*)loader->TextBuffer);
			if (size == 0)
			{
				loader->ErrorCount++;
				return;
			}
			if (size != info_array[i].LoadTextAndCache(&loader->Cursor, file))
				loader->ErrorCount++;
		}
	}
}

#endif /* BW1_DECOMP_LOADER_ANON_INCLUDED_H */
