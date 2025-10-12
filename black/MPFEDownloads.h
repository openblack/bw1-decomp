#ifndef BW1_DECOMP_MPFE_DOWNLOADS_INCLUDED_H
#define BW1_DECOMP_MPFE_DOWNLOADS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

// Forward Declares

struct MPFEDownloads;

struct MPFEDownloadsVftable
{
  void (__fastcall* GetFileNumber)(struct MPFEDownloads* this, const void* edx, uint32_t param_1);  /* 0x0 */
  void (__fastcall* Refresh)(struct MPFEDownloads* this);
  void (__fastcall* Stop)(struct MPFEDownloads* this);
  void (__fastcall* FileCompleted)(struct MPFEDownloads* this);
  void (__fastcall* FileError)(struct MPFEDownloads* this);  /* 0x10 */
};
static_assert(sizeof(struct MPFEDownloadsVftable) == 0x14, "Data type is of wrong size");

struct MPFEDownloads
{
  struct MPFEDownloadsVftable* vftable;  /* 0x0 */
  uint8_t field_0x4[0x27c];
};
static_assert(sizeof(struct MPFEDownloads) == 0x280, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bf4668 mac inlined MPFEDownloads::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__13MPFEDownloads asm("??_R0?AVMPFEDownloads@@@8");
// win1.41 009b2080 mac inlined MPFEDownloads::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__13MPFEDownloads asm("??_R1A@?0A@A@MPFEDownloads@@8");
// win1.41 009b27bc mac inlined MPFEDownloads::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__13MPFEDownloads asm("??_R2MPFEDownloads@@8");
// win1.41 009b27c8 mac inlined MPFEDownloads::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__13MPFEDownloads asm("??_R3MPFEDownloads@@8");
// win1.41 00930878 mac 106f4b80 MPFEDownloads::`vftable'
extern const struct MPFEDownloadsVftable __vt__13MPFEDownloads asm("??_7MPFEDownloads@@6B@");

// Constructors

// win1.41 0062e580 mac 103a4cc0 MPFEDownloads::MPFEDownloads(void)
struct MPFEDownloads* __fastcall __ct__13MPFEDownloadsFv(struct MPFEDownloads* this) asm("??0MPFEDownloads@@QAE@XZ");

// Override methods

// win1.41 0062e740 mac 103a49b0 MPFEDownloads::FileCompleted(void)
void __fastcall FileCompleted__13MPFEDownloadsFv(struct MPFEDownloads* this) asm("?FileCompleted@MPFEDownloads@@UAEXXZ");
// win1.41 0062e750 mac 103a4970 MPFEDownloads::FileError(void)
void __fastcall FileError__13MPFEDownloadsFv(struct MPFEDownloads* this) asm("?FileError@MPFEDownloads@@UAEXXZ");

#endif /* BW1_DECOMP_MPFE_DOWNLOADS_INCLUDED_H */
