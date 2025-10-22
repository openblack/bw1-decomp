#ifndef BW1_DECOMP_SETUP_CHECK_BOX_INCLUDED_H
#define BW1_DECOMP_SETUP_CHECK_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */
#include <uchar.h> /* For char16_t */

#include <lionhead/lhlib/ver5.0/LHKey.h> /* For enum LHKey, enum LHKeyMod */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "SetupButton.h" /* For struct SetupButton */
#include "SetupRect.h" /* For struct SetupRect */
#include "SetupThing.h" /* For enum BBSTYLE */

// Forward Declares

struct SetupControl;

struct SetupCheckBox
{
  struct SetupButton super;  /* 0x0 */
  uint32_t text_position;  /* 0x244 */
  enum BBSTYLE style;
  bool checked;
  struct SetupRect inner_rect;  /* 0x250 */
};
static_assert(sizeof(struct SetupCheckBox) == 0x260, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009c82d8 mac inlined SetupCheckBox::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__13SetupCheckBox asm("??_R0?AUSetupCheckBox@@@8");
// win1.41 009a6928 mac inlined SetupCheckBox::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__13SetupCheckBox asm("??_R1A@?0A@A@SetupCheckBox@@8");
// win1.41 009a6940 mac inlined SetupCheckBox::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__13SetupCheckBox asm("??_R2SetupCheckBox@@8");
// win1.41 009a6950 mac inlined SetupCheckBox::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__13SetupCheckBox asm("??_R3SetupCheckBox@@8");
// win1.41 008ab584 mac 10730d88 SetupCheckBox::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__13SetupCheckBox asm("??_R4SetupCheckBox@@6B@");
// win1.41 008ab588 mac 10730d90 SetupCheckBox::`vftable'
extern const struct SetupControlVftable __vt__13SetupCheckBox asm("??_7SetupCheckBox@@6B@");

// Constructors

// win1.41 00410f10 mac 1058b890 SetupCheckBox::SetupCheckBox(int, int, int, bool, int, wchar_t *, int)
struct SetupCheckBox* __fastcall __ct__13SetupCheckBoxFiiibiPwi(struct SetupCheckBox* this, const void* edx, int id, int x, int y, bool checked, enum BBSTYLE style, const char16_t* label, int size) asm("??0SetupCheckBox@@QAE@HHH_NHPA_WH@Z");

// Override methods

// win1.41 00410f90 mac 10112370 SetupCheckBox::HitTest(int, int)
bool __fastcall HitTest__13SetupCheckBoxFii(struct SetupControl* this, const void* edx, int x, int y) asm("?HitTest@SetupCheckBox@@UAE_NHH@Z");
// win1.41 00410b80 mac 103c4a20 SetupCheckBox::Draw(bool, bool)
void __fastcall Draw__13SetupCheckBoxFbb(struct SetupControl* this, const void* edx, bool hovered, bool selected) asm("?Draw@SetupCheckBox@@UAEX_N0@Z");
// win1.41 00411020 mac 103dbde0 SetupCheckBox::Click(int, int)
void __fastcall Click__13SetupCheckBoxFii(struct SetupControl* this, const void* edx, int x, int y) asm("?Click@SetupCheckBox@@UAEXHH@Z");
// win1.41 00411050 mac 10599580 SetupCheckBox::KeyDown(int, int)
void __fastcall KeyDown__13SetupCheckBoxFii(struct SetupControl* this, const void* edx, enum LHKey key, enum LHKeyMod mod) asm("?KeyDown@SetupCheckBox@@UAEXHH@Z");
// win1.41 00411070 mac 105893e0 SetupCheckBox::~SetupCheckBox(void)
void __fastcall __dt__13SetupCheckBoxFb(struct SetupControl* this, const void* edx, bool param_1) asm("??_DSetupCheckBox@@QAEXXZ");

#endif /* BW1_DECOMP_SETUP_CHECK_BOX_INCLUDED_H */
