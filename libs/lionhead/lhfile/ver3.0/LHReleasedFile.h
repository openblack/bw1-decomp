#ifndef BW1_DECOMP_LH_RELEASED_FILE_INCLUDED_H
#define BW1_DECOMP_LH_RELEASED_FILE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "LHFile.h" /* For enum LH_FILE_MODE, struct LHFile */

struct LHReleasedFile
{
  struct LHFile super;  /* 0x0 */
};
static_assert(sizeof(struct LHReleasedFile) == 0x6c, "Data type is of wrong size");

static struct LHFileVftable* __vt__14LHReleasedFile = (struct LHFileVftable*)0x008c4d0c;

// Constructors

// win1.41 0047f6d0 mac 101c9350 LHReleasedFile::LHReleasedFile
struct LHReleasedFile* __fastcall __ct__14LHReleasedFileFv(struct LHReleasedFile* this);
// win1.41 00837350 mac inlined LHReleasedFile::LHReleasedFile(char const *)
struct LHReleasedFile* __fastcall __ct__14LHReleasedFileFPCc(struct LHReleasedFile* this, const void* edx, const char* name);

// Override methods

// win1.41 007bd730 mac 1061c784 LHReleasedFile::Open(LH_FILE_MODE)
uint32_t __fastcall Open__14LHReleasedFileF12LH_FILE_MODE(struct LHReleasedFile* this, const void* edx, enum LH_FILE_MODE mode);

#endif /* BW1_DECOMP_LH_RELEASED_FILE_INCLUDED_H */
