#ifndef BW1_DECOMP_P_SYS_P_CREATOR_INCLUDED_H
#define BW1_DECOMP_P_SYS_P_CREATOR_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "PSysRenderParticle.h" /* For struct RenderParticle */

// Forward Declares

struct Base;
struct GameOSFile;
struct GameThing;

struct RenderParticleCreatureRef
{
  struct RenderParticle super;  /* 0x0 */
};
static_assert(sizeof(struct RenderParticleCreatureRef) == 0x18, "Data type is of wrong size");

// Override methods

// win1.41 006c7ee0 mac 10423140 RenderParticleCreatureRef::_dt(void)
void __fastcall __dt__25RenderParticleCreatureRefFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GRenderParticleCreatureRef@@UAEPAXI@Z");
// win1.41 006c7ec0 mac 10423240 RenderParticleCreatureRef::GetDebugText(void)
char* __fastcall GetDebugText__25RenderParticleCreatureRefFv(struct GameThing* this) asm("?GetDebugText@RenderParticleCreatureRef@@UAEPADXZ");

struct RenderParticleGJMesh
{
  struct RenderParticle super;  /* 0x0 */
};
static_assert(sizeof(struct RenderParticleGJMesh) == 0x18, "Data type is of wrong size");

// Override methods

// win1.41 006c8ac0 mac 1047b4f0 RenderParticleGJMesh::_dt(void)
void __fastcall __dt__20RenderParticleGJMeshFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GRenderParticleGJMesh@@UAEPAXI@Z");

struct RenderParticleGJMeshRotatingUV
{
  struct RenderParticleGJMesh super;  /* 0x0 */
};
static_assert(sizeof(struct RenderParticleGJMeshRotatingUV) == 0x18, "Data type is of wrong size");

// Override methods

// win1.41 006c8b90 mac 1047b340 RenderParticleGJMeshRotatingUV::_dt(void)
void __fastcall __dt__30RenderParticleGJMeshRotatingUVFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GRenderParticleGJMeshRotatingUV@@UAEPAXI@Z");

struct RenderParticleGameObject
{
  struct RenderParticle super;  /* 0x0 */
};
static_assert(sizeof(struct RenderParticleGameObject) == 0x18, "Data type is of wrong size");

// Override methods

// win1.41 006c9ed0 mac 10479800 RenderParticleGameObject::_dt(void)
void __fastcall __dt__24RenderParticleGameObjectFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GRenderParticleGameObject@@UAEPAXI@Z");
// win1.41 006c9ec0 mac 10422f20 RenderParticleGameObject::GetDebugText(void)
char* __fastcall GetDebugText__24RenderParticleGameObjectFv(struct GameThing* this) asm("?GetDebugText@RenderParticleGameObject@@UAEPADXZ");

struct RenderParticleGameObjectRef
{
  struct RenderParticle super;  /* 0x0 */
};
static_assert(sizeof(struct RenderParticleGameObjectRef) == 0x18, "Data type is of wrong size");

// Override methods

// win1.41 006c8130 mac 1047ca40 RenderParticleGameObjectRef::_dt(void)
void __fastcall __dt__27RenderParticleGameObjectRefFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GRenderParticleGameObjectRef@@UAEPAXI@Z");
// win1.41 006c8120 mac 104230f0 RenderParticleGameObjectRef::GetDebugText(void)
char* __fastcall GetDebugText__27RenderParticleGameObjectRefFv(struct GameThing* this) asm("?GetDebugText@RenderParticleGameObjectRef@@UAEPADXZ");
// win1.41 006957e0 mac 1041c390 RenderParticleGameObjectRef::Load(GameOSFile &)
uint32_t __fastcall Load__27RenderParticleGameObjectRefFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@RenderParticleGameObjectRef@@UAEIAAVGameOSFile@@@Z");

struct RenderParticleGoldenShower
{
  struct RenderParticleGameObjectRef super;  /* 0x0 */
};
static_assert(sizeof(struct RenderParticleGoldenShower) == 0x18, "Data type is of wrong size");

// Override methods

// win1.41 0055efe0 mac 1047cc80 RenderParticleGoldenShower::_dt(void)
void __fastcall __dt__26RenderParticleGoldenShowerFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GRenderParticleGoldenShower@@UAEPAXI@Z");
// win1.41 0055efd0 mac 10423050 RenderParticleGoldenShower::GetDebugText(void)
char* __fastcall GetDebugText__26RenderParticleGoldenShowerFv(struct GameThing* this) asm("?GetDebugText@RenderParticleGoldenShower@@UAEPADXZ");

struct RenderParticleMist
{
  struct RenderParticle super;  /* 0x0 */
};
static_assert(sizeof(struct RenderParticleMist) == 0x18, "Data type is of wrong size");

// Override methods

// win1.41 006c9cc0 mac 1047a330 RenderParticleMist::_dt(void)
void __fastcall __dt__18RenderParticleMistFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GRenderParticleMist@@UAEPAXI@Z");
// win1.41 006c9cb0 mac 104236d0 RenderParticleMist::GetDebugText(void)
char* __fastcall GetDebugText__18RenderParticleMistFv(struct GameThing* this) asm("?GetDebugText@RenderParticleMist@@UAEPADXZ");

struct RenderParticleVolBlendMesh
{
  struct RenderParticle super;  /* 0x0 */
};
static_assert(sizeof(struct RenderParticleVolBlendMesh) == 0x18, "Data type is of wrong size");

// Override methods

// win1.41 006ca750 mac 10478c70 RenderParticleVolBlendMesh::_dt(void)
void __fastcall __dt__26RenderParticleVolBlendMeshFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GRenderParticleVolBlendMesh@@UAEPAXI@Z");

#endif /* BW1_DECOMP_P_SYS_P_CREATOR_INCLUDED_H */
