#ifndef BW1_DECOMP_CREATURE_MENTAL_ATTRIBUTE_TEST_INCLUDED_H
#define BW1_DECOMP_CREATURE_MENTAL_ATTRIBUTE_TEST_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/CreatureEnum.h> /* For enum ATTRIBUTE_TYPE, enum CREATURE_ACTION */
#include <chlasm/Enum.h> /* For enum CREATURE_DESIRES */
#include <lionhead/lhlib/ver5.0/LHLinkedList.h> /* For DECLARE_LH_LINKED_LIST */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

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
struct AttributeTest* __fastcall __ct__13AttributeTestF18DECISION_TREE_TYPE16CREATURE_DESIRES15CREATURE_ACTION(struct AttributeTest* this, const void* edx, enum DECISION_TREE_TYPE tree_type, enum CREATURE_DESIRES desire, enum CREATURE_ACTION action) asm("??0AttributeTest@@QAE@W4DECISION_TREE_TYPE@@W4CREATURE_DESIRES@@W4CREATURE_ACTION@@@Z");

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
struct DecisionTree* __fastcall __ct__12DecisionTreeF18DECISION_TREE_TYPE16CREATURE_DESIRES15CREATURE_ACTION(struct DecisionTree* this, const void* edx, enum DECISION_TREE_TYPE tree_type, enum CREATURE_DESIRES desire, enum CREATURE_ACTION action) asm("??0DecisionTree@@QAE@W4DECISION_TREE_TYPE@@W4CREATURE_DESIRES@@W4CREATURE_ACTION@@@Z");

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
struct DecisionTreeAgenda* __fastcall __ct__18DecisionTreeAgendaF18DECISION_TREE_TYPE16CREATURE_DESIRES(struct DecisionTreeAgenda* this, const void* edx, enum DECISION_TREE_TYPE tree_type, enum CREATURE_DESIRES desire) asm("??0DecisionTreeAgenda@@QAE@W4DECISION_TREE_TYPE@@W4CREATURE_DESIRES@@@Z");

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
struct DecisionTreeCollection* __fastcall __ct__22DecisionTreeCollectionFv(struct DecisionTreeCollection* this) asm("??0DecisionTreeCollection@@QAE@XZ");

