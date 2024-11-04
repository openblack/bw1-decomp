#ifndef BW1_DECOMP_P_SYS_RENDER_PARTICLE_INCLUDED_H
#define BW1_DECOMP_P_SYS_RENDER_PARTICLE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "PSysBase.h" /* For struct PSysBase */

struct RenderParticle
{
  struct PSysBase super;  /* 0x0 */
  uint32_t field_0x14;
};
static_assert(sizeof(struct RenderParticle) == 0x18, "Data type is of wrong size");

static struct GameThingVftable* const __vt__14RenderParticle = (struct GameThingVftable* const)0x008fac3c;

#endif /* BW1_DECOMP_P_SYS_RENDER_PARTICLE_INCLUDED_H */
