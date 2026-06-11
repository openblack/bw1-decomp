#ifndef BW1_DECOMP_LH_RELEASED_OS_FILE_INCLUDED_H
#define BW1_DECOMP_LH_RELEASED_OS_FILE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */

#include "LHFile.h" /* For enum LH_FILE_MODE */
#include "LHOSFile.h" /* For struct LHOSFile */

class LHReleasedOSFile: public LHOSFile
{
public:

    // Override methods

    // win1.41 0042fd40 mac 1012d3f0 LHReleasedOSFile::~LHReleasedOSFile(void)
    virtual ~LHReleasedOSFile();
    // win1.41 007bc7e0 mac 10164a30 LHReleasedOSFile::Open(const char*, LH_FILE_MODE)
    virtual uint32_t Open(const char* path, LH_FILE_MODE mode);

    // Constructors

    // win1.41 007e6d10 mac inlined LHReleasedOSFile::LHReleasedOSFile(void)
    LHReleasedOSFile();
};

#endif /* BW1_DECOMP_LH_RELEASED_OS_FILE_INCLUDED_H */
