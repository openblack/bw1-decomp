#ifndef BW1_DECOMP_PARTICLE_3D_SPRITE_INCLUDED_H
#define BW1_DECOMP_PARTICLE_3D_SPRITE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "PSysRenderParticle.h" /* For struct RenderParticle */

// Forward Declares

struct Base;
struct GameOSFile;
struct GameThing;

struct Particle3DSprite
{
  struct RenderParticle super;  /* 0x0 */
};
static_assert(sizeof(struct Particle3DSprite) == 0x18, "Data type is of wrong size");

// Override methods

// win1.41 0055f070 mac inlined Particle3DSprite::_dt(void)
void __fastcall __dt__16Particle3DSpriteFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GParticle3DSprite@@UAEPAXI@Z");
// win1.41 0055f050 mac inlined Particle3DSprite::GetDebugText(void)
char* __fastcall GetDebugText__16Particle3DSpriteFv(struct GameThing* this) asm("?GetDebugText@Particle3DSprite@@UAEPADXZ");
// win1.41 00695ac0 mac inlined Particle3DSprite::Load(GameOSFile &)
uint32_t __fastcall Load__16Particle3DSpriteFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@Particle3DSprite@@UAEIAAVGameOSFile@@@Z");

#endif /* BW1_DECOMP_PARTICLE_3D_SPRITE_INCLUDED_H */
