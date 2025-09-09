#ifndef BW1_DECOMP_CREATURE_MENTAL_ATTRIBUTE_TEST_INCLUDED_H
#define BW1_DECOMP_CREATURE_MENTAL_ATTRIBUTE_TEST_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/CreatureEnum.h> /* For enum ATTRIBUTE_TYPE, enum CREATURE_ACTION */
#include <chlasm/Enum.h> /* For enum CREATURE_DESIRES */
#include <lionhead/lhlib/ver5.0/LHLinkedList.h> /* For DECLARE_LH_LINKED_LIST */

#include "Base.h" /* For struct Base */
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

struct Attribute
{
  struct Base super;  /* 0x0 */
};
static_assert(sizeof(struct Attribute) == 0x8, "Data type is of wrong size");

// Override methods

// win1.41 004cb750 mac 1023cc80 Attribute::_dt(void)
void __fastcall __dt__9AttributeFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAttribute@@UAEPAXI@Z");

struct AttributeAbodeBeingBuilt
{
  struct Attribute super;  /* 0x0 */
};
static_assert(sizeof(struct AttributeAbodeBeingBuilt) == 0x8, "Data type is of wrong size");

// Override methods

// win1.41 004d6090 mac 10249c80 AttributeAbodeBeingBuilt::_dt(void)
void __fastcall __dt__24AttributeAbodeBeingBuiltFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAttributeAbodeBeingBuilt@@UAEPAXI@Z");

struct AttributeAbodeType
{
  struct Attribute super;  /* 0x0 */
};
static_assert(sizeof(struct AttributeAbodeType) == 0x8, "Data type is of wrong size");

// Override methods

// win1.41 004d6020 mac 10249e60 AttributeAbodeType::_dt(void)
void __fastcall __dt__18AttributeAbodeTypeFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAttributeAbodeType@@UAEPAXI@Z");

struct AttributeAllegiance
{
  struct Attribute super;  /* 0x0 */
};
static_assert(sizeof(struct AttributeAllegiance) == 0x8, "Data type is of wrong size");

// Override methods

// win1.41 004cb7c0 mac 1024bad0 AttributeAllegiance::_dt(void)
void __fastcall __dt__19AttributeAllegianceFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAttributeAllegiance@@UAEPAXI@Z");

struct AttributeAnimate
{
  struct Attribute super;  /* 0x0 */
};
static_assert(sizeof(struct AttributeAnimate) == 0x8, "Data type is of wrong size");

// Override methods

// win1.41 004cb8b0 mac 1024b770 AttributeAnimate::_dt(void)
void __fastcall __dt__16AttributeAnimateFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAttributeAnimate@@UAEPAXI@Z");

struct AttributeCreatureDominantDesire
{
  struct Attribute super;  /* 0x0 */
};
static_assert(sizeof(struct AttributeCreatureDominantDesire) == 0x8, "Data type is of wrong size");

// Override methods

// win1.41 004d5da0 mac 1024abd0 AttributeCreatureDominantDesire::_dt(void)
void __fastcall __dt__31AttributeCreatureDominantDesireFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAttributeCreatureDominantDesire@@UAEPAXI@Z");

struct AttributeCreatureHeight
{
  struct Attribute super;  /* 0x0 */
};
static_assert(sizeof(struct AttributeCreatureHeight) == 0x8, "Data type is of wrong size");

// Override methods

// win1.41 004d5e10 mac 1024aa00 AttributeCreatureHeight::_dt(void)
void __fastcall __dt__23AttributeCreatureHeightFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAttributeCreatureHeight@@UAEPAXI@Z");

struct AttributeCreatureSpellKnowledge
{
  struct Attribute super;  /* 0x0 */
};
static_assert(sizeof(struct AttributeCreatureSpellKnowledge) == 0x8, "Data type is of wrong size");

// Override methods

// win1.41 004d5e70 mac 1024a860 AttributeCreatureSpellKnowledge::_dt(void)
void __fastcall __dt__31AttributeCreatureSpellKnowledgeFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAttributeCreatureSpellKnowledge@@UAEPAXI@Z");

struct AttributeCreatureType
{
  struct Attribute super;  /* 0x0 */
};
static_assert(sizeof(struct AttributeCreatureType) == 0x8, "Data type is of wrong size");

// Override methods

// win1.41 004cbbe0 mac 10247480 AttributeCreatureType::_dt(void)
void __fastcall __dt__21AttributeCreatureTypeFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAttributeCreatureType@@UAEPAXI@Z");

struct AttributeCreatureWhatHeIsCarrying
{
  struct Attribute super;  /* 0x0 */
};
static_assert(sizeof(struct AttributeCreatureWhatHeIsCarrying) == 0x8, "Data type is of wrong size");

// Override methods

// win1.41 004d5ed0 mac 1024a6c0 AttributeCreatureWhatHeIsCarrying::_dt(void)
void __fastcall __dt__33AttributeCreatureWhatHeIsCarryingFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAttributeCreatureWhatHeIsCarrying@@UAEPAXI@Z");

struct AttributeForestSize
{
  struct Attribute super;  /* 0x0 */
};
static_assert(sizeof(struct AttributeForestSize) == 0x8, "Data type is of wrong size");

// Override methods

// win1.41 004d5f40 mac 1024a510 AttributeForestSize::_dt(void)
void __fastcall __dt__19AttributeForestSizeFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAttributeForestSize@@UAEPAXI@Z");

