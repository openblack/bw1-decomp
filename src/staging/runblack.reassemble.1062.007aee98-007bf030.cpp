#include "lionhead/lhfile/ver3.0/LHOSFile.h"
#include "lionhead/lhfile/ver3.0/LHReleasedOSFile.h"
#include "lionhead/lhfile/ver3.0/LHFile.h"
#include "lionhead/lhfile/ver3.0/LHReleasedFile.h"

// win1.41 007bc650 mac 10164fc0 LHOSFile::LHOSFile(void)
LHOSFile::LHOSFile()
{
}

// win1.41 007bc660 mac 10164ef0 LHOSFile::~LHOSFile(bool)
LHOSFile::~LHOSFile()
{
}

// win1.41 007bc6a0 mac 10164e30 LHOSFile::Exists(const char*)
uint32_t LHOSFile::Exists(const char* path)
{
    return 0;
}

// win1.41 007bc730 mac 10164b40 LHOSFile::Open(const char*, LH_FILE_MODE)
uint32_t LHOSFile::Open(const char* path, LH_FILE_MODE mode)
{
    return 0;
}

// win1.41 007bc7e0 mac 10164a30 LHReleasedOSFile::Open(const char*, LH_FILE_MODE)
uint32_t LHReleasedOSFile::Open(const char* path, LH_FILE_MODE mode)
{
    return 0;
}

// win1.41 007bc860 mac 1061b68c LHOSFile::Close(void)
uint32_t LHOSFile::Close()
{
    return 0;
}

// win1.41 007bc880 mac 1061beb4 LHOSFile::Seek(long, LH_SEEK_MODE, unsigned long *)
uint32_t LHOSFile::Seek(size_t pos, LH_SEEK_MODE mode, uint32_t* starting_point)
{
    return 0;
}

// win1.41 007bc8e0 mac 1061cc94 LHOSFile::Read(void* , unsigned long, unsigned long *)
uint32_t LHOSFile::Read(void* buffer, size_t size, size_t* read)
{
    return 0;
}

// win1.41 007bc920 mac 1061bbb4 LHOSFile::Write(void* , unsigned long, unsigned long *)
uint32_t LHOSFile::Write(const void* data, uint32_t len, uint32_t* written)
{
    return 0;
}

// win1.41 007bd390 mac 1061c61c LHFile::SetName(char const *)
uint32_t LHFile::SetName(const char* name)
{
    return 0;
}

// win1.41 007bd500 mac 10168d60 LHFile::Open(LH_FILE_MODE)
uint32_t LHFile::Open(LH_FILE_MODE mode)
{
    return 0;
}

// win1.41 007bd730 mac 1061c784 LHReleasedFile::Open(LH_FILE_MODE)
uint32_t LHReleasedFile::Open(LH_FILE_MODE mode)
{
    return 0;
}

// win1.41 007bd7d0 mac 10168870 LHFile::VerifyFile(void)
uint32_t LHFile::VerifyFile()
{
    return 0;
}

// win1.41 007bd9d0 mac 10168610 LHFile::AllocSegDataMem(LHSegment *)
uint32_t LHFile::AllocSegDataMem(LHSegment* segment)
{
    return 0;
}

// win1.41 007bdb20 mac 101681d0 LHFile::WriteSegmentHeader(char *)
uint32_t LHFile::WriteSegmentHeader(char* segment_name)
{
    return 0;
}

// win1.41 007bdbc0 mac 1061c64c LHFile::Close(void)
uint32_t LHFile::Close()
{
    return 0;
}

// win1.41 007bdc60 mac 10005210 LHFile::Lookup(char *)
LHSegmentDesc* LHFile::Lookup(char* segment_name)
{
    return 0;
}

// win1.41 007bdcd0 mac 100050e0 LHFile::SetLHFilePointer(char *, long)
uint32_t LHFile::SetLHFilePointer(char* segment_name, int offset)
{
    return 0;
}

// win1.41 007bddd0 mac 10167790 LHFile::GetSegment(char *, LHSegment *, int)
uint32_t LHFile::GetSegment(char* param_2, LHSegment* segment, int param_4)
{
    return 0;
}

// win1.41 007bdec0 mac 10004fe0 LHFile::OpenSegment(char *)
uint32_t LHFile::OpenSegment(char* name)
{
    return 0;
}

// win1.41 007bdf50 mac 10004d90 LHFile::CloseSegment(void)
uint32_t LHFile::CloseSegment()
{
    return 0;
}

// win1.41 007be040 mac 10166bb0 LHFile::GetSegmentData(void* , unsigned long, long)
uint32_t LHFile::GetSegmentData(void* data, size_t data_size, int offset)
{
    return 0;
}

// win1.41 007be120 mac 10004c90 LHFile::ReadData(void* , unsigned long)
uint32_t LHFile::ReadData(void* data, size_t length)
{
    return 0;
}
