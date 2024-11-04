#ifndef BW1_DECOMP_CREATURE_ACTION_INCLUDED_H
#define BW1_DECOMP_CREATURE_ACTION_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/CreatureEnum.h> /* For NUM_CREATURE_ACTIONS */

#include "Base.h" /* For struct Base */

// Forward Declares

struct CreatureContext;

struct CreatureActionContextStart
{
  uint32_t field_0x0;
  struct CreatureActionContext* field_0x4;
  uint32_t field_0x8;
  uint32_t field_0xc;
  uint32_t field_0x10;
};
static_assert(sizeof(struct CreatureActionContextStart) == 0x14, "Data type is of wrong size");

struct CreatureActionContext
{
  struct CreatureActionContextStart start;  /* 0x0 */
  float field_0x14;
};
static_assert(sizeof(struct CreatureActionContext) == 0x18, "Data type is of wrong size");

// Constructors

// win1.41 004c3960 mac 10230320 CreatureActionContext::CreatureActionContext(CreatureContext &, float)
struct CreatureActionContext* __fastcall __ct__21CreatureActionContextFR15CreatureContextf(struct CreatureActionContext* this, const void* edx, struct CreatureContext* context, float param_2);

struct PreviousActionContextStack
{
  uint32_t indexes[0x2][0x148];  /* 0x0 */
  struct CreatureActionContext stack[0x148][0xa];  /* 0xa40 */
};
static_assert(sizeof(struct PreviousActionContextStack) == 0x13dc0, "Data type is of wrong size");

struct CreatureActionOpinions
{
  uint32_t entries[NUM_CREATURE_ACTIONS];  /* 0x0 */
};
static_assert(sizeof(struct CreatureActionOpinions) == 0x520, "Data type is of wrong size");

// Constructors

// win1.41 004c3930 mac 102303a0 CreatureActionOpinions::CreatureActionOpinions(CreatureInfo const *)
struct CreatureActionOpinions* __fastcall __ct__22CreatureActionOpinionsFPC12CreatureInfo(struct CreatureActionOpinions* this);

struct CreaturePreviousActions
{
  struct Base super;  /* 0x0 */
  float field_0x8[NUM_CREATURE_ACTIONS];
};
static_assert(sizeof(struct CreaturePreviousActions) == 0x528, "Data type is of wrong size");

static struct BaseVftable* __vt__23CreaturePreviousActions = (struct BaseVftable*)0x008d154c;

#endif /* BW1_DECOMP_CREATURE_ACTION_INCLUDED_H */
