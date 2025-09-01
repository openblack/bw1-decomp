#ifndef BW1_DECOMP_CREATURE_MENTAL_ATTRIBUTE_TEST_INCLUDED_H
#define BW1_DECOMP_CREATURE_MENTAL_ATTRIBUTE_TEST_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/CreatureEnum.h> /* For enum ATTRIBUTE_TYPE, enum CREATURE_ACTION */
#include <chlasm/Enum.h> /* For enum CREATURE_DESIRES */
#include <lionhead/lhlib/ver5.0/LHLinkedList.h> /* For DECLARE_LH_LINKED_LIST */

#include "CreatureLearning.h" /* For struct CreatureLearningEpisode */
#include "CreatureLessonChooser.h" /* For _LESSON_TYPE_COUNT */

enum DECISION_TREE_TYPE
{
  DECISION_TREE_TYPE_0x0 = 0x0,
  _DECISION_TREE_TYPE_COUNT = 0x1
};
static_assert(sizeof(enum DECISION_TREE_TYPE) == 0x4, "Data type is of wrong size");

static const char* DECISION_TREE_TYPE_strs[_DECISION_TREE_TYPE_COUNT] = {
  "DECISION_TREE_TYPE_0x0",
};

struct AttributeTest
{
  struct LHLinkedList__CreatureLearningEpisode episodes;  /* 0x0 */
  uint32_t field_0x8;
  uint32_t field_0xc;
  uint32_t field_0x10;
  uint32_t field_0x14;
  uint32_t field_0x18;
  enum ATTRIBUTE_TYPE attribute_stack[0x18];
  uint32_t field_0x7c;
  uint32_t field_0x80;
  uint32_t field_0x84;
  uint32_t field_0x88;
  uint32_t field_0x8c;
  uint32_t field_0x90;
};
static_assert(sizeof(struct AttributeTest) == 0x94, "Data type is of wrong size");

// Constructors

// win1.41 004d4c20 mac 1024fa20 AttributeTest::AttributeTest(DECISION_TREE_TYPE, CREATURE_DESIRES, CREATURE_ACTION)
struct AttributeTest* __fastcall __ct__13AttributeTestF18DECISION_TREE_TYPE16CREATURE_DESIRES15CREATURE_ACTION(struct AttributeTest* this, const void* edx, enum DECISION_TREE_TYPE tree_type, enum CREATURE_DESIRES desire, enum CREATURE_ACTION action);

DECLARE_LH_LINKED_LIST(AttributeTest);

struct DecisionTreeNode
{
  struct AttributeTest* tests[0x2];  /* 0x0 */
};
static_assert(sizeof(struct DecisionTreeNode) == 0x8, "Data type is of wrong size");

struct DecisionTree
{
  struct DecisionTreeNode root;  /* 0x0 */
};
static_assert(sizeof(struct DecisionTree) == 0x8, "Data type is of wrong size");

// Constructors

// win1.41 004d4380 mac 102506c0 DecisionTree::DecisionTree(DECISION_TREE_TYPE, CREATURE_DESIRES, CREATURE_ACTION)
struct DecisionTree* __fastcall __ct__12DecisionTreeF18DECISION_TREE_TYPE16CREATURE_DESIRES15CREATURE_ACTION(struct DecisionTree* this, const void* edx, enum DECISION_TREE_TYPE tree_type, enum CREATURE_DESIRES desire, enum CREATURE_ACTION action);

struct DecisionTreeAgenda
{
  enum DECISION_TREE_TYPE tree_type;  /* 0x0 */
  enum CREATURE_DESIRES creature_desires;
  uint32_t field_0x8;
  uint32_t field_0xc;
  uint32_t field_0x10;
  struct DecisionTree trees[0x2];
};
static_assert(sizeof(struct DecisionTreeAgenda) == 0x24, "Data type is of wrong size");

// Constructors

// win1.41 004d43f0 mac 102505c0 DecisionTreeAgenda::DecisionTreeAgenda(DECISION_TREE_TYPE, CREATURE_DESIRES)
struct DecisionTreeAgenda* __fastcall __ct__18DecisionTreeAgendaF18DECISION_TREE_TYPE16CREATURE_DESIRES(struct DecisionTreeAgenda* this, const void* edx, enum DECISION_TREE_TYPE tree_type, enum CREATURE_DESIRES desire);

struct DecisionTreeAgendas
{
  struct DecisionTreeAgenda* contents[0x28];  /* 0x0 */
};
static_assert(sizeof(struct DecisionTreeAgendas) == 0xa0, "Data type is of wrong size");

struct DecisionTreeCollection
{
  struct DecisionTreeAgendas agendas[_LESSON_TYPE_COUNT];  /* 0x0 */
};
static_assert(sizeof(struct DecisionTreeCollection) == 0x140, "Data type is of wrong size");

// Constructors

// win1.41 004d7220 mac 1024c150 DecisionTreeCollection::DecisionTreeCollection(void)
struct DecisionTreeCollection* __fastcall __ct__22DecisionTreeCollectionFv(struct DecisionTreeCollection* this);

#endif /* BW1_DECOMP_CREATURE_MENTAL_ATTRIBUTE_TEST_INCLUDED_H */
