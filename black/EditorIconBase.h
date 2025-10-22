#ifndef BW1_DECOMP_EDITOR_ICON_BASE_INCLUDED_H
#define BW1_DECOMP_EDITOR_ICON_BASE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t, uintptr_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

// Forward Declares

struct EditorIconBase;
struct LH3DColor;
struct LHRegion;

struct EditorIconBaseVftable
{
  struct LHRegion* (__fastcall* GetRegion)(struct EditorIconBase* this);  /* 0x0 */
  uint32_t (__fastcall* Process)(struct EditorIconBase* this);
  void (__fastcall* Draw)(struct EditorIconBase* this, const void* edx, int param_1);
  bool (__fastcall* IsActive)(struct EditorIconBase* this);
  uint32_t (__fastcall* DrawTextString)(struct EditorIconBase* this, const void* edx, struct LH3DColor* color, struct LHRegion* region);  /* 0x10 */
  struct LHRegion* (__fastcall* GetPDMRegion)(struct EditorIconBase* this);
  struct LHRegion* (__fastcall* GetTextRegion)(struct EditorIconBase* this);
  uintptr_t (__fastcall* GetTextHandle)(struct EditorIconBase* this);
  float (__fastcall* GetTextHeight)(struct EditorIconBase* this);  /* 0x20 */
  struct LH3DColor* (__fastcall* GetTextColor)(struct EditorIconBase* this);
  struct LH3DColor* (__fastcall* GetActiveColor)(struct EditorIconBase* this);
  struct LH3DColor* (__fastcall* GetInactiveColor)(struct EditorIconBase* this);
  struct LH3DColor* (__fastcall* GetHiliteColor)(struct EditorIconBase* this);  /* 0x30 */
  char* (__fastcall* GetText)(struct EditorIconBase* this);
  bool (__fastcall* IsScrollable)(struct EditorIconBase* this);
  void (__fastcall* DrawBox)(struct EditorIconBase* this, const void* edx, int param_1);
  void (__fastcall* DrawBubbleBox)(struct EditorIconBase* this);  /* 0x40 */
};
static_assert(sizeof(struct EditorIconBaseVftable) == 0x44, "Data type is of wrong size");

