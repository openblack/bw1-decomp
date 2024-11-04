#ifndef BW1_DECOMP_LH_FILE_INCLUDED_H
#define BW1_DECOMP_LH_FILE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stddef.h> /* For size_t */
#include <stdint.h> /* For uint32_t */

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

static struct LHFileVftable* const __vt__6LHFile = (struct LHFileVftable* const)0x008c4d14;

// Constructors

// win1.41 0042e110 mac 10183650 LHFile::LHFile(void)
struct LHFile* __fastcall __ct__6LHFileFv(struct LHFile* this);

// Non-virtual methods

// win1.41 0042e160 mac 100cd100 LHFile::ResetData(void)
uint32_t __fastcall ResetData__6LHFile(struct LHFile* this);
// win1.41 007bd390 mac 1061c61c LHFile::SetName(char const *)
uint32_t __fastcall SetName__6LHFileFPCc(struct LHFile* this, const void* edx, const char* name);
// win1.41 007bd7d0 mac 10168870 LHFile::VerifyFile(void)
uint32_t __fastcall VerifyFile__6LHFileFv(struct LHFile* this);
// win1.41 007bd9d0 mac 10168610 LHFile::AllocSegDataMem(LHSegment *)
uint32_t __fastcall AllocSegDataMem__6LHFileFP9LHSegment(struct LHFile* this, const void* edx, struct LHSegment* segment);
// win1.41 007bdb20 mac 101681d0 LHFile::WriteSegmentHeader(char *)
uint32_t __fastcall WriteSegmentHeader__6LHFileFPc(struct LHFile* this, const void* edx, char* segment_name);
// win1.41 007bdbc0 mac 1061c64c LHFile::Close(void)
uint32_t __fastcall Close__6LHFileFv(struct LHFile* this);
// win1.41 007bdc60 mac 10005210 LHFile::Lookup(char *)
struct LHSegmentDesc* __fastcall Lookup__6LHFileFPc(struct LHFile* this, const void* edx, char* segment_name);
// win1.41 007bdcd0 mac 100050e0 LHFile::SetLHFilePointer(char *, long)
uint32_t __fastcall SetLHFilePointer__6LHFileFPcl(struct LHFile* this, const void* edx, char* segment_name, int offset);
// win1.41 007bddd0 mac 10167790 LHFile::GetSegment(char *, LHSegment *, int)
uint32_t __fastcall GetSegment__6LHFileFPcP9LHSegmenti(struct LHFile* this, const void* edx, char* param_2, struct LHSegment* segment, int param_4);
// win1.41 007bdec0 mac 10004fe0 LHFile::OpenSegment(char *)
uint32_t __fastcall OpenSegment__6LHFileFPc(struct LHFile* this, const void* edx, char* name);
// win1.41 007bdf50 mac 10004d90 LHFile::CloseSegment(void)
uint32_t __fastcall CloseSegment__6LHFileFv(struct LHFile* this);
// win1.41 007be040 mac 10166bb0 LHFile::GetSegmentData(void* , unsigned long, long)
uint32_t __fastcall GetSegmentData__6LHFileFPvUll(struct LHFile* this, const void* edx, void* data, size_t data_size, int offset);
// win1.41 007be120 mac 10004c90 LHFile::ReadData(void* , unsigned long)
uint32_t __fastcall ReadData__6LHFileFPvUl(struct LHFile* this, const void* edx, void* data, size_t length);

// Override methods

// win1.41 007bd500 mac 10168d60 LHFile::Open(LH_FILE_MODE)
uint32_t __fastcall Open__6LHFileF12LH_FILE_MODE(struct LHFile* this, const void* edx, enum LH_FILE_MODE mode);

// win1.41 007bc960 mac 101643e0 LHFileLength(char *, unsigned long *)
uint32_t __cdecl LHFileLength__FPcPUl(const char* filename, size_t* size);
// win1.41 007bcdf0 mac 10163ab0 LHLoadData(char *, void *, unsigned long, unsigned long *)
void __cdecl LHLoadData__FPcPvUlPUl(const char* filename, void* dst, unsigned long size, unsigned long* param_4);

#endif /* BW1_DECOMP_LH_FILE_INCLUDED_H */
