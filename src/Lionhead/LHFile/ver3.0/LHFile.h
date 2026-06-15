#ifndef BW1_DECOMP_LH_FILE_INCLUDED_H
#define BW1_DECOMP_LH_FILE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For size_t */
#include <stdint.h> /* For uint32_t */

enum LH_FILE_MODE
{
};

enum LH_SEEK_MODE
{
};

// Forward Declares

struct LHSegment;
struct LHSegmentDesc;

class LHFile
{
public:
    uint32_t* field_0x4;
    uint32_t field_0x8;
    bool opened;
    void* handle; /* 0x10 */
    void* field_0x14[0x9];
    uint32_t field_0x38;
    uint32_t field_0x3c;
    uint32_t field_0x40;
    FuncPtr(name='LHFile__custom_read_function', call_type='__cdecl', result='uint32_t', args=['void*', 'size_t', 'void*'], arg_labels=['param_0', 'param_1', 'param_2'], decorated_name='LHFile__custom_read_function', indirection_level=1) custom_read_function;
    FuncPtr(name='LHFile__custom_set_file_pointer_function', call_type='__cdecl', result='uint32_t', args=['uint32_t', 'uint32_t', 'void*'], arg_labels=['param_0', 'param_1', 'param_2'], decorated_name='LHFile__custom_set_file_pointer_function', indirection_level=1) custom_set_file_pointer_function;
    void* custom_read_function_user_data;
    LH_FILE_MODE file_mode; /* 0x50 */
    bool segment_opened;
    uint32_t segment_size;
    uint32_t current_file_offset;
    uint32_t segment_offset; /* 0x60 */
    char* segment_name;
    char* file_name;

    // Override methods

    // win1.41 007bd500 mac 10168d60 LHFile::Open(LH_FILE_MODE)
    virtual uint32_t Open(LH_FILE_MODE mode);

    // Constructors

    // win1.41 0042e110 mac 10183650 LHFile::LHFile(void)
    LHFile();

    // Non-virtual methods

    // win1.41 0042e160 mac 100cd100 LHFile::ResetData(void)
    uint32_t ResetData();
    // win1.41 007bd390 mac 1061c61c LHFile::SetName(char const *)
    uint32_t SetName(const char* name);
    // win1.41 007bd7d0 mac 10168870 LHFile::VerifyFile(void)
    uint32_t VerifyFile();
    // win1.41 007bd9d0 mac 10168610 LHFile::AllocSegDataMem(LHSegment *)
    uint32_t AllocSegDataMem(LHSegment* segment);
    // win1.41 007bdb20 mac 101681d0 LHFile::WriteSegmentHeader(char *)
    uint32_t WriteSegmentHeader(char* segment_name);
    // win1.41 007bdbc0 mac 1061c64c LHFile::Close(void)
    uint32_t Close();
    // win1.41 007bdc60 mac 10005210 LHFile::Lookup(char *)
    LHSegmentDesc* Lookup(char* segment_name);
    // win1.41 007bdcd0 mac 100050e0 LHFile::SetLHFilePointer(char *, long)
    uint32_t SetLHFilePointer(char* segment_name, int offset);
    // win1.41 007bddd0 mac 10167790 LHFile::GetSegment(char *, LHSegment *, int)
    uint32_t GetSegment(char* param_2, LHSegment* segment, int param_4);
    // win1.41 007bdec0 mac 10004fe0 LHFile::OpenSegment(char *)
    uint32_t OpenSegment(char* name);
    // win1.41 007bdf50 mac 10004d90 LHFile::CloseSegment(void)
    uint32_t CloseSegment();
    // win1.41 007be040 mac 10166bb0 LHFile::GetSegmentData(void* , unsigned long, long)
    uint32_t GetSegmentData(void* data, size_t data_size, int offset);
    // win1.41 007be120 mac 10004c90 LHFile::ReadData(void* , unsigned long)
    uint32_t ReadData(void* data, size_t length);
};

#endif /* BW1_DECOMP_LH_FILE_INCLUDED_H */
