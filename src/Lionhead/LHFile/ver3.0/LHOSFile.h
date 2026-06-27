#ifndef BW1_DECOMP_LHOS_FILE_INCLUDED_H
#define BW1_DECOMP_LHOS_FILE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For size_t */
#include <stdint.h> /* For uint32_t */

#include "LHFile.h" /* For enum LH_FILE_MODE, enum LH_SEEK_MODE */

class LHOSFile
{
public:
    void* handle; /* 0x4 */

    // Override methods

    // BW1W120 007bc660 BW1M100 10164ef0 LHOSFile::~LHOSFile(bool)
    virtual ~LHOSFile();
    // BW1W120 007bc730 BW1M100 10164b40 LHOSFile::Open(const char*, LH_FILE_MODE)
    virtual uint32_t Open(const char* path, LH_FILE_MODE mode);

    // Static methods

    // BW1W120 007bc6a0 BW1M100 10164e30 LHOSFile::Exists(const char*)
    static uint32_t Exists(const char* path);

    // Constructors

    // BW1W120 007bc650 BW1M100 10164fc0 LHOSFile::LHOSFile(void)
    LHOSFile();

    // Non-virtual Destructors

    // BW1W120 007bc680 BW1M100 inlined LHOSFile::~LHOSFile(void)
    ~LHOSFile();

    // Non-virtual methods

    // BW1W120 0046b720 BW1M100 inlined LHOSFile::Write(char *const)
    uint32_t Write(const char* str);
    // BW1W120 007bc860 BW1M100 1061b68c LHOSFile::Close(void)
    uint32_t Close();
    // BW1W120 007bc880 BW1M100 1061beb4 LHOSFile::Seek(long, LH_SEEK_MODE, unsigned long *)
    uint32_t Seek(size_t pos, LH_SEEK_MODE mode, uint32_t* starting_point);
    // BW1W120 007bc8e0 BW1M100 1061cc94 LHOSFile::Read(void* , unsigned long, unsigned long *)
    uint32_t Read(void* buffer, size_t size, size_t* read);
    // BW1W120 007bc920 BW1M100 1061bbb4 LHOSFile::Write(void* , unsigned long, unsigned long *)
    uint32_t Write(const void* data, uint32_t len, uint32_t* written);
};

#endif /* BW1_DECOMP_LHOS_FILE_INCLUDED_H */
