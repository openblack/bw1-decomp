#ifndef BW1_DECOMP_P_SYS_RENDER_PARTICLE_INCLUDED_H
#define BW1_DECOMP_P_SYS_RENDER_PARTICLE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "PSysBase.h" /* For struct PSysBase */

// Forward Declares

struct Base;
struct GameOSFile;
struct GameThing;

struct RenderParticle
{
  struct PSysBase super;  /* 0x0 */
  uint32_t field_0x14;
};
static_assert(sizeof(struct RenderParticle) == 0x18, "Data type is of wrong size");

// win1.41 008fac38 mac 109b6a34 RenderParticle::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__14RenderParticle asm("??_R4RenderParticle@@6B@");

// win1.41 008fac3c mac 109b6a54 RenderParticle::`vftable'
extern const struct GameThingVftable __vt__14RenderParticle asm("??_7RenderParticle@@6B@");

// Override methods

// win1.41 0055ef70 mac 1030afe0 RenderParticle::_dt(void)
void __fastcall __dt__14RenderParticleFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GRenderParticle@@UAEPAXI@Z");
// win1.41 0055ef60 mac 10423970 RenderParticle::GetDebugText(void)
char* __fastcall GetDebugText__14RenderParticleFv(struct GameThing* this) asm("?GetDebugText@RenderParticle@@UAEPADXZ");
// win1.41 00694fb0 mac 1041cb70 RenderParticle::Load(GameOSFile &)
uint32_t __fastcall Load__14RenderParticleFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@RenderParticle@@UAEIAAVGameOSFile@@@Z");
// win1.41 006cbad0 mac 10484260 RenderParticle::Save(GameOSFile &)
uint32_t __fastcall Save__14RenderParticleFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@RenderParticle@@UAEIAAVGameOSFile@@@Z");
// win1.41 0055ef50 mac 10423930 RenderParticle::GetSaveType(void)
uint32_t __fastcall GetSaveType__14RenderParticleFv(struct GameThing* this) asm("?GetSaveType@RenderParticle@@UAEIXZ");

#endif /* BW1_DECOMP_P_SYS_RENDER_PARTICLE_INCLUDED_H */
