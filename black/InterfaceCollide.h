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

// win1.41 0092aac0 mac 10733130 GInterfaceCollide::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__17GInterfaceCollide asm("??_R4GInterfaceCollide@@6B@");

// win1.41 0092aac4 mac 10733138 GInterfaceCollide::`vftable'
extern const struct BaseVftable __vt__17GInterfaceCollide asm("??_7GInterfaceCollide@@6B@");

#endif /* BW1_DECOMP_INTERFACE_COLLIDE_INCLUDED_H */
