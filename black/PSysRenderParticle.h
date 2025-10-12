#ifndef BW1_DECOMP_P_SYS_RENDER_PARTICLE_INCLUDED_H
#define BW1_DECOMP_P_SYS_RENDER_PARTICLE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

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

// Object Oriented datastructures

// win1.41 00bed540 mac inlined RenderParticle::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__14RenderParticle asm("??_R0?AVRenderParticle@@@8");
// win1.41 009aed38 mac inlined RenderParticle::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__14RenderParticle asm("??_R1A@?0A@A@RenderParticle@@8");
// win1.41 009aeda8 mac inlined RenderParticle::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__14RenderParticle asm("??_R2RenderParticle@@8");
// win1.41 009aedc0 mac inlined RenderParticle::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__14RenderParticle asm("??_R3RenderParticle@@8");
// win1.41 008fac38 mac 109b6a34 RenderParticle::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__14RenderParticle asm("??_R4RenderParticle@@6B@");
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
