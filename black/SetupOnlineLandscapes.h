#ifndef BW1_DECOMP_SETUP_ONLINE_LANDSCAPES_INCLUDED_H
#define BW1_DECOMP_SETUP_ONLINE_LANDSCAPES_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

struct SetupOnlineLandscapes
{
  struct DialogBoxBase super;  /* 0x0 */
};
static_assert(sizeof(struct SetupOnlineLandscapes) == 0x10, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bea4b0 mac inlined SetupOnlineLandscapes::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__21SetupOnlineLandscapes asm("??_R0?AVSetupOnlineLandscapes@@@8");
// win1.41 009acc90 mac inlined SetupOnlineLandscapes::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__21SetupOnlineLandscapes asm("??_R1A@?0A@A@SetupOnlineLandscapes@@8");
// win1.41 009acca8 mac inlined SetupOnlineLandscapes::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__21SetupOnlineLandscapes asm("??_R2SetupOnlineLandscapes@@8");
// win1.41 009accb8 mac inlined SetupOnlineLandscapes::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__21SetupOnlineLandscapes asm("??_R3SetupOnlineLandscapes@@8");

// Override methods

// win1.41 00547ff0 mac 105cbb10 SetupOnlineLandscapes::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
void __fastcall Init__21SetupOnlineLandscapesFUlUlPFiP8SetupBoxP12SetupControlii_v(struct DialogBoxBase* this, const void* edx, uint32_t param_1, uint32_t param_2, void (__stdcall* param_3)(int param_1, struct SetupBox * param_2, struct SetupControl * param_3, int param_4, int param_5)) asm("?Init@SetupOnlineLandscapes@@UAEXIIP6AXHPAVSetupBox@@PAVSetupControl@@HH@Z@Z");
// win1.41 005482a0 mac 105cbaa0 SetupOnlineLandscapes::Destroy(void)
void __fastcall Destroy__21SetupOnlineLandscapesFv(struct DialogBoxBase* this) asm("?Destroy@SetupOnlineLandscapes@@UAEXXZ");
// win1.41 00549910 mac 105c9f10 SetupOnlineLandscapes::Show(void)
void __fastcall Show__21SetupOnlineLandscapesFv(struct DialogBoxBase* this) asm("?Show@SetupOnlineLandscapes@@UAEXXZ");
// win1.41 005482b0 mac 105cba40 SetupOnlineLandscapes::InitControls(void)
void __fastcall InitControls__21SetupOnlineLandscapesFv(struct DialogBoxBase* this) asm("?InitControls@SetupOnlineLandscapes@@UAEXXZ");

#endif /* BW1_DECOMP_SETUP_ONLINE_LANDSCAPES_INCLUDED_H */
