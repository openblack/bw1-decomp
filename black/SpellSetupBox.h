#ifndef BW1_DECOMP_SPELL_SETUP_BOX_INCLUDED_H
#define BW1_DECOMP_SPELL_SETUP_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

struct SpellSetupBox
{
  struct DialogBoxBase super;  /* 0x0 */
};
static_assert(sizeof(struct SpellSetupBox) == 0x10, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bea8e8 mac inlined SpellSetupBox::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__13SpellSetupBox asm("??_R0?AVSpellSetupBox@@@8");
// win1.41 009acf10 mac inlined SpellSetupBox::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__13SpellSetupBox asm("??_R1A@?0A@A@SpellSetupBox@@8");
// win1.41 009acf28 mac inlined SpellSetupBox::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__13SpellSetupBox asm("??_R2SpellSetupBox@@8");
// win1.41 009acf38 mac inlined SpellSetupBox::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__13SpellSetupBox asm("??_R3SpellSetupBox@@8");

// Override methods

// win1.41 00547970 mac 105cc310 SpellSetupBox::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
void __fastcall Init__13SpellSetupBoxFUlUlPFiP8SetupBoxP12SetupControlii_v(struct DialogBoxBase* this, const void* edx, uint32_t param_1, uint32_t param_2, void (__stdcall* param_3)(int param_1, struct SetupBox * param_2, struct SetupControl * param_3, int param_4, int param_5)) asm("?Init@SpellSetupBox@@UAEXIIP6AXHPAVSetupBox@@PAVSetupControl@@HH@Z@Z");
// win1.41 00547c30 mac 105cc2b0 SpellSetupBox::Destroy(void)
void __fastcall Destroy__13SpellSetupBoxFv(struct DialogBoxBase* this) asm("?Destroy@SpellSetupBox@@UAEXXZ");
// win1.41 00547c40 mac 105cc120 SpellSetupBox::InitControls(void)
void __fastcall InitControls__13SpellSetupBoxFv(struct DialogBoxBase* this) asm("?InitControls@SpellSetupBox@@UAEXXZ");

#endif /* BW1_DECOMP_SPELL_SETUP_BOX_INCLUDED_H */
