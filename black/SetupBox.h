#ifndef BW1_DECOMP_SETUP_BOX_INCLUDED_H
#define BW1_DECOMP_SETUP_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */
#include <uchar.h> /* For char16_t */

#include <lionhead/lh3dlib/development/Zoomer.h> /* For struct Zoomer */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

// Forward Declares

struct SetupBox;
struct SetupControl;

struct SetupBoxVftable
{
  void (__fastcall* field_0x0)(struct SetupBox* this, const void* edx, int param_1, int param_2);
};
static_assert(sizeof(struct SetupBoxVftable) == 0x4, "Data type is of wrong size");

struct SetupBox
{
  struct SetupBoxVftable* vftable;  /* 0x0 */
  struct Zoomer zoomer_0x4;
  struct Zoomer zoomer_0x34;
  uint32_t field_0x64;
  struct SetupControl* widgets_0x68;
  struct SetupControl* widget_list;
  struct SetupControl* focused_widget;  /* 0x70 */
  struct SetupControl* widget_0x74;
  uint8_t field_0x78;
  uint32_t field_0x7c;
  uint32_t field_0x80;
  float field_0x84;
  uint32_t field_0x88;
  uint32_t field_0x8c;
  uint32_t field_0x90;
  uint32_t field_0x94;
  uint32_t field_0x98;
  uint32_t field_0x9c;
  uint32_t field_0xa0;
  uint32_t field_0xa4;
  uint32_t field_0xa8;
  uint32_t default_text_size;
  void (__stdcall* field_0xb0)(int param_0, struct SetupBox* param_1, struct SetupControl* param_2, int x, int y);
  uint32_t field_0xb4;
  uint32_t field_0xb8;
  struct SetupControl* field_0xbc;
  int field_0xc0;
  float field_0xc4;
  uint32_t field_0xc8;
};
static_assert(sizeof(struct SetupBox) == 0xcc, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00be8c70 mac inlined SetupBox::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__8SetupBox asm("??_R0?AUSetupBox@@@8");
// win1.41 009ab960 mac inlined SetupBox::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__8SetupBox asm("??_R1A@?0A@A@SetupBox@@8");
// win1.41 009ab978 mac inlined SetupBox::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__8SetupBox asm("??_R2SetupBox@@8");
// win1.41 009ab980 mac inlined SetupBox::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__8SetupBox asm("??_R3SetupBox@@8");
// win1.41 008d85e8 mac 10731360 SetupBox::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__8SetupBox asm("??_R4SetupBox@@6B@");
// win1.41 008d85ec mac 10731368 SetupBox::`vftable'
extern const struct SetupBoxVftable __vt__8SetupBox asm("??_7SetupBox@@6B@");

// Static methods

// win1.41 00407ed0 mac 10075ef0 SetupBox::GetCurrentActiveBox(void)
struct SetupBox* __cdecl GetCurrentActiveBox__8SetupBoxFv(void) asm("?GetCurrentActiveBox@SetupBox@@SAPAV1@XZ");

// Non-virtual methods

// win1.41 00408160 mac 1043c330 SetupBox::FindControl(int)
struct SetupControl* __fastcall FindControl__8SetupBoxFi(struct SetupBox* this, const void* edx, int id) asm("?FindControl@SetupBox@@QAEPAUSetupControl@@H@Z");
// win1.41 00409140 mac 10598ed0 SetupBox::SetFocusControl(SetupControl *)
void __fastcall SetFocusControl__8SetupBoxFP12SetupControl(struct SetupBox* this, const void* edx, struct SetupControl* widget) asm("?SetFocusControl@SetupBox@@QAEXPAUSetupControl@@@Z");
// win1.41 00411090 mac 1047e3e0 SetupBox::SetFocusNext(SetupBox *)
void __fastcall SetFocusNext__8SetupBoxFv(struct SetupBox* this) asm("?SetFocusNext@SetupBox@@QAEXXZ");
// win1.41 00411100 mac 10478e70 SetupBox::SetFocusPrev(SetupBox *)
void __fastcall SetFocusPrev__8SetupBoxFv(struct SetupBox* this) asm("?SetFocusPrev@SetupBox@@QAEXXZ");
// win1.41 00411190 mac 100c3160 SetupBox::MessageBoxA(wchar_t*, MSGBOXSTYLE, ulong)
void __fastcall MessageBoxA__8SetupBoxFPw11MSGBOXSTYLEUl(struct SetupBox* this, const void* edx, const char16_t* param_2, uint32_t param_3, uint32_t param_4);

#endif /* BW1_DECOMP_SETUP_BOX_INCLUDED_H */
