#ifndef BW1_DECOMP_LH_FILE_INCLUDED_H
#define BW1_DECOMP_LH_FILE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stddef.h> /* For size_t */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#ifdef __cplusplus

// Forward Declares

struct LHSegment;
struct LHSegmentDesc;

// win1.41 009cb970 mac inlined LHFile::`RTTI Type Descriptor'
// win1.41 009a7d58 mac inlined LHFile::`RTTI Base Class Descriptor'
// win1.41 009a8024 mac inlined LHFile::`RTTI Base Class Array'
// win1.41 009a8030 mac inlined LHFile::`RTTI Class Hierarchy Descriptor'
// win1.41 008c4d10 mac 101da9ec LHFile::`RTTI Complete Object Locator'
// win1.41 008c4d14 mac 101da9f4 LHFile::`vftable'
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

    // Virtual functions

    // win1.41 007bd500 mac 10168d60 LHFile::Open(LH_FILE_MODE)
    virtual uint32_t Open(LH_FILE_MODE param_1); /* 0x0 */

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

#else // __cplusplus

// Forward Declares

struct LHFile;
struct LHSegment;
struct LHSegmentDesc;

enum LH_FILE_MODE
{
  LH_FILE_MODE_0 = 0x0,
  LH_FILE_MODE_1 = 0x1,
  LH_FILE_MODE_READ = 0x2,
  LH_FILE_MODE_3 = 0x3,
  _LH_FILE_MODE_COUNT = 0x4
};
static_assert(sizeof(enum LH_FILE_MODE) == 0x4, "Data type is of wrong size");

static const char* LH_FILE_MODE_strs[_LH_FILE_MODE_COUNT] = {
  "LH_FILE_MODE_0",
  "LH_FILE_MODE_1",
  "LH_FILE_MODE_READ",
  "LH_FILE_MODE_3",
};

enum LH_SEEK_MODE
{
  LH_SEEK_MODE_BEGIN = 0x0,
  LH_SEEK_MODE_CURRENT = 0x1,
  LH_SEEK_MODE_END = 0x2,
  _LH_SEEK_MODE_COUNT = 0x3
};
static_assert(sizeof(enum LH_SEEK_MODE) == 0x4, "Data type is of wrong size");

static const char* LH_SEEK_MODE_strs[_LH_SEEK_MODE_COUNT] = {
  "LH_SEEK_MODE_BEGIN",
  "LH_SEEK_MODE_CURRENT",
  "LH_SEEK_MODE_END",
};

struct LHFileVftable
{
  uint32_t (__fastcall* Open)(struct LHFile* this, const void* edx, enum LH_FILE_MODE param_1);  /* 0x0 */
};
static_assert(sizeof(struct LHFileVftable) == 0x4, "Data type is of wrong size");

