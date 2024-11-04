#ifndef BW1_DECOMP_CREATURE_MENTAL_DESIRE_INCLUDED_H
#define BW1_DECOMP_CREATURE_MENTAL_DESIRE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "Base.h" /* For struct Base */
#include "CreatureMentalDesireSource.h" /* For struct CreatureDesireSource */

// Forward Declares

struct Creature;
struct CreatureInfo;

struct CreatureDesires
{
  struct Base super;  /* 0x0 */
  uint32_t field_0x8[0x28];
  float field_0xa8[0x28];
  uint32_t field_0x148[0x28];
  uint32_t field_0x1e8[0x28];
  uint32_t field_0x288[0x28];
  struct LHLinkedList__CreatureDesireSource source_lists[0x28];  /* 0x328 */
  uint32_t field_0x468[0x28];
  uint32_t field_0x508[0x28];
  uint32_t field_0x5a8[0x28];
  struct Creature* creature;  /* 0x648 */
  struct CreatureInfo* creature_info;
  uint32_t field_0x650;
  uint32_t field_0x654;
  uint32_t field_0x658[0x28];
  uint32_t field_0x6f8;
  uint32_t field_0x6fc;
  uint32_t field_0x700;
  uint32_t field_0x704;
};
static_assert(sizeof(struct CreatureDesires) == 0x708, "Data type is of wrong size");

static struct BaseVftable* __vt__15CreatureDesires = (struct BaseVftable*)0x008cff9c;

// Constructors

// win1.41 004dbff0 mac 1025b030 CreatureDesires::__ct(Creature *, CreatureInfo const *)
struct CreatureDesires* __fastcall __ct__15CreatureDesiresFP8CreaturePC12CreatureInfo(struct CreatureDesires* this, const void* edx, struct Creature* creature, const struct CreatureInfo* info);

#endif /* BW1_DECOMP_CREATURE_MENTAL_DESIRE_INCLUDED_H */
