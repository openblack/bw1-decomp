#ifndef BW1_DECOMP_MAGIC_EFFECT_INFO_INCLUDED_H
#define BW1_DECOMP_MAGIC_EFFECT_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "EffectInfo.h" /* For struct GEffectInfo */

// Forward Declares

struct Base;
struct GBaseInfo;

struct GMagicEffectInfo
{
  struct GEffectInfo super;  /* 0x0 */
  char name[0x30];  /* 0x34 */
  uint32_t field_0x64;
  uint32_t field_0x68;
  uint32_t field_0x6c;
  uint32_t field_0x70;
  float field_0x74;
  float field_0x78;
  float field_0x7c;
  float field_0x80;
  float field_0x84;
  uint32_t field_0x88;
  uint32_t field_0x8c;
  uint32_t field_0x90;
  int field_0x94;
  uint32_t field_0x98;
  uint32_t field_0x9c;
  int field_0xa0;
  uint32_t field_0xa4;
  float field_0xa8;
  float field_0xac;
  float field_0xb0;
  float field_0xb4;
  float field_0xb8;
  float field_0xbc;
  float field_0xc0;
  float field_0xc4;
  float field_0xc8;
  uint32_t field_0xcc;
  uint32_t field_0xd0;
  uint32_t field_0xd4;
  uint32_t field_0xd8;
  uint32_t field_0xdc;
  uint32_t field_0xe0;
  uint32_t field_0xe4;
  uint32_t field_0xe8;
  uint32_t field_0xec;
  uint32_t field_0xf0;
  uint32_t field_0xf4;
  uint32_t field_0xf8;
  uint32_t field_0xfc;
  uint32_t field_0x100;
  uint32_t field_0x104;
  uint32_t field_0x108;
  uint32_t field_0x10c;
  uint32_t field_0x110;
  float field_0x114;
  float field_0x118;
};
static_assert(sizeof(struct GMagicEffectInfo) == 0x11c, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00be9658 mac inlined GMagicEffectInfo::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__16GMagicEffectInfo asm("??_R0?AVGMagicEffectInfo@@@8");
// win1.41 009abf18 mac inlined GMagicEffectInfo::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__16GMagicEffectInfo asm("??_R1A@?0A@A@GMagicEffectInfo@@8");
// win1.41 009abf30 mac inlined GMagicEffectInfo::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__16GMagicEffectInfo asm("??_R2GMagicEffectInfo@@8");
// win1.41 009abf48 mac inlined GMagicEffectInfo::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__16GMagicEffectInfo asm("??_R3GMagicEffectInfo@@8");
// win1.41 008d8b74 mac 1073d070 GMagicEffectInfo::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__16GMagicEffectInfo asm("??_R4GMagicEffectInfo@@6B@");
// win1.41 008d8b78 mac 1073d078 GMagicEffectInfo::`vftable'
extern const struct GBaseInfoVftable __vt__16GMagicEffectInfo asm("??_7GMagicEffectInfo@@6B@");

// Constructors

// win1.41 00524e00 mac 100ccad0 GMagicEffectInfo::GMagicEffectInfo(void)
struct GMagicEffectInfo* __fastcall __ct__16GMagicEffectInfoFv(struct GMagicEffectInfo* this) asm("??0GMagicEffectInfo@@QAE@XZ");

// Override methods

// win1.41 00524ea0 mac 100cca30 GMagicEffectInfo::_dt(void)
void __fastcall __dt__16GMagicEffectInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGMagicEffectInfo@@UAEPAXI@Z");
// win1.41 00524e30 mac 100ccbe0 GMagicEffectInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__16GMagicEffectInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@GMagicEffectInfo@@UAEPAVGBaseInfo@@AAI@Z");

#endif /* BW1_DECOMP_MAGIC_EFFECT_INFO_INCLUDED_H */
