#ifndef BW1_DECOMP_MAGIC_INFO_INCLUDED_H
#define BW1_DECOMP_MAGIC_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For enum MAGIC_TYPE */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

struct Base;
struct GMagicEffectInfo;

struct GMagicInfo
{
  struct GBaseInfo super;  /* 0x0 */
  int field_0x10;
  uint8_t field_0x14[0x44];
};
static_assert(sizeof(struct GMagicInfo) == 0x58, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009cba90 mac inlined GMagicInfo::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__10GMagicInfo asm("??_R0?AVGMagicInfo@@@8");
// win1.41 009a7fa0 mac inlined GMagicInfo::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__10GMagicInfo asm("??_R1A@?0A@A@GMagicInfo@@8");
// win1.41 009a7d20 mac inlined GMagicInfo::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__10GMagicInfo asm("??_R2GMagicInfo@@8");
// win1.41 009a7d30 mac inlined GMagicInfo::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__10GMagicInfo asm("??_R3GMagicInfo@@8");
// win1.41 008c4cb8 mac 10776ff0 GMagicInfo::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__10GMagicInfo asm("??_R4GMagicInfo@@6B@");
// win1.41 008c4cbc mac 10777008 GMagicInfo::`vftable'
extern const struct GBaseInfoVftable __vt__10GMagicInfo asm("??_7GMagicInfo@@6B@");

// Static methods

// win1.41 005fb3b0 mac 103ae320 GMagicInfo::GetInfoFromText(char const *)
enum MAGIC_TYPE __cdecl GetInfoFromText__10GMagicInfoFPCc(const char* text) asm("?GetInfoFromText@GMagicInfo@@SAHPAD@Z");

// Constructors

// win1.41 00435520 mac 1018eec0 GMagicInfo::GMagicInfo(void)
void __fastcall __ct__10GMagicInfoFv(struct GMagicInfo* this) asm("??0GMagicInfo@@QAE@XZ");

// Non-virtual methods

// win1.41 005fb3f0 mac 103ae2c0 GMagicInfo::GetMagicInfoText(void) const
const char* __fastcall GetMagicInfoText__10GMagicInfoCFv(const struct GMagicInfo* this) asm("?GetMagicInfoText@GMagicInfo@@QBEPBDXZ");
// win1.41 005fb680 mac 103adc30 GMagicInfo::GetMagicEffectInfo(void) const
struct GMagicEffectInfo* __fastcall GetMagicEffectInfo__10GMagicInfoCFv(const struct GMagicInfo* this) asm("?GetMagicEffectInfo@GMagicInfo@@QBEPAVGMagicEffectInfo@@XZ");

// Override methods

// win1.41 00435680 mac 1018ee20 GMagicInfo::_dt(void)
void __fastcall __dt__10GMagicInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGMagicInfo@@UAEPAXI@Z");
// win1.41 0042d700 mac 101980a0 GMagicInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__10GMagicInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@GMagicInfo@@UAEPAVGBaseInfo@@AAI@Z");

#endif /* BW1_DECOMP_MAGIC_INFO_INCLUDED_H */
