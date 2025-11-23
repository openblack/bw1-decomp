#ifndef BW1_DECOMP_VILLAGER_STATE_TABLE_INFO_INCLUDED_H
#define BW1_DECOMP_VILLAGER_STATE_TABLE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_common.h> /* For bool32_t */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

struct Base;

struct GVillagerStateTableInfo
{
  struct GBaseInfo super;  /* 0x0 */
  uint32_t field_0x10;
  int field_0x14;
  float field_0x18;
  bool32_t isFinalState;
  int field_0x20;
  uint32_t field_0x24;
  uint32_t isScriptState;
  uint32_t isScriptInterruptableState;
  int field_0x30;
  uint32_t field_0x34;
  char name[0x80];
  int field_0xb8;
  uint32_t field_0xbc;
  uint32_t field_0xc0;
  uint32_t field_0xc4;
  int field_0xc8;
  uint32_t field_0xcc;
  int field_0xd0;
  int field_0xd4;
  float field_0xd8;
  float field_0xdc;
  uint32_t field_0xe0;
  uint32_t field_0xe4;
  uint32_t field_0xe8;
  int field_0xec;
  uint32_t field_0xf0;
  uint32_t field_0xf4;
  uint32_t field_0xf8;
  uint32_t field_0xfc;
  uint32_t field_0x100;
  uint32_t field_0x104;
  float field_0x108;
  uint32_t field_0x10c;
  uint32_t field_0x110;
};
static_assert(sizeof(struct GVillagerStateTableInfo) == 0x114, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c24608 mac inlined GVillagerStateTableInfo::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__23GVillagerStateTableInfo asm("??_R0?AVGVillagerStateTableInfo@@@8");
// win1.41 009b9e28 mac inlined GVillagerStateTableInfo::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__23GVillagerStateTableInfo asm("??_R1A@?0A@A@GVillagerStateTableInfo@@8");
// win1.41 009b9e40 mac inlined GVillagerStateTableInfo::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__23GVillagerStateTableInfo asm("??_R2GVillagerStateTableInfo@@8");
// win1.41 009b9e50 mac inlined GVillagerStateTableInfo::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__23GVillagerStateTableInfo asm("??_R3GVillagerStateTableInfo@@8");
// win1.41 0099aa20 mac 109e9f8c GVillagerStateTableInfo::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__23GVillagerStateTableInfo asm("??_R4GVillagerStateTableInfo@@6B@");
// win1.41 0099aa24 mac 109e9f94 GVillagerStateTableInfo::`vftable'
extern const struct GBaseInfoVftable __vt__23GVillagerStateTableInfo asm("??_7GVillagerStateTableInfo@@6B@");

// Static methods

// win1.41 inlined mac 1004aff0 GVillagerStateTableInfo::GetInfo(void)
struct GVillagerStateTableInfo* __cdecl GetInfo__23GVillagerStateTableInfoFv(void) asm("?GetInfo@GVillagerStateTableInfo@@SAPAV1@XZ");

// Override methods

// win1.41 007695f0 mac 1059c500 GVillagerStateTableInfo::_dt(void)
void __fastcall __dt__23GVillagerStateTableInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGVillagerStateTableInfo@@UAEPAXI@Z");
// win1.41 00769580 mac 1059c630 GVillagerStateTableInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__23GVillagerStateTableInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@GVillagerStateTableInfo@@UAEPAVGBaseInfo@@AAI@Z");

#endif /* BW1_DECOMP_VILLAGER_STATE_TABLE_INFO_INCLUDED_H */
