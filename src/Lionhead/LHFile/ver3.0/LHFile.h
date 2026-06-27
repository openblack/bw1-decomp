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

    // BW1W120 007bd500 BW1M100 10168d60 LHFile::Open(LH_FILE_MODE)
    virtual uint32_t Open(LH_FILE_MODE mode);

    // Constructors

    // BW1W120 0042e110 BW1M100 10183650 LHFile::LHFile(void)
    LHFile();

    // Non-virtual methods

    // BW1W120 0042e160 BW1M100 100cd100 LHFile::ResetData(void)
    uint32_t ResetData();
    // BW1W120 007bd390 BW1M100 1061c61c LHFile::SetName(char const *)
    uint32_t SetName(const char* name);
    // BW1W120 007bd7d0 BW1M100 10168870 LHFile::VerifyFile(void)
    uint32_t VerifyFile();
    // BW1W120 007bd9d0 BW1M100 10168610 LHFile::AllocSegDataMem(LHSegment *)
    uint32_t AllocSegDataMem(LHSegment* segment);
    // BW1W120 007bdb20 BW1M100 101681d0 LHFile::WriteSegmentHeader(char *)
    uint32_t WriteSegmentHeader(char* segment_name);
    // BW1W120 007bdbc0 BW1M100 1061c64c LHFile::Close(void)
    uint32_t Close();
    // BW1W120 007bdc60 BW1M100 10005210 LHFile::Lookup(char *)
    LHSegmentDesc* Lookup(char* segment_name);
    // BW1W120 007bdcd0 BW1M100 100050e0 LHFile::SetLHFilePointer(char *, long)
    uint32_t SetLHFilePointer(char* segment_name, int offset);
    // BW1W120 007bddd0 BW1M100 10167790 LHFile::GetSegment(char *, LHSegment *, int)
    uint32_t GetSegment(char* param_2, LHSegment* segment, int param_4);
    // BW1W120 007bdec0 BW1M100 10004fe0 LHFile::OpenSegment(char *)
    uint32_t OpenSegment(char* name);
    // BW1W120 007bdf50 BW1M100 10004d90 LHFile::CloseSegment(void)
    uint32_t CloseSegment();
    // BW1W120 007be040 BW1M100 10166bb0 LHFile::GetSegmentData(void* , unsigned long, long)
    uint32_t GetSegmentData(void* data, size_t data_size, int offset);
    // BW1W120 007be120 BW1M100 10004c90 LHFile::ReadData(void* , unsigned long)
    uint32_t ReadData(void* data, size_t length);
};

#endif /* BW1_DECOMP_LH_FILE_INCLUDED_H */
