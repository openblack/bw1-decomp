#ifndef BW1_DECOMP_SCRIPT_HIGHLIGHT_INFO_INCLUDED_H
#define BW1_DECOMP_SCRIPT_HIGHLIGHT_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "SingleMapFixedInfo.h" /* For struct GSingleMapFixedInfo */

// Forward Declares

struct Base;
struct GBaseInfo;

struct GScriptHighlightInfo
{
  struct GSingleMapFixedInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GScriptHighlightInfo) == 0x100, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c205b8 mac inlined GScriptHighlightInfo::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__20GScriptHighlightInfo asm("??_R0?AVGScriptHighlightInfo@@@8");
// win1.41 009b8f10 mac inlined GScriptHighlightInfo::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__20GScriptHighlightInfo asm("??_R1A@?0A@A@GScriptHighlightInfo@@8");
// win1.41 009b8f28 mac inlined GScriptHighlightInfo::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__20GScriptHighlightInfo asm("??_R2GScriptHighlightInfo@@8");
// win1.41 009b8f40 mac inlined GScriptHighlightInfo::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__20GScriptHighlightInfo asm("??_R3GScriptHighlightInfo@@8");

// Override methods

// win1.41 007096b0 mac 104fb990 GScriptHighlightInfo::_dt(void)
void __fastcall __dt__20GScriptHighlightInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGScriptHighlightInfo@@UAEPAXI@Z");
// win1.41 00709640 mac 104fc510 GScriptHighlightInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__20GScriptHighlightInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@GScriptHighlightInfo@@UAEPAVGBaseInfo@@AAI@Z");

#endif /* BW1_DECOMP_SCRIPT_HIGHLIGHT_INFO_INCLUDED_H */
