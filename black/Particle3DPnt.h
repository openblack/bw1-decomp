#ifndef BW1_DECOMP_PARTICLE_3D_PNT_INCLUDED_H
#define BW1_DECOMP_PARTICLE_3D_PNT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "PSysRenderParticle.h" /* For struct RenderParticle */

// Forward Declares

struct Base;
struct GameOSFile;
struct GameThing;

struct Particle3DPnt
{
  struct RenderParticle super;  /* 0x0 */
};
static_assert(sizeof(struct Particle3DPnt) == 0x18, "Data type is of wrong size");

// Override methods

// win1.41 0055ef20 mac inlined Particle3DPnt::_dt(void)
void __fastcall __dt__13Particle3DPntFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GParticle3DPnt@@UAEPAXI@Z");
// win1.41 0055ef00 mac inlined Particle3DPnt::GetDebugText(void)
char* __fastcall GetDebugText__13Particle3DPntFv(struct GameThing* this) asm("?GetDebugText@Particle3DPnt@@UAEPADXZ");
// win1.41 00695010 mac inlined Particle3DPnt::Load(GameOSFile &)
uint32_t __fastcall Load__13Particle3DPntFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@Particle3DPnt@@UAEIAAVGameOSFile@@@Z");
// win1.41 006cbb30 mac inlined Particle3DPnt::Save(GameOSFile &)
uint32_t __fastcall Save__13Particle3DPntFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@Particle3DPnt@@UAEIAAVGameOSFile@@@Z");
// win1.41 0055eef0 mac inlined Particle3DPnt::GetSaveType(void)
uint32_t __fastcall GetSaveType__13Particle3DPntFv(struct GameThing* this) asm("?GetSaveType@Particle3DPnt@@UAEIXZ");

#endif /* BW1_DECOMP_PARTICLE_3D_PNT_INCLUDED_H */
