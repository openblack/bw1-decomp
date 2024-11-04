#ifndef BW1_DECOMP_CREATURE_CONTEXT_INCLUDED_H
#define BW1_DECOMP_CREATURE_CONTEXT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/CreatureEnum.h> /* For enum CREATURE_DESIRE_SOURCE */

#include "Base.h" /* For struct Base */
#include "CreatureAction.h" /* For struct CreatureActionContextStart */
#include "CreaturePlan.h" /* For struct CreaturePlan */

// Forward Declares

struct Creature;

struct CreatureContext
{
  struct Base super;  /* 0x0 */
  struct CreaturePlan plan;
  uint8_t field_0x38[0xc];
  int field_0x44;
  uint8_t field_0x48[0xc];
  uint32_t field_0x54;
  enum CREATURE_DESIRE_SOURCE desire_source;
  struct CreatureActionContextStart field_0x5c;
};
static_assert(sizeof(struct CreatureContext) == 0x70, "Data type is of wrong size");

struct PreviousContextStack
{
  struct Creature* creature;  /* 0x0 */
  uint8_t field_0x4[0x1c];
  uint32_t field_0x20;
  uint32_t field_0x24;
  struct CreatureContext contexts[0x5];
};
static_assert(sizeof(struct PreviousContextStack) == 0x258, "Data type is of wrong size");

#endif /* BW1_DECOMP_CREATURE_CONTEXT_INCLUDED_H */
