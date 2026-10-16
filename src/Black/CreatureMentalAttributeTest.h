#ifndef BW1_DECOMP_CREATURE_MENTAL_ATTRIBUTE_TEST_INCLUDED_H
#define BW1_DECOMP_CREATURE_MENTAL_ATTRIBUTE_TEST_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */
#include <string.h> /* For strcpy */

#include <re_common.h>                          /* For ARRAY_SIZE, bool32_t */
#include <chlasm/CreatureEnum.h>                /* For enum ATTRIBUTE_TYPE, enum CREATURE_ACTION */
#include <chlasm/Enum.h>                        /* For enum CREATURE_DESIRES */
#include <Lionhead/LHLib/ver5.0/LHLinkedList.h> /* For struct LHLinkedList */

#include "Base.h"             /* For struct Base */
#include "CreatureLearning.h" /* For struct CreatureLearningEpisode */
#include "GameThingWithPos.h" /* For enum CREATURE_BELIEF_TYPE */

enum DECISION_TREE_TYPE
{
	DECISION_TREE_TYPE_ACTIVITY_OBJECT = 0x0,
	DECISION_TREE_TYPE_ACTION_OBJECT = 0x1,
	_DECISION_TREE_TYPE_COUNT = 0x2
};

// Value ranges for the attributes whose values are a fixed set of names; the enumerator names
// follow each attribute's ValueNames.

enum ATTRIBUTE_ALLEGIANCE
{
	ALLEGIANCE_FRIENDLY,
	ALLEGIANCE_ENEMY,
	ALLEGIANCE_ALLY,
	ALLEGIANCE_LAST
};

enum ATTRIBUTE_ORIGIN
{
	ORIGIN_NATURAL,
	ORIGIN_MAN_MADE,
	ORIGIN_MAGIC,
	ORIGIN_LAST
};

enum ATTRIBUTE_LIFE
{
	LIFE_LOW,
	LIFE_HIGH,
	LIFE_LAST
};

enum ATTRIBUTE_ON_FIRE
{
	ON_FIRE_IS_ON_FIRE,
	ON_FIRE_IS_NOT_ON_FIRE,
	ON_FIRE_LAST
};

enum ATTRIBUTE_TOWN_BELIEF
{
	TOWN_BELIEF_VERY_LOW,
	TOWN_BELIEF_LOW,
	TOWN_BELIEF_MEDIUM,
	TOWN_BELIEF_HIGH,
	TOWN_BELIEF_LAST
};

enum ATTRIBUTE_TOWN_SIZE
{
	TOWN_SIZE_SMALL,
	TOWN_SIZE_MEDIUM,
	TOWN_SIZE_LARGE,
	TOWN_SIZE_LAST
};

// Yes/no attributes, named "False" and "True" by ValueName.
enum ATTRIBUTE_BOOL
{
	ATTRIBUTE_BOOL_FALSE,
	ATTRIBUTE_BOOL_TRUE,
	ATTRIBUTE_BOOL_LAST
};

#define ATTRIBUTE_LIFE_LOW_LIMIT                  0.2f
#define ATTRIBUTE_TOWN_BELIEF_VERY_LOW_LIMIT      0.2f
#define ATTRIBUTE_TOWN_BELIEF_LOW_LIMIT           0.4f
#define ATTRIBUTE_TOWN_BELIEF_MEDIUM_LIMIT        0.6f
#define ATTRIBUTE_TOWN_SIZE_SMALL_POPULATION      20
#define ATTRIBUTE_TOWN_SIZE_MEDIUM_POPULATION     40
#define ATTRIBUTE_CREATURE_HEIGHT_VERY_SMALL_SIZE 0.25f
#define ATTRIBUTE_CREATURE_HEIGHT_SMALL_SIZE      0.75f
#define ATTRIBUTE_CREATURE_HEIGHT_MEDIUM_SIZE     1.25f
#define ATTRIBUTE_FOREST_SIZE_SMALL_TREES         10
#define ATTRIBUTE_FOREST_SIZE_MEDIUM_TREES        20

class Attribute;
class CreatureBelief;
class GameThingWithPos;
class GPlayer;

struct AttributeArrayEntry
{
	Attribute* Instance;
	char       Name[64];

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	AttributeArrayEntry(Attribute* instance, const char* name)
	{
		Instance = instance;
		strcpy(Name, name);
	}
};

