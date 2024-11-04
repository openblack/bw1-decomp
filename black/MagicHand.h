#ifndef BW1_DECOMP_MAGIC_HAND_INCLUDED_H
#define BW1_DECOMP_MAGIC_HAND_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */

#include "GameThing.h" /* For struct GameThing */

// Forward Declares

struct Object;

struct GMagicHand
{
  struct GameThing super;  /* 0x0 */
  bool has_object_in_hand;  /* 0x14 */
  struct Object* object_in_hand;
};
static_assert(sizeof(struct GMagicHand) == 0x1c, "Data type is of wrong size");

#endif /* BW1_DECOMP_MAGIC_HAND_INCLUDED_H */
