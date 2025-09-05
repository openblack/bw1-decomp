#ifndef BW1_DECOMP_CREATURE_LEARNING_INCLUDED_H
#define BW1_DECOMP_CREATURE_LEARNING_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/CreatureEnum.h> /* For NUM_CREATURE_ACTIONS */
#include <lionhead/lhlib/ver5.0/LHLinkedList.h> /* For DECLARE_LH_LINKED_LIST */

#include "Base.h" /* For struct Base */
#include "CreatureAction.h" /* For struct PreviousActionContextStack */
#include "CreatureContext.h" /* For struct PreviousContextStack */
#include "CreaturePreviousLesson.h" /* For struct CreaturePreviousLesson */

// Forward Declares

struct Creature;

struct CreatureLearning
{
  struct Base super;  /* 0x0 */
  struct PreviousContextStack previous_context_stack;
  struct PreviousActionContextStack previous_action_context_stack;  /* 0x260 */
  struct CreaturePreviousLesson previous_lesson;  /* 0x14020 */
  uint32_t field_0x1522c;
  uint32_t field_0x15230[0x6];
  uint32_t field_0x15248[0x6];
  uint32_t field_0x15260[0x2a];
  uint32_t field_0x15308[0x2a];
  uint32_t field_0x153b0[NUM_CREATURE_ACTIONS];
  uint32_t field_0x158d0[0x2d];
  uint32_t field_0x15984[0x2d];
  uint32_t field_0x15a38[0x2d];
  uint32_t field_0x15aec;
  uint32_t field_0x15af0;
  uint32_t field_0x15af4;
  uint32_t field_0x15af8[0x2][0x28];
  uint32_t field_0x15c38;
  uint32_t field_0x15c3c;
  uint32_t field_0x15c40[NUM_CREATURE_ACTIONS];
  struct Creature* field_0x16160;
  uint32_t field_0x16164;
};
static_assert(sizeof(struct CreatureLearning) == 0x16168, "Data type is of wrong size");

// win1.41 008d040c mac 107875c4 CreatureLearning::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__16CreatureLearning asm("??_R4CreatureLearning@@6B@");

// win1.41 008d0410 mac 107875cc CreatureLearning::`vftable'
extern const struct BaseVftable __vt__16CreatureLearning asm("??_7CreatureLearning@@6B@");

// Constructors

// win1.41 004e0290 mac 10265060 CreatureLearning::CreatureLearning(Creature *)
struct CreatureLearning* __fastcall __ct__16CreatureLearningFP8Creature(struct CreatureLearning* this, const void* edx, struct Creature* creature);

struct CreatureLearningEpisode
{
  uint8_t field_0x0;
};
static_assert(sizeof(struct CreatureLearningEpisode) == 0x1, "Data type is of wrong size");

DECLARE_LH_LINKED_LIST(CreatureLearningEpisode);

#endif /* BW1_DECOMP_CREATURE_LEARNING_INCLUDED_H */
