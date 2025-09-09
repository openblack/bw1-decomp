#ifndef BW1_DECOMP_PARTICLE_3D_OBJ_ANIM_TEXTURED_INCLUDED_H
#define BW1_DECOMP_PARTICLE_3D_OBJ_ANIM_TEXTURED_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "Particle3DObj.h" /* For struct Particle3DObj */

// Forward Declares

struct Base;

struct Particle3DObjAnimTextured
{
  struct Particle3DObj super;  /* 0x0 */
};
static_assert(sizeof(struct Particle3DObjAnimTextured) == 0x18, "Data type is of wrong size");

// Override methods

// win1.41 006c7e40 mac inlined Particle3DObjAnimTextured::_dt(void)
void __fastcall __dt__25Particle3DObjAnimTexturedFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GParticle3DObjAnimTextured@@UAEPAXI@Z");

#endif /* BW1_DECOMP_PARTICLE_3D_OBJ_ANIM_TEXTURED_INCLUDED_H */
