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

    // win1.41 007bc660 mac 10164ef0 LHOSFile::~LHOSFile(bool)
    virtual ~LHOSFile();
    // win1.41 007bc730 mac 10164b40 LHOSFile::Open(const char*, LH_FILE_MODE)
    virtual uint32_t Open(const char* path, LH_FILE_MODE mode);

    // Static methods

    // win1.41 007bc6a0 mac 10164e30 LHOSFile::Exists(const char*)
    static uint32_t Exists(const char* path);

    // Constructors

    // win1.41 007bc650 mac 10164fc0 LHOSFile::LHOSFile(void)
    LHOSFile();

    // Non-virtual Destructors

    // win1.41 007bc680 mac inlined LHOSFile::~LHOSFile(void)
    ~LHOSFile();

    // Non-virtual methods

    // win1.41 0046b720 mac inlined LHOSFile::Write(char *const)
    uint32_t Write(const char* str);
    // win1.41 007bc860 mac 1061b68c LHOSFile::Close(void)
    uint32_t Close();
    // win1.41 007bc880 mac 1061beb4 LHOSFile::Seek(long, LH_SEEK_MODE, unsigned long *)
    uint32_t Seek(size_t pos, LH_SEEK_MODE mode, uint32_t* starting_point);
    // win1.41 007bc8e0 mac 1061cc94 LHOSFile::Read(void* , unsigned long, unsigned long *)
    uint32_t Read(void* buffer, size_t size, size_t* read);
    // win1.41 007bc920 mac 1061bbb4 LHOSFile::Write(void* , unsigned long, unsigned long *)
    uint32_t Write(const void* data, uint32_t len, uint32_t* written);
};

#endif /* BW1_DECOMP_LHOS_FILE_INCLUDED_H */
