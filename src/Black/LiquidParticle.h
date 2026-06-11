#ifndef BW1_DECOMP_LIQUID_PARTICLE_INCLUDED_H
#define BW1_DECOMP_LIQUID_PARTICLE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <lionhead/lh3dlib/development/LHPoint.h> /* For struct LHPoint */

// Forward Declares

struct GInterface;

struct LiquidParticle
{
  float field_0x0;
  float field_0x4;
  float field_0x8;
  float field_0xc;
  float field_0x10;
  float field_0x14;
  float field_0x18;
  float field_0x1c;
  float field_0x20;
  float field_0x24;
  float field_0x28;
};
static_assert(sizeof(struct LiquidParticle) == 0x2c, "Data type is of wrong size");

struct LiquidParticleGroup
{
  struct LiquidParticle particle_buffer[0x400];  /* 0x0 */
  uint32_t particle_count;  /* 0xb000 */
  struct LHPoint point;
  struct LiquidParticleGroup* next;  /* 0xb010 */
  struct GInterface* iface;
  void (__cdecl* sparkle_func)(struct LiquidParticleGroup* param_0, struct GInterface* param_1);
};
static_assert(sizeof(struct LiquidParticleGroup) == 0xb01c, "Data type is of wrong size");

// win1.41 005cdfc0 mac 1035c8f0 sparklecbstub(LiquidParticleGroup *, unsigned long)
void __cdecl sparklecbstub__FP19LiquidParticleGroupUl(struct LiquidParticleGroup* param_1, struct GInterface* param_2);

#endif /* BW1_DECOMP_LIQUID_PARTICLE_INCLUDED_H */
