#ifndef BW1_DECOMP_PHYSICS_OBJECT_INCLUDED_H
#define BW1_DECOMP_PHYSICS_OBJECT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "Base.h" /* For struct Base */

struct PhysicsObject
{
  struct Base super;  /* 0x0 */
  uint8_t field_0x8[0x1a0];
  float field_0x1a8;
  uint32_t field_0x1ac;
  uint32_t field_0x1b0;
  uint32_t field_0x1b4;
  float field_0x1b8;
  uint32_t field_0x1bc;
  uint32_t field_0x1c0;
  uint32_t field_0x1c4;
  float field_0x1c8;
  uint32_t field_0x1cc;
  uint32_t field_0x1d0;
  uint32_t field_0x1d4;
  uint32_t field_0x1d8;
};
static_assert(sizeof(struct PhysicsObject) == 0x1dc, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bfeec0 mac inlined PhysicsObject::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__13PhysicsObject asm("??_R0?AVPhysicsObject@@@8");
// win1.41 009b31c0 mac inlined PhysicsObject::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__13PhysicsObject asm("??_R1A@?0A@A@PhysicsObject@@8");
// win1.41 009b31d8 mac inlined PhysicsObject::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__13PhysicsObject asm("??_R2PhysicsObject@@8");
// win1.41 009b31e8 mac inlined PhysicsObject::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__13PhysicsObject asm("??_R3PhysicsObject@@8");
// win1.41 00932b90 mac 10746ec0 PhysicsObject::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__13PhysicsObject asm("??_R4PhysicsObject@@6B@");
// win1.41 00932b94 mac 10746ec8 PhysicsObject::`vftable'
extern const struct BaseVftable __vt__13PhysicsObject asm("??_7PhysicsObject@@6B@");

// Constructors

// win1.41 00644330 mac 10113e20 PhysicsObject::PhysicsObject(void)
struct PhysicsObject* __fastcall __ct__13PhysicsObjectFv(struct PhysicsObject* this) asm("??0PhysicsObject@@QAE@XZ");

// Override methods

// win1.41 00644d70 mac 10113d90 PhysicsObject::_dt(void)
void __fastcall __dt__13PhysicsObjectFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GPhysicsObject@@UAEPAXI@Z");

#endif /* BW1_DECOMP_PHYSICS_OBJECT_INCLUDED_H */
