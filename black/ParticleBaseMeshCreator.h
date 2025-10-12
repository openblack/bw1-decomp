#ifndef BW1_DECOMP_PARTICLE_BASE_MESH_CREATOR_INCLUDED_H
#define BW1_DECOMP_PARTICLE_BASE_MESH_CREATOR_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "ParticleCreator.h" /* For struct ParticleCreator */

// Forward Declares

struct Persistent;
struct PropertyList;

struct ParticleBaseMeshCreator
{
  struct ParticleCreator super;  /* 0x0 */
};
static_assert(sizeof(struct ParticleBaseMeshCreator) == 0x4, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c04830 mac inlined ParticleBaseMeshCreator::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__23ParticleBaseMeshCreator asm("??_R0?AVParticleBaseMeshCreator@@@8");
// win1.41 009b4d80 mac inlined ParticleBaseMeshCreator::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__23ParticleBaseMeshCreator asm("??_R1A@?0A@A@ParticleBaseMeshCreator@@8");
// win1.41 009b4d98 mac inlined ParticleBaseMeshCreator::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__23ParticleBaseMeshCreator asm("??_R2ParticleBaseMeshCreator@@8");
// win1.41 009b4da8 mac inlined ParticleBaseMeshCreator::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__23ParticleBaseMeshCreator asm("??_R3ParticleBaseMeshCreator@@8");

// Override methods

// win1.41 006a8900 mac 1043f270 ParticleBaseMeshCreator::_dt(void)
void __fastcall __dt__23ParticleBaseMeshCreatorFv(struct Persistent* this) asm("??_GParticleBaseMeshCreator@@UAEPAXI@Z");
// win1.41 006b37a0 mac 10457110 ParticleBaseMeshCreator::DefineProperties(PropertyList *)
void __fastcall DefineProperties__23ParticleBaseMeshCreatorFP12PropertyList(struct Persistent* this, const void* edx, struct PropertyList* param_1) asm("?DefineProperties@ParticleBaseMeshCreator@@UAEXPAUPropertyList@@@Z");

#endif /* BW1_DECOMP_PARTICLE_BASE_MESH_CREATOR_INCLUDED_H */
