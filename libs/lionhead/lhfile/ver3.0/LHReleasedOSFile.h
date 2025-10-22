#ifndef BW1_DECOMP_LH_RELEASED_OS_FILE_INCLUDED_H
#define BW1_DECOMP_LH_RELEASED_OS_FILE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "LHFile.h" /* For enum LH_FILE_MODE */
#include "LHOSFile.h" /* For struct LHOSFile */

struct LHReleasedOSFile
{
  struct LHOSFile super;  /* 0x0 */
};
static_assert(sizeof(struct LHReleasedOSFile) == 0x8, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009cba70 mac inlined LHReleasedOSFile::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__16LHReleasedOSFile asm("??_R0?AVLHReleasedOSFile@@@8");
// win1.41 009a7f50 mac inlined LHReleasedOSFile::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__16LHReleasedOSFile asm("??_R1A@?0A@A@LHReleasedOSFile@@8");
// win1.41 009a7f68 mac inlined LHReleasedOSFile::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__16LHReleasedOSFile asm("??_R2LHReleasedOSFile@@8");
// win1.41 009a7f78 mac inlined LHReleasedOSFile::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__16LHReleasedOSFile asm("??_R3LHReleasedOSFile@@8");
// win1.41 008c4cfc mac 1099a680 LHReleasedOSFile::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__16LHReleasedOSFile asm("??_R4LHReleasedOSFile@@6B@");
// win1.41 008c4d00 mac 1099a690 LHReleasedOSFile::`vftable'
extern const struct LHOSFileVftable __vt__16LHReleasedOSFile asm("??_7LHReleasedOSFile@@6B@");

// Constructors

// win1.41 007e6d10 mac inlined LHReleasedOSFile::LHReleasedOSFile(void)
struct LHReleasedOSFile* __fastcall __ct__16LHReleasedOSFileFv(struct LHReleasedOSFile* this) asm("??0LHReleasedOSFile@@QAE@XZ");

// Override methods

// win1.41 0042fd40 mac 1012d3f0 LHReleasedOSFile::~LHReleasedOSFile(void)
void __fastcall __dt__16LHReleasedOSFileFv(struct LHOSFile* this, const void* edx, bool param_1) asm("??_DLHReleasedOSFile@@QAEXXZ");
// win1.41 007bc7e0 mac 10164a30 LHReleasedOSFile::Open(const char*, LH_FILE_MODE)
uint32_t __fastcall Open__16LHReleasedOSFileFPc12LH_FILE_MODE(struct LHOSFile* this, const void* edx, const char* path, enum LH_FILE_MODE mode) asm("?Open@LHReleasedOSFile@@UAEIPADW4LH_FILE_MODE@@@Z");

#endif /* BW1_DECOMP_LH_RELEASED_OS_FILE_INCLUDED_H */
