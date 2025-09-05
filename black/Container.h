#ifndef BW1_DECOMP_CONTAINER_INCLUDED_H
#define BW1_DECOMP_CONTAINER_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "GameThingWithPos.h" /* For struct GameThingWithPos, struct GameThingWithPosVftable */

// Forward Declares

struct GContainerInfo;
struct GPlayer;

struct ContainerVftable
{
  struct GameThingWithPosVftable super;  /* 0x0 */
};
static_assert(sizeof(struct ContainerVftable) == 0x500, "Data type is of wrong size");

union ContainerBase
{
  struct GameThingWithPos super;
  struct ContainerVftable* vftable;
};
static_assert(sizeof(union ContainerBase) == 0x28, "Data type is of wrong size");

struct Container
{
  union ContainerBase base;  /* 0x0 */
  struct GContainerInfo* info;  /* 0x28 */
  struct GPlayer* owner;
};
static_assert(sizeof(struct Container) == 0x30, "Data type is of wrong size");

// win1.41 008cb97c mac 10739750 Container::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__9Container asm("??_R4Container@@6B@");

// win1.41 008cb980 mac 10739758 Container::`vftable'
extern const struct ContainerVftable __vt__9Container asm("??_7Container@@6B@");

#endif /* BW1_DECOMP_CONTAINER_INCLUDED_H */