struct LHFile
{
  struct LHFileVftable* vftable;  /* 0x0 */
  uint32_t* field_0x4;
  uint32_t field_0x8;
  bool opened;
  void* handle;  /* 0x10 */
  void* field_0x14[0x9];
  uint32_t field_0x38;
  uint32_t field_0x3c;
  uint32_t field_0x40;
  uint32_t (__cdecl* custom_read_function)(void* param_0, size_t param_1, void* param_2);
  uint32_t (__cdecl* custom_set_file_pointer_function)(uint32_t param_0, uint32_t param_1, void* param_2);
  void* custom_read_function_user_data;
  enum LH_FILE_MODE file_mode;  /* 0x50 */
  bool segment_opened;
  uint32_t segment_size;
  uint32_t current_file_offset;
  uint32_t segment_offset;  /* 0x60 */
  char* segment_name;
  char* file_name;
};
static_assert(sizeof(struct LHFile) == 0x6c, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009cb970 mac inlined LHFile::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__6LHFile asm("??_R0?AVLHFile@@@8");
// win1.41 009a7d58 mac inlined LHFile::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__6LHFile asm("??_R1A@?0A@A@LHFile@@8");
// win1.41 009a8024 mac inlined LHFile::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__6LHFile asm("??_R2LHFile@@8");
// win1.41 009a8030 mac inlined LHFile::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__6LHFile asm("??_R3LHFile@@8");
// win1.41 008c4d10 mac 101da9ec LHFile::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__6LHFile asm("??_R4LHFile@@6B@");
// win1.41 008c4d14 mac 101da9f4 LHFile::`vftable'
extern const struct LHFileVftable __vt__6LHFile asm("??_7LHFile@@6B@");

// Constructors

// win1.41 0042e110 mac 10183650 LHFile::LHFile(void)
struct LHFile* __fastcall __ct__6LHFileFv(struct LHFile* this) asm("??0LHFile@@QAE@XZ");

// Non-virtual methods

// win1.41 0042e160 mac 100cd100 LHFile::ResetData(void)
uint32_t __fastcall ResetData__6LHFile(struct LHFile* this) asm("?ResetData@LHFile@@QAEIXZ");
// win1.41 007bd390 mac 1061c61c LHFile::SetName(char const *)
uint32_t __fastcall SetName__6LHFileFPCc(struct LHFile* this, const void* edx, const char* name) asm("?SetName@LHFile@@QAEIPBD@Z");
// win1.41 007bd7d0 mac 10168870 LHFile::VerifyFile(void)
uint32_t __fastcall VerifyFile__6LHFileFv(struct LHFile* this) asm("?VerifyFile@LHFile@@QAEIXZ");
// win1.41 007bd9d0 mac 10168610 LHFile::AllocSegDataMem(LHSegment *)
uint32_t __fastcall AllocSegDataMem__6LHFileFP9LHSegment(struct LHFile* this, const void* edx, struct LHSegment* segment) asm("?AllocSegDataMem@LHFile@@QAEIPAULHSegment@@@Z");
// win1.41 007bdb20 mac 101681d0 LHFile::WriteSegmentHeader(char *)
uint32_t __fastcall WriteSegmentHeader__6LHFileFPc(struct LHFile* this, const void* edx, char* segment_name) asm("?WriteSegmentHeader@LHFile@@QAEIPAD@Z");
// win1.41 007bdbc0 mac 1061c64c LHFile::Close(void)
uint32_t __fastcall Close__6LHFileFv(struct LHFile* this) asm("?Close@LHFile@@QAEIXZ");
// win1.41 007bdc60 mac 10005210 LHFile::Lookup(char *)
struct LHSegmentDesc* __fastcall Lookup__6LHFileFPc(struct LHFile* this, const void* edx, char* segment_name) asm("?Lookup@LHFile@@QAEPAULHSegmentDesc@@PAD@Z");
// win1.41 007bdcd0 mac 100050e0 LHFile::SetLHFilePointer(char *, long)
uint32_t __fastcall SetLHFilePointer__6LHFileFPcl(struct LHFile* this, const void* edx, char* segment_name, int offset) asm("?SetLHFilePointer@LHFile@@QAEIPADJ@Z");
// win1.41 007bddd0 mac 10167790 LHFile::GetSegment(char *, LHSegment *, int)
uint32_t __fastcall GetSegment__6LHFileFPcP9LHSegmenti(struct LHFile* this, const void* edx, char* param_2, struct LHSegment* segment, int param_4) asm("?GetSegment@LHFile@@QAEIPADPAULHSegment@@H@Z");
// win1.41 007bdec0 mac 10004fe0 LHFile::OpenSegment(char *)
uint32_t __fastcall OpenSegment__6LHFileFPc(struct LHFile* this, const void* edx, char* name) asm("?OpenSegment@LHFile@@QAEIPAD@Z");
// win1.41 007bdf50 mac 10004d90 LHFile::CloseSegment(void)
uint32_t __fastcall CloseSegment__6LHFileFv(struct LHFile* this) asm("?CloseSegment@LHFile@@QAEIXZ");
// win1.41 007be040 mac 10166bb0 LHFile::GetSegmentData(void* , unsigned long, long)
uint32_t __fastcall GetSegmentData__6LHFileFPvUll(struct LHFile* this, const void* edx, void* data, size_t data_size, int offset) asm("?GetSegmentData@LHFile@@QAEIPAXKJ@Z");
// win1.41 007be120 mac 10004c90 LHFile::ReadData(void* , unsigned long)
uint32_t __fastcall ReadData__6LHFileFPvUl(struct LHFile* this, const void* edx, void* data, size_t length) asm("?ReadData@LHFile@@QAEIPAXK@Z");

// Override methods

// win1.41 007bd500 mac 10168d60 LHFile::Open(LH_FILE_MODE)
uint32_t __fastcall Open__6LHFileF12LH_FILE_MODE(struct LHFile* this, const void* edx, enum LH_FILE_MODE mode) asm("?Open@LHFile@@UAEIW4LH_FILE_MODE@@@Z");

// win1.41 007bc960 mac 101643e0 LHFileLength(char *, unsigned long *)
uint32_t __cdecl LHFileLength__FPcPUl(const char* filename, size_t* size);
// win1.41 007bcdf0 mac 10163ab0 LHLoadData(char *, void *, unsigned long, unsigned long *)
void __cdecl LHLoadData__FPcPvUlPUl(const char* filename, void* dst, unsigned long size, unsigned long* param_4);

#endif // __cplusplus

#endif /* BW1_DECOMP_LH_FILE_INCLUDED_H */
