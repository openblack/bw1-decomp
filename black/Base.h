#ifndef BW1_DECOMP_BASE_INCLUDED_H
#define BW1_DECOMP_BASE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For size_t */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

// Forward Declares

struct Archive;
struct Base;
struct BaseInfo;
struct LHPoint;

struct BaseVftable
{
  void (__fastcall* Serialise)(struct Base* this, const void* edx, struct Archive* param_1);  /* 0x0 */
  void (__fastcall* __dt)(struct Base* this, const void* edx, uint32_t param_1);
  void (__fastcall* Delete)(struct Base* this);
  void (__fastcall* ToBeDeleted)(struct Base* this, const void* edx, int param_1);
  int (__fastcall* Get3DSoundPos)(struct Base* this, const void* edx, struct LHPoint* pos);  /* 0x10 */
  void (__fastcall* CleanUpForSerialisation)(struct Base* this);
  void (__fastcall* Dump)(struct Base* this);
};
static_assert(sizeof(struct BaseVftable) == 0x1c, "Data type is of wrong size");

struct Base
{
  struct BaseVftable* vftable;  /* 0x0 */
  uint32_t destroyed;
};
static_assert(sizeof(struct Base) == 0x8, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009c7e80 mac inlined Base::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__4Base asm("??_R0?AVBase@@@8");
// win1.41 009a6308 mac inlined Base::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__4Base asm("??_R1A@?0A@A@Base@@8");
// win1.41 009a62d8 mac inlined Base::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__4Base asm("??_R2Base@@8");
// win1.41 009a62e0 mac inlined Base::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__4Base asm("??_R3Base@@8");
// win1.41 009a62f0 mac 10733fb4 Base::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__4Base asm("??_R4Base@@6B@");
// win1.41 008a9a44 mac 10734004 Base::`vftable'
extern const struct BaseVftable __vt__4Base asm("??_7Base@@6B@");

// Static methods

// win1.41 004366f0 mac 1009ebc0 Base::operator new(unsigned long)
void* __cdecl __nw__4BaseFUl(size_t size, const char* file_name, uint32_t line) asm("?__nw@Base@@SAPAXK@Z");
// win1.41 00436970 mac 10425a80 Base::operator delete(void*, unsigned long)
void __cdecl __dl__4BaseFPvUl(void* ptr, size_t size) asm("??3Base@@SAXPAXK@Z");

// Constructors

// win1.41 inlined mac 100a0450 Base::Base(void)
struct Base* __fastcall __ct__4BaseFv(struct Base* this) asm("??0Base@@QAE@XZ");

// Non-virtual methods

// win1.41 00436b20 mac 10001480 Base::SetInfo(BaseInfo*) const
void __fastcall SetInfo__4BaseCFP8BaseInfo(const struct Base* this, const void* edx, struct BaseInfo* info) asm("?SetInfo@Base@@QBEXPAVBaseInfo@@@Z");

// Override methods

// win1.41 004011b0 mac 101228f0 Base::Serialise(Archive&)
void __fastcall Serialise__4BaseFR7Archive(struct Base* this, const void* edx, struct Archive* param_1) asm("?Serialise@Base@@UAEXAAVArchive@@@Z");
// win1.41 00401210 mac 10082770 Base::~Base(void)
void __fastcall __dt__4BaseFUi(struct Base* this, const void* edx, uint32_t param_1) asm("??_GBase@@UAEPAXI@Z");
// win1.41 004011c0 mac 1056ecc0 Base::Delete(int)
void __fastcall Delete__4BaseFv(struct Base* this) asm("?Delete@Base@@UAEXH@Z");
// win1.41 004011d0 mac 1032b070 Base::ToBeDeleted(int)
void __fastcall ToBeDeleted__4BaseFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@Base@@UAEXH@Z");
// win1.41 004011e0 mac 1032b3d0 Base::Get3DSoundPos(LHPoint*)
int __fastcall Get3DSoundPos__4BaseFP7LHPoint(struct Base* this, const void* edx, struct LHPoint* param_1) asm("?Get3DSoundPos@Base@@UAEHPAULHPoint@@@Z");
// win1.41 004011f0 mac 1032cbf0 Base::CleanUpForSerialisation(void)
void __fastcall CleanUpForSerialisation__4BaseFv(struct Base* this) asm("?CleanUpForSerialisation@Base@@UAEXXZ");
// win1.41 00401200 mac 106fc7f0 Base::Dump(void)
void __fastcall Dump__4BaseFv(struct Base* this) asm("?Dump@Base@@UAEXXZ");

#endif /* BW1_DECOMP_BASE_INCLUDED_H */
