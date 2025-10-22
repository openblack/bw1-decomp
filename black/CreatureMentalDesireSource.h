#ifndef BW1_DECOMP_CREATURE_MENTAL_DESIRE_SOURCE_INCLUDED_H
#define BW1_DECOMP_CREATURE_MENTAL_DESIRE_SOURCE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <chlasm/CreatureEnum.h> /* For enum CREATURE_DESIRE_SOURCE */
#include <lionhead/lhlib/ver5.0/LHLinkedList.h> /* For DECLARE_LH_LINKED_LIST */

// Forward Declares

struct Creature;

struct CreatureDesireSource
{
  float value;  /* 0x0 */
  float field_0x4;
  float field_0x8;
  enum CREATURE_DESIRE_SOURCE type;
};
static_assert(sizeof(struct CreatureDesireSource) == 0x10, "Data type is of wrong size");

// Constructors

// win1.41 004de150 mac 1025dac0 CreatureDesireSource::CreatureDesireSource(CREATURE_DESIRE_SOURCE, Creature* )
struct CreatureDesireSource* __fastcall __ct__20CreatureDesireSourceF22CREATURE_DESIRE_SOURCEP8Creature(struct CreatureDesireSource* this, const void* edx, enum CREATURE_DESIRE_SOURCE type, struct Creature* creature) asm("??0CreatureDesireSource@@QAE@W4CREATURE_DESIRE_SOURCE@@PAVCreature@@@Z");

DECLARE_LH_LINKED_LIST(CreatureDesireSource);

#endif /* BW1_DECOMP_CREATURE_MENTAL_DESIRE_SOURCE_INCLUDED_H */
