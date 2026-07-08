#ifndef BW1_DECOMP_CREATURE_MENTAL_ATTRIBUTE_TEST_INCLUDED_H
#define BW1_DECOMP_CREATURE_MENTAL_ATTRIBUTE_TEST_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/CreatureEnum.h> /* For enum ATTRIBUTE_TYPE, enum CREATURE_ACTION */
#include <chlasm/Enum.h>         /* For enum CREATURE_DESIRES */

#include "Base.h"                  /* For struct Base */
#include "CreatureLearning.h"      /* For struct CreatureLearningEpisode */
#include "CreatureLessonChooser.h" /* For _LESSON_TYPE_COUNT */

enum DECISION_TREE_TYPE
{
	DECISION_TREE_TYPE_0x0 = 0x0,
	_DECISION_TREE_TYPE_COUNT = 0x1
};

struct AttributeTest
{
	LHLinkedList__CreatureLearningEpisode episodes; /* 0x0 */
	uint32_t                              field_0x8;
	uint32_t                              field_0xc;
	uint32_t                              field_0x10;
	uint32_t                              field_0x14;
	uint32_t                              field_0x18;
	ATTRIBUTE_TYPE                        attribute_stack[0x18];
	uint32_t                              field_0x7c;
	uint32_t                              field_0x80;
	uint32_t                              field_0x84;
	uint32_t                              field_0x88;
	uint32_t                              field_0x8c;
	uint32_t                              field_0x90;

	// Constructors

	// BW1W120 004d4c20 BW1M100 1024fa20 AttributeTest::AttributeTest(DECISION_TREE_TYPE, CREATURE_DESIRES, CREATURE_ACTION)
	AttributeTest(DECISION_TREE_TYPE tree_type, CREATURE_DESIRES desire, CREATURE_ACTION action);
};

struct DecisionTree
{
	DecisionTreeNode root; /* 0x0 */

	// Constructors

	// BW1W120 004d4380 BW1M100 102506c0 DecisionTree::DecisionTree(DECISION_TREE_TYPE, CREATURE_DESIRES, CREATURE_ACTION)
	DecisionTree(DECISION_TREE_TYPE tree_type, CREATURE_DESIRES desire, CREATURE_ACTION action);
};

struct DecisionTreeAgenda
{
	DECISION_TREE_TYPE tree_type; /* 0x0 */
	CREATURE_DESIRES   creature_desires;
	uint32_t           field_0x8;
	uint32_t           field_0xc;
	uint32_t           field_0x10;
	DecisionTree       trees[0x2];

	// Constructors

	// BW1W120 004d43f0 BW1M100 102505c0 DecisionTreeAgenda::DecisionTreeAgenda(DECISION_TREE_TYPE, CREATURE_DESIRES)
	DecisionTreeAgenda(DECISION_TREE_TYPE tree_type, CREATURE_DESIRES desire);
};

struct DecisionTreeCollection
{
	DecisionTreeAgendas agendas[_LESSON_TYPE_COUNT]; /* 0x0 */

	// Constructors

	// BW1W120 004d7220 BW1M100 1024c150 DecisionTreeCollection::DecisionTreeCollection(void)
	DecisionTreeCollection();
};

class Attribute : public Base
{
public:
	// Override methods

	// BW1W120 004cb750 BW1M100 1023cc80 Attribute::_dt(void)
	virtual ~Attribute();
};

class AttributeAbodeBeingBuilt : public Attribute
{
public:
	// Override methods

	// BW1W120 004d6090 BW1M100 10249c80 AttributeAbodeBeingBuilt::_dt(void)
	virtual ~AttributeAbodeBeingBuilt();
};

class AttributeAbodeType : public Attribute
{
public:
	// Override methods

	// BW1W120 004d6020 BW1M100 10249e60 AttributeAbodeType::_dt(void)
	virtual ~AttributeAbodeType();
};

class AttributeAllegiance : public Attribute
{
public:
	// Override methods

	// BW1W120 004cb7c0 BW1M100 1024bad0 AttributeAllegiance::_dt(void)
	virtual ~AttributeAllegiance();
};

class AttributeAnimate : public Attribute
{
public:
	// Override methods

	// BW1W120 004cb8b0 BW1M100 1024b770 AttributeAnimate::_dt(void)
	virtual ~AttributeAnimate();
};

class AttributeCreatureDominantDesire : public Attribute
{
public:
	// Override methods

	// BW1W120 004d5da0 BW1M100 1024abd0 AttributeCreatureDominantDesire::_dt(void)
	virtual ~AttributeCreatureDominantDesire();
};

