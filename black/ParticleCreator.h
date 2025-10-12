#ifndef BW1_DECOMP_PARTICLE_CREATOR_INCLUDED_H
#define BW1_DECOMP_PARTICLE_CREATOR_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "Persistent.h" /* For struct Persistent */

// Forward Declares

struct PropertyList;

struct ParticleCreator
{
  struct Persistent super;  /* 0x0 */
};
static_assert(sizeof(struct ParticleCreator) == 0x4, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c02180 mac inlined ParticleCreator::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__15ParticleCreator asm("??_R0?AVParticleCreator@@@8");
// win1.41 009b4d68 mac inlined ParticleCreator::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__15ParticleCreator asm("??_R1A@?0A@A@ParticleCreator@@8");
// win1.41 009b4ed0 mac inlined ParticleCreator::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__15ParticleCreator asm("??_R2ParticleCreator@@8");
// win1.41 009b4ee0 mac inlined ParticleCreator::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__15ParticleCreator asm("??_R3ParticleCreator@@8");

// Override methods

// win1.41 006a9400 mac 103dfee0 ParticleCreator::_dt(void)
void __fastcall __dt__15ParticleCreatorFv(struct Persistent* this) asm("??_GParticleCreator@@UAEPAXI@Z");
// win1.41 006b34c0 mac 10457740 ParticleCreator::DefineProperties(PropertyList *)
void __fastcall DefineProperties__15ParticleCreatorFP12PropertyList(struct Persistent* this, const void* edx, struct PropertyList* param_1) asm("?DefineProperties@ParticleCreator@@UAEXPAUPropertyList@@@Z");

#endif /* BW1_DECOMP_PARTICLE_CREATOR_INCLUDED_H */
