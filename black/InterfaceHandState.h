#ifndef BW1_DECOMP_INTERFACE_HAND_STATE_INCLUDED_H
#define BW1_DECOMP_INTERFACE_HAND_STATE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "Base.h" /* For struct Base */
#include "HandState.h" /* For enum HAND_STATES */

struct InterfaceHandState
{
  struct Base super;  /* 0x0 */
  enum HAND_STATES hand_state;
};
static_assert(sizeof(struct InterfaceHandState) == 0xc, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bf1b60 mac inlined InterfaceHandState::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__18InterfaceHandState asm("??_R0?AVInterfaceHandState@@@8");
// win1.41 009b15d8 mac inlined InterfaceHandState::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__18InterfaceHandState asm("??_R1A@?0A@A@InterfaceHandState@@8");
// win1.41 009b15f0 mac inlined InterfaceHandState::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__18InterfaceHandState asm("??_R2InterfaceHandState@@8");
// win1.41 009b1600 mac inlined InterfaceHandState::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__18InterfaceHandState asm("??_R3InterfaceHandState@@8");
// win1.41 0092aae0 mac 1099e2ac InterfaceHandState::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__18InterfaceHandState asm("??_R4InterfaceHandState@@6B@");
// win1.41 0092aae4 mac 1099e2b4 InterfaceHandState::`vftable'
extern const struct BaseVftable __vt__18InterfaceHandState asm("??_7InterfaceHandState@@6B@");

// Override methods

// win1.41 005ce360 mac 1035c790 InterfaceHandState::_dt(void)
void __fastcall __dt__18InterfaceHandStateFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GInterfaceHandState@@UAEPAXI@Z");

#endif /* BW1_DECOMP_INTERFACE_HAND_STATE_INCLUDED_H */