struct Attribute
{
  struct Base super;  /* 0x0 */
};
static_assert(sizeof(struct Attribute) == 0x8, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009dd3b8 mac inlined Attribute::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__9Attribute asm("??_R0?AVAttribute@@@8");
// win1.41 009a9ff0 mac inlined Attribute::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__9Attribute asm("??_R1A@?0A@A@Attribute@@8");
// win1.41 009aa058 mac inlined Attribute::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__9Attribute asm("??_R2Attribute@@8");
// win1.41 009aa068 mac inlined Attribute::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__9Attribute asm("??_R3Attribute@@8");

// Override methods

// win1.41 004cb750 mac 1023cc80 Attribute::_dt(void)
void __fastcall __dt__9AttributeFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAttribute@@UAEPAXI@Z");

struct AttributeAbodeBeingBuilt
{
  struct Attribute super;  /* 0x0 */
};
static_assert(sizeof(struct AttributeAbodeBeingBuilt) == 0x8, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bdeef0 mac inlined AttributeAbodeBeingBuilt::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__24AttributeAbodeBeingBuilt asm("??_R0?AVAttributeAbodeBeingBuilt@@@8");
// win1.41 009aa5e0 mac inlined AttributeAbodeBeingBuilt::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__24AttributeAbodeBeingBuilt asm("??_R1A@?0A@A@AttributeAbodeBeingBuilt@@8");
// win1.41 009aa5f8 mac inlined AttributeAbodeBeingBuilt::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__24AttributeAbodeBeingBuilt asm("??_R2AttributeAbodeBeingBuilt@@8");
// win1.41 009aa608 mac inlined AttributeAbodeBeingBuilt::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__24AttributeAbodeBeingBuilt asm("??_R3AttributeAbodeBeingBuilt@@8");

// Override methods

// win1.41 004d6090 mac 10249c80 AttributeAbodeBeingBuilt::_dt(void)
void __fastcall __dt__24AttributeAbodeBeingBuiltFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAttributeAbodeBeingBuilt@@UAEPAXI@Z");

struct AttributeAbodeType
{
  struct Attribute super;  /* 0x0 */
};
static_assert(sizeof(struct AttributeAbodeType) == 0x8, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bdef48 mac inlined AttributeAbodeType::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__18AttributeAbodeType asm("??_R0?AVAttributeAbodeType@@@8");
// win1.41 009aa680 mac inlined AttributeAbodeType::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__18AttributeAbodeType asm("??_R1A@?0A@A@AttributeAbodeType@@8");
// win1.41 009aa698 mac inlined AttributeAbodeType::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__18AttributeAbodeType asm("??_R2AttributeAbodeType@@8");
// win1.41 009aa6a8 mac inlined AttributeAbodeType::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__18AttributeAbodeType asm("??_R3AttributeAbodeType@@8");

// Override methods

// win1.41 004d6020 mac 10249e60 AttributeAbodeType::_dt(void)
void __fastcall __dt__18AttributeAbodeTypeFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAttributeAbodeType@@UAEPAXI@Z");

struct AttributeAllegiance
{
  struct Attribute super;  /* 0x0 */
};
static_assert(sizeof(struct AttributeAllegiance) == 0x8, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009dd300 mac inlined AttributeAllegiance::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__19AttributeAllegiance asm("??_R0?AVAttributeAllegiance@@@8");
// win1.41 009a9e60 mac inlined AttributeAllegiance::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__19AttributeAllegiance asm("??_R1A@?0A@A@AttributeAllegiance@@8");
// win1.41 009a9e78 mac inlined AttributeAllegiance::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__19AttributeAllegiance asm("??_R2AttributeAllegiance@@8");
// win1.41 009a9e88 mac inlined AttributeAllegiance::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__19AttributeAllegiance asm("??_R3AttributeAllegiance@@8");

// Override methods

// win1.41 004cb7c0 mac 1024bad0 AttributeAllegiance::_dt(void)
void __fastcall __dt__19AttributeAllegianceFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAttributeAllegiance@@UAEPAXI@Z");

struct AttributeAnimate
{
  struct Attribute super;  /* 0x0 */
};
static_assert(sizeof(struct AttributeAnimate) == 0x8, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009dd270 mac inlined AttributeAnimate::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__16AttributeAnimate asm("??_R0?AVAttributeAnimate@@@8");
// win1.41 009a9d20 mac inlined AttributeAnimate::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__16AttributeAnimate asm("??_R1A@?0A@A@AttributeAnimate@@8");
// win1.41 009a9d38 mac inlined AttributeAnimate::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__16AttributeAnimate asm("??_R2AttributeAnimate@@8");
// win1.41 009a9d48 mac inlined AttributeAnimate::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__16AttributeAnimate asm("??_R3AttributeAnimate@@8");

// Override methods

// win1.41 004cb8b0 mac 1024b770 AttributeAnimate::_dt(void)
void __fastcall __dt__16AttributeAnimateFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAttributeAnimate@@UAEPAXI@Z");

struct AttributeCreatureDominantDesire
{
  struct Attribute super;  /* 0x0 */
};
static_assert(sizeof(struct AttributeCreatureDominantDesire) == 0x8, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bdef18 mac inlined AttributeCreatureDominantDesire::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__31AttributeCreatureDominantDesire asm("??_R0?AVAttributeCreatureDominantDesire@@@8");
// win1.41 009aa630 mac inlined AttributeCreatureDominantDesire::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__31AttributeCreatureDominantDesire asm("??_R1A@?0A@A@AttributeCreatureDominantDesire@@8");
// win1.41 009aa648 mac inlined AttributeCreatureDominantDesire::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__31AttributeCreatureDominantDesire asm("??_R2AttributeCreatureDominantDesire@@8");
// win1.41 009aa658 mac inlined AttributeCreatureDominantDesire::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__31AttributeCreatureDominantDesire asm("??_R3AttributeCreatureDominantDesire@@8");

// Override methods

// win1.41 004d5da0 mac 1024abd0 AttributeCreatureDominantDesire::_dt(void)
void __fastcall __dt__31AttributeCreatureDominantDesireFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAttributeCreatureDominantDesire@@UAEPAXI@Z");

struct AttributeCreatureHeight
{
  struct Attribute super;  /* 0x0 */
};
static_assert(sizeof(struct AttributeCreatureHeight) == 0x8, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bdeec8 mac inlined AttributeCreatureHeight::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__23AttributeCreatureHeight asm("??_R0?AVAttributeCreatureHeight@@@8");
// win1.41 009aa590 mac inlined AttributeCreatureHeight::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__23AttributeCreatureHeight asm("??_R1A@?0A@A@AttributeCreatureHeight@@8");
// win1.41 009aa5a8 mac inlined AttributeCreatureHeight::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__23AttributeCreatureHeight asm("??_R2AttributeCreatureHeight@@8");
// win1.41 009aa5b8 mac inlined AttributeCreatureHeight::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__23AttributeCreatureHeight asm("??_R3AttributeCreatureHeight@@8");

// Override methods

// win1.41 004d5e10 mac 1024aa00 AttributeCreatureHeight::_dt(void)
void __fastcall __dt__23AttributeCreatureHeightFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAttributeCreatureHeight@@UAEPAXI@Z");

struct AttributeCreatureSpellKnowledge
{
  struct Attribute super;  /* 0x0 */
};
static_assert(sizeof(struct AttributeCreatureSpellKnowledge) == 0x8, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bdee98 mac inlined AttributeCreatureSpellKnowledge::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__31AttributeCreatureSpellKnowledge asm("??_R0?AVAttributeCreatureSpellKnowledge@@@8");
// win1.41 009aa540 mac inlined AttributeCreatureSpellKnowledge::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__31AttributeCreatureSpellKnowledge asm("??_R1A@?0A@A@AttributeCreatureSpellKnowledge@@8");
// win1.41 009aa558 mac inlined AttributeCreatureSpellKnowledge::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__31AttributeCreatureSpellKnowledge asm("??_R2AttributeCreatureSpellKnowledge@@8");
// win1.41 009aa568 mac inlined AttributeCreatureSpellKnowledge::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__31AttributeCreatureSpellKnowledge asm("??_R3AttributeCreatureSpellKnowledge@@8");

// Override methods

// win1.41 004d5e70 mac 1024a860 AttributeCreatureSpellKnowledge::_dt(void)
void __fastcall __dt__31AttributeCreatureSpellKnowledgeFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAttributeCreatureSpellKnowledge@@UAEPAXI@Z");

struct AttributeCreatureType
{
  struct Attribute super;  /* 0x0 */
};
static_assert(sizeof(struct AttributeCreatureType) == 0x8, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009dd248 mac inlined AttributeCreatureType::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__21AttributeCreatureType asm("??_R0?AVAttributeCreatureType@@@8");
// win1.41 009a9cd0 mac inlined AttributeCreatureType::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__21AttributeCreatureType asm("??_R1A@?0A@A@AttributeCreatureType@@8");
// win1.41 009a9ce8 mac inlined AttributeCreatureType::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__21AttributeCreatureType asm("??_R2AttributeCreatureType@@8");
// win1.41 009a9cf8 mac inlined AttributeCreatureType::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__21AttributeCreatureType asm("??_R3AttributeCreatureType@@8");

// Override methods

// win1.41 004cbbe0 mac 10247480 AttributeCreatureType::_dt(void)
void __fastcall __dt__21AttributeCreatureTypeFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAttributeCreatureType@@UAEPAXI@Z");

struct AttributeCreatureWhatHeIsCarrying
{
  struct Attribute super;  /* 0x0 */
};
static_assert(sizeof(struct AttributeCreatureWhatHeIsCarrying) == 0x8, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bdee68 mac inlined AttributeCreatureWhatHeIsCarrying::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__33AttributeCreatureWhatHeIsCarrying asm("??_R0?AVAttributeCreatureWhatHeIsCarrying@@@8");
// win1.41 009aa4f0 mac inlined AttributeCreatureWhatHeIsCarrying::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__33AttributeCreatureWhatHeIsCarrying asm("??_R1A@?0A@A@AttributeCreatureWhatHeIsCarrying@@8");
// win1.41 009aa508 mac inlined AttributeCreatureWhatHeIsCarrying::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__33AttributeCreatureWhatHeIsCarrying asm("??_R2AttributeCreatureWhatHeIsCarrying@@8");
// win1.41 009aa518 mac inlined AttributeCreatureWhatHeIsCarrying::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__33AttributeCreatureWhatHeIsCarrying asm("??_R3AttributeCreatureWhatHeIsCarrying@@8");

// Override methods

// win1.41 004d5ed0 mac 1024a6c0 AttributeCreatureWhatHeIsCarrying::_dt(void)
void __fastcall __dt__33AttributeCreatureWhatHeIsCarryingFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAttributeCreatureWhatHeIsCarrying@@UAEPAXI@Z");

struct AttributeForestSize
{
  struct Attribute super;  /* 0x0 */
};
static_assert(sizeof(struct AttributeForestSize) == 0x8, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bdee40 mac inlined AttributeForestSize::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__19AttributeForestSize asm("??_R0?AVAttributeForestSize@@@8");
// win1.41 009aa4a0 mac inlined AttributeForestSize::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__19AttributeForestSize asm("??_R1A@?0A@A@AttributeForestSize@@8");
// win1.41 009aa4b8 mac inlined AttributeForestSize::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__19AttributeForestSize asm("??_R2AttributeForestSize@@8");
// win1.41 009aa4c8 mac inlined AttributeForestSize::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__19AttributeForestSize asm("??_R3AttributeForestSize@@8");

// Override methods

// win1.41 004d5f40 mac 1024a510 AttributeForestSize::_dt(void)
void __fastcall __dt__19AttributeForestSizeFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAttributeForestSize@@UAEPAXI@Z");

struct AttributeIsHarderThanMe
{
  struct Attribute super;  /* 0x0 */
};
static_assert(sizeof(struct AttributeIsHarderThanMe) == 0x8, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009dd290 mac inlined AttributeIsHarderThanMe::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__23AttributeIsHarderThanMe asm("??_R0?AVAttributeIsHarderThanMe@@@8");
// win1.41 009a9d70 mac inlined AttributeIsHarderThanMe::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__23AttributeIsHarderThanMe asm("??_R1A@?0A@A@AttributeIsHarderThanMe@@8");
// win1.41 009a9d88 mac inlined AttributeIsHarderThanMe::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__23AttributeIsHarderThanMe asm("??_R2AttributeIsHarderThanMe@@8");
// win1.41 009a9d98 mac inlined AttributeIsHarderThanMe::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__23AttributeIsHarderThanMe asm("??_R3AttributeIsHarderThanMe@@8");

// Override methods

// win1.41 004cbb80 mac 102497e0 AttributeIsHarderThanMe::_dt(void)
void __fastcall __dt__23AttributeIsHarderThanMeFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAttributeIsHarderThanMe@@UAEPAXI@Z");

struct AttributeLife
{
  struct Attribute super;  /* 0x0 */
};
static_assert(sizeof(struct AttributeLife) == 0x8, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009dd3d0 mac inlined AttributeLife::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__13AttributeLife asm("??_R0?AVAttributeLife@@@8");
// win1.41 009aa008 mac inlined AttributeLife::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__13AttributeLife asm("??_R1A@?0A@A@AttributeLife@@8");
// win1.41 009aa020 mac inlined AttributeLife::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__13AttributeLife asm("??_R2AttributeLife@@8");
// win1.41 009aa030 mac inlined AttributeLife::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__13AttributeLife asm("??_R3AttributeLife@@8");

// Override methods

// win1.41 004cb980 mac 1024b470 AttributeLife::_dt(void)
void __fastcall __dt__13AttributeLifeFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAttributeLife@@UAEPAXI@Z");

struct AttributeMobileObjectType
{
  struct Attribute super;  /* 0x0 */
};
static_assert(sizeof(struct AttributeMobileObjectType) == 0x8, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bdef70 mac inlined AttributeMobileObjectType::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__25AttributeMobileObjectType asm("??_R0?AVAttributeMobileObjectType@@@8");
// win1.41 009aa6d0 mac inlined AttributeMobileObjectType::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__25AttributeMobileObjectType asm("??_R1A@?0A@A@AttributeMobileObjectType@@8");
// win1.41 009aa6e8 mac inlined AttributeMobileObjectType::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__25AttributeMobileObjectType asm("??_R2AttributeMobileObjectType@@8");
// win1.41 009aa6f8 mac inlined AttributeMobileObjectType::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__25AttributeMobileObjectType asm("??_R3AttributeMobileObjectType@@8");

// Override methods

// win1.41 004d5fb0 mac 1024a010 AttributeMobileObjectType::_dt(void)
void __fastcall __dt__25AttributeMobileObjectTypeFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAttributeMobileObjectType@@UAEPAXI@Z");

struct AttributeOnFire
{
  struct Attribute super;  /* 0x0 */
};
static_assert(sizeof(struct AttributeOnFire) == 0x8, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009dd348 mac inlined AttributeOnFire::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__15AttributeOnFire asm("??_R0?AVAttributeOnFire@@@8");
// win1.41 009a9f00 mac inlined AttributeOnFire::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__15AttributeOnFire asm("??_R1A@?0A@A@AttributeOnFire@@8");
// win1.41 009a9f18 mac inlined AttributeOnFire::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__15AttributeOnFire asm("??_R2AttributeOnFire@@8");
// win1.41 009a9f28 mac inlined AttributeOnFire::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__15AttributeOnFire asm("??_R3AttributeOnFire@@8");

// Override methods

// win1.41 004cbac0 mac 10249ad0 AttributeOnFire::_dt(void)
void __fastcall __dt__15AttributeOnFireFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAttributeOnFire@@UAEPAXI@Z");

struct AttributeOrigin
{
  struct Attribute super;  /* 0x0 */
};
static_assert(sizeof(struct AttributeOrigin) == 0x8, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009dd2b8 mac inlined AttributeOrigin::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__15AttributeOrigin asm("??_R0?AVAttributeOrigin@@@8");
// win1.41 009a9dc0 mac inlined AttributeOrigin::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__15AttributeOrigin asm("??_R1A@?0A@A@AttributeOrigin@@8");
// win1.41 009a9dd8 mac inlined AttributeOrigin::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__15AttributeOrigin asm("??_R2AttributeOrigin@@8");
// win1.41 009a9de8 mac inlined AttributeOrigin::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__15AttributeOrigin asm("??_R3AttributeOrigin@@8");

// Override methods

// win1.41 004cb830 mac 1024b920 AttributeOrigin::_dt(void)
void __fastcall __dt__15AttributeOriginFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAttributeOrigin@@UAEPAXI@Z");

struct AttributePlayerNumber
{
  struct Attribute super;  /* 0x0 */
};
static_assert(sizeof(struct AttributePlayerNumber) == 0x8, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009dd2d8 mac inlined AttributePlayerNumber::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__21AttributePlayerNumber asm("??_R0?AVAttributePlayerNumber@@@8");
// win1.41 009a9e10 mac inlined AttributePlayerNumber::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__21AttributePlayerNumber asm("??_R1A@?0A@A@AttributePlayerNumber@@8");
// win1.41 009a9e28 mac inlined AttributePlayerNumber::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__21AttributePlayerNumber asm("??_R2AttributePlayerNumber@@8");
// win1.41 009a9e38 mac inlined AttributePlayerNumber::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__21AttributePlayerNumber asm("??_R3AttributePlayerNumber@@8");

// Override methods

// win1.41 004cbb20 mac 10249960 AttributePlayerNumber::_dt(void)
void __fastcall __dt__21AttributePlayerNumberFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAttributePlayerNumber@@UAEPAXI@Z");

struct AttributeSex
{
  struct Attribute super;  /* 0x0 */
};
static_assert(sizeof(struct AttributeSex) == 0x8, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009dd328 mac inlined AttributeSex::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__12AttributeSex asm("??_R0?AVAttributeSex@@@8");
// win1.41 009a9eb0 mac inlined AttributeSex::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__12AttributeSex asm("??_R1A@?0A@A@AttributeSex@@8");
// win1.41 009a9ec8 mac inlined AttributeSex::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__12AttributeSex asm("??_R2AttributeSex@@8");
// win1.41 009a9ed8 mac inlined AttributeSex::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__12AttributeSex asm("??_R3AttributeSex@@8");

// Override methods

// win1.41 004cba50 mac 1024a200 AttributeSex::_dt(void)
void __fastcall __dt__12AttributeSexFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAttributeSex@@UAEPAXI@Z");

struct AttributeTownReligiousBeliefInYou
{
  struct Attribute super;  /* 0x0 */
};
static_assert(sizeof(struct AttributeTownReligiousBeliefInYou) == 0x8, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009dd4c8 mac inlined AttributeTownReligiousBeliefInYou::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__33AttributeTownReligiousBeliefInYou asm("??_R0?AVAttributeTownReligiousBeliefInYou@@@8");
// win1.41 009aa0e0 mac inlined AttributeTownReligiousBeliefInYou::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__33AttributeTownReligiousBeliefInYou asm("??_R1A@?0A@A@AttributeTownReligiousBeliefInYou@@8");
// win1.41 009aa0f8 mac inlined AttributeTownReligiousBeliefInYou::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__33AttributeTownReligiousBeliefInYou asm("??_R2AttributeTownReligiousBeliefInYou@@8");
// win1.41 009aa108 mac inlined AttributeTownReligiousBeliefInYou::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__33AttributeTownReligiousBeliefInYou asm("??_R3AttributeTownReligiousBeliefInYou@@8");

// Override methods

// win1.41 004cd710 mac 1024b0c0 AttributeTownReligiousBeliefInYou::_dt(void)
void __fastcall __dt__33AttributeTownReligiousBeliefInYouFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAttributeTownReligiousBeliefInYou@@UAEPAXI@Z");

struct AttributeTownSize
{
  struct Attribute super;  /* 0x0 */
};
static_assert(sizeof(struct AttributeTownSize) == 0x8, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009dd518 mac inlined AttributeTownSize::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__17AttributeTownSize asm("??_R0?AVAttributeTownSize@@@8");
// win1.41 009aa180 mac inlined AttributeTownSize::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__17AttributeTownSize asm("??_R1A@?0A@A@AttributeTownSize@@8");
// win1.41 009aa198 mac inlined AttributeTownSize::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__17AttributeTownSize asm("??_R2AttributeTownSize@@8");
// win1.41 009aa1a8 mac inlined AttributeTownSize::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__17AttributeTownSize asm("??_R3AttributeTownSize@@8");

// Override methods

// win1.41 004cd7e0 mac 1024ad70 AttributeTownSize::_dt(void)
void __fastcall __dt__17AttributeTownSizeFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAttributeTownSize@@UAEPAXI@Z");

struct AttributeTribe
{
  struct Attribute super;  /* 0x0 */
};
static_assert(sizeof(struct AttributeTribe) == 0x8, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009dd4f8 mac inlined AttributeTribe::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__14AttributeTribe asm("??_R0?AVAttributeTribe@@@8");
// win1.41 009aa130 mac inlined AttributeTribe::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__14AttributeTribe asm("??_R1A@?0A@A@AttributeTribe@@8");
// win1.41 009aa148 mac inlined AttributeTribe::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__14AttributeTribe asm("??_R2AttributeTribe@@8");
// win1.41 009aa158 mac inlined AttributeTribe::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__14AttributeTribe asm("??_R3AttributeTribe@@8");

// Override methods

// win1.41 004cd6a0 mac 1024b2c0 AttributeTribe::_dt(void)
void __fastcall __dt__14AttributeTribeFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAttributeTribe@@UAEPAXI@Z");

struct AttributeType
{
  struct Attribute super;  /* 0x0 */
};
static_assert(sizeof(struct AttributeType) == 0x8, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009dd228 mac inlined AttributeType::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__13AttributeType asm("??_R0?AVAttributeType@@@8");
// win1.41 009a9c80 mac inlined AttributeType::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__13AttributeType asm("??_R1A@?0A@A@AttributeType@@8");
// win1.41 009a9c98 mac inlined AttributeType::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__13AttributeType asm("??_R2AttributeType@@8");
// win1.41 009a9ca8 mac inlined AttributeType::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__13AttributeType asm("??_R3AttributeType@@8");

// Override methods

// win1.41 004cb910 mac 1024b610 AttributeType::_dt(void)
void __fastcall __dt__13AttributeTypeFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAttributeType@@UAEPAXI@Z");

struct AttributeVillagerJob
{
  struct Attribute super;  /* 0x0 */
};
static_assert(sizeof(struct AttributeVillagerJob) == 0x8, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009dd390 mac inlined AttributeVillagerJob::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__20AttributeVillagerJob asm("??_R0?AVAttributeVillagerJob@@@8");
// win1.41 009a9fa0 mac inlined AttributeVillagerJob::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__20AttributeVillagerJob asm("??_R1A@?0A@A@AttributeVillagerJob@@8");
// win1.41 009a9fb8 mac inlined AttributeVillagerJob::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__20AttributeVillagerJob asm("??_R2AttributeVillagerJob@@8");
// win1.41 009a9fc8 mac inlined AttributeVillagerJob::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__20AttributeVillagerJob asm("??_R3AttributeVillagerJob@@8");

// Override methods

// win1.41 004cb9e0 mac 1024a3a0 AttributeVillagerJob::_dt(void)
void __fastcall __dt__20AttributeVillagerJobFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAttributeVillagerJob@@UAEPAXI@Z");

struct AttributeWhatTownNeedsMost
{
  struct Attribute super;  /* 0x0 */
};
static_assert(sizeof(struct AttributeWhatTownNeedsMost) == 0x8, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009dd498 mac inlined AttributeWhatTownNeedsMost::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__26AttributeWhatTownNeedsMost asm("??_R0?AVAttributeWhatTownNeedsMost@@@8");
// win1.41 009aa090 mac inlined AttributeWhatTownNeedsMost::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__26AttributeWhatTownNeedsMost asm("??_R1A@?0A@A@AttributeWhatTownNeedsMost@@8");
// win1.41 009aa0a8 mac inlined AttributeWhatTownNeedsMost::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__26AttributeWhatTownNeedsMost asm("??_R2AttributeWhatTownNeedsMost@@8");
// win1.41 009aa0b8 mac inlined AttributeWhatTownNeedsMost::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__26AttributeWhatTownNeedsMost asm("??_R3AttributeWhatTownNeedsMost@@8");

// Override methods

// win1.41 004cd770 mac 1024af20 AttributeWhatTownNeedsMost::_dt(void)
void __fastcall __dt__26AttributeWhatTownNeedsMostFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAttributeWhatTownNeedsMost@@UAEPAXI@Z");

#endif /* BW1_DECOMP_CREATURE_MENTAL_ATTRIBUTE_TEST_INCLUDED_H */
