#ifndef BW1_DECOMP_PARTICLE_3D_ANIM_WITH_CAMERA_INCLUDED_H
#define BW1_DECOMP_PARTICLE_3D_ANIM_WITH_CAMERA_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "Particle3DAnim.h" /* For struct Particle3DAnim */

// Forward Declares

struct Base;

struct Particle3DAnimWithCamera
{
  struct Particle3DAnim super;  /* 0x0 */
};
static_assert(sizeof(struct Particle3DAnimWithCamera) == 0x18, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c09558 mac inlined Particle3DAnimWithCamera::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__24Particle3DAnimWithCamera asm("??_R0?AVParticle3DAnimWithCamera@@@8");
// win1.41 009b8000 mac inlined Particle3DAnimWithCamera::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__24Particle3DAnimWithCamera asm("??_R1A@?0A@A@Particle3DAnimWithCamera@@8");
// win1.41 009b8018 mac inlined Particle3DAnimWithCamera::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__24Particle3DAnimWithCamera asm("??_R2Particle3DAnimWithCamera@@8");
// win1.41 009b8038 mac inlined Particle3DAnimWithCamera::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__24Particle3DAnimWithCamera asm("??_R3Particle3DAnimWithCamera@@8");

// Override methods

// win1.41 006c8680 mac inlined Particle3DAnimWithCamera::_dt(void)
void __fastcall __dt__24Particle3DAnimWithCameraFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GParticle3DAnimWithCamera@@UAEPAXI@Z");

#endif /* BW1_DECOMP_PARTICLE_3D_ANIM_WITH_CAMERA_INCLUDED_H */
