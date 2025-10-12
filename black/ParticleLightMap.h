#ifndef BW1_DECOMP_PARTICLE_LIGHT_MAP_INCLUDED_H
#define BW1_DECOMP_PARTICLE_LIGHT_MAP_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

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

// Object Oriented datastructures

// win1.41 00c09690 mac inlined ParticleLightMap::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__16ParticleLightMap asm("??_R0?AVParticleLightMap@@@8");
// win1.41 009b8290 mac inlined ParticleLightMap::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__16ParticleLightMap asm("??_R1A@?0A@A@ParticleLightMap@@8");
// win1.41 009b82a8 mac inlined ParticleLightMap::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__16ParticleLightMap asm("??_R2ParticleLightMap@@8");
// win1.41 009b82c0 mac inlined ParticleLightMap::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__16ParticleLightMap asm("??_R3ParticleLightMap@@8");

// Override methods

// win1.41 006ca450 mac 10423560 ParticleLightMap::_dt(void)
void __fastcall __dt__16ParticleLightMapFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GParticleLightMap@@UAEPAXI@Z");
// win1.41 006ca440 mac 10423650 ParticleLightMap::GetDebugText(void)
char* __fastcall GetDebugText__16ParticleLightMapFv(struct GameThing* this) asm("?GetDebugText@ParticleLightMap@@UAEPADXZ");
// win1.41 00695180 mac 1041c890 ParticleLightMap::Load(GameOSFile &)
uint32_t __fastcall Load__16ParticleLightMapFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@ParticleLightMap@@UAEIAAVGameOSFile@@@Z");

#endif /* BW1_DECOMP_PARTICLE_LIGHT_MAP_INCLUDED_H */
