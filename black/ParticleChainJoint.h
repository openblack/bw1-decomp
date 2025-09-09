#ifndef BW1_DECOMP_PARTICLE_CHAIN_JOINT_INCLUDED_H
#define BW1_DECOMP_PARTICLE_CHAIN_JOINT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "PSysRenderParticle.h" /* For struct RenderParticle */

// Forward Declares

struct Base;
struct GameOSFile;
struct GameThing;

struct ParticleChainJoint
{
  struct RenderParticle super;  /* 0x0 */
};
static_assert(sizeof(struct ParticleChainJoint) == 0x18, "Data type is of wrong size");

// Override methods

// win1.41 0055f0e0 mac 10422de0 ParticleChainJoint::_dt(void)
void __fastcall __dt__18ParticleChainJointFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GParticleChainJoint@@UAEPAXI@Z");
// win1.41 0055f0d0 mac 10422da0 ParticleChainJoint::GetDebugText(void)
char* __fastcall GetDebugText__18ParticleChainJointFv(struct GameThing* this) asm("?GetDebugText@ParticleChainJoint@@UAEPADXZ");
// win1.41 006959d0 mac 1041c0e0 ParticleChainJoint::Load(GameOSFile &)
uint32_t __fastcall Load__18ParticleChainJointFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@ParticleChainJoint@@UAEIAAVGameOSFile@@@Z");
// win1.41 006cc540 mac 10483800 ParticleChainJoint::Save(GameOSFile &)
uint32_t __fastcall Save__18ParticleChainJointFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@ParticleChainJoint@@UAEIAAVGameOSFile@@@Z");
// win1.41 0055f0c0 mac 10422d60 ParticleChainJoint::GetSaveType(void)
uint32_t __fastcall GetSaveType__18ParticleChainJointFv(struct GameThing* this) asm("?GetSaveType@ParticleChainJoint@@UAEIXZ");

#endif /* BW1_DECOMP_PARTICLE_CHAIN_JOINT_INCLUDED_H */
