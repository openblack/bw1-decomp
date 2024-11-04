#ifndef BW1_DECOMP_PARTICLE_CONTAINER_INCLUDED_H
#define BW1_DECOMP_PARTICLE_CONTAINER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */

#include <lionhead/lhlib/VER5.0/LHListHead.h> /* For DECLARE_LH_LIST_HEAD */

#include "GameThingWithPos.h" /* For struct GameThingWithPos */

struct GParticleContainer
{
  struct GameThingWithPos super;  /* 0x0 */
  struct GameThingWithPos* thing;  /* 0x28 */
  uint32_t field_0x2c;
  uint32_t field_0x30;
  float field_0x34;
  bool field_0x38;
  struct GParticleContainer* next;
};
static_assert(sizeof(struct GParticleContainer) == 0x40, "Data type is of wrong size");

static struct GameThingVftable* __vt__18GParticleContainer = (struct GameThingVftable*)0x008e2a14;

DECLARE_LH_LIST_HEAD(GParticleContainer);

#endif /* BW1_DECOMP_PARTICLE_CONTAINER_INCLUDED_H */
