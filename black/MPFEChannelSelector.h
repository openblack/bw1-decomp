#ifndef BW1_DECOMP_MPFE_CHANNEL_SELECTOR_INCLUDED_H
#define BW1_DECOMP_MPFE_CHANNEL_SELECTOR_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

// Forward Declares

struct SetupBigButton;
struct SetupButton;
struct SetupCheckBox;
struct SetupEdit;
struct SetupList;
struct SetupStaticText;

struct MPFEChannelSelector
{
  struct DialogBoxBase super;  /* 0x0 */
  struct SetupStaticText* title;  /* 0x10 */
  struct SetupStaticText* instructions;
  struct SetupBigButton* back_arrow;
  struct SetupBigButton* next_arrow;
  struct SetupEdit* field_0x20;
  struct SetupEdit* field_0x24;
  struct SetupList* field_0x28;
  struct SetupList* field_0x2c;
  struct SetupButton* join_help_channel_button;  /* 0x30 */
  struct SetupButton* refresh_button;
  struct SetupCheckBox* resume_checkbox;
  struct SetupStaticText* current_game_label;
  struct SetupStaticText* players_in_game_label;  /* 0x40 */
  struct SetupStaticText* game_name_label;
  struct SetupStaticText* field_0x48;
  uint8_t field_0x4c;
  uint32_t field_0x50;
  uint32_t field_0x54;
};
static_assert(sizeof(struct MPFEChannelSelector) == 0x58, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bf4a40 mac inlined MPFEChannelSelector::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__19MPFEChannelSelector asm("??_R0?AVMPFEChannelSelector@@@8");
// win1.41 009b24f8 mac inlined MPFEChannelSelector::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__19MPFEChannelSelector asm("??_R1A@?0A@A@MPFEChannelSelector@@8");
// win1.41 009b2510 mac inlined MPFEChannelSelector::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__19MPFEChannelSelector asm("??_R2MPFEChannelSelector@@8");
// win1.41 009b2520 mac inlined MPFEChannelSelector::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__19MPFEChannelSelector asm("??_R3MPFEChannelSelector@@8");
// win1.41 0093077c mac 109a250c MPFEChannelSelector::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__19MPFEChannelSelector asm("??_R4MPFEChannelSelector@@6B@");
// win1.41 00930780 mac 109a2514 MPFEChannelSelector::`vftable'
extern const struct DialogBoxBaseVftable __vt__19MPFEChannelSelector asm("??_7MPFEChannelSelector@@6B@");

// Constructors

// win1.41 00628330 mac 1039f0c0 MPFEChannelSelector::MPFEChannelSelector(void)
struct MPFEChannelSelector* __fastcall __ct__19MPFEChannelSelectorFv(struct MPFEChannelSelector* this) asm("??0MPFEChannelSelector@@QAE@XZ");

// Non-virtual methods

// win1.41 00629c50 mac 1039cab0 MPFEChannelSelector::RefreshChannelList(void)
void __fastcall RefreshChannelList__19MPFEChannelSelectorFv(struct MPFEChannelSelector* this) asm("?RefreshChannelList@MPFEChannelSelector@@QAEXXZ");

// Override methods

// win1.41 00628450 mac 1039e270 MPFEChannelSelector::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
void __fastcall Init__19MPFEChannelSelectorFUlUlPFiP8SetupBoxP12SetupControlii_v(struct DialogBoxBase* this, const void* edx, uint32_t param_1, uint32_t param_2, void (__stdcall* param_3)(int param_1, struct SetupBox * param_2, struct SetupControl * param_3, int param_4, int param_5)) asm("?Init@MPFEChannelSelector@@UAEXIIP6AXHPAVSetupBox@@PAVSetupControl@@HH@Z@Z");
// win1.41 00628e20 mac 1039e230 MPFEChannelSelector::Destroy(void)
void __fastcall Destroy__19MPFEChannelSelectorFv(struct DialogBoxBase* this) asm("?Destroy@MPFEChannelSelector@@UAEXXZ");
// win1.41 00628430 mac 1039e800 MPFEChannelSelector::Show(void)
void __fastcall Show__19MPFEChannelSelectorFv(struct DialogBoxBase* this) asm("?Show@MPFEChannelSelector@@UAEXXZ");
// win1.41 00628e30 mac 1039df20 MPFEChannelSelector::InitControls(void)
void __fastcall InitControls__19MPFEChannelSelectorFv(struct DialogBoxBase* this) asm("?InitControls@MPFEChannelSelector@@UAEXXZ");

#endif /* BW1_DECOMP_MPFE_CHANNEL_SELECTOR_INCLUDED_H */
