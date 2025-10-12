#ifndef BW1_DECOMP_MPFE_CHANGE_CLAN_REQUEST_INCLUDED_H
#define BW1_DECOMP_MPFE_CHANGE_CLAN_REQUEST_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

struct MPFEChangeClanRequest
{
  struct MPFEMessageObject super;  /* 0x0 */
};
static_assert(sizeof(struct MPFEChangeClanRequest) == 0x4, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bf4c20 mac inlined MPFEChangeClanRequest::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__21MPFEChangeClanRequest asm("??_R0?AVMPFEChangeClanRequest@@@8");
// win1.41 009b2638 mac inlined MPFEChangeClanRequest::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__21MPFEChangeClanRequest asm("??_R1A@?0A@A@MPFEChangeClanRequest@@8");
// win1.41 009b2650 mac inlined MPFEChangeClanRequest::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__21MPFEChangeClanRequest asm("??_R2MPFEChangeClanRequest@@8");
// win1.41 009b2660 mac inlined MPFEChangeClanRequest::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__21MPFEChangeClanRequest asm("??_R3MPFEChangeClanRequest@@8");

// Override methods

// win1.41 0062c160 mac 10397200 MPFEChangeClanRequest::_dt(void)
void __fastcall __dt__21MPFEChangeClanRequestFv(struct MPFEMessageObject* this) asm("??_GMPFEChangeClanRequest@@UAEPAXI@Z");

#endif /* BW1_DECOMP_MPFE_CHANGE_CLAN_REQUEST_INCLUDED_H */
