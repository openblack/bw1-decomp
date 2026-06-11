#ifndef BW1_DECOMP_LH_RELEASED_FILE_INCLUDED_H
#define BW1_DECOMP_LH_RELEASED_FILE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "LHFile.h" /* For enum LH_FILE_MODE, struct LHFile */

class LHReleasedFile: public LHFile
{
public:

    // Override methods

    // win1.41 007bd730 mac 1061c784 LHReleasedFile::Open(LH_FILE_MODE)
    virtual uint32_t Open(LH_FILE_MODE mode);

    // Constructors

    // win1.41 0047f6d0 mac 101c9350 LHReleasedFile::LHReleasedFile
    LHReleasedFile();
    // win1.41 00837350 mac inlined LHReleasedFile::LHReleasedFile(char const *)
    LHReleasedFile(const char* name);
};

#endif /* BW1_DECOMP_LH_RELEASED_FILE_INCLUDED_H */
