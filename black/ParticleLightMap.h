#ifndef BW1_DECOMP_PARTICLE_LIGHT_MAP_INCLUDED_H
#define BW1_DECOMP_PARTICLE_LIGHT_MAP_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "PSysRenderParticle.h" /* For struct RenderParticle */

// Forward Declares

struct Base;
struct GameOSFile;
struct GameThing;

struct ParticleLightMap
{
  struct RenderParticle super;  /* 0x0 */
};
static_assert(sizeof(struct ParticleLightMap) == 0x18, "Data type is of wrong size");

// Override methods

// win1.41 006ca450 mac 10423560 ParticleLightMap::_dt(void)
void __fastcall __dt__16ParticleLightMapFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GParticleLightMap@@UAEPAXI@Z");
// win1.41 006ca440 mac 10423650 ParticleLightMap::GetDebugText(void)
char* __fastcall GetDebugText__16ParticleLightMapFv(struct GameThing* this) asm("?GetDebugText@ParticleLightMap@@UAEPADXZ");
// win1.41 00695180 mac 1041c890 ParticleLightMap::Load(GameOSFile &)
uint32_t __fastcall Load__16ParticleLightMapFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@ParticleLightMap@@UAEIAAVGameOSFile@@@Z");

#endif /* BW1_DECOMP_PARTICLE_LIGHT_MAP_INCLUDED_H */
