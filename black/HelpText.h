#ifndef BW1_DECOMP_HELP_TEXT_INCLUDED_H
#define BW1_DECOMP_HELP_TEXT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */
#include <uchar.h> /* For char16_t */

#include <lionhead/lh3dlib/development/LH3DColor.h> /* For struct LH3DColor */
#include <lionhead/lh3dlib/development/LHRegion.h> /* For struct LHRegion */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "Base.h" /* For struct Base */

struct HelpText
{
  struct Base super;  /* 0x0 */
  const char16_t* str;
  uint32_t field_0xc;
  uint32_t field_0x10;
  uint32_t field_0x14;
  uint32_t field_0x18;
  struct LH3DColor field_0x1c;
  struct LH3DColor field_0x20;
  struct LHRegion field_0x24;
  uint32_t field_0x34[0x4][0x6];
  uint32_t field_0x94;
  uint32_t field_0x98;
  float field_0x9c;
  float field_0xa0;
  uint32_t field_0xa4;
  uint32_t field_0xa8;
  uint32_t field_0xac;
  uint32_t field_0xb0;
  uint32_t field_0xb4;
  uint32_t field_0xb8;
};
static_assert(sizeof(struct HelpText) == 0xbc, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bf1a50 mac inlined HelpText::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__8HelpText asm("??_R0?AVHelpText@@@8");
// win1.41 009b1440 mac inlined HelpText::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__8HelpText asm("??_R1A@?0A@A@HelpText@@8");
// win1.41 009b1458 mac inlined HelpText::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__8HelpText asm("??_R2HelpText@@8");
// win1.41 009b1468 mac inlined HelpText::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__8HelpText asm("??_R3HelpText@@8");
// win1.41 0092a51c mac 1099db6c HelpText::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__8HelpText asm("??_R4HelpText@@6B@");
// win1.41 0092a520 mac 1099db74 HelpText::`vftable'
extern const struct BaseVftable __vt__8HelpText asm("??_7HelpText@@6B@");

// Constructors

// win1.41 005cad40 mac 103579b0 HelpText::HelpText(LHRegion const &)
struct HelpText* __fastcall __ct__8HelpTextFRC8LHRegion(struct HelpText* this, const void* edx, struct LHRegion* region) asm("??0HelpText@@QAE@ABULHRegion@@@Z");

// Override methods

// win1.41 005cad90 mac 103575a0 HelpText::_dt(void)
void __fastcall __dt__8HelpTextFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GHelpText@@UAEPAXI@Z");

struct HelpTextDataBase
{
  struct HelpText* array;  /* 0x0 */
  uint32_t count;
};
static_assert(sizeof(struct HelpTextDataBase) == 0x8, "Data type is of wrong size");

// Non-virtual methods

// win1.41 inlined mac 100924c0 HelpTextDataBase::GetHelpText(unsigned long) const
const char16_t* __fastcall GetHelpText__16HelpTextDataBaseCFUl(const struct HelpTextDataBase* this, const void* edx, uint32_t index) asm("?GetHelpText@HelpTextDataBase@@QBEPB_SK@Z");

#endif /* BW1_DECOMP_HELP_TEXT_INCLUDED_H */
