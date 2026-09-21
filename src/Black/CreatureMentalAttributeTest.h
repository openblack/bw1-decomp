#ifndef BW1_DECOMP_CREATURE_MENTAL_ATTRIBUTE_TEST_INCLUDED_H
#define BW1_DECOMP_CREATURE_MENTAL_ATTRIBUTE_TEST_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/CreatureEnum.h>                /* For enum ATTRIBUTE_TYPE, enum CREATURE_ACTION */
#include <chlasm/Enum.h>                        /* For enum CREATURE_DESIRES */
#include <Lionhead/LHLib/ver5.0/LHLinkedList.h> /* For struct LHLinkedList */

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
	// BW1W120 004d52b0 BW1M119 012526c0
	static void CreateAttributeArray();
	// BW1W120 004d60e0 BW1M119 01252570
	static void CreateBeliefArray();
	// BW1W120 004d60b0 BW1M119 01252600
	static void DeleteAttributeArray();
	// BW1W120 004d6110 BW1M119 012524d0
	static void                            DeleteBeliefArray();
	LHLinkedList<CreatureLearningEpisode*> episodes; /* 0x0 */
	uint32_t                               field_0x8;
	uint32_t                               field_0xc;
	uint32_t                               field_0x10;
	uint32_t                               field_0x14;
	uint32_t                               field_0x18;
	ATTRIBUTE_TYPE                         AttributeStack[0x18];
	uint32_t                               field_0x7c;
	uint32_t                               field_0x80;
	uint32_t                               field_0x84;
	uint32_t                               field_0x88;
	uint32_t                               field_0x8c;
	uint32_t                               field_0x90;

	// Constructors

	// BW1W120 004d4c20 BW1M119 01254050
	AttributeTest(DECISION_TREE_TYPE tree_type, CREATURE_DESIRES desire, CREATURE_ACTION action);
};

struct DecisionTreeNode
{
	AttributeTest* tests[0x2]; /* 0x0 */
};

struct DecisionTree
{
	DecisionTreeNode root; /* 0x0 */

	// Constructors

	// BW1W120 004d4380 BW1M119 01254c90
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

	// BW1W120 004d43f0 BW1M119 01254ba0
	DecisionTreeAgenda(DECISION_TREE_TYPE tree_type, CREATURE_DESIRES desire);
};

struct DecisionTreeAgendas
{
	DecisionTreeAgenda* contents[0x28]; /* 0x0 */
};

struct DecisionTreeCollection
{
	DecisionTreeAgendas agendas[_LESSON_TYPE_COUNT]; /* 0x0 */

	// Constructors

	// BW1W120 004d7220 BW1M119 01250860
	DecisionTreeCollection();
};

class Attribute : public Base
{
public:
	// Override methods

	// BW1W120 004cb750 BW1M119 012412e0
	virtual ~Attribute();
};

class AttributeAbodeBeingBuilt : public Attribute
{
public:
	// Static members

	static char ValueNames[][64]; // fabricated name

	// Override methods

	// BW1W120 004d6090 BW1M119 0124e390
	virtual ~AttributeAbodeBeingBuilt();
};

class AttributeAbodeType : public Attribute
{
public:
	// Static members

	static char ValueNames[][64]; // fabricated name

	// Override methods

	// BW1W120 004d6020 BW1M119 0124e570
	virtual ~AttributeAbodeType();
};

class AttributeAllegiance : public Attribute
{
public:
	// Static members

	static char ValueNames[][64]; // fabricated name

	// Override methods

	// BW1W120 004cb7c0 BW1M119 012501e0
	virtual ~AttributeAllegiance();
};

class AttributeAnimate : public Attribute
{
public:
	// Override methods

	// BW1W120 004cb8b0 BW1M119 0124fe80
	virtual ~AttributeAnimate();
};

class AttributeCreatureDominantDesire : public Attribute
{
public:
	// Override methods

	// BW1W120 004d5da0 BW1M119 0124f2e0
	virtual ~AttributeCreatureDominantDesire();
};

class AttributeCreatureHeight : public Attribute
{
public:
	// Static members

	static char ValueNames[][64]; // fabricated name

