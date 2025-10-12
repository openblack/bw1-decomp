#ifndef BW1_DECOMP_FRONT_END_SETUP_MULTIPLAYER_INCLUDED_H
#define BW1_DECOMP_FRONT_END_SETUP_MULTIPLAYER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

struct SetupLandscapeBox
{
  struct DialogBoxBase super;  /* 0x0 */
};
static_assert(sizeof(struct SetupLandscapeBox) == 0x10, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bea8c8 mac inlined SetupLandscapeBox::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__17SetupLandscapeBox asm("??_R0?AVSetupLandscapeBox@@@8");
// win1.41 009acec0 mac inlined SetupLandscapeBox::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__17SetupLandscapeBox asm("??_R1A@?0A@A@SetupLandscapeBox@@8");
// win1.41 009aced8 mac inlined SetupLandscapeBox::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__17SetupLandscapeBox asm("??_R2SetupLandscapeBox@@8");
// win1.41 009acee8 mac inlined SetupLandscapeBox::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__17SetupLandscapeBox asm("??_R3SetupLandscapeBox@@8");

// Override methods

// win1.41 00546280 mac 105cd3c0 SetupLandscapeBox::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
void __fastcall Init__17SetupLandscapeBoxFUlUlPFiP8SetupBoxP12SetupControlii_v(struct DialogBoxBase* this, const void* edx, uint32_t param_1, uint32_t param_2, void (__stdcall* param_3)(int param_1, struct SetupBox * param_2, struct SetupControl * param_3, int param_4, int param_5)) asm("?Init@SetupLandscapeBox@@UAEXIIP6AXHPAVSetupBox@@PAVSetupControl@@HH@Z@Z");
// win1.41 00546d10 mac 105cd360 SetupLandscapeBox::Destroy(void)
void __fastcall Destroy__17SetupLandscapeBoxFv(struct DialogBoxBase* this) asm("?Destroy@SetupLandscapeBox@@UAEXXZ");
// win1.41 0054a210 mac 105cdd70 SetupLandscapeBox::InitSubDialogs(void)
void __fastcall InitSubDialogs__17SetupLandscapeBoxFv(struct DialogBoxBase* this) asm("?InitSubDialogs@SetupLandscapeBox@@UAEXXZ");
// win1.41 00546d20 mac 105cce40 SetupLandscapeBox::InitControls(void)
void __fastcall InitControls__17SetupLandscapeBoxFv(struct DialogBoxBase* this) asm("?InitControls@SetupLandscapeBox@@UAEXXZ");

#endif /* BW1_DECOMP_FRONT_END_SETUP_MULTIPLAYER_INCLUDED_H */