struct AttributeIsHarderThanMe
{
  struct Attribute super;  /* 0x0 */
};
static_assert(sizeof(struct AttributeIsHarderThanMe) == 0x8, "Data type is of wrong size");

// Override methods

// win1.41 004cbb80 mac 102497e0 AttributeIsHarderThanMe::_dt(void)
void __fastcall __dt__23AttributeIsHarderThanMeFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAttributeIsHarderThanMe@@UAEPAXI@Z");

struct AttributeLife
{
  struct Attribute super;  /* 0x0 */
};
static_assert(sizeof(struct AttributeLife) == 0x8, "Data type is of wrong size");

// Override methods

// win1.41 004cb980 mac 1024b470 AttributeLife::_dt(void)
void __fastcall __dt__13AttributeLifeFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAttributeLife@@UAEPAXI@Z");

struct AttributeMobileObjectType
{
  struct Attribute super;  /* 0x0 */
};
static_assert(sizeof(struct AttributeMobileObjectType) == 0x8, "Data type is of wrong size");

// Override methods

// win1.41 004d5fb0 mac 1024a010 AttributeMobileObjectType::_dt(void)
void __fastcall __dt__25AttributeMobileObjectTypeFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAttributeMobileObjectType@@UAEPAXI@Z");

struct AttributeOnFire
{
  struct Attribute super;  /* 0x0 */
};
static_assert(sizeof(struct AttributeOnFire) == 0x8, "Data type is of wrong size");

// Override methods

// win1.41 004cbac0 mac 10249ad0 AttributeOnFire::_dt(void)
void __fastcall __dt__15AttributeOnFireFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAttributeOnFire@@UAEPAXI@Z");

struct AttributeOrigin
{
  struct Attribute super;  /* 0x0 */
};
static_assert(sizeof(struct AttributeOrigin) == 0x8, "Data type is of wrong size");

// Override methods

// win1.41 004cb830 mac 1024b920 AttributeOrigin::_dt(void)
void __fastcall __dt__15AttributeOriginFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAttributeOrigin@@UAEPAXI@Z");

struct AttributePlayerNumber
{
  struct Attribute super;  /* 0x0 */
};
static_assert(sizeof(struct AttributePlayerNumber) == 0x8, "Data type is of wrong size");

// Override methods

// win1.41 004cbb20 mac 10249960 AttributePlayerNumber::_dt(void)
void __fastcall __dt__21AttributePlayerNumberFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAttributePlayerNumber@@UAEPAXI@Z");

struct AttributeSex
{
  struct Attribute super;  /* 0x0 */
};
static_assert(sizeof(struct AttributeSex) == 0x8, "Data type is of wrong size");

// Override methods

// win1.41 004cba50 mac 1024a200 AttributeSex::_dt(void)
void __fastcall __dt__12AttributeSexFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAttributeSex@@UAEPAXI@Z");

struct AttributeTownReligiousBeliefInYou
{
  struct Attribute super;  /* 0x0 */
};
static_assert(sizeof(struct AttributeTownReligiousBeliefInYou) == 0x8, "Data type is of wrong size");

// Override methods

// win1.41 004cd710 mac 1024b0c0 AttributeTownReligiousBeliefInYou::_dt(void)
void __fastcall __dt__33AttributeTownReligiousBeliefInYouFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAttributeTownReligiousBeliefInYou@@UAEPAXI@Z");

struct AttributeTownSize
{
  struct Attribute super;  /* 0x0 */
};
static_assert(sizeof(struct AttributeTownSize) == 0x8, "Data type is of wrong size");

// Override methods

// win1.41 004cd7e0 mac 1024ad70 AttributeTownSize::_dt(void)
void __fastcall __dt__17AttributeTownSizeFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAttributeTownSize@@UAEPAXI@Z");

struct AttributeTribe
{
  struct Attribute super;  /* 0x0 */
};
static_assert(sizeof(struct AttributeTribe) == 0x8, "Data type is of wrong size");

// Override methods

// win1.41 004cd6a0 mac 1024b2c0 AttributeTribe::_dt(void)
void __fastcall __dt__14AttributeTribeFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAttributeTribe@@UAEPAXI@Z");

struct AttributeType
{
  struct Attribute super;  /* 0x0 */
};
static_assert(sizeof(struct AttributeType) == 0x8, "Data type is of wrong size");

// Override methods

// win1.41 004cb910 mac 1024b610 AttributeType::_dt(void)
void __fastcall __dt__13AttributeTypeFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAttributeType@@UAEPAXI@Z");

struct AttributeVillagerJob
{
  struct Attribute super;  /* 0x0 */
};
static_assert(sizeof(struct AttributeVillagerJob) == 0x8, "Data type is of wrong size");

// Override methods

// win1.41 004cb9e0 mac 1024a3a0 AttributeVillagerJob::_dt(void)
void __fastcall __dt__20AttributeVillagerJobFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAttributeVillagerJob@@UAEPAXI@Z");

struct AttributeWhatTownNeedsMost
{
  struct Attribute super;  /* 0x0 */
};
static_assert(sizeof(struct AttributeWhatTownNeedsMost) == 0x8, "Data type is of wrong size");

// Override methods

// win1.41 004cd770 mac 1024af20 AttributeWhatTownNeedsMost::_dt(void)
void __fastcall __dt__26AttributeWhatTownNeedsMostFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAttributeWhatTownNeedsMost@@UAEPAXI@Z");

#endif /* BW1_DECOMP_CREATURE_MENTAL_ATTRIBUTE_TEST_INCLUDED_H */
