#ifndef BW1_DECOMP_LOGIN_BOX_INCLUDED_H
#define BW1_DECOMP_LOGIN_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

struct LoginBox
{
  struct DialogBoxBase super;  /* 0x0 */
  uint8_t field_0x10[0x88c];
};
static_assert(sizeof(struct LoginBox) == 0x89c, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bea588 mac inlined LoginBox::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__8LoginBox asm("??_R0?AVLoginBox@@@8");
// win1.41 009ace70 mac inlined LoginBox::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__8LoginBox asm("??_R1A@?0A@A@LoginBox@@8");
// win1.41 009ace88 mac inlined LoginBox::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__8LoginBox asm("??_R2LoginBox@@8");
// win1.41 009ace98 mac inlined LoginBox::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__8LoginBox asm("??_R3LoginBox@@8");
// win1.41 008dec94 mac 109ed794 LoginBox::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__8LoginBox asm("??_R4LoginBox@@6B@");
// win1.41 008dec98 mac 109ed79c LoginBox::`vftable'
extern const struct DialogBoxBaseVftable __vt__8LoginBox asm("??_7LoginBox@@6B@");

// Constructors

// win1.41 00540260 mac inlined LoginBox::LoginBox(void)
struct LoginBox* __fastcall __ct__8LoginBoxFv(struct LoginBox* this) asm("??0LoginBox@@QAE@XZ");

// Override methods

// win1.41 00541040 mac 105beb60 LoginBox::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
void __fastcall Init__8LoginBoxFUlUlPFiP8SetupBoxP12SetupControlii_v(struct DialogBoxBase* this, const void* edx, uint32_t param_1, uint32_t param_2, void (__stdcall* param_3)(int param_1, struct SetupBox * param_2, struct SetupControl * param_3, int param_4, int param_5)) asm("?Init@LoginBox@@UAEXIIP6AXHPAVSetupBox@@PAVSetupControl@@HH@Z@Z");
// win1.41 005417f0 mac 105beb30 LoginBox::Destroy(void)
void __fastcall Destroy__8LoginBoxFv(struct DialogBoxBase* this) asm("?Destroy@LoginBox@@UAEXXZ");

#endif /* BW1_DECOMP_LOGIN_BOX_INCLUDED_H */
