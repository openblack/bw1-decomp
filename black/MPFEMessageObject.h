#ifndef BW1_DECOMP_MPFE_MESSAGE_OBJECT_INCLUDED_H
#define BW1_DECOMP_MPFE_MESSAGE_OBJECT_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

// Forward Declares

struct MPFEMessageObject;
struct MPFEPlayerDetails;

struct MPFEMessageObjectVftable
{
  void (__fastcall* __dt)(struct MPFEMessageObject* this);  /* 0x0 */
  void (__fastcall* Send)(struct MPFEMessageObject* this, const void* edx, struct MPFEPlayerDetails* details);
};
static_assert(sizeof(struct MPFEMessageObjectVftable) == 0x8, "Data type is of wrong size");

struct MPFEMessageObject
{
  struct MPFEMessageObjectVftable* vftable;  /* 0x0 */
};
static_assert(sizeof(struct MPFEMessageObject) == 0x4, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009cd8e0 mac inlined MPFEMessageObject::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__17MPFEMessageObject asm("??_R0?AVMPFEMessageObject@@@8");
// win1.41 009a8750 mac inlined MPFEMessageObject::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__17MPFEMessageObject asm("??_R1A@?0A@A@MPFEMessageObject@@8");
// win1.41 009a8768 mac inlined MPFEMessageObject::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__17MPFEMessageObject asm("??_R2MPFEMessageObject@@8");
// win1.41 009a8770 mac inlined MPFEMessageObject::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__17MPFEMessageObject asm("??_R3MPFEMessageObject@@8");
// win1.41 008c70a4 mac 109a2360 MPFEMessageObject::`vftable'
extern const struct MPFEMessageObjectVftable __vt__17MPFEMessageObject asm("??_7MPFEMessageObject@@6B@");

#endif /* BW1_DECOMP_MPFE_MESSAGE_OBJECT_INCLUDED_H */
