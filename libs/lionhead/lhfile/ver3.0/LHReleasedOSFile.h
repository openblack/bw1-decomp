#ifndef BW1_DECOMP_LH_RELEASED_OS_FILE_INCLUDED_H
#define BW1_DECOMP_LH_RELEASED_OS_FILE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */

#include "LHFile.h" /* For enum LH_FILE_MODE */
#include "LHOSFile.h" /* For struct LHOSFile */

struct LHReleasedOSFile
{
  struct LHOSFile super;  /* 0x0 */
};
static_assert(sizeof(struct LHReleasedOSFile) == 0x8, "Data type is of wrong size");

static struct LHOSFileVftable* const __vt__16LHReleasedOSFile = (struct LHOSFileVftable* const)0x008c4d00;

// Constructors

// win1.41 007e6d10 mac inlined LHReleasedOSFile::LHReleasedOSFile(void)
struct LHReleasedOSFile* __fastcall __ct__16LHReleasedOSFileFv(struct LHReleasedOSFile* this);

// Override methods

// win1.41 0042fd40 mac 1012d3f0 LHReleasedOSFile::~LHReleasedOSFile(void)
void __fastcall __dt__16LHReleasedOSFileFv(struct LHReleasedOSFile* this, const void* edx, bool param_1);
// win1.41 007bc7e0 mac 10164a30 LHReleasedOSFile::Open(const char*, LH_FILE_MODE)
uint32_t __fastcall Open__16LHReleasedOSFileFPc12LH_FILE_MODE(struct LHReleasedOSFile* this, const void* edx, const char* path, enum LH_FILE_MODE mode);

#endif /* BW1_DECOMP_LH_RELEASED_OS_FILE_INCLUDED_H */
