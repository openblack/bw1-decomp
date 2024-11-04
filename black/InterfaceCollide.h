#ifndef BW1_DECOMP_INTERFACE_COLLIDE_INCLUDED_H
#define BW1_DECOMP_INTERFACE_COLLIDE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "Base.h" /* For struct Base */
#include "MapCoords.h" /* For struct MapCoords */

// Forward Declares

struct Bubble;
struct Leash;
struct Object;

struct GInterfaceCollide
{
  struct Base super;  /* 0x0 */
  struct MapCoords pos;
  float pos_distance;  /* 0x14 */
  struct Object* object;
  float object_distance;
  struct Bubble* bubble;  /* 0x20 */
  float bubble_distance;
  struct Leash* leash;
  float leash_distance;
};
static_assert(sizeof(struct GInterfaceCollide) == 0x30, "Data type is of wrong size");

static struct BaseVftable* const __vt__17GInterfaceCollide = (struct BaseVftable* const)0x0092aac4;

#endif /* BW1_DECOMP_INTERFACE_COLLIDE_INCLUDED_H */
