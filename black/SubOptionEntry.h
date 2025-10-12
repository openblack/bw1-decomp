#ifndef BW1_DECOMP_SUB_OPTION_ENTRY_INCLUDED_H
#define BW1_DECOMP_SUB_OPTION_ENTRY_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t, uint32_t */

#include <chlasm/LHKeyBoard.h> /* For enum LH_KEY */
#include <lionhead/lh3dlib/development/LHCoord.h> /* For struct LHCoord */
#include <reversing_utils/re_common.h> /* For bool32_t */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "InterfaceMessage.h" /* For enum INTERFACE_MESSAGE_TYPES */

// Forward Declares

struct SubMeshDrawData;
struct SubOptionEntry;

struct SubOptionEntryVftable
{
  void (__fastcall* GetSubMeshData)(struct SubOptionEntry* this, const void* edx, struct SubMeshDrawData* param_1, int param_2, int param_3);  /* 0x0 */
  bool32_t (__fastcall* UpdateMouse)(struct SubOptionEntry* this, const void* edx, struct LHCoord coord, enum INTERFACE_MESSAGE_TYPES types, int param_2);
  bool32_t (__fastcall* UpdateKeyboard)(struct SubOptionEntry* this, const void* edx, enum LH_KEY key, uint16_t param_2);
};
static_assert(sizeof(struct SubOptionEntryVftable) == 0xc, "Data type is of wrong size");

