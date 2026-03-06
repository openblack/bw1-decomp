#ifndef BW1_DECOMP_LOADER_ANON_INCLUDED_H
#define BW1_DECOMP_LOADER_ANON_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stddef.h> /* For size_t */
#include <stdint.h> /* For uint32_t */

struct LoaderAnon
{
  uint32_t field_0x0;
};

#ifdef __cplusplus

template<typename T>
void LoadIt(LoaderAnon* loader, char* info_str, T* target, size_t count, bool write, struct LHFile* file);

#else // __cplusplus

// Forward Declares

struct GVillagerStateTableInfo;
struct LHFile;

static_assert(sizeof(struct LoaderAnon) == 0x4, "Data type is of wrong size");

// win1.41 00433f00 mac 10185870 LoadIt<GVillagerStateTableInfo>(LoaderAnon *, char *, GVillagerStateTableInfo *, unsigned long, bool, LHFile *)
void __cdecl LoadIt__FP10LoaderAnonPcP23GVillagerStateTableInfoUlbP6LHFile(struct LoaderAnon* loader, char* info_str, struct GVillagerStateTableInfo* info_array, size_t count, bool write, struct LHFile* file) asm("??$LoadIt@VGVillagerStateTableInfo@@@@YAXPAVLoaderAnon@@PADPAVGVillagerStateTableInfo@@K_NPAVLHFile@@@Z");

#endif // __cplusplus

#endif /* BW1_DECOMP_LOADER_ANON_INCLUDED_H */