struct EditorIconBase
{
  struct EditorIconBaseVftable* vftable;  /* 0x0 */
};
static_assert(sizeof(struct EditorIconBase) == 0x4, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009c8360 mac inlined EditorIconBase::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__14EditorIconBase asm("??_R0?AVEditorIconBase@@@8");
// win1.41 009a6a18 mac inlined EditorIconBase::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__14EditorIconBase asm("??_R1A@?0A@A@EditorIconBase@@8");
// win1.41 009abd2c mac inlined EditorIconBase::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__14EditorIconBase asm("??_R2EditorIconBase@@8");
// win1.41 009abd38 mac inlined EditorIconBase::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__14EditorIconBase asm("??_R3EditorIconBase@@8");
// win1.41 008d895c mac 10999254 EditorIconBase::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__14EditorIconBase asm("??_R4EditorIconBase@@6B@");
// win1.41 008d8960 mac 1099925c EditorIconBase::`vftable'
extern const struct EditorIconBaseVftable __vt__14EditorIconBase asm("??_7EditorIconBase@@6B@");

// Static methods

// win1.41 00520fe0 mac 102b7380 EditorIconBase::DrawOutlineBox
void __cdecl DrawOutlineBox__14EditorIconBaseFP8LHRegionP9LH3DColor(struct LHRegion* param_1, struct LH3DColor* param_2) asm("?DrawOutlineBox@EditorIconBase@@SAXPAULHRegion@@PAULH3DColor@@@Z");

// Override methods

// win1.41 00520f00 mac 102b77f0 EditorIconBase::DrawTextString(LH3DColor *, LHRegion *)
uint32_t __fastcall DrawTextString__14EditorIconBaseFP9LH3DColorP8LHRegion(struct EditorIconBase* this, const void* edx, struct LH3DColor* color, struct LHRegion* region) asm("?DrawTextString@EditorIconBase@@UAIIPAULH3DColor@@PAULHRegion@@@Z");
// win1.41 00414bb0 mac 100a4e10 EditorIconBase::GetPDMRegion(void)
struct LHRegion* __fastcall GetPDMRegion__14EditorIconBaseFv(struct EditorIconBase* this) asm("?GetPDMRegion@EditorIconBase@@UAIPAULHRegion@@XZ");
// win1.41 00414bc0 mac 100a4e70 EditorIconBase::GetTextRegion(void)
struct LHRegion* __fastcall GetTextRegion__14EditorIconBaseFv(struct EditorIconBase* this) asm("?GetTextRegion@EditorIconBase@@UAIPAULHRegion@@XZ");
// win1.41 00414bd0 mac 100a4ed0 EditorIconBase::GetTextHandle(void)
uintptr_t __fastcall GetTextHandle__14EditorIconBaseFv(struct EditorIconBase* this) asm("?GetTextHandle@EditorIconBase@@UAIIXZ");
// win1.41 00414be0 mac 100a4f10 EditorIconBase::GetTextHeight(void)
float __fastcall GetTextHeight__14EditorIconBaseFv(struct EditorIconBase* this) asm("?GetTextHeight@EditorIconBase@@UAIMXZ");
// win1.41 00520300 mac 102b6f80 EditorIconBase::GetTextColor(void)
struct LH3DColor* __fastcall GetTextColor__14EditorIconBaseFv(struct EditorIconBase* this) asm("?GetTextColor@EditorIconBase@@UAIPAULH3DColor@@XZ");
// win1.41 00520310 mac 102b6fc0 EditorIconBase::GetActiveColor(void)
struct LH3DColor* __fastcall GetActiveColor__14EditorIconBaseFv(struct EditorIconBase* this) asm("?GetActiveColor@EditorIconBase@@UAIPAULH3DColor@@XZ");
// win1.41 00520320 mac 102b60b0 EditorIconBase::GetInactiveColor(void)
struct LH3DColor* __fastcall GetInactiveColor__14EditorIconBaseFv(struct EditorIconBase* this) asm("?GetInactiveColor@EditorIconBase@@UAIPAULH3DColor@@XZ");
// win1.41 00414bf0 mac 100a4f50 EditorIconBase::GetHiliteColor(void)
struct LH3DColor* __fastcall GetHiliteColor__14EditorIconBaseFv(struct EditorIconBase* this) asm("?GetHiliteColor@EditorIconBase@@UAIPAULH3DColor@@XZ");
// win1.41 005203e0 mac 102b72e0 EditorIconBase::GetText(void)
char* __fastcall GetText__14EditorIconBaseFv(struct EditorIconBase* this) asm("?GetText@EditorIconBase@@UAIPADXZ");
// win1.41 00414c00 mac 100a4f90 EditorIconBase::IsScrollable(void)
bool __fastcall IsScrollable__14EditorIconBaseFv(struct EditorIconBase* this) asm("?IsScrollable@EditorIconBase@@UAI_NXZ");
// win1.41 00520b10 mac 102b8040 EditorIconBase::DrawBox(int)
void __fastcall DrawBox__14EditorIconBaseFi(struct EditorIconBase* this, const void* edx, int param_1) asm("?DrawBox@EditorIconBase@@UAIXH@Z");
// win1.41 00520f50 mac 102b7700 EditorIconBase::DrawBubbleBox(void)
void __fastcall DrawBubbleBox__14EditorIconBaseFv(struct EditorIconBase* this) asm("?DrawBubbleBox@EditorIconBase@@UAIXXZ");

#endif /* BW1_DECOMP_EDITOR_ICON_BASE_INCLUDED_H */