struct SubOptionEntry
{
  struct SubOptionEntryVftable* vftable;  /* 0x0 */
};
static_assert(sizeof(struct SubOptionEntry) == 0x4, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c28408 mac inlined SubOptionEntry::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__14SubOptionEntry asm("??_R0?AVSubOptionEntry@@@8");
// win1.41 009ba7a8 mac inlined SubOptionEntry::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__14SubOptionEntry asm("??_R1A@?0A@A@SubOptionEntry@@8");
// win1.41 009ba7c0 mac inlined SubOptionEntry::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__14SubOptionEntry asm("??_R2SubOptionEntry@@8");
// win1.41 009ba7c8 mac inlined SubOptionEntry::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__14SubOptionEntry asm("??_R3SubOptionEntry@@8");
// win1.41 0099ecd8 mac 10745d2c SubOptionEntry::`vftable'
extern const struct SubOptionEntryVftable __vt__14SubOptionEntry asm("??_7SubOptionEntry@@6B@");

struct SubOptionEntryButton
{
  struct SubOptionEntry super;  /* 0x0 */
};
static_assert(sizeof(struct SubOptionEntryButton) == 0x4, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c28428 mac inlined SubOptionEntryButton::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__20SubOptionEntryButton asm("??_R0?AVSubOptionEntryButton@@@8");
// win1.41 009ba7f0 mac inlined SubOptionEntryButton::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__20SubOptionEntryButton asm("??_R1A@?0A@A@SubOptionEntryButton@@8");
// win1.41 009ba808 mac inlined SubOptionEntryButton::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__20SubOptionEntryButton asm("??_R2SubOptionEntryButton@@8");
// win1.41 009ba818 mac inlined SubOptionEntryButton::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__20SubOptionEntryButton asm("??_R3SubOptionEntryButton@@8");

// Override methods

// win1.41 0078db60 mac 1010f040 SubOptionEntryButton::GetSubMeshData(SubMeshDrawData &, int, int)
void __fastcall GetSubMeshData__20SubOptionEntryButtonFR15SubMeshDrawDataii(struct SubOptionEntry* this, const void* edx, struct SubMeshDrawData* param_1, int param_2, int param_3) asm("?GetSubMeshData@SubOptionEntryButton@@UAEXAAUSubMeshDrawData@@HH@Z");
// win1.41 0078dc40 mac 1010ef20 SubOptionEntryButton::UpdateMouse(LHCoord, INTERFACE_MESSAGE_TYPES, int)
uint32_t __fastcall UpdateMouse__20SubOptionEntryButtonF7LHCoord23INTERFACE_MESSAGE_TYPESi(struct SubOptionEntry* this, const void* edx, struct LHCoord param_1, enum INTERFACE_MESSAGE_TYPES param_2, int param_3) asm("?UpdateMouse@SubOptionEntryButton@@UAEIULHCoord@@W4INTERFACE_MESSAGE_TYPES@@H@Z");
// win1.41 0078dcd0 mac 1010eed0 SubOptionEntryButton::UpdateKeyboard(LH_KEY, unsigned short)
uint32_t __fastcall UpdateKeyboard__20SubOptionEntryButtonF6LH_KEYUs(struct SubOptionEntry* this, const void* edx, enum LH_KEY param_1, uint16_t param_2) asm("?UpdateKeyboard@SubOptionEntryButton@@UAEIW4LH_KEY@@G@Z");

struct SubOptionEntryCheckBoxChecked
{
  struct SubOptionEntry super;  /* 0x0 */
};
static_assert(sizeof(struct SubOptionEntryCheckBoxChecked) == 0x4, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c28480 mac inlined SubOptionEntryCheckBoxChecked::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__29SubOptionEntryCheckBoxChecked asm("??_R0?AVSubOptionEntryCheckBoxChecked@@@8");
// win1.41 009ba890 mac inlined SubOptionEntryCheckBoxChecked::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__29SubOptionEntryCheckBoxChecked asm("??_R1A@?0A@A@SubOptionEntryCheckBoxChecked@@8");
// win1.41 009ba8a8 mac inlined SubOptionEntryCheckBoxChecked::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__29SubOptionEntryCheckBoxChecked asm("??_R2SubOptionEntryCheckBoxChecked@@8");
// win1.41 009ba8b8 mac inlined SubOptionEntryCheckBoxChecked::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__29SubOptionEntryCheckBoxChecked asm("??_R3SubOptionEntryCheckBoxChecked@@8");

// Override methods

// win1.41 0078deb0 mac 1010e9a0 SubOptionEntryCheckBoxChecked::GetSubMeshData(SubMeshDrawData &, int, int)
void __fastcall GetSubMeshData__29SubOptionEntryCheckBoxCheckedFR15SubMeshDrawDataii(struct SubOptionEntry* this, const void* edx, struct SubMeshDrawData* param_1, int param_2, int param_3) asm("?GetSubMeshData@SubOptionEntryCheckBoxChecked@@UAEXAAUSubMeshDrawData@@HH@Z");
// win1.41 0078df60 mac 1010e880 SubOptionEntryCheckBoxChecked::UpdateMouse(LHCoord, INTERFACE_MESSAGE_TYPES, int)
uint32_t __fastcall UpdateMouse__29SubOptionEntryCheckBoxCheckedF7LHCoord23INTERFACE_MESSAGE_TYPESi(struct SubOptionEntry* this, const void* edx, struct LHCoord param_1, enum INTERFACE_MESSAGE_TYPES param_2, int param_3) asm("?UpdateMouse@SubOptionEntryCheckBoxChecked@@UAEIULHCoord@@W4INTERFACE_MESSAGE_TYPES@@H@Z");
// win1.41 0078dff0 mac 1010e820 SubOptionEntryCheckBoxChecked::UpdateKeyboard(LH_KEY, unsigned short)
uint32_t __fastcall UpdateKeyboard__29SubOptionEntryCheckBoxCheckedF6LH_KEYUs(struct SubOptionEntry* this, const void* edx, enum LH_KEY param_1, uint16_t param_2) asm("?UpdateKeyboard@SubOptionEntryCheckBoxChecked@@UAEIW4LH_KEY@@G@Z");

struct SubOptionEntryCheckBoxUnChecked
{
  struct SubOptionEntry super;  /* 0x0 */
};
static_assert(sizeof(struct SubOptionEntryCheckBoxUnChecked) == 0x4, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c28450 mac inlined SubOptionEntryCheckBoxUnChecked::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__31SubOptionEntryCheckBoxUnChecked asm("??_R0?AVSubOptionEntryCheckBoxUnChecked@@@8");
// win1.41 009ba840 mac inlined SubOptionEntryCheckBoxUnChecked::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__31SubOptionEntryCheckBoxUnChecked asm("??_R1A@?0A@A@SubOptionEntryCheckBoxUnChecked@@8");
// win1.41 009ba858 mac inlined SubOptionEntryCheckBoxUnChecked::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__31SubOptionEntryCheckBoxUnChecked asm("??_R2SubOptionEntryCheckBoxUnChecked@@8");
// win1.41 009ba868 mac inlined SubOptionEntryCheckBoxUnChecked::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__31SubOptionEntryCheckBoxUnChecked asm("??_R3SubOptionEntryCheckBoxUnChecked@@8");

// Override methods

// win1.41 0078dd20 mac 1010ecf0 SubOptionEntryCheckBoxUnChecked::GetSubMeshData(SubMeshDrawData &, int, int)
void __fastcall GetSubMeshData__31SubOptionEntryCheckBoxUnCheckedFR15SubMeshDrawDataii(struct SubOptionEntry* this, const void* edx, struct SubMeshDrawData* param_1, int param_2, int param_3) asm("?GetSubMeshData@SubOptionEntryCheckBoxUnChecked@@UAEXAAUSubMeshDrawData@@HH@Z");
// win1.41 0078ddd0 mac 1010ebd0 SubOptionEntryCheckBoxUnChecked::UpdateMouse(LHCoord, INTERFACE_MESSAGE_TYPES, int)
uint32_t __fastcall UpdateMouse__31SubOptionEntryCheckBoxUnCheckedF7LHCoord23INTERFACE_MESSAGE_TYPESi(struct SubOptionEntry* this, const void* edx, struct LHCoord param_1, enum INTERFACE_MESSAGE_TYPES param_2, int param_3) asm("?UpdateMouse@SubOptionEntryCheckBoxUnChecked@@UAEIULHCoord@@W4INTERFACE_MESSAGE_TYPES@@H@Z");
// win1.41 0078de60 mac 1010eb70 SubOptionEntryCheckBoxUnChecked::UpdateKeyboard(LH_KEY, unsigned short)
uint32_t __fastcall UpdateKeyboard__31SubOptionEntryCheckBoxUnCheckedF6LH_KEYUs(struct SubOptionEntry* this, const void* edx, enum LH_KEY param_1, uint16_t param_2) asm("?UpdateKeyboard@SubOptionEntryCheckBoxUnChecked@@UAEIW4LH_KEY@@G@Z");

struct SubOptionEntryFrame
{
  struct SubOptionEntry super;  /* 0x0 */
};
static_assert(sizeof(struct SubOptionEntryFrame) == 0x4, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c28578 mac inlined SubOptionEntryFrame::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__19SubOptionEntryFrame asm("??_R0?AVSubOptionEntryFrame@@@8");
// win1.41 009baa70 mac inlined SubOptionEntryFrame::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__19SubOptionEntryFrame asm("??_R1A@?0A@A@SubOptionEntryFrame@@8");
// win1.41 009baa88 mac inlined SubOptionEntryFrame::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__19SubOptionEntryFrame asm("??_R2SubOptionEntryFrame@@8");
// win1.41 009baa98 mac inlined SubOptionEntryFrame::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__19SubOptionEntryFrame asm("??_R3SubOptionEntryFrame@@8");

// Override methods

// win1.41 0078e7a0 mac 1010d690 SubOptionEntryFrame::GetSubMeshData(SubMeshDrawData &, int, int)
void __fastcall GetSubMeshData__19SubOptionEntryFrameFR15SubMeshDrawDataii(struct SubOptionEntry* this, const void* edx, struct SubMeshDrawData* param_1, int param_2, int param_3) asm("?GetSubMeshData@SubOptionEntryFrame@@UAEXAAUSubMeshDrawData@@HH@Z");
// win1.41 0078e850 mac 1010d630 SubOptionEntryFrame::UpdateMouse(LHCoord, INTERFACE_MESSAGE_TYPES, int)
uint32_t __fastcall UpdateMouse__19SubOptionEntryFrameF7LHCoord23INTERFACE_MESSAGE_TYPESi(struct SubOptionEntry* this, const void* edx, struct LHCoord param_1, enum INTERFACE_MESSAGE_TYPES param_2, int param_3) asm("?UpdateMouse@SubOptionEntryFrame@@UAEIULHCoord@@W4INTERFACE_MESSAGE_TYPES@@H@Z");
// win1.41 0078e860 mac 1010d5e0 SubOptionEntryFrame::UpdateKeyboard(LH_KEY, unsigned short)
uint32_t __fastcall UpdateKeyboard__19SubOptionEntryFrameF6LH_KEYUs(struct SubOptionEntry* this, const void* edx, enum LH_KEY param_1, uint16_t param_2) asm("?UpdateKeyboard@SubOptionEntryFrame@@UAEIW4LH_KEY@@G@Z");

struct SubOptionEntryListBox
{
  struct SubOptionEntry super;  /* 0x0 */
};
static_assert(sizeof(struct SubOptionEntryListBox) == 0x4, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c28550 mac inlined SubOptionEntryListBox::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__21SubOptionEntryListBox asm("??_R0?AVSubOptionEntryListBox@@@8");
// win1.41 009baa20 mac inlined SubOptionEntryListBox::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__21SubOptionEntryListBox asm("??_R1A@?0A@A@SubOptionEntryListBox@@8");
// win1.41 009baa38 mac inlined SubOptionEntryListBox::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__21SubOptionEntryListBox asm("??_R2SubOptionEntryListBox@@8");
// win1.41 009baa48 mac inlined SubOptionEntryListBox::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__21SubOptionEntryListBox asm("??_R3SubOptionEntryListBox@@8");

// Override methods

// win1.41 0078e5d0 mac 1010da10 SubOptionEntryListBox::GetSubMeshData(SubMeshDrawData &, int, int)
void __fastcall GetSubMeshData__21SubOptionEntryListBoxFR15SubMeshDrawDataii(struct SubOptionEntry* this, const void* edx, struct SubMeshDrawData* param_1, int param_2, int param_3) asm("?GetSubMeshData@SubOptionEntryListBox@@UAEXAAUSubMeshDrawData@@HH@Z");
// win1.41 0078e6a0 mac 1010d8b0 SubOptionEntryListBox::UpdateMouse(LHCoord, INTERFACE_MESSAGE_TYPES, int)
uint32_t __fastcall UpdateMouse__21SubOptionEntryListBoxF7LHCoord23INTERFACE_MESSAGE_TYPESi(struct SubOptionEntry* this, const void* edx, struct LHCoord param_1, enum INTERFACE_MESSAGE_TYPES param_2, int param_3) asm("?UpdateMouse@SubOptionEntryListBox@@UAEIULHCoord@@W4INTERFACE_MESSAGE_TYPES@@H@Z");
// win1.41 0078e750 mac 1010d860 SubOptionEntryListBox::UpdateKeyboard(LH_KEY, unsigned short)
uint32_t __fastcall UpdateKeyboard__21SubOptionEntryListBoxF6LH_KEYUs(struct SubOptionEntry* this, const void* edx, enum LH_KEY param_1, uint16_t param_2) asm("?UpdateKeyboard@SubOptionEntryListBox@@UAEIW4LH_KEY@@G@Z");

struct SubOptionEntryPicture
{
  struct SubOptionEntry super;  /* 0x0 */
};
static_assert(sizeof(struct SubOptionEntryPicture) == 0x4, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c284d8 mac inlined SubOptionEntryPicture::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__21SubOptionEntryPicture asm("??_R0?AVSubOptionEntryPicture@@@8");
// win1.41 009ba930 mac inlined SubOptionEntryPicture::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__21SubOptionEntryPicture asm("??_R1A@?0A@A@SubOptionEntryPicture@@8");
// win1.41 009ba948 mac inlined SubOptionEntryPicture::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__21SubOptionEntryPicture asm("??_R2SubOptionEntryPicture@@8");
// win1.41 009ba958 mac inlined SubOptionEntryPicture::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__21SubOptionEntryPicture asm("??_R3SubOptionEntryPicture@@8");

// Override methods

// win1.41 0078e0c0 mac 1010e480 SubOptionEntryPicture::GetSubMeshData(SubMeshDrawData &, int, int)
void __fastcall GetSubMeshData__21SubOptionEntryPictureFR15SubMeshDrawDataii(struct SubOptionEntry* this, const void* edx, struct SubMeshDrawData* param_1, int param_2, int param_3) asm("?GetSubMeshData@SubOptionEntryPicture@@UAEXAAUSubMeshDrawData@@HH@Z");
// win1.41 0078e190 mac 1010e380 SubOptionEntryPicture::UpdateMouse(LHCoord, INTERFACE_MESSAGE_TYPES, int)
uint32_t __fastcall UpdateMouse__21SubOptionEntryPictureF7LHCoord23INTERFACE_MESSAGE_TYPESi(struct SubOptionEntry* this, const void* edx, struct LHCoord param_1, enum INTERFACE_MESSAGE_TYPES param_2, int param_3) asm("?UpdateMouse@SubOptionEntryPicture@@UAEIULHCoord@@W4INTERFACE_MESSAGE_TYPES@@H@Z");
// win1.41 0078e1f0 mac 1010e330 SubOptionEntryPicture::UpdateKeyboard(LH_KEY, unsigned short)
uint32_t __fastcall UpdateKeyboard__21SubOptionEntryPictureF6LH_KEYUs(struct SubOptionEntry* this, const void* edx, enum LH_KEY param_1, uint16_t param_2) asm("?UpdateKeyboard@SubOptionEntryPicture@@UAEIW4LH_KEY@@G@Z");

struct SubOptionEntryScroll
{
  struct SubOptionEntry super;  /* 0x0 */
};
static_assert(sizeof(struct SubOptionEntryScroll) == 0x4, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c28500 mac inlined SubOptionEntryScroll::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__20SubOptionEntryScroll asm("??_R0?AVSubOptionEntryScroll@@@8");
// win1.41 009ba980 mac inlined SubOptionEntryScroll::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__20SubOptionEntryScroll asm("??_R1A@?0A@A@SubOptionEntryScroll@@8");
// win1.41 009ba998 mac inlined SubOptionEntryScroll::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__20SubOptionEntryScroll asm("??_R2SubOptionEntryScroll@@8");
// win1.41 009ba9a8 mac inlined SubOptionEntryScroll::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__20SubOptionEntryScroll asm("??_R3SubOptionEntryScroll@@8");

// Override methods

// win1.41 0078e250 mac 1010e140 SubOptionEntryScroll::GetSubMeshData(SubMeshDrawData &, int, int)
void __fastcall GetSubMeshData__20SubOptionEntryScrollFR15SubMeshDrawDataii(struct SubOptionEntry* this, const void* edx, struct SubMeshDrawData* param_1, int param_2, int param_3) asm("?GetSubMeshData@SubOptionEntryScroll@@UAEXAAUSubMeshDrawData@@HH@Z");
// win1.41 0078e320 mac 1010dff0 SubOptionEntryScroll::UpdateMouse(LHCoord, INTERFACE_MESSAGE_TYPES, int)
uint32_t __fastcall UpdateMouse__20SubOptionEntryScrollF7LHCoord23INTERFACE_MESSAGE_TYPESi(struct SubOptionEntry* this, const void* edx, struct LHCoord param_1, enum INTERFACE_MESSAGE_TYPES param_2, int param_3) asm("?UpdateMouse@SubOptionEntryScroll@@UAEIULHCoord@@W4INTERFACE_MESSAGE_TYPES@@H@Z");
// win1.41 0078e3c0 mac 1010dfa0 SubOptionEntryScroll::UpdateKeyboard(LH_KEY, unsigned short)
uint32_t __fastcall UpdateKeyboard__20SubOptionEntryScrollF6LH_KEYUs(struct SubOptionEntry* this, const void* edx, enum LH_KEY param_1, uint16_t param_2) asm("?UpdateKeyboard@SubOptionEntryScroll@@UAEIW4LH_KEY@@G@Z");

struct SubOptionEntrySlider
{
  struct SubOptionEntry super;  /* 0x0 */
};
static_assert(sizeof(struct SubOptionEntrySlider) == 0x4, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c284b0 mac inlined SubOptionEntrySlider::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__20SubOptionEntrySlider asm("??_R0?AVSubOptionEntrySlider@@@8");
// win1.41 009ba8e0 mac inlined SubOptionEntrySlider::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__20SubOptionEntrySlider asm("??_R1A@?0A@A@SubOptionEntrySlider@@8");
// win1.41 009ba8f8 mac inlined SubOptionEntrySlider::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__20SubOptionEntrySlider asm("??_R2SubOptionEntrySlider@@8");
// win1.41 009ba908 mac inlined SubOptionEntrySlider::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__20SubOptionEntrySlider asm("??_R3SubOptionEntrySlider@@8");

// Override methods

// win1.41 0078e040 mac 1010e720 SubOptionEntrySlider::GetSubMeshData(SubMeshDrawData &, int, int)
void __fastcall GetSubMeshData__20SubOptionEntrySliderFR15SubMeshDrawDataii(struct SubOptionEntry* this, const void* edx, struct SubMeshDrawData* param_1, int param_2, int param_3) asm("?GetSubMeshData@SubOptionEntrySlider@@UAEXAAUSubMeshDrawData@@HH@Z");
// win1.41 0078e060 mac 1010e6c0 SubOptionEntrySlider::UpdateMouse(LHCoord, INTERFACE_MESSAGE_TYPES, int)
uint32_t __fastcall UpdateMouse__20SubOptionEntrySliderF7LHCoord23INTERFACE_MESSAGE_TYPESi(struct SubOptionEntry* this, const void* edx, struct LHCoord param_1, enum INTERFACE_MESSAGE_TYPES param_2, int param_3) asm("?UpdateMouse@SubOptionEntrySlider@@UAEIULHCoord@@W4INTERFACE_MESSAGE_TYPES@@H@Z");
// win1.41 0078e070 mac 1010e670 SubOptionEntrySlider::UpdateKeyboard(LH_KEY, unsigned short)
uint32_t __fastcall UpdateKeyboard__20SubOptionEntrySliderF6LH_KEYUs(struct SubOptionEntry* this, const void* edx, enum LH_KEY param_1, uint16_t param_2) asm("?UpdateKeyboard@SubOptionEntrySlider@@UAEIW4LH_KEY@@G@Z");

struct SubOptionEntryText
{
  struct SubOptionEntry super;  /* 0x0 */
};
static_assert(sizeof(struct SubOptionEntryText) == 0x4, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c28528 mac inlined SubOptionEntryText::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__18SubOptionEntryText asm("??_R0?AVSubOptionEntryText@@@8");
// win1.41 009ba9d0 mac inlined SubOptionEntryText::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__18SubOptionEntryText asm("??_R1A@?0A@A@SubOptionEntryText@@8");
// win1.41 009ba9e8 mac inlined SubOptionEntryText::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__18SubOptionEntryText asm("??_R2SubOptionEntryText@@8");
// win1.41 009ba9f8 mac inlined SubOptionEntryText::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__18SubOptionEntryText asm("??_R3SubOptionEntryText@@8");

// Override methods

// win1.41 0078e410 mac 1010ddc0 SubOptionEntryText::GetSubMeshData(SubMeshDrawData &, int, int)
void __fastcall GetSubMeshData__18SubOptionEntryTextFR15SubMeshDrawDataii(struct SubOptionEntry* this, const void* edx, struct SubMeshDrawData* param_1, int param_2, int param_3) asm("?GetSubMeshData@SubOptionEntryText@@UAEXAAUSubMeshDrawData@@HH@Z");
// win1.41 0078e4e0 mac 1010dd60 SubOptionEntryText::UpdateMouse(LHCoord, INTERFACE_MESSAGE_TYPES, int)
uint32_t __fastcall UpdateMouse__18SubOptionEntryTextF7LHCoord23INTERFACE_MESSAGE_TYPESi(struct SubOptionEntry* this, const void* edx, struct LHCoord param_1, enum INTERFACE_MESSAGE_TYPES param_2, int param_3) asm("?UpdateMouse@SubOptionEntryText@@UAEIULHCoord@@W4INTERFACE_MESSAGE_TYPES@@H@Z");
// win1.41 0078e4f0 mac 1010dc10 SubOptionEntryText::UpdateKeyboard(LH_KEY, unsigned short)
uint32_t __fastcall UpdateKeyboard__18SubOptionEntryTextF6LH_KEYUs(struct SubOptionEntry* this, const void* edx, enum LH_KEY param_1, uint16_t param_2) asm("?UpdateKeyboard@SubOptionEntryText@@UAEIW4LH_KEY@@G@Z");

#endif /* BW1_DECOMP_SUB_OPTION_ENTRY_INCLUDED_H */
