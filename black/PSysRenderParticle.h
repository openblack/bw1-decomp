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

// win1.41 008fac38 mac 109b6a34 RenderParticle::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__14RenderParticle asm("??_R4RenderParticle@@6B@");

// win1.41 008fac3c mac 109b6a54 RenderParticle::`vftable'
extern const struct GameThingVftable __vt__14RenderParticle asm("??_7RenderParticle@@6B@");

#endif /* BW1_DECOMP_P_SYS_RENDER_PARTICLE_INCLUDED_H */
