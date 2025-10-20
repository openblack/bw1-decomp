#ifndef BW1_DECOMP_CREATURE_MENTAL_INCLUDED_H
#define BW1_DECOMP_CREATURE_MENTAL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "Base.h" /* For struct Base */
#include "CreatureAction.h" /* For struct CreatureActionOpinions, struct CreaturePreviousActions */
#include "CreatureActionsKnownAbout.h" /* For struct CreatureActionsKnownAbout */
#include "CreatureAgenda.h" /* For struct CreatureAgenda */
#include "CreatureAttitudeToPlayer.h" /* For struct CreatureAttitudeToPlayer */
#include "CreatureExplorationMap.h" /* For struct CreatureExplorationMap */
#include "CreatureFace.h" /* For struct CreatureFaceState */
#include "CreatureLearning.h" /* For struct CreatureLearning */
#include "CreatureLook.h" /* For struct CreatureLookState */
#include "CreatureMentalAttributeTest.h" /* For struct DecisionTreeCollection */
#include "CreatureMentalBeliefs.h" /* For struct CreatureBeliefs */
#include "CreatureMentalDebug.h" /* For struct CreatureMentalDebug */
#include "CreatureMentalDesire.h" /* For struct CreatureDesires */
#include "CreatureObjectsInspected.h" /* For struct CreatureObjectsInspected */
#include "CreatureVisionState.h" /* For struct CreatureVisionState */
#include "MapCoords.h" /* For struct MapCoords */

// Forward Declares

struct Creature;
struct GameThingWithPos;

struct CreatureInnatePersonality
{
  float field_0x0;
  float field_0x4;
  float field_0x8;
  float field_0xc;
  float field_0x10;
  float field_0x14;
  float field_0x18[0x3];
};
static_assert(sizeof(struct CreatureInnatePersonality) == 0x24, "Data type is of wrong size");

struct CreatureMental
{
  struct Base super;  /* 0x0 */
  struct CreatureDesires desires;
  struct CreatureAgenda agenda;  /* 0x710 */
  struct CreatureBeliefs beliefs;  /* 0x2208 */
  struct DecisionTreeCollection decision_tree_collection;  /* 0x2478 */
  struct CreatureActionOpinions action_opinions;  /* 0x25b8 */
  struct CreatureLearning learning;  /* 0x2ad8 */
  struct CreatureAttitudeToPlayer attitude_to_player;  /* 0x18c40 */
  uint32_t field_0x1a9f4;
  uint32_t field_0x1a9f8;
  struct CreatureActionsKnownAbout actions_known_about;
  struct CreatureInnatePersonality innate_personality;  /* 0x1aa14 */
  struct CreatureVisionState vision_state;  /* 0x1aa38 */
  struct CreatureExplorationMap exploration_map;  /* 0x1aa80 */
  uint8_t field_0x1ca98[0x400];
  struct CreaturePreviousActions previous_actions;  /* 0x1ce98 */
  struct CreatureLookState look_state;  /* 0x1d3c0 */
  uint8_t field_0x1d3f8[0x14];
  struct CreatureFaceState face_state;  /* 0x1d40c */
  struct CreatureObjectsInspected objects_inspected;  /* 0x1d418 */
  uint32_t field_0x1d480;
  uint32_t field_0x1d484;
  uint32_t field_0x1d488;
  struct MapCoords field_0x1d48c[0x1e][0x28];
  struct CreatureMentalDebug debug;  /* 0x20ccc */
  struct Creature* creature;  /* 0x20d18 */
  int field_0x20d1c;
  uint32_t field_0x20d20;
  uint32_t field_0x20d24;
  uint32_t field_0x20d28;
  uint32_t field_0x20d2c;
  uint32_t field_0x20d230;  /* 0x20d30 */
  uint32_t field_0x20d234;
  uint32_t field_0x20d238;
  uint32_t field_0x20d23c;
};
static_assert(sizeof(struct CreatureMental) == 0x20d40, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009dd858 mac inlined CreatureMental::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__14CreatureMental asm("??_R0?AVCreatureMental@@@8");
// win1.41 009aa310 mac inlined CreatureMental::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__14CreatureMental asm("??_R1A@?0A@A@CreatureMental@@8");
// win1.41 009aa328 mac inlined CreatureMental::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__14CreatureMental asm("??_R2CreatureMental@@8");
// win1.41 009aa338 mac inlined CreatureMental::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__14CreatureMental asm("??_R3CreatureMental@@8");
// win1.41 008cf8a8 mac 1078743c CreatureMental::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__14CreatureMental asm("??_R4CreatureMental@@6B@");
// win1.41 008cf8ac mac 10787444 CreatureMental::`vftable'
extern const struct BaseVftable __vt__14CreatureMental asm("??_7CreatureMental@@6B@");

// Non-virtual methods

// win1.41 004d7bd0 mac 10253c90 CreatureMental::AddBeliefAboutObject(Creature *, GameThingWithPos *)
void* __fastcall AddBeliefAboutObject__14CreatureMentalFP8CreatureP16GameThingWithPos(struct CreatureMental* this, const void* edx, struct Creature* param_1, struct GameThingWithPos* param_2) asm("?AddBeliefAboutObject@CreatureMental@@QAEPAXPAVCreature@@PAVGameThingWithPos@@@Z");

// Override methods

// win1.41 004d2560 mac 10245b60 CreatureMental::_dt(void)
void __fastcall __dt__14CreatureMentalFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCreatureMental@@UAEPAXI@Z");

#endif /* BW1_DECOMP_CREATURE_MENTAL_INCLUDED_H */
