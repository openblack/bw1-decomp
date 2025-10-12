#ifndef BW1_DECOMP_END_GAME_BOX_INCLUDED_H
#define BW1_DECOMP_END_GAME_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

struct EndGameBox
{
  struct DialogBoxBase super;  /* 0x0 */
  uint8_t field_0x10[0xac];
};
static_assert(sizeof(struct EndGameBox) == 0xbc, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bea370 mac inlined EndGameBox::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__10EndGameBox asm("??_R0?AVEndGameBox@@@8");
// win1.41 009ac970 mac inlined EndGameBox::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__10EndGameBox asm("??_R1A@?0A@A@EndGameBox@@8");
// win1.41 009ac988 mac inlined EndGameBox::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__10EndGameBox asm("??_R2EndGameBox@@8");
// win1.41 009ac998 mac inlined EndGameBox::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__10EndGameBox asm("??_R3EndGameBox@@8");
// win1.41 008de9e8 mac 1099ad1c EndGameBox::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__10EndGameBox asm("??_R4EndGameBox@@6B@");
// win1.41 008de9ec mac 1099ad24 EndGameBox::`vftable'
extern const struct DialogBoxBaseVftable __vt__10EndGameBox asm("??_7EndGameBox@@6B@");

// Override methods

// win1.41 0056e160 mac 1031c660 EndGameBox::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
void __fastcall Init__10EndGameBoxFUlUlPFiP8SetupBoxP12SetupControlii_v(struct DialogBoxBase* this, const void* edx, uint32_t param_1, uint32_t param_2, void (__stdcall* param_3)(int param_1, struct SetupBox * param_2, struct SetupControl * param_3, int param_4, int param_5)) asm("?Init@EndGameBox@@UAEXIIP6AXHPAVSetupBox@@PAVSetupControl@@HH@Z@Z");
// win1.41 0056e730 mac 1031c600 EndGameBox::Destroy(void)
void __fastcall Destroy__10EndGameBoxFv(struct DialogBoxBase* this) asm("?Destroy@EndGameBox@@UAEXXZ");
// win1.41 0053be30 mac 1031ba50 EndGameBox::CanESCOut(void)
bool __fastcall CanESCOut__10EndGameBoxFv(struct DialogBoxBase* this) asm("?CanESCOut@EndGameBox@@UAE_NXZ");
// win1.41 0056e740 mac 1031c100 EndGameBox::InitControls(void)
void __fastcall InitControls__10EndGameBoxFv(struct DialogBoxBase* this) asm("?InitControls@EndGameBox@@UAEXXZ");

#endif /* BW1_DECOMP_END_GAME_BOX_INCLUDED_H */
