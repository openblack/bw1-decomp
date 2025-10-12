#ifndef BW1_DECOMP_PARTICLE_3D_OBJ_INCLUDED_H
#define BW1_DECOMP_PARTICLE_3D_OBJ_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "PSysRenderParticle.h" /* For struct RenderParticle */

// Forward Declares

struct Base;
struct GameThing;

struct Particle3DObj
{
  struct RenderParticle super;  /* 0x0 */
};
static_assert(sizeof(struct Particle3DObj) == 0x18, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c094c8 mac inlined Particle3DObj::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__13Particle3DObj asm("??_R0?AVParticle3DObj@@@8");
// win1.41 009b7e50 mac inlined Particle3DObj::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__13Particle3DObj asm("??_R1A@?0A@A@Particle3DObj@@8");
// win1.41 009b7e68 mac inlined Particle3DObj::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__13Particle3DObj asm("??_R2Particle3DObj@@8");
// win1.41 009b7e88 mac inlined Particle3DObj::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__13Particle3DObj asm("??_R3Particle3DObj@@8");

// Override methods

// win1.41 006c7a60 mac inlined Particle3DObj::_dt(void)
void __fastcall __dt__13Particle3DObjFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GParticle3DObj@@UAEPAXI@Z");
// win1.41 006c7a50 mac inlined Particle3DObj::GetDebugText(void)
char* __fastcall GetDebugText__13Particle3DObjFv(struct GameThing* this) asm("?GetDebugText@Particle3DObj@@UAEPADXZ");

#endif /* BW1_DECOMP_PARTICLE_3D_OBJ_INCLUDED_H */
