#ifndef BW1_DECOMP_PARTICLE_3D_ANIM_INCLUDED_H
#define BW1_DECOMP_PARTICLE_3D_ANIM_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "PSysRenderParticle.h" /* For struct RenderParticle */

// Forward Declares

struct Base;
struct GameThing;

struct Particle3DAnim
{
  struct RenderParticle super;  /* 0x0 */
};
static_assert(sizeof(struct Particle3DAnim) == 0x18, "Data type is of wrong size");

// Override methods

// win1.41 006c85a0 mac inlined Particle3DAnim::_dt(void)
void __fastcall __dt__14Particle3DAnimFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GParticle3DAnim@@UAEPAXI@Z");
// win1.41 006c8580 mac inlined Particle3DAnim::GetDebugText(void)
char* __fastcall GetDebugText__14Particle3DAnimFv(struct GameThing* this) asm("?GetDebugText@Particle3DAnim@@UAEPADXZ");

#endif /* BW1_DECOMP_PARTICLE_3D_ANIM_INCLUDED_H */