	// Override methods

	// BW1W120 004d5e10 BW1M119 0124f110
	virtual ~AttributeCreatureHeight();
};

class AttributeCreatureSpellKnowledge : public Attribute
{
public:
	// Override methods

	// BW1W120 004d5e70 BW1M119 0124ef70
	virtual ~AttributeCreatureSpellKnowledge();
};

class AttributeCreatureType : public Attribute
{
public:
	// Override methods

	// BW1W120 004cbbe0 BW1M119 0124bb90
	virtual ~AttributeCreatureType();
};

class AttributeCreatureWhatHeIsCarrying : public Attribute
{
public:
	// Override methods

	// BW1W120 004d5ed0 BW1M119 0124edd0
	virtual ~AttributeCreatureWhatHeIsCarrying();
};

class AttributeForestSize : public Attribute
{
public:
	// Static members

	static char ValueNames[][64]; // fabricated name

	// Override methods

	// BW1W120 004d5f40 BW1M119 0124ec20
	virtual ~AttributeForestSize();
};

class AttributeIsHarderThanMe : public Attribute
{
public:
	// Override methods

	// BW1W120 004cbb80 BW1M119 0124def0
	virtual ~AttributeIsHarderThanMe();
};

class AttributeLife : public Attribute
{
public:
	// Static members

	static char ValueNames[][64]; // fabricated name

	// Override methods

	// BW1W120 004cb980 BW1M119 0124fb80
	virtual ~AttributeLife();
};

class AttributeMobileObjectType : public Attribute
{
public:
	// Static members

	static char ValueNames[][64]; // fabricated name

	// Override methods

	// BW1W120 004d5fb0 BW1M119 0124e720
	virtual ~AttributeMobileObjectType();
};

class AttributeOnFire : public Attribute
{
public:
	// Static members

	static char ValueNames[][64]; // fabricated name

	// Override methods

	// BW1W120 004cbac0 BW1M119 0124e1e0
	virtual ~AttributeOnFire();
};

class AttributeOrigin : public Attribute
{
public:
	// Static members

	static char ValueNames[][64]; // fabricated name

	// Override methods

	// BW1W120 004cb830 BW1M119 01250030
	virtual ~AttributeOrigin();
};

class AttributePlayerNumber : public Attribute
{
public:
	// Override methods

	// BW1W120 004cbb20 BW1M119 0124e070
	virtual ~AttributePlayerNumber();
};

class AttributeSex : public Attribute
{
public:
	// Static members

	static char ValueNames[][64]; // fabricated name

	// Override methods

	// BW1W120 004cba50 BW1M119 0124e910
	virtual ~AttributeSex();
};

class AttributeTownReligiousBeliefInYou : public Attribute
{
public:
	// Static members

	static char ValueNames[][64]; // fabricated name

	// Override methods

	// BW1W120 004cd710 BW1M119 0124f7d0
	virtual ~AttributeTownReligiousBeliefInYou();
};

class AttributeTownSize : public Attribute
{
public:
	// Static members

	static char ValueNames[][64]; // fabricated name

	// Override methods

	// BW1W120 004cd7e0 BW1M119 0124f480
	virtual ~AttributeTownSize();
};

class AttributeTribe : public Attribute
{
public:
	// Static members

	static char ValueNames[][64]; // fabricated name

	// Override methods

	// BW1W120 004cd6a0 BW1M119 0124f9d0
	virtual ~AttributeTribe();
};

class AttributeType : public Attribute
{
public:
	// Override methods

	// BW1W120 004cb910 BW1M119 0124fd20
	virtual ~AttributeType();
};

class AttributeVillagerJob : public Attribute
{
public:
	// Override methods

	// BW1W120 004cb9e0 BW1M119 0124eab0
	virtual ~AttributeVillagerJob();
};

class AttributeWhatTownNeedsMost : public Attribute
{
public:
	// Override methods

	// BW1W120 004cd770 BW1M119 0124f630
	virtual ~AttributeWhatTownNeedsMost();
};

#endif /* BW1_DECOMP_CREATURE_MENTAL_ATTRIBUTE_TEST_INCLUDED_H */
