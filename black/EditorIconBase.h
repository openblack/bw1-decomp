#ifndef BW1_DECOMP_EDITOR_ICON_BASE_INCLUDED_H
#define BW1_DECOMP_EDITOR_ICON_BASE_INCLUDED_H

#include <stdint.h> /* For uint32_t, uint8_t, uintptr_t */

// Forward Declares

struct EditorIconBase;
struct LH3DColor;
struct LHRegion;

struct EditorIconBaseVftable
{
  struct LHRegion* (__fastcall* GetRegion)(struct EditorIconBase* this);
  uint32_t (__fastcall* Process)(struct EditorIconBase* this);
  void (__fastcall* Draw)(struct EditorIconBase* this, const void* edx, int param_1);
  bool (__fastcall* IsActive)(struct EditorIconBase* this);
  uint32_t (__fastcall* DrawTextString)(struct EditorIconBase* this, const void* edx, struct LH3DColor* color, struct LHRegion* region);
  struct LHRegion* (__fastcall* GetPDMRegion)(struct EditorIconBase* this);
  struct LHRegion* (__fastcall* GetTextRegion)(struct EditorIconBase* this);
  uintptr_t (__fastcall* GetTextHandle)(struct EditorIconBase* this);
  float (__fastcall* GetTextHeight)(struct EditorIconBase* this);
  struct LH3DColor* (__fastcall* GetTextColor)(struct EditorIconBase* this);
  struct LH3DColor* (__fastcall* GetActiveColor)(struct EditorIconBase* this);
  struct LH3DColor* (__fastcall* GetInactiveColor)(struct EditorIconBase* this);
  struct LH3DColor* (__fastcall* GetHiliteColor)(struct EditorIconBase* this);
  char* (__fastcall* GetText)(struct EditorIconBase* this);
  bool (__fastcall* IsScrollable)(struct EditorIconBase* this);
  void (__fastcall* DrawBox)(struct EditorIconBase* this, const void* edx, int param_1);
  void (__fastcall* DrawBubbleBox)(struct EditorIconBase* this);
};
static_assert(sizeof(struct CPUCheckVftable) == 0x4, "Data type is of wrong size");

// Static methods

// win1.41 00520fe0 mac 102b7380 EditorIconBase::DrawOutlineBox
void __cdecl DrawOutlineBox__14EditorIconBaseFP8LHRegionP9LH3DColor(struct LHRegion* param_1, struct LH3DColor* param_2);

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


















void __fastcall Serialise__4BaseFR7Archive(struct Base* this, const void* edx, struct Archive* param_1) asm("?Serialise@Base@@UAEXAAVArchive@@@Z");
// win1.41 00401210 mac 10082770 Base::~Base(void)
void __fastcall __dt__4BaseFUi(struct Base* this, const void* edx, uint32_t param_1) asm("??GBase@@UAE@XZ");
// win1.41 004011c0 mac 1056ecc0 Base::Delete(int)
void __fastcall Delete__4BaseFi(struct Base* this, const void* edx, int param_1) asm("?Delete@Base@@UAEXH@Z");
// win1.41 004011d0 mac 1032b070 Base::ToBeDeleted(int)
void __fastcall ToBeDeleted__4BaseFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@Base@@UAEXH@Z");
// win1.41 004011e0 mac 1032b3d0 Base::Get3DSoundPos(LHPoint*)
int __fastcall Get3DSoundPos__4BaseFP7LHPoint(struct Base* this, const void* edx, struct LHPoint* param_1) asm("?Get3DSoundPos@Base@@UAEHPAULHPoint@@@Z");
// win1.41 004011f0 mac 1032cbf0 Base::CleanUpForSerialisation(void)
void __fastcall CleanUpForSerialisation__4BaseFv(struct Base* this) asm("?CleanUpForSerialisation@Base@@UAEXXZ");
// win1.41 00401200 mac 106fc7f0 Base::Dump(void)
void __fastcall Dump__4BaseFv(struct Base* this) asm("?Dump@Base@@UAEXXZ");

#endif /* BW1_DECOMP_EDITOR_ICON_BASE_INCLUDED_H */