struct AttributeTest
{
	// Static members

	static AttributeArrayEntry* AttributeArray[ATTRIBUTE_TYPE_LAST];

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

	// BW1W120 004d4bf0 BW1M119 012541d0
	float CalculateUtility(CreatureBelief* belief);
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

	// Static methods

	// BW1W120 004d6140 BW1M119 01252070
	static CreatureBelief* CreateBelief(CREATURE_BELIEF_TYPE type);
};

struct DecisionTreeAgendas
{
	DecisionTreeAgenda* contents[0x28]; /* 0x0 */
};

struct DecisionTreeCollection
{
	DecisionTreeAgendas agendas[_DECISION_TREE_TYPE_COUNT]; /* 0x0 */

	// Constructors

	// BW1W120 004d7220 BW1M119 01250860
	DecisionTreeCollection();

	// BW1W120 004d7670 BW1M119 01250390
	float ConvertUtilityToUsefulness(float utility);
	// BW1W120 inlined BW1M119 01272140
	float GetActivityObjectUtility(CreatureBelief* belief, CREATURE_DESIRES desire)
	{
		DecisionTreeAgenda* agenda = agendas[DECISION_TREE_TYPE_ACTIVITY_OBJECT].contents[desire];
		return agenda->trees[0].CalculateUtility(belief);
	}
};

class Attribute : public Base
{
public:
	/* 0x8 */ uint32_t Value;

	// Virtual methods

	// BW1W120 004cb6f0 BW1M119 01243290
	virtual const char* TypeName();
	// BW1W120 004cb700 BW1M119 012432d0
	virtual uint32_t ValueRange();
	// BW1W120 004cb710 BW1M119 01243310
	virtual const char* ValueName(unsigned long value);
	// BW1W120 004cb720 BW1M119 01243350
	virtual void UpdateValue(GameThingWithPos* thing, GPlayer* player);
	// BW1W120 004cb730 BW1M119 012433a0
	virtual ATTRIBUTE_TYPE GetType();
	// BW1W120 004cb740 BW1M119 012433d0
	virtual bool32_t IsDynamic();

	// Non-virtual methods

	// BW1W120 inlined BW1M119 011e4ba0
	uint32_t GetValue() { return Value; }
};

class AttributeAbodeBeingBuilt : public Attribute
{
public:
	// Static members

	static char ValueNames[][64];

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	AttributeAbodeBeingBuilt() {}
	// BW1W120 inlined BW1M119 inlined
	AttributeAbodeBeingBuilt(uint32_t value) { Value = value; }

	// Override methods

	// BW1W120 004d6050 BW1M119 0124e490
	virtual const char* TypeName();
	// BW1W120 004d6060 BW1M119 0124c4d0
	virtual uint32_t ValueRange();
	// BW1W120 004d6070 BW1M119 0124e4e0
	virtual const char* ValueName(unsigned long value);
	// BW1W120 004d3fc0 BW1M119 0124c3c0
	virtual void UpdateValue(GameThingWithPos* thing, GPlayer* player);
	// BW1W120 004d6080 BW1M119 0124e530
	virtual ATTRIBUTE_TYPE GetType();
	// BW1W120 004d6040 BW1M119 0124e440
	virtual bool32_t IsDynamic();
};

class AttributeAbodeType : public Attribute
{
public:
	// Static members

	static char ValueNames[][64]; // fabricated name

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	AttributeAbodeType() {}
	// BW1W120 inlined BW1M119 inlined
	AttributeAbodeType(uint32_t value) { Value = value; }

	// Override methods

	// BW1W120 004d5fe0 BW1M119 0124e650
	virtual const char* TypeName();
	// BW1W120 004d5ff0 BW1M119 0124c610
	virtual uint32_t ValueRange();
	// BW1W120 004d6000 BW1M119 0124e690
	virtual const char* ValueName(unsigned long value);
	// BW1W120 004d3f70 BW1M119 0124c520
	virtual void UpdateValue(GameThingWithPos* thing, GPlayer* player);
	// BW1W120 004d6010 BW1M119 0124e6e0
	virtual ATTRIBUTE_TYPE GetType();
	// BW1W120 004d5fd0 BW1M119 0124e610
	virtual bool32_t IsDynamic();
};

