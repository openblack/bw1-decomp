#ifndef BW1_DECOMP_PARTICLE_3D_OBJ_ANIM_TEXTURED_INCLUDED_H
#define BW1_DECOMP_PARTICLE_3D_OBJ_ANIM_TEXTURED_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "Particle3DObj.h" /* For struct Particle3DObj */

// Forward Declares

struct Base;

struct Particle3DObjAnimTextured
{
  struct Particle3DObj super;  /* 0x0 */
};
static_assert(sizeof(struct Particle3DObjAnimTextured) == 0x18, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c094e8 mac inlined Particle3DObjAnimTextured::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__25Particle3DObjAnimTextured asm("??_R0?AVParticle3DObjAnimTextured@@@8");
// win1.41 009b7eb0 mac inlined Particle3DObjAnimTextured::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__25Particle3DObjAnimTextured asm("??_R1A@?0A@A@Particle3DObjAnimTextured@@8");
// win1.41 009b7ec8 mac inlined Particle3DObjAnimTextured::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__25Particle3DObjAnimTextured asm("??_R2Particle3DObjAnimTextured@@8");
// win1.41 009b7ee8 mac inlined Particle3DObjAnimTextured::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__25Particle3DObjAnimTextured asm("??_R3Particle3DObjAnimTextured@@8");

// Override methods

// win1.41 006c7e40 mac inlined Particle3DObjAnimTextured::_dt(void)
void __fastcall __dt__25Particle3DObjAnimTexturedFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GParticle3DObjAnimTextured@@UAEPAXI@Z");

#endif /* BW1_DECOMP_PARTICLE_3D_OBJ_ANIM_TEXTURED_INCLUDED_H */
