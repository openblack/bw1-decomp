#ifndef BW1_DECOMP_LHOS_FILE_INCLUDED_H
#define BW1_DECOMP_LHOS_FILE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stddef.h> /* For size_t */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "LHFile.h" /* For enum LH_FILE_MODE, enum LH_SEEK_MODE */

// Forward Declares

struct LHOSFile;

struct LHOSFileVftable
{
  void* (__fastcall* __dt)(struct LHOSFile* this, const void* edx, bool param_1);  /* 0x0 */
  uint32_t (__fastcall* Open)(struct LHOSFile* this, const void* edx, const char* path, enum LH_FILE_MODE mode);
};
static_assert(sizeof(struct LHOSFileVftable) == 0x8, "Data type is of wrong size");

struct LHOSFile
{
  struct LHOSFileVftable* vftable;  /* 0x0 */
  void* handle;
};
static_assert(sizeof(struct LHOSFile) == 0x8, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009cba58 mac inlined LHOSFile::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__8LHOSFile asm("??_R0?AVLHOSFile@@@8");
// win1.41 009a7f38 mac inlined LHOSFile::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__8LHOSFile asm("??_R1A@?0A@A@LHOSFile@@8");
// win1.41 0099f868 mac 1099a66c LHOSFile::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__8LHOSFile asm("??_R4LHOSFile@@6B@");
// win1.41 0099f86c mac 1099a674 LHOSFile::`vftable'
extern const struct LHOSFileVftable __vt__8LHOSFile asm("??_7LHOSFile@@6B@");

// Static methods

// win1.41 007bc6a0 mac 10164e30 LHOSFile::Exists(const char*)
uint32_t __cdecl Exists__8LHOSFileFPc(const char* path) asm("?Exists@LHOSFile@@SAIPAD@Z");

// Constructors

// win1.41 007bc650 mac 10164fc0 LHOSFile::LHOSFile(void)
struct LHOSFile* __fastcall __ct__8LHOSFileFv(struct LHOSFile* this) asm("??0LHOSFile@@QAE@XZ");

// Non-virtual Destructors

// win1.41 007bc680 mac inlined LHOSFile::~LHOSFile(void)
void __fastcall __dt__8LHOSFileFv(struct LHOSFile* this);

// Non-virtual methods

// win1.41 0046b720 mac inlined LHOSFile::Write(char *const)
uint32_t __fastcall Write__8LHOSFileFCPc(struct LHOSFile* this, const void* edx, const char* str) asm("?Write@LHOSFile@@QAEIPBD@Z");
// win1.41 007bc860 mac 1061b68c LHOSFile::Close(void)
uint32_t __fastcall Close__8LHOSFileFv(struct LHOSFile* this) asm("?Close@LHOSFile@@QAEIXZ");
// win1.41 007bc880 mac 1061beb4 LHOSFile::Seek(long, LH_SEEK_MODE, unsigned long *)
uint32_t __fastcall Seek__8LHOSFileFl12LH_SEEK_MODEPUl(struct LHOSFile* this, const void* edx, size_t pos, enum LH_SEEK_MODE mode, uint32_t* starting_point) asm("?Seek@LHOSFile@@QAEIJW4LH_SEEK_MODE@@PAK@Z");
// win1.41 007bc8e0 mac 1061cc94 LHOSFile::Read(void* , unsigned long, unsigned long *)
uint32_t __fastcall Read__8LHOSFileFPvUlPUl(struct LHOSFile* this, const void* edx, void* buffer, size_t size, size_t* read) asm("?Read@LHOSFile@@QAEIPAXKPAK@Z");
// win1.41 007bc920 mac 1061bbb4 LHOSFile::Write(void* , unsigned long, unsigned long *)
uint32_t __fastcall Write__8LHOSFileFPvUlPUl(struct LHOSFile* this, const void* edx, const void* data, uint32_t len, uint32_t* written) asm("?Write@LHOSFile@@QAEIPAXKPAK@Z");

// Override methods

// win1.41 007bc660 mac 10164ef0 LHOSFile::~LHOSFile(bool)
void __fastcall __dt__8LHOSFileFb(struct LHOSFile* this, const void* edx, bool param_2);
// win1.41 007bc730 mac 10164b40 LHOSFile::Open(const char*, LH_FILE_MODE)
uint32_t __fastcall Open__8LHOSFileFPc12LH_FILE_MODE(struct LHOSFile* this, const void* edx, const char* path, enum LH_FILE_MODE mode) asm("?Open@LHOSFile@@UAEIPADW4LH_FILE_MODE@@@Z");

#endif /* BW1_DECOMP_LHOS_FILE_INCLUDED_H */