class AttributeAllegiance : public Attribute
{
public:
	// Static members

	static char ValueNames[][64]; // fabricated name

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	AttributeAllegiance() {}
	// BW1W120 inlined BW1M119 inlined
	AttributeAllegiance(uint32_t value) { Value = value; }

	// Override methods

	// BW1W120 004cb780 BW1M119 012502c0
	virtual const char* TypeName();
	// BW1W120 004cb790 BW1M119 0124deb0
	virtual uint32_t ValueRange();
	// BW1W120 004cb7a0 BW1M119 01250300
	virtual const char* ValueName(unsigned long value);
	// BW1W120 004d38c0 BW1M119 0124ddb0
	virtual void UpdateValue(GameThingWithPos* thing, GPlayer* player);
	// BW1W120 004cb7b0 BW1M119 01250350
	virtual ATTRIBUTE_TYPE GetType();
	// BW1W120 004cb770 BW1M119 01250280
	virtual bool32_t IsDynamic();
};

class AttributeAnimate : public Attribute
{
public:
	// Constructors

	// BW1W120 inlined BW1M119 inlined
	AttributeAnimate() {}
	// BW1W120 inlined BW1M119 inlined
	AttributeAnimate(uint32_t value) { Value = value; }

	// Override methods

	// BW1W120 004cb860 BW1M119 0124ff60
	virtual const char* TypeName();
	// BW1W120 004cb870 BW1M119 0124dc60
	virtual uint32_t ValueRange();
	// BW1W120 004cb880 BW1M119 0124ffa0
	virtual const char* ValueName(unsigned long value);
	// BW1W120 004d3930 BW1M119 0124db90
	virtual void UpdateValue(GameThingWithPos* thing, GPlayer* player);
	// BW1W120 004cb8a0 BW1M119 0124fff0
	virtual ATTRIBUTE_TYPE GetType();
	// BW1W120 004cb850 BW1M119 0124ff20
	virtual bool32_t IsDynamic();
};

class AttributeCreatureDominantDesire : public Attribute
{
public:
	// Constructors

	// BW1W120 inlined BW1M119 inlined
	AttributeCreatureDominantDesire() {}
	// BW1W120 inlined BW1M119 inlined
	AttributeCreatureDominantDesire(uint32_t value) { Value = value; }

	// Override methods

	// BW1W120 004d5d70 BW1M119 0124f3e0
	virtual const char* TypeName();
	// BW1W120 004d5d80 BW1M119 0124d290
	virtual uint32_t ValueRange();
	// BW1W120 004d3c50 BW1M119 0124d100
	virtual const char* ValueName(unsigned long value);
	// BW1W120 004d3bf0 BW1M119 0124d180
	virtual void UpdateValue(GameThingWithPos* thing, GPlayer* player);
	// BW1W120 004d5d90 BW1M119 0124f430
	virtual ATTRIBUTE_TYPE GetType();
	// BW1W120 004d5d60 BW1M119 0124f390
	virtual bool32_t IsDynamic();
};

class AttributeCreatureHeight : public Attribute
{
public:
	// Static members

	static char ValueNames[][64];

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	AttributeCreatureHeight() {}
	// BW1W120 inlined BW1M119 inlined
	AttributeCreatureHeight(uint32_t value) { Value = value; }

	// Override methods

	// BW1W120 004d5dd0 BW1M119 0124f200
	virtual const char* TypeName();
	// BW1W120 004d5de0 BW1M119 0124d0b0
	virtual uint32_t ValueRange();
	// BW1W120 004d5df0 BW1M119 0124f250
	virtual const char* ValueName(unsigned long value);
	// BW1W120 004d3c70 BW1M119 0124cf70
	virtual void UpdateValue(GameThingWithPos* thing, GPlayer* player);
	// BW1W120 004d5e00 BW1M119 0124f2a0
	virtual ATTRIBUTE_TYPE GetType();
	// BW1W120 004d5dc0 BW1M119 0124f1b0
	virtual bool32_t IsDynamic();
};

class AttributeCreatureSpellKnowledge : public Attribute
{
public:
	// Constructors

