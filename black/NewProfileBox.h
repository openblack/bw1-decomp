#ifndef BW1_DECOMP_NEW_PROFILE_BOX_INCLUDED_H
#define BW1_DECOMP_NEW_PROFILE_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

struct NewProfileBox
{
  struct DialogBoxBase super;  /* 0x0 */
  uint8_t field_0x10[0x14];
};
static_assert(sizeof(struct NewProfileBox) == 0x24, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bea310 mac inlined NewProfileBox::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__13NewProfileBox asm("??_R0?AVNewProfileBox@@@8");
// win1.41 009ac880 mac inlined NewProfileBox::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__13NewProfileBox asm("??_R1A@?0A@A@NewProfileBox@@8");
// win1.41 009ac898 mac inlined NewProfileBox::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__13NewProfileBox asm("??_R2NewProfileBox@@8");
// win1.41 009ac8a8 mac inlined NewProfileBox::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__13NewProfileBox asm("??_R3NewProfileBox@@8");
// win1.41 008dec18 mac 109ed914 NewProfileBox::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__13NewProfileBox asm("??_R4NewProfileBox@@6B@");
// win1.41 008dec1c mac 109ed91c NewProfileBox::`vftable'
extern const struct DialogBoxBaseVftable __vt__13NewProfileBox asm("??_7NewProfileBox@@6B@");

// Override methods

// win1.41 0053ce80 mac 105c3a30 NewProfileBox::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
void __fastcall Init__13NewProfileBoxFUlUlPFiP8SetupBoxP12SetupControlii_v(struct DialogBoxBase* this, const void* edx, uint32_t param_1, uint32_t param_2, void (__stdcall* param_3)(int param_1, struct SetupBox * param_2, struct SetupControl * param_3, int param_4, int param_5)) asm("?Init@NewProfileBox@@UAEXIIP6AXHPAVSetupBox@@PAVSetupControl@@HH@Z@Z");
// win1.41 0053d150 mac 105c39d0 NewProfileBox::Destroy(void)
void __fastcall Destroy__13NewProfileBoxFv(struct DialogBoxBase* this) asm("?Destroy@NewProfileBox@@UAEXXZ");
// win1.41 0053bd10 mac 105c5f90 NewProfileBox::CanESCOut(void)
bool __fastcall CanESCOut__13NewProfileBoxFv(struct DialogBoxBase* this) asm("?CanESCOut@NewProfileBox@@UAE_NXZ");
// win1.41 0053d160 mac 105c3890 NewProfileBox::InitControls(void)
void __fastcall InitControls__13NewProfileBoxFv(struct DialogBoxBase* this) asm("?InitControls@NewProfileBox@@UAEXXZ");

#endif /* BW1_DECOMP_NEW_PROFILE_BOX_INCLUDED_H */
