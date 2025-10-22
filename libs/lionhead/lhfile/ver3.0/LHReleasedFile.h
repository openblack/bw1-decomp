#ifndef BW1_DECOMP_LH_RELEASED_FILE_INCLUDED_H
#define BW1_DECOMP_LH_RELEASED_FILE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "LHFile.h" /* For enum LH_FILE_MODE, struct LHFile */

struct LHReleasedFile
{
  struct LHFile super;  /* 0x0 */
};
static_assert(sizeof(struct LHReleasedFile) == 0x6c, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009cb988 mac inlined LHReleasedFile::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__14LHReleasedFile asm("??_R0?AVLHReleasedFile@@@8");
// win1.41 009a7d70 mac inlined LHReleasedFile::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__14LHReleasedFile asm("??_R1A@?0A@A@LHReleasedFile@@8");
// win1.41 009a7d88 mac inlined LHReleasedFile::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__14LHReleasedFile asm("??_R2LHReleasedFile@@8");
// win1.41 009a7d98 mac inlined LHReleasedFile::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__14LHReleasedFile asm("??_R3LHReleasedFile@@8");
// win1.41 008c4d08 mac 101daa00 LHReleasedFile::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__14LHReleasedFile asm("??_R4LHReleasedFile@@6B@");
// win1.41 008c4d0c mac 101daa08 LHReleasedFile::`vftable'
extern const struct LHFileVftable __vt__14LHReleasedFile asm("??_7LHReleasedFile@@6B@");

// Constructors

// win1.41 0047f6d0 mac 101c9350 LHReleasedFile::LHReleasedFile
struct LHReleasedFile* __fastcall __ct__14LHReleasedFileFv(struct LHReleasedFile* this) asm("??0LHReleasedFile@@QAE@XZ");
// win1.41 00837350 mac inlined LHReleasedFile::LHReleasedFile(char const *)
struct LHReleasedFile* __fastcall __ct__14LHReleasedFileFPCc(struct LHReleasedFile* this, const void* edx, const char* name) asm("??0LHReleasedFile@@QAE@PBD@Z");

// Override methods

// win1.41 007bd730 mac 1061c784 LHReleasedFile::Open(LH_FILE_MODE)
uint32_t __fastcall Open__14LHReleasedFileF12LH_FILE_MODE(struct LHFile* this, const void* edx, enum LH_FILE_MODE mode) asm("?Open@LHReleasedFile@@UAEIW4LH_FILE_MODE@@@Z");

#endif /* BW1_DECOMP_LH_RELEASED_FILE_INCLUDED_H */
