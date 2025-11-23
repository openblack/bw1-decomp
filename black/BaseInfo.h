#ifndef BW1_DECOMP_BASE_INFO_INCLUDED_H
#define BW1_DECOMP_BASE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */

#include <lionhead/lhlib/ver5.0/LHListHead.h> /* For DECLARE_LH_LIST_HEAD */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "Base.h" /* For struct Base, struct BaseVftable */

// Forward Declares

struct BaseInfo;
struct GBaseInfo;
struct LHColor;

struct GBaseInfoVftable
{
  struct BaseVftable super;  /* 0x0 */
  const char* (__fastcall* GetDebugText)(const struct GBaseInfo* this);  /* 0x1c */
  struct LHColor* (__fastcall* GetDebugColor)(const struct GBaseInfo* this, const void* edx, struct LHColor* color);  /* 0x20 */
  struct GBaseInfo* (__fastcall* GetBaseInfo)(struct GBaseInfo* this, const void* edx, uint32_t* param_1);
  void (__fastcall* UpdateValue)(struct GBaseInfo* this, const void* edx, float param_1, uint32_t param_2, uint32_t param_3);
};
static_assert(sizeof(struct GBaseInfoVftable) == 0x2c, "Data type is of wrong size");

union GBaseInfoBase
{
  struct Base super;
  struct GBaseInfoVftable* vftable;
};
static_assert(sizeof(union GBaseInfoBase) == 0x8, "Data type is of wrong size");

struct GBaseInfo
{
  union GBaseInfoBase base;  /* 0x0 */
  struct GBaseInfo* next;
  int index;
};
static_assert(sizeof(struct GBaseInfo) == 0x10, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009c7e98 mac inlined GBaseInfo::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__9GBaseInfo asm("??_R0?AVGBaseInfo@@@8");
// win1.41 009a6320 mac inlined GBaseInfo::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__9GBaseInfo asm("??_R1A@?0A@A@GBaseInfo@@8");
// win1.41 009a8058 mac inlined GBaseInfo::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__9GBaseInfo asm("??_R2GBaseInfo@@8");
// win1.41 009a8068 mac inlined GBaseInfo::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__9GBaseInfo asm("??_R3GBaseInfo@@8");
// win1.41 008c4d18 mac 10730abc GBaseInfo::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__9GBaseInfo asm("??_R4GBaseInfo@@6B@");
// win1.41 008c4d1c mac 10730acc GBaseInfo::`vftable'
extern const struct GBaseInfoVftable __vt__9GBaseInfo asm("??_7GBaseInfo@@6B@");

// Static methods

// win1.41 00436c30 mac 103e4630 GBaseInfo::GetInfoPtr(unsigned long)
struct GBaseInfo* __cdecl GetInfoPtr__9GBaseInfoFUl(int index) asm("?GetInfoPtr@GBaseInfo@@SAPAV1@K@Z");

// Constructors

// win1.41 0042e5e0 mac 102f9af0 GBaseInfo::GBaseInfo(void)
struct GBaseInfo* __fastcall __ct__9GBaseInfoFv(struct GBaseInfo* this) asm("??0GBaseInfo@@QAE@XZ");

// Non-virtual methods

// win1.41 00436bd0 mac 1035b720 GBaseInfo::SetInfoID(void)
void __fastcall SetInfoID__9GBaseInfoFv(struct GBaseInfo* this) asm("?SetInfoID@GBaseInfo@@QAEXXZ");

// Override methods

// win1.41 0042e600 mac 10429820 GBaseInfo::_dt(void)
void __fastcall __dt__9GBaseInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGBaseInfo@@UAEPAXI@Z");
// win1.41 004140b0 mac 10578110 GBaseInfo::GetDebugText(void) const
const char* __fastcall GetDebugText__9GBaseInfoCFv(const struct GBaseInfo* this) asm("?GetDebugText@GBaseInfo@@UBEPBDXZ");
// win1.41 00436c60 mac 1055df70 GBaseInfo::GetDebugColor(void) const
struct LHColor* __fastcall GetDebugColor__9GBaseInfoCFv(const struct GBaseInfo* this, const void* edx, struct LHColor* color) asm("?GetDebugColor@GBaseInfo@@UBE?AVLHColor@@XZ");
// win1.41 00401230 mac 101228b0 GBaseInfo::UpdateValue(void)
void __fastcall UpdateValue__9GBaseInfoFfUlUl(struct GBaseInfo* this, const void* edx, float param_1, uint32_t param_2, uint32_t param_3) asm("?UpdateValue@GBaseInfo@@UAEXMKK@Z");

DECLARE_LH_LIST_HEAD(GBaseInfo);

struct BaseInfoVftable
{
  bool (__fastcall* IsClear)(const struct BaseInfo* this);  /* 0x0 */
};
static_assert(sizeof(struct BaseInfoVftable) == 0x4, "Data type is of wrong size");

struct BaseInfo
{
  struct BaseInfoVftable* vftable;  /* 0x0 */
  uint32_t unique_id;
  uint32_t address_offset;
};
static_assert(sizeof(struct BaseInfo) == 0xc, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00becac0 mac inlined BaseInfo::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__8BaseInfo asm("??_R0?AVBaseInfo@@@8");
// win1.41 009ad938 mac inlined BaseInfo::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__8BaseInfo asm("??_R1A@?0A@A@BaseInfo@@8");
// win1.41 009ad950 mac inlined BaseInfo::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__8BaseInfo asm("??_R2BaseInfo@@8");
// win1.41 009ad958 mac inlined BaseInfo::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__8BaseInfo asm("??_R3BaseInfo@@8");
// win1.41 008ea8cc mac 10745360 BaseInfo::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__8BaseInfo asm("??_R4BaseInfo@@6B@");
// win1.41 008ea8d0 mac 10745368 BaseInfo::`vftable'
extern const struct BaseInfoVftable __vt__8BaseInfo asm("??_7BaseInfo@@6B@");

// Constructors

// win1.41 inlined mac 1030cbf0 BaseInfo::BaseInfo(void)
struct BaseInfo* __fastcall __ct__8BaseInfoFv(struct BaseInfo* this) asm("??0BaseInfo@@QAE@XZ");

// Non-virtual methods

// win1.41 00436bb0 mac 10001410 BaseInfo::Set(Base*)
void __fastcall Set__8BaseInfoFP4Base(struct BaseInfo* this, const void* edx, struct Base* base) asm("?Set@BaseInfo@@QAEXPAVBase@@@Z");

// Override methods

// win1.41 0055c770 mac 10043c50 BaseInfo::IsClear(void) const
bool __fastcall IsClear__8BaseInfoCFv(const struct BaseInfo* this) asm("?IsClear@BaseInfo@@UBE_NXZ");

#endif /* BW1_DECOMP_BASE_INFO_INCLUDED_H */
