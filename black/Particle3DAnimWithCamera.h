#ifndef BW1_DECOMP_PARTICLE_3D_ANIM_WITH_CAMERA_INCLUDED_H
#define BW1_DECOMP_PARTICLE_3D_ANIM_WITH_CAMERA_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "Particle3DAnim.h" /* For struct Particle3DAnim */

// Forward Declares

struct Base;

struct Particle3DAnimWithCamera
{
  struct Particle3DAnim super;  /* 0x0 */
};
static_assert(sizeof(struct Particle3DAnimWithCamera) == 0x18, "Data type is of wrong size");

// Override methods

// win1.41 006c8680 mac inlined Particle3DAnimWithCamera::_dt(void)
void __fastcall __dt__24Particle3DAnimWithCameraFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GParticle3DAnimWithCamera@@UAEPAXI@Z");

#endif /* BW1_DECOMP_PARTICLE_3D_ANIM_WITH_CAMERA_INCLUDED_H */
