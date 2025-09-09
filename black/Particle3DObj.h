#ifndef BW1_DECOMP_PARTICLE_3D_OBJ_INCLUDED_H
#define BW1_DECOMP_PARTICLE_3D_OBJ_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "PSysRenderParticle.h" /* For struct RenderParticle */

// Forward Declares

struct Base;
struct GameThing;

struct Particle3DObj
{
  struct RenderParticle super;  /* 0x0 */
};
static_assert(sizeof(struct Particle3DObj) == 0x18, "Data type is of wrong size");

// Override methods

// win1.41 006c7a60 mac inlined Particle3DObj::_dt(void)
void __fastcall __dt__13Particle3DObjFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GParticle3DObj@@UAEPAXI@Z");
// win1.41 006c7a50 mac inlined Particle3DObj::GetDebugText(void)
char* __fastcall GetDebugText__13Particle3DObjFv(struct GameThing* this) asm("?GetDebugText@Particle3DObj@@UAEPADXZ");

#endif /* BW1_DECOMP_PARTICLE_3D_OBJ_INCLUDED_H */