	// BW1W120 inlined BW1M119 inlined
	AttributeCreatureSpellKnowledge() {}
	// BW1W120 inlined BW1M119 inlined
	AttributeCreatureSpellKnowledge(uint32_t value) { Value = value; }

	// Override methods

	// BW1W120 004d5e40 BW1M119 0124f070
	virtual const char* TypeName();
	// BW1W120 004d5e50 BW1M119 0124cf20
	virtual uint32_t ValueRange();
	// BW1W120 004d3d60 BW1M119 0124cd90
	virtual const char* ValueName(unsigned long value);
	// BW1W120 004d3d10 BW1M119 0124ce20
	virtual void UpdateValue(GameThingWithPos* thing, GPlayer* player);
	// BW1W120 004d5e60 BW1M119 0124f0c0
	virtual ATTRIBUTE_TYPE GetType();
	// BW1W120 004d5e30 BW1M119 0124f020
	virtual bool32_t IsDynamic();
};

class AttributeCreatureType : public Attribute
{
public:
	// Constructors

	// BW1W120 inlined BW1M119 inlined
	AttributeCreatureType() {}
	// BW1W120 inlined BW1M119 inlined
	AttributeCreatureType(uint32_t value) { Value = value; }

	// Override methods

	// BW1W120 004cbbb0 BW1M119 0124bc70
	virtual const char* TypeName();
	// BW1W120 004cbbc0 BW1M119 0124bcb0
	virtual uint32_t ValueRange();
	// BW1W120 004d41d0 BW1M119 0124bd30
	virtual const char* ValueName(unsigned long value);
	// BW1W120 004d4180 BW1M119 0124bdb0
	virtual void UpdateValue(GameThingWithPos* thing, GPlayer* player);
	// BW1W120 004cbbd0 BW1M119 0124bcf0
	virtual ATTRIBUTE_TYPE GetType();
	// BW1W120 004cbba0 BW1M119 0124bc30
	virtual bool32_t IsDynamic();
};

class AttributeCreatureWhatHeIsCarrying : public Attribute
{
public:
	// Constructors

	// BW1W120 inlined BW1M119 inlined
	AttributeCreatureWhatHeIsCarrying() {}
	// BW1W120 inlined BW1M119 inlined
	AttributeCreatureWhatHeIsCarrying(uint32_t value) { Value = value; }

	// Override methods

	// BW1W120 004d5ea0 BW1M119 0124eed0
	virtual const char* TypeName();
	// BW1W120 004d5eb0 BW1M119 0124cd40
	virtual uint32_t ValueRange();
	// BW1W120 004d3de0 BW1M119 0124cbd0
	virtual const char* ValueName(unsigned long value);
	// BW1W120 004d3d80 BW1M119 0124cc30
	virtual void UpdateValue(GameThingWithPos* thing, GPlayer* player);
	// BW1W120 004d5ec0 BW1M119 0124ef20
	virtual ATTRIBUTE_TYPE GetType();
	// BW1W120 004d5e90 BW1M119 0124ee80
	virtual bool32_t IsDynamic();
};

class AttributeForestSize : public Attribute
{
public:
	// Static members

	static char ValueNames[][64];

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	AttributeForestSize() {}
	// BW1W120 inlined BW1M119 inlined
	AttributeForestSize(uint32_t value) { Value = value; }

	// Override methods

	// BW1W120 004d5f00 BW1M119 0124ed00
	virtual const char* TypeName();
	// BW1W120 004d5f10 BW1M119 0124cb90
	virtual uint32_t ValueRange();
	// BW1W120 004d5f20 BW1M119 0124ed40
	virtual const char* ValueName(unsigned long value);
	// BW1W120 004d3df0 BW1M119 0124ca50
	virtual void UpdateValue(GameThingWithPos* thing, GPlayer* player);
	// BW1W120 004d5f30 BW1M119 0124ed90
	virtual ATTRIBUTE_TYPE GetType();
	// BW1W120 004d5ef0 BW1M119 0124ecc0
	virtual bool32_t IsDynamic();
};

class AttributeIsHarderThanMe : public Attribute
{
public:
	// Constructors

	// BW1W120 inlined BW1M119 inlined
	AttributeIsHarderThanMe() {}
	// BW1W120 inlined BW1M119 inlined
	AttributeIsHarderThanMe(uint32_t value) { Value = value; }

	// Override methods

