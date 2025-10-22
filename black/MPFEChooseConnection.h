#ifndef BW1_DECOMP_MPFE_CHOOSE_CONNECTION_INCLUDED_H
#define BW1_DECOMP_MPFE_CHOOSE_CONNECTION_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

// Forward Declares

struct MPFEChannelSelector;

struct MPFEChooseConnection
{
  struct DialogBoxBase super;  /* 0x0 */
};
static_assert(sizeof(struct MPFEChooseConnection) == 0x10, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bf4b00 mac inlined MPFEChooseConnection::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__20MPFEChooseConnection asm("??_R0?AVMPFEChooseConnection@@@8");
// win1.41 009b2598 mac inlined MPFEChooseConnection::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__20MPFEChooseConnection asm("??_R1A@?0A@A@MPFEChooseConnection@@8");
// win1.41 009b25b0 mac inlined MPFEChooseConnection::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__20MPFEChooseConnection asm("??_R2MPFEChooseConnection@@8");
// win1.41 009b25c0 mac inlined MPFEChooseConnection::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__20MPFEChooseConnection asm("??_R3MPFEChooseConnection@@8");
// win1.41 009307d4 mac 109a2554 MPFEChooseConnection::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__20MPFEChooseConnection asm("??_R4MPFEChooseConnection@@6B@");
// win1.41 009307d8 mac 109a255c MPFEChooseConnection::`vftable'
extern const struct DialogBoxBaseVftable __vt__20MPFEChooseConnection asm("??_7MPFEChooseConnection@@6B@");

// Static methods

// win1.41 0062b030 mac 1039fa00 MPFEChooseConnection::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
void __fastcall Init__20MPFEChooseConnectionFUlUlPFiP8SetupBoxP12SetupControlii_v(struct MPFEChannelSelector* this, const void* edx, uint32_t param_1, uint32_t param_2, void* callback) asm("?Init@MPFEChooseConnection@@SAXKKP6AXHPAUSetupBox@@PAUSetupControl@@HH@Z@Z");

// Override methods

// win1.41 0062b340 mac 1039f9c0 MPFEChooseConnection::Destroy(void)
void __fastcall Destroy__20MPFEChooseConnectionFv(struct DialogBoxBase* this) asm("?Destroy@MPFEChooseConnection@@UAEXXZ");

#endif /* BW1_DECOMP_MPFE_CHOOSE_CONNECTION_INCLUDED_H */
