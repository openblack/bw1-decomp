#ifndef BW1_DECOMP_PARTICLE_3D_PNT_INCLUDED_H
#define BW1_DECOMP_PARTICLE_3D_PNT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

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

// Object Oriented datastructures

// win1.41 00bed560 mac inlined Particle3DPnt::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__13Particle3DPnt asm("??_R0?AVParticle3DPnt@@@8");
// win1.41 009aed50 mac inlined Particle3DPnt::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__13Particle3DPnt asm("??_R1A@?0A@A@Particle3DPnt@@8");
// win1.41 009aed68 mac inlined Particle3DPnt::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__13Particle3DPnt asm("??_R2Particle3DPnt@@8");
// win1.41 009aed80 mac inlined Particle3DPnt::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__13Particle3DPnt asm("??_R3Particle3DPnt@@8");

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
