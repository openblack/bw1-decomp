#ifndef BW1_DECOMP_CREATURE_MENTAL_BELIEFS_INCLUDED_H
#define BW1_DECOMP_CREATURE_MENTAL_BELIEFS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "Base.h" /* For struct Base */

struct CreatureBeliefList
{
  struct Base super;  /* 0x0 */
  uint32_t field_0x8;
  uint32_t field_0xc;
  uint32_t field_0x10;
};
static_assert(sizeof(struct CreatureBeliefList) == 0x14, "Data type is of wrong size");

static struct BaseVftable* const __vt__18CreatureBeliefList = (struct BaseVftable* const)0x008cf90c;

struct AllocatedBeliefList
{
  struct Base super;  /* 0x0 */
  uint32_t field_0x8;
  uint32_t field_0xc;
  uint32_t field_0x10;
  uint32_t field_0x14;
};
static_assert(sizeof(struct AllocatedBeliefList) == 0x18, "Data type is of wrong size");

static struct BaseVftable* const __vt__19AllocatedBeliefList = (struct BaseVftable* const)0x008cfe58;

struct CreatureBeliefs
{
  struct Base super;  /* 0x0 */
  struct CreatureBeliefList lists[0x2];
  struct AllocatedBeliefList allocated_list;  /* 0x30 */
  uint8_t field_0x48[0x228];
};
static_assert(sizeof(struct CreatureBeliefs) == 0x270, "Data type is of wrong size");

static struct BaseVftable* const __vt__15CreatureBeliefs = (struct BaseVftable* const)0x008cf8ec;

// Non-virtual methods

// win1.41 004d8ea0 mac 10250c70 CreatureBeliefs::Initialise(void)
void __fastcall Initialise__15CreatureBeliefsFv(struct CreatureBeliefs* this);

#endif /* BW1_DECOMP_CREATURE_MENTAL_BELIEFS_INCLUDED_H */
