#ifndef BW1_DECOMP_LH_RELEASED_OS_FILE_INCLUDED_H
#define BW1_DECOMP_LH_RELEASED_OS_FILE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "LHFile.h" /* For enum LH_FILE_MODE */
#include "LHOSFile.h" /* For struct LHOSFile */

class LHReleasedOSFile: public LHOSFile
{
public:

    // Override methods

    // BW1W120 0042fd40 BW1M100 1012d3f0 LHReleasedOSFile::~LHReleasedOSFile(void)
    virtual ~LHReleasedOSFile();
    // BW1W120 007bc7e0 BW1M100 10164a30 LHReleasedOSFile::Open(const char*, LH_FILE_MODE)
    virtual uint32_t Open(const char* path, LH_FILE_MODE mode);

    // Constructors

    // BW1W120 007e6d10 BW1M100 inlined LHReleasedOSFile::LHReleasedOSFile(void)
    LHReleasedOSFile();
};

#endif /* BW1_DECOMP_LH_RELEASED_OS_FILE_INCLUDED_H */
