#ifndef BW1_DECOMP_LOADER_ANON_INCLUDED_H
#define BW1_DECOMP_LOADER_ANON_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For size_t */
#include <stdint.h> /* For uint32_t */

// Forward Declares

struct GVillagerStateTableInfo;
struct LHFile;

struct LoaderAnon
{
	uint32_t field_0x0;
};
static_assert(sizeof(LoaderAnon) == 0x4, "Data type is of wrong size");

template <typename T>
void __cdecl LoadIt(LoaderAnon* loader, char* info_str, T* info_array, size_t count, bool write, LHFile* file);
// BW1W120 00433f00 BW1M100 10185870 LoadIt<GVillagerStateTableInfo>(LoaderAnon *, char *, GVillagerStateTableInfo *, unsigned long, bool, LHFile *)
template <>
void __cdecl LoadIt(LoaderAnon* loader, char* info_str, GVillagerStateTableInfo* info_array, size_t count, bool write,
                    LHFile* file);

#endif /* BW1_DECOMP_LOADER_ANON_INCLUDED_H */
