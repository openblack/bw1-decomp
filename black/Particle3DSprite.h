#ifndef BW1_DECOMP_PARTICLE_3D_SPRITE_INCLUDED_H
#define BW1_DECOMP_PARTICLE_3D_SPRITE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

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

// Object Oriented datastructures

// win1.41 00bed5e0 mac inlined Particle3DSprite::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__16Particle3DSprite asm("??_R0?AVParticle3DSprite@@@8");
// win1.41 009aee60 mac inlined Particle3DSprite::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__16Particle3DSprite asm("??_R1A@?0A@A@Particle3DSprite@@8");
// win1.41 009aee78 mac inlined Particle3DSprite::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__16Particle3DSprite asm("??_R2Particle3DSprite@@8");
// win1.41 009aee90 mac inlined Particle3DSprite::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__16Particle3DSprite asm("??_R3Particle3DSprite@@8");

// Override methods

// win1.41 0055f070 mac inlined Particle3DSprite::_dt(void)
void __fastcall __dt__16Particle3DSpriteFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GParticle3DSprite@@UAEPAXI@Z");
// win1.41 0055f050 mac inlined Particle3DSprite::GetDebugText(void)
char* __fastcall GetDebugText__16Particle3DSpriteFv(struct GameThing* this) asm("?GetDebugText@Particle3DSprite@@UAEPADXZ");
// win1.41 00695ac0 mac inlined Particle3DSprite::Load(GameOSFile &)
uint32_t __fastcall Load__16Particle3DSpriteFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@Particle3DSprite@@UAEIAAVGameOSFile@@@Z");

#endif /* BW1_DECOMP_PARTICLE_3D_SPRITE_INCLUDED_H */