	// BW1W120 004cbb50 BW1M119 0124dfe0
	virtual const char* TypeName();
	// BW1W120 004cbb60 BW1M119 0124c070
	virtual uint32_t ValueRange();
	// BW1W120 004d4160 BW1M119 0124beb0
	virtual const char* ValueName(unsigned long value);
	// BW1W120 004d40e0 BW1M119 0124bf10
	virtual void UpdateValue(GameThingWithPos* thing, GPlayer* player);
	// BW1W120 004cbb70 BW1M119 0124e030
	virtual ATTRIBUTE_TYPE GetType();
	// BW1W120 004cbb40 BW1M119 0124df90
	virtual bool32_t IsDynamic();
};

class AttributeLife : public Attribute
{
public:
	// Static members

	static char ValueNames[][64]; // fabricated name

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	AttributeLife() {}
	// BW1W120 inlined BW1M119 inlined
	AttributeLife(uint32_t value) { Value = value; }

	// Override methods

	// BW1W120 004cb940 BW1M119 0124fc60
	virtual const char* TypeName();
	// BW1W120 004cb950 BW1M119 0124da00
	virtual uint32_t ValueRange();
	// BW1W120 004cb960 BW1M119 0124fca0
	virtual const char* ValueName(unsigned long value);
	// BW1W120 004d39a0 BW1M119 0124d8e0
	virtual void UpdateValue(GameThingWithPos* thing, GPlayer* player);
	// BW1W120 004cb970 BW1M119 0124fce0
	virtual ATTRIBUTE_TYPE GetType();
	// BW1W120 004cb930 BW1M119 0124fc20
	virtual bool32_t IsDynamic();
};

class AttributeMobileObjectType : public Attribute
{
public:
	// Static members

	static char ValueNames[MOBILE_OBJECT_INFO_LAST][64];

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	AttributeMobileObjectType() {}
	// BW1W120 inlined BW1M119 inlined
	AttributeMobileObjectType(uint32_t value) { Value = value; }

	// Override methods

	// BW1W120 004d5f70 BW1M119 0124e820
	virtual const char* TypeName();
	// BW1W120 004d5f80 BW1M119 0124c750
	virtual uint32_t ValueRange();
	// BW1W120 004d5f90 BW1M119 0124e870
	virtual const char* ValueName(unsigned long value);
	// BW1W120 004d3f20 BW1M119 0124c660
	virtual void UpdateValue(GameThingWithPos* thing, GPlayer* player);
	// BW1W120 004d5fa0 BW1M119 0124e8c0
	virtual ATTRIBUTE_TYPE GetType();
	// BW1W120 004d5f60 BW1M119 0124e7d0
	virtual bool32_t IsDynamic();
};

class AttributeOnFire : public Attribute
{
public:
	// Static members

	static char ValueNames[][64]; // fabricated name

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	AttributeOnFire() {}
	// BW1W120 inlined BW1M119 inlined
	AttributeOnFire(uint32_t value) { Value = value; }

	// Override methods

	// BW1W120 004cba80 BW1M119 0124e2c0
	virtual const char* TypeName();
	// BW1W120 004cba90 BW1M119 0124c380
	virtual uint32_t ValueRange();
	// BW1W120 004cbaa0 BW1M119 0124e300
	virtual const char* ValueName(unsigned long value);
	// BW1W120 004d4020 BW1M119 0124c290
	virtual void UpdateValue(GameThingWithPos* thing, GPlayer* player);
	// BW1W120 004cbab0 BW1M119 0124e350
	virtual ATTRIBUTE_TYPE GetType();
	// BW1W120 004cba70 BW1M119 0124e280
	virtual bool32_t IsDynamic();
};

class AttributeOrigin : public Attribute
{
public:
	// Static members

	static char ValueNames[][64]; // fabricated name

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	AttributeOrigin() {}
	// BW1W120 inlined BW1M119 inlined
	AttributeOrigin(uint32_t value) { Value = value; }

	// Override methods