class AttributeCreatureHeight : public Attribute
{
public:
	// Override methods

	// BW1W120 004d5e10 BW1M100 1024aa00 AttributeCreatureHeight::_dt(void)
	virtual ~AttributeCreatureHeight();
};

class AttributeCreatureSpellKnowledge : public Attribute
{
public:
	// Override methods

	// BW1W120 004d5e70 BW1M100 1024a860 AttributeCreatureSpellKnowledge::_dt(void)
	virtual ~AttributeCreatureSpellKnowledge();
};

class AttributeCreatureType : public Attribute
{
public:
	// Override methods

	// BW1W120 004cbbe0 BW1M100 10247480 AttributeCreatureType::_dt(void)
	virtual ~AttributeCreatureType();
};

class AttributeCreatureWhatHeIsCarrying : public Attribute
{
public:
	// Override methods

	// BW1W120 004d5ed0 BW1M100 1024a6c0 AttributeCreatureWhatHeIsCarrying::_dt(void)
	virtual ~AttributeCreatureWhatHeIsCarrying();
};

class AttributeForestSize : public Attribute
{
public:
	// Override methods

	// BW1W120 004d5f40 BW1M100 1024a510 AttributeForestSize::_dt(void)
	virtual ~AttributeForestSize();
};

class AttributeIsHarderThanMe : public Attribute
{
public:
	// Override methods

	// BW1W120 004cbb80 BW1M100 102497e0 AttributeIsHarderThanMe::_dt(void)
	virtual ~AttributeIsHarderThanMe();
};

class AttributeLife : public Attribute
{
public:
	// Override methods

	// BW1W120 004cb980 BW1M100 1024b470 AttributeLife::_dt(void)
	virtual ~AttributeLife();
};

class AttributeMobileObjectType : public Attribute
{
public:
	// Override methods

	// BW1W120 004d5fb0 BW1M100 1024a010 AttributeMobileObjectType::_dt(void)
	virtual ~AttributeMobileObjectType();
};

class AttributeOnFire : public Attribute
{
public:
	// Override methods

	// BW1W120 004cbac0 BW1M100 10249ad0 AttributeOnFire::_dt(void)
	virtual ~AttributeOnFire();
};

class AttributeOrigin : public Attribute
{
public:
	// Override methods

	// BW1W120 004cb830 BW1M100 1024b920 AttributeOrigin::_dt(void)
	virtual ~AttributeOrigin();
};

class AttributePlayerNumber : public Attribute
{
public:
	// Override methods

	// BW1W120 004cbb20 BW1M100 10249960 AttributePlayerNumber::_dt(void)
	virtual ~AttributePlayerNumber();
};

class AttributeSex : public Attribute
{
public:
	// Override methods

	// BW1W120 004cba50 BW1M100 1024a200 AttributeSex::_dt(void)
	virtual ~AttributeSex();
};

class AttributeTownReligiousBeliefInYou : public Attribute
{
public:
	// Override methods

	// BW1W120 004cd710 BW1M100 1024b0c0 AttributeTownReligiousBeliefInYou::_dt(void)
	virtual ~AttributeTownReligiousBeliefInYou();
};

class AttributeTownSize : public Attribute
{
public:
	// Override methods

	// BW1W120 004cd7e0 BW1M100 1024ad70 AttributeTownSize::_dt(void)
	virtual ~AttributeTownSize();
};

class AttributeTribe : public Attribute
{
public:
	// Override methods

	// BW1W120 004cd6a0 BW1M100 1024b2c0 AttributeTribe::_dt(void)
	virtual ~AttributeTribe();
};

class AttributeType : public Attribute
{
public:
	// Override methods

	// BW1W120 004cb910 BW1M100 1024b610 AttributeType::_dt(void)
	virtual ~AttributeType();
};

class AttributeVillagerJob : public Attribute
{
public:
	// Override methods

	// BW1W120 004cb9e0 BW1M100 1024a3a0 AttributeVillagerJob::_dt(void)
	virtual ~AttributeVillagerJob();
};

class AttributeWhatTownNeedsMost : public Attribute
{
public:
	// Override methods

	// BW1W120 004cd770 BW1M100 1024af20 AttributeWhatTownNeedsMost::_dt(void)
	virtual ~AttributeWhatTownNeedsMost();
};

#endif /* BW1_DECOMP_CREATURE_MENTAL_ATTRIBUTE_TEST_INCLUDED_H */
