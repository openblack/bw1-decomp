#ifndef BW1_DECOMP_P_SYS_P_CREATOR_INCLUDED_H
#define BW1_DECOMP_P_SYS_P_CREATOR_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

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

// Object Oriented datastructures

// win1.41 00c09510 mac inlined RenderParticleCreatureRef::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__25RenderParticleCreatureRef asm("??_R0?AVRenderParticleCreatureRef@@@8");
// win1.41 009b7f10 mac inlined RenderParticleCreatureRef::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__25RenderParticleCreatureRef asm("??_R1A@?0A@A@RenderParticleCreatureRef@@8");
// win1.41 009b7f28 mac inlined RenderParticleCreatureRef::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__25RenderParticleCreatureRef asm("??_R2RenderParticleCreatureRef@@8");
// win1.41 009b7f40 mac inlined RenderParticleCreatureRef::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__25RenderParticleCreatureRef asm("??_R3RenderParticleCreatureRef@@8");

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

// Object Oriented datastructures

// win1.41 00c095c0 mac inlined RenderParticleGJMesh::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__20RenderParticleGJMesh asm("??_R0?AVRenderParticleGJMesh@@@8");
// win1.41 009b80d0 mac inlined RenderParticleGJMesh::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__20RenderParticleGJMesh asm("??_R1A@?0A@A@RenderParticleGJMesh@@8");
// win1.41 009b80e8 mac inlined RenderParticleGJMesh::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__20RenderParticleGJMesh asm("??_R2RenderParticleGJMesh@@8");
// win1.41 009b8100 mac inlined RenderParticleGJMesh::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__20RenderParticleGJMesh asm("??_R3RenderParticleGJMesh@@8");

// Override methods

// win1.41 006c8ac0 mac 1047b4f0 RenderParticleGJMesh::_dt(void)
void __fastcall __dt__20RenderParticleGJMeshFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GRenderParticleGJMesh@@UAEPAXI@Z");

struct RenderParticleGJMeshRotatingUV
{
  struct RenderParticleGJMesh super;  /* 0x0 */
};
static_assert(sizeof(struct RenderParticleGJMeshRotatingUV) == 0x18, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c095e8 mac inlined RenderParticleGJMeshRotatingUV::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__30RenderParticleGJMeshRotatingUV asm("??_R0?AVRenderParticleGJMeshRotatingUV@@@8");
// win1.41 009b8128 mac inlined RenderParticleGJMeshRotatingUV::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__30RenderParticleGJMeshRotatingUV asm("??_R1A@?0A@A@RenderParticleGJMeshRotatingUV@@8");
// win1.41 009b8140 mac inlined RenderParticleGJMeshRotatingUV::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__30RenderParticleGJMeshRotatingUV asm("??_R2RenderParticleGJMeshRotatingUV@@8");
// win1.41 009b8160 mac inlined RenderParticleGJMeshRotatingUV::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__30RenderParticleGJMeshRotatingUV asm("??_R3RenderParticleGJMeshRotatingUV@@8");

// Override methods

// win1.41 006c8b90 mac 1047b340 RenderParticleGJMeshRotatingUV::_dt(void)
void __fastcall __dt__30RenderParticleGJMeshRotatingUVFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GRenderParticleGJMeshRotatingUV@@UAEPAXI@Z");

struct RenderParticleGameObject
{
  struct RenderParticle super;  /* 0x0 */
};
static_assert(sizeof(struct RenderParticleGameObject) == 0x18, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c09668 mac inlined RenderParticleGameObject::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__24RenderParticleGameObject asm("??_R0?AVRenderParticleGameObject@@@8");
// win1.41 009b8238 mac inlined RenderParticleGameObject::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__24RenderParticleGameObject asm("??_R1A@?0A@A@RenderParticleGameObject@@8");
// win1.41 009b8250 mac inlined RenderParticleGameObject::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__24RenderParticleGameObject asm("??_R2RenderParticleGameObject@@8");
// win1.41 009b8268 mac inlined RenderParticleGameObject::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__24RenderParticleGameObject asm("??_R3RenderParticleGameObject@@8");

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

// Object Oriented datastructures

// win1.41 00bed580 mac inlined RenderParticleGameObjectRef::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__27RenderParticleGameObjectRef asm("??_R0?AVRenderParticleGameObjectRef@@@8");
// win1.41 009aede8 mac inlined RenderParticleGameObjectRef::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__27RenderParticleGameObjectRef asm("??_R1A@?0A@A@RenderParticleGameObjectRef@@8");
// win1.41 009b7f68 mac inlined RenderParticleGameObjectRef::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__27RenderParticleGameObjectRef asm("??_R2RenderParticleGameObjectRef@@8");
// win1.41 009b7f80 mac inlined RenderParticleGameObjectRef::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__27RenderParticleGameObjectRef asm("??_R3RenderParticleGameObjectRef@@8");

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

// Object Oriented datastructures

// win1.41 00bed5b0 mac inlined RenderParticleGoldenShower::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__26RenderParticleGoldenShower asm("??_R0?AVRenderParticleGoldenShower@@@8");
// win1.41 009aee00 mac inlined RenderParticleGoldenShower::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__26RenderParticleGoldenShower asm("??_R1A@?0A@A@RenderParticleGoldenShower@@8");
// win1.41 009aee18 mac inlined RenderParticleGoldenShower::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__26RenderParticleGoldenShower asm("??_R2RenderParticleGoldenShower@@8");
// win1.41 009aee38 mac inlined RenderParticleGoldenShower::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__26RenderParticleGoldenShower asm("??_R3RenderParticleGoldenShower@@8");

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

// Object Oriented datastructures

// win1.41 00c09618 mac inlined RenderParticleMist::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__18RenderParticleMist asm("??_R0?AVRenderParticleMist@@@8");
// win1.41 009b8188 mac inlined RenderParticleMist::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__18RenderParticleMist asm("??_R1A@?0A@A@RenderParticleMist@@8");
// win1.41 009b81a0 mac inlined RenderParticleMist::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__18RenderParticleMist asm("??_R2RenderParticleMist@@8");
// win1.41 009b81b8 mac inlined RenderParticleMist::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__18RenderParticleMist asm("??_R3RenderParticleMist@@8");

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

// Object Oriented datastructures

// win1.41 00c096b0 mac inlined RenderParticleVolBlendMesh::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__26RenderParticleVolBlendMesh asm("??_R0?AVRenderParticleVolBlendMesh@@@8");
// win1.41 009b82e8 mac inlined RenderParticleVolBlendMesh::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__26RenderParticleVolBlendMesh asm("??_R1A@?0A@A@RenderParticleVolBlendMesh@@8");
// win1.41 009b8300 mac inlined RenderParticleVolBlendMesh::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__26RenderParticleVolBlendMesh asm("??_R2RenderParticleVolBlendMesh@@8");
// win1.41 009b8318 mac inlined RenderParticleVolBlendMesh::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__26RenderParticleVolBlendMesh asm("??_R3RenderParticleVolBlendMesh@@8");

// Override methods

// win1.41 006ca750 mac 10478c70 RenderParticleVolBlendMesh::_dt(void)
void __fastcall __dt__26RenderParticleVolBlendMeshFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GRenderParticleVolBlendMesh@@UAEPAXI@Z");

#endif /* BW1_DECOMP_P_SYS_P_CREATOR_INCLUDED_H */