	// BW1W120 004cb7f0 BW1M119 01250110
	virtual const char* TypeName();
	// BW1W120 004cb800 BW1M119 0124dd70
	virtual uint32_t ValueRange();
	// BW1W120 004cb810 BW1M119 01250150
	virtual const char* ValueName(unsigned long value);
	// BW1W120 004d3900 BW1M119 0124dca0
	virtual void UpdateValue(GameThingWithPos* thing, GPlayer* player);
	// BW1W120 004cb820 BW1M119 012501a0
	virtual ATTRIBUTE_TYPE GetType();
	// BW1W120 004cb7e0 BW1M119 012500d0
	virtual bool32_t IsDynamic();
};

class AttributePlayerNumber : public Attribute
{
public:
	// Constructors

	// BW1W120 inlined BW1M119 inlined
	AttributePlayerNumber() {}
	// BW1W120 inlined BW1M119 inlined
	AttributePlayerNumber(uint32_t value) { Value = value; }

	// Override methods

	// BW1W120 004cbaf0 BW1M119 0124e150
	virtual const char* TypeName();
	// BW1W120 004cbb00 BW1M119 0124c250
	virtual uint32_t ValueRange();
	// BW1W120 004d40c0 BW1M119 0124c0c0
	virtual const char* ValueName(unsigned long value);
	// BW1W120 004d4070 BW1M119 0124c140
	virtual void UpdateValue(GameThingWithPos* thing, GPlayer* player);
	// BW1W120 004cbb10 BW1M119 0124e1a0
	virtual ATTRIBUTE_TYPE GetType();
	// BW1W120 004cbae0 BW1M119 0124e110
	virtual bool32_t IsDynamic();
};

class AttributeSex : public Attribute
{
public:
	// Static members

	static char ValueNames[][64]; // fabricated name

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	AttributeSex() {}
	// BW1W120 inlined BW1M119 inlined
	AttributeSex(uint32_t value) { Value = value; }

	// Override methods

	// BW1W120 004cba10 BW1M119 0124e9f0
	virtual const char* TypeName();
	// BW1W120 004cba20 BW1M119 0124c880
	virtual uint32_t ValueRange();
	// BW1W120 004cba30 BW1M119 0124ea30
	virtual const char* ValueName(unsigned long value);
	// BW1W120 004d3ed0 BW1M119 0124c7a0
	virtual void UpdateValue(GameThingWithPos* thing, GPlayer* player);
	// BW1W120 004cba40 BW1M119 0124ea70
	virtual ATTRIBUTE_TYPE GetType();
	// BW1W120 004cba00 BW1M119 0124e9b0
	virtual bool32_t IsDynamic();
};

class AttributeTownReligiousBeliefInYou : public Attribute
{
public:
	// Static members

	static char ValueNames[][64]; // fabricated name

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	AttributeTownReligiousBeliefInYou() {}
	// BW1W120 inlined BW1M119 inlined
	AttributeTownReligiousBeliefInYou(uint32_t value) { Value = value; }

	// Override methods

	// BW1W120 004cd6d0 BW1M119 0124f8d0
	virtual const char* TypeName();
	// BW1W120 004cd6e0 BW1M119 0124d770
	virtual uint32_t ValueRange();
	// BW1W120 004cd6f0 BW1M119 0124f920
	virtual const char* ValueName(unsigned long value);
	// BW1W120 004d3a60 BW1M119 0124d5f0
	virtual void UpdateValue(GameThingWithPos* thing, GPlayer* player);
	// BW1W120 004cd700 BW1M119 0124f980
	virtual ATTRIBUTE_TYPE GetType();
	// BW1W120 004cd6c0 BW1M119 0124f880
	virtual bool32_t IsDynamic();
};

class AttributeTownSize : public Attribute
{
public:
	// Static members

	static char ValueNames[][64]; // fabricated name

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	AttributeTownSize() {}
	// BW1W120 inlined BW1M119 inlined
	AttributeTownSize(uint32_t value) { Value = value; }

	// Override methods

	// BW1W120 004cd7a0 BW1M119 0124f560
	virtual const char* TypeName();
	// BW1W120 004cd7b0 BW1M119 0124d3f0
	virtual uint32_t ValueRange();
	// BW1W120 004cd7c0 BW1M119 0124f5a0
	virtual const char* ValueName(unsigned long value);
	// BW1W120 004d3b80 BW1M119 0124d2e0
	virtual void UpdateValue(GameThingWithPos* thing, GPlayer* player);
	// BW1W120 004cd7d0 BW1M119 0124f5f0
	virtual ATTRIBUTE_TYPE GetType();
	// BW1W120 004cd790 BW1M119 0124f520
	virtual bool32_t IsDynamic();
};

