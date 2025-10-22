#ifndef BW1_DECOMP_TRIBE_INFO_INCLUDED_H
#define BW1_DECOMP_TRIBE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum TRIBE_TYPE */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

struct Base;

struct GTribeInfo
{
  struct GBaseInfo super;  /* 0x0 */
  enum TRIBE_TYPE type;  /* 0x10 */
  uint32_t field_0x14;
  uint32_t field_0x18;
};
static_assert(sizeof(struct GTribeInfo) == 0x1c, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c23060 mac inlined GTribeInfo::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__10GTribeInfo asm("??_R0?AVGTribeInfo@@@8");
// win1.41 009b9cd0 mac inlined GTribeInfo::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__10GTribeInfo asm("??_R1A@?0A@A@GTribeInfo@@8");
// win1.41 009b9ce8 mac inlined GTribeInfo::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__10GTribeInfo asm("??_R2GTribeInfo@@8");
// win1.41 009b9cf8 mac inlined GTribeInfo::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__10GTribeInfo asm("??_R3GTribeInfo@@8");
// win1.41 0099a18c mac 1075e974 GTribeInfo::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__10GTribeInfo asm("??_R4GTribeInfo@@6B@");
// win1.41 0099a190 mac 1075e97c GTribeInfo::`vftable'
extern const struct GBaseInfoVftable __vt__10GTribeInfo asm("??_7GTribeInfo@@6B@");

// Static methods

// win1.41 0074c940 mac 10159bc0 GTribeInfo::GetTribeFromText(char const *)
struct GTribeInfo* __cdecl GetTribeFromText__10GTribeInfoFPCc(const char* str) asm("?GetTribeFromText@GTribeInfo@@SAPAV1@PBD@Z");

// Non-virtual methods

// win1.41 00751aa0 mac 10159e50 GTribeInfo::GetTribeTextArray(void)
char* __fastcall GetTribeTextArray__10GTribeInfoFv(struct GTribeInfo* this) asm("?GetTribeTextArray@GTribeInfo@@QAEPADXZ");

// Override methods

// win1.41 0074c920 mac 10159d30 GTribeInfo::_dt(void)
void __fastcall __dt__10GTribeInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGTribeInfo@@UAEPAXI@Z");
// win1.41 0074c8c0 mac 10159ef0 GTribeInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__10GTribeInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@GTribeInfo@@UAEPAVGBaseInfo@@AAI@Z");

#endif /* BW1_DECOMP_TRIBE_INFO_INCLUDED_H */
