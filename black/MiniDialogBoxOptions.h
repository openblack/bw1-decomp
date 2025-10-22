#ifndef BW1_DECOMP_MINI_DIALOG_BOX_OPTIONS_INCLUDED_H
#define BW1_DECOMP_MINI_DIALOG_BOX_OPTIONS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

// Forward Declares

struct SetupBigButton;
struct SetupButton;
struct SetupCheckBox;
struct SetupSlider;
struct SetupStaticText;

struct MiniDialogBoxOptions
{
  struct DialogBoxBase super;  /* 0x0 */
  struct SetupSlider* field_0x10;
  struct SetupSlider* field_0x14;
  struct SetupBigButton* field_0x18;
  struct SetupBigButton* field_0x1c;
  struct SetupBigButton* field_0x20;
  struct SetupBigButton* field_0x24;
  struct SetupStaticText* field_0x28;
  struct SetupStaticText* field_0x2c;
  struct SetupStaticText* field_0x30;
  struct SetupCheckBox* field_0x34;
  struct SetupCheckBox* field_0x38;
  uint32_t field_0x3c;
  uint32_t field_0x40;
  struct SetupButton* field_0x44;
};
static_assert(sizeof(struct MiniDialogBoxOptions) == 0x48, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00be8dc8 mac inlined MiniDialogBoxOptions::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__20MiniDialogBoxOptions asm("??_R0?AVMiniDialogBoxOptions@@@8");
// win1.41 009aba48 mac inlined MiniDialogBoxOptions::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__20MiniDialogBoxOptions asm("??_R1A@?0A@A@MiniDialogBoxOptions@@8");
// win1.41 009aba60 mac inlined MiniDialogBoxOptions::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__20MiniDialogBoxOptions asm("??_R2MiniDialogBoxOptions@@8");
// win1.41 009aba70 mac inlined MiniDialogBoxOptions::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__20MiniDialogBoxOptions asm("??_R3MiniDialogBoxOptions@@8");
// win1.41 008d8668 mac 10999048 MiniDialogBoxOptions::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__20MiniDialogBoxOptions asm("??_R4MiniDialogBoxOptions@@6B@");
// win1.41 008d866c mac 10999050 MiniDialogBoxOptions::`vftable'
extern const struct DialogBoxBaseVftable __vt__20MiniDialogBoxOptions asm("??_7MiniDialogBoxOptions@@6B@");

// Constructors

// win1.41 00514f20 mac inlined MiniDialogBoxOptions::MiniDialogBoxOptions(void)
struct MiniDialogBoxOptions* __fastcall __ct__20MiniDialogBoxOptions(struct MiniDialogBoxOptions* this) asm("??0MiniDialogBoxOptions@@QAE@XZ");

// Override methods

// win1.41 00514f50 mac 102b2b00 MiniDialogBoxOptions::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
void __fastcall Init__20MiniDialogBoxOptionsFUlUlPFiP8SetupBoxP12SetupControlii_v(struct DialogBoxBase* this, const void* edx, uint32_t param_1, uint32_t param_2, void (__stdcall* param_3)(int param_1, struct SetupBox * param_2, struct SetupControl * param_3, int param_4, int param_5)) asm("?Init@MiniDialogBoxOptions@@UAEXIIP6AXHPAVSetupBox@@PAVSetupControl@@HH@Z@Z");
// win1.41 00515680 mac 102b2aa0 MiniDialogBoxOptions::Destroy(void)
void __fastcall Destroy__20MiniDialogBoxOptionsFv(struct DialogBoxBase* this) asm("?Destroy@MiniDialogBoxOptions@@UAEXXZ");
// win1.41 00515810 mac 102b27a0 MiniDialogBoxOptions::CanESCOut(void)
bool __fastcall CanESCOut__20MiniDialogBoxOptionsFv(struct DialogBoxBase* this) asm("?CanESCOut@MiniDialogBoxOptions@@UAE_NXZ");
// win1.41 00515690 mac 102b2800 MiniDialogBoxOptions::InitControls(void)
void __fastcall InitControls__20MiniDialogBoxOptionsFv(struct DialogBoxBase* this) asm("?InitControls@MiniDialogBoxOptions@@UAEXXZ");

#endif /* BW1_DECOMP_MINI_DIALOG_BOX_OPTIONS_INCLUDED_H */