class AttributeTribe : public Attribute
{
public:
	// Static members

	static char ValueNames[][64]; // fabricated name

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	AttributeTribe() {}
	// BW1W120 inlined BW1M119 inlined
	AttributeTribe(uint32_t value) { Value = value; }

	// Override methods

	// BW1W120 004cd660 BW1M119 0124fab0
	virtual const char* TypeName();
	// BW1W120 004cd670 BW1M119 0124d8a0
	virtual uint32_t ValueRange();
	// BW1W120 004cd680 BW1M119 0124faf0
	virtual const char* ValueName(unsigned long value);
	// BW1W120 004d3a10 BW1M119 0124d7c0
	virtual void UpdateValue(GameThingWithPos* thing, GPlayer* player);
	// BW1W120 004cd690 BW1M119 0124fb40
	virtual ATTRIBUTE_TYPE GetType();
	// BW1W120 004cd650 BW1M119 0124fa70
	virtual bool32_t IsDynamic();
};

class AttributeType : public Attribute
{
public:
	// Constructors

	// BW1W120 inlined BW1M119 inlined
	AttributeType() {}
	// BW1W120 inlined BW1M119 inlined
	AttributeType(uint32_t value) { Value = value; }

	// Override methods

	// BW1W120 004cb8e0 BW1M119 0124fe00
	virtual const char* TypeName();
	// BW1W120 004cb8f0 BW1M119 0124db50
	virtual uint32_t ValueRange();
	// BW1W120 004d3990 BW1M119 0124da40
	virtual const char* ValueName(unsigned long value);
	// BW1W120 004d3960 BW1M119 0124da80
	virtual void UpdateValue(GameThingWithPos* thing, GPlayer* player);
	// BW1W120 004cb900 BW1M119 0124fe40
	virtual ATTRIBUTE_TYPE GetType();
	// BW1W120 004cb8d0 BW1M119 0124fdc0
	virtual bool32_t IsDynamic();
};

class AttributeVillagerJob : public Attribute
{
public:
	// Constructors

	// BW1W120 inlined BW1M119 inlined
	AttributeVillagerJob() {}
	// BW1W120 inlined BW1M119 inlined
	AttributeVillagerJob(uint32_t value) { Value = value; }

	// Override methods

	// BW1W120 004cb9b0 BW1M119 0124eb90
	virtual const char* TypeName();
	// BW1W120 004cb9c0 BW1M119 0124ca10
	virtual uint32_t ValueRange();
	// BW1W120 004d3ec0 BW1M119 0124c8c0
	virtual const char* ValueName(unsigned long value);
	// BW1W120 004d3e60 BW1M119 0124c910
	virtual void UpdateValue(GameThingWithPos* thing, GPlayer* player);
	// BW1W120 004cb9d0 BW1M119 0124ebe0
	virtual ATTRIBUTE_TYPE GetType();
	// BW1W120 004cb9a0 BW1M119 0124eb50
	virtual bool32_t IsDynamic();
};

class AttributeWhatTownNeedsMost : public Attribute
{
public:
	// Constructors

	// BW1W120 inlined BW1M119 inlined
	AttributeWhatTownNeedsMost() {}
	// BW1W120 inlined BW1M119 inlined
	AttributeWhatTownNeedsMost(uint32_t value) { Value = value; }

	// Override methods

	// BW1W120 004cd740 BW1M119 0124f730
	virtual const char* TypeName();
	// BW1W120 004cd750 BW1M119 0124d5a0
	virtual uint32_t ValueRange();
	// BW1W120 004d3b60 BW1M119 0124d430
	virtual const char* ValueName(unsigned long value);
	// BW1W120 004d3b10 BW1M119 0124d4b0
	virtual void UpdateValue(GameThingWithPos* thing, GPlayer* player);
	// BW1W120 004cd760 BW1M119 0124f780
	virtual ATTRIBUTE_TYPE GetType();
	// BW1W120 004cd730 BW1M119 0124f6e0
	virtual bool32_t IsDynamic();
};

#endif /* BW1_DECOMP_CREATURE_MENTAL_ATTRIBUTE_TEST_INCLUDED_H */
