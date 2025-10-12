#ifndef BW1_DECOMP_SECRET_CREATURE_INCLUDED_H
#define BW1_DECOMP_SECRET_CREATURE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

// Forward Declares

struct SecretCreature;

struct SecretCreatureVftable
{
  void (__fastcall* __dt)(struct SecretCreature* this);  /* 0x0 */
};
static_assert(sizeof(struct SecretCreatureVftable) == 0x4, "Data type is of wrong size");

struct SecretCreature
{
  struct SecretCreatureVftable* vftable;  /* 0x0 */
};
static_assert(sizeof(struct SecretCreature) == 0x4, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c20bb8 mac inlined SecretCreature::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__14SecretCreature asm("??_R0?AVSecretCreature@@@8");
// win1.41 009b9018 mac inlined SecretCreature::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__14SecretCreature asm("??_R1A@?0A@A@SecretCreature@@8");
// win1.41 009b9030 mac inlined SecretCreature::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__14SecretCreature asm("??_R2SecretCreature@@8");
// win1.41 009b9038 mac inlined SecretCreature::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__14SecretCreature asm("??_R3SecretCreature@@8");
// win1.41 0095726c mac 1075ac64 SecretCreature::`vftable'
extern const struct SecretCreatureVftable __vt__14SecretCreature asm("??_7SecretCreature@@6B@");

// Override methods

// win1.41 00711d60 mac 101441a0 SecretCreature::_dt(void)
void __fastcall __dt__14SecretCreatureFv(struct SecretCreature* this) asm("??_GSecretCreature@@UAEPAXI@Z");

#endif /* BW1_DECOMP_SECRET_CREATURE_INCLUDED_H */
