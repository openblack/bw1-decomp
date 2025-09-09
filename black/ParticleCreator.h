#ifndef BW1_DECOMP_PARTICLE_CREATOR_INCLUDED_H
#define BW1_DECOMP_PARTICLE_CREATOR_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "Persistent.h" /* For struct Persistent */

// Forward Declares

struct PropertyList;

struct ParticleCreator
{
  struct Persistent super;  /* 0x0 */
};
static_assert(sizeof(struct ParticleCreator) == 0x4, "Data type is of wrong size");

// Override methods

// win1.41 006a9400 mac 103dfee0 ParticleCreator::_dt(void)
void __fastcall __dt__15ParticleCreatorFv(struct Persistent* this) asm("??_GParticleCreator@@UAEPAXI@Z");
// win1.41 006b34c0 mac 10457740 ParticleCreator::DefineProperties(PropertyList *)
void __fastcall DefineProperties__15ParticleCreatorFP12PropertyList(struct Persistent* this, const void* edx, struct PropertyList* param_1) asm("?DefineProperties@ParticleCreator@@UAEXPAUPropertyList@@@Z");

#endif /* BW1_DECOMP_PARTICLE_CREATOR_INCLUDED_H */
