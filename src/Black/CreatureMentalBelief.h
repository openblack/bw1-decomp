#ifndef BW1_DECOMP_CREATURE_MENTAL_BELIEF_INCLUDED_H
#define BW1_DECOMP_CREATURE_MENTAL_BELIEF_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <limits.h> /* For CHAR_BIT */
#include <stdint.h> /* For uint32_t, uint8_t */
#include <stdio.h>  /* For FILE */

#include <chlasm/CreatureEnum.h> /* For enum CREATURE_ACTION */
#include <chlasm/Enum.h>         /* For enum CREATURE_DESIRES, NUM_CREATURE_DESIRES */
#include <re_common.h>           /* For ARRAY_SIZE, bool32_t */

#include <Lionhead/LHLib/ver5.0/LHLinkedList.h> /* For struct LHLinkedList */

#include "Base.h"                        /* For struct Base */
#include "CreatureMentalAttributeTest.h" /* For struct Attribute */
#include "GameThingWithPos.h"            /* For struct GameThingWithPos */
#include "MapCoords.h"                   /* For struct MapCoords */

enum CREATURE_BELIEF_ATTRIBUTE
{
	CREATURE_BELIEF_ATTRIBUTE_ALLEGIANCE = 0,
	CREATURE_BELIEF_ATTRIBUTE_ORIGIN = 1,
	CREATURE_BELIEF_ATTRIBUTE_ANIMATE = 2,
	CREATURE_BELIEF_ATTRIBUTE_PLAYER_NUMBER = 3,
	CREATURE_BELIEF_ATTRIBUTE_HARDER_THAN_ME = 4,
	CREATURE_BELIEF_ATTRIBUTE_CREATURE_TYPE = 5,
	CREATURE_BELIEF_ATTRIBUTE_TYPE = 6,
	CREATURE_BELIEF_ATTRIBUTE_COMMON_LAST = 7,

	CREATURE_BELIEF_ATTRIBUTE_TOWN_RELIGIOUS_BELIEF_IN_YOU = CREATURE_BELIEF_ATTRIBUTE_COMMON_LAST,
	CREATURE_BELIEF_ATTRIBUTE_TOWN_NEEDS_MOST,
	CREATURE_BELIEF_ATTRIBUTE_TOWN_SIZE,
	CREATURE_BELIEF_ATTRIBUTE_TOWN_TRIBE,
	CREATURE_BELIEF_ATTRIBUTE_TOWN_LAST,

	CREATURE_BELIEF_ATTRIBUTE_FOREST_SIZE = CREATURE_BELIEF_ATTRIBUTE_COMMON_LAST,
	CREATURE_BELIEF_ATTRIBUTE_FOREST_LAST,

	CREATURE_BELIEF_ATTRIBUTE_ABODE_TYPE = CREATURE_BELIEF_ATTRIBUTE_COMMON_LAST,
	CREATURE_BELIEF_ATTRIBUTE_ABODE_LIFE,
	CREATURE_BELIEF_ATTRIBUTE_ABODE_ON_FIRE,
	CREATURE_BELIEF_ATTRIBUTE_ABODE_BEING_BUILT,
	CREATURE_BELIEF_ATTRIBUTE_ABODE_LAST,

	CREATURE_BELIEF_ATTRIBUTE_VILLAGER_SEX = CREATURE_BELIEF_ATTRIBUTE_COMMON_LAST,
	CREATURE_BELIEF_ATTRIBUTE_VILLAGER_JOB,
	CREATURE_BELIEF_ATTRIBUTE_VILLAGER_LIFE,
	CREATURE_BELIEF_ATTRIBUTE_VILLAGER_ON_FIRE,
	CREATURE_BELIEF_ATTRIBUTE_VILLAGER_LAST,

	CREATURE_BELIEF_ATTRIBUTE_CREATURE_DOMINANT_DESIRE = CREATURE_BELIEF_ATTRIBUTE_COMMON_LAST,
	CREATURE_BELIEF_ATTRIBUTE_CREATURE_HEIGHT,
	CREATURE_BELIEF_ATTRIBUTE_CREATURE_SPELL_KNOWLEDGE,
	CREATURE_BELIEF_ATTRIBUTE_CREATURE_CARRYING,
	CREATURE_BELIEF_ATTRIBUTE_CREATURE_LAST,

	CREATURE_BELIEF_ATTRIBUTE_MOBILE_OBJECT_TYPE = CREATURE_BELIEF_ATTRIBUTE_COMMON_LAST,
	CREATURE_BELIEF_ATTRIBUTE_MOBILE_OBJECT_LAST,
};

#define CREATURE_BELIEF_SOURCES_UPDATE_TURNS              200
#define CREATURE_BELIEF_TOY_PLAY_SOURCE                   0.5f
#define CREATURE_BELIEF_STEALABLE_STEAL_SOURCE            0.3f
#define CREATURE_BELIEF_TOWN_COMPASSION_SECONDS           20.0f
#define CREATURE_BELIEF_VILLAGER_FAR_FROM_STORAGE_PIT     40.0f
#define CREATURE_BELIEF_IMPRESS_FROM_VILLAGER_INCREMENT   0.5f
#define CREATURE_BELIEF_ATTENTION_FROM_CREATURE           0.02f
#define CREATURE_BELIEF_FOREST_SEARCH_RADIUS              1000.0f
#define CREATURE_BELIEF_FIXED_NAVIGATION_BLOCKED_SECONDS  60.0f
#define CREATURE_BELIEF_MOBILE_NAVIGATION_BLOCKED_SECONDS 10.0f

enum ATTRIBUTE_TEST_RESULT
{
	ATTRIBUTE_TEST_RESULT_SATISFIED = 0,
	ATTRIBUTE_TEST_RESULT_NOT_SATISFIED = 1,
	ATTRIBUTE_TEST_RESULT_NO_ATTRIBUTE = 2,
};

// Forward Declares

class Archive;
class Creature;
class CreatureMental;
class GPlayer;
class Object;

class CreatureBelief : public Base
{
public:
	CreatureBelief*               Next;                                            /* 0x8 */
	CreatureBelief*               Previous;                                        /* 0xc */
	CreatureBelief*               NextAllocated;                                   /* 0x10 */
	CreatureBelief*               AssociatedBelief;                                /* 0x14 */
	LHLinkedList<CreatureBelief*> AssociatedBeliefs;                               /* 0x18 */
	uint32_t                      field_0x20;                                      /* 0x20 */
	MapCoords                     Pos;                                             /* 0x24 */
	GameThingWithPos*             Pointer;                                         /* 0x30 */
	bool32_t                      NavigationBlocked;                               /* 0x34 */
	uint32_t                      GameTurnNavigationBlocked;                       /* 0x38 */
	uint32_t                      GameTurnSourcesUpdated;                          /* 0x3c */
	uint8_t                       UsedInPlan[NUM_CREATURE_DESIRES / CHAR_BIT + 1]; /* 0x40 */
	bool32_t                      SlotInUse;                                       /* 0x48 */

	// Constructors

	// BW1W120 004d7810 BW1M119 01258cd0
	CreatureBelief();

	// Override methods

	// BW1W120 004d8b50 BW1M119 01256640
	virtual ~CreatureBelief();

	// Virtual methods

	// BW1W120 004d7890 BW1M119 01239cc0
	virtual uint32_t GetNumAttributes() { return 0; }
	// BW1W120 004d78a0 BW1M119 011e4be0
	virtual Attribute* GetNthAttribute(unsigned long index) { return NULL; }
	// BW1W120 004d78b0 BW1M119 01255170
	virtual Attribute** GetNthAttributePtr(unsigned long index) { return NULL; }
	// BW1W120 004d7e80 BW1M119 01257c90
	virtual void UpdateAttributes(Creature* creature, GameThingWithPos* thing, GPlayer* player);
	// BW1W120 004d63f0 BW1M119 011e4b30
	virtual uint32_t GetType();
	// BW1W120 004d78c0 BW1M119 012551c0
	virtual CreatureBelief* FindBestObjectToActOn(CREATURE_DESIRES desire, CreatureMental* mental,
	                                              CREATURE_ACTION action, float* usefulness)
	{
		return NULL;
	}
	// BW1W120 004d8b40 BW1M119 01256700
	virtual CreatureBelief* Copy();
	// BW1W120 004e8d90 BW1M119 0126c220
	virtual void Save(Archive& archive);
	// BW1W120 004e8e00 BW1M119 0126c130
	virtual void Load(Archive& archive);
	// BW1W120 004c7920 BW1M119 01239af0
	virtual void Dump(FILE* file, unsigned long indent);

	// Non-virtual methods

	// BW1W120 004d9690 BW1M119 0125c800
	void CreateCommonAttributes();
	// BW1W120 004d9800 BW1M119 0125c430
	void CopyCommonAttributes(CreatureBelief* belief);
	// BW1W120 inlined BW1M119 0125ae80
	uint32_t GetNthAttributeValue(unsigned long index) { return GetNthAttribute(index)->GetValue(); }
	// BW1W120 inlined BW1M119 01203bb0
	MapCoords& GetPos() { return Pos; }
	// BW1W120 inlined BW1M119 01248010
	GameThingWithPos* GetPointer() { return Pointer; }
	// BW1W120 inlined BW1M119 01226670
	Object* GetObjectPointer();
	// BW1W120 inlined BW1M119 01258b80
	bool32_t IsUsedInPlan(CREATURE_DESIRES desire)
	{
		return UsedInPlan[desire / CHAR_BIT] & (1 << (desire % CHAR_BIT));
	}
	// BW1W120 004d7a60 BW1M119 012587b0
	void ClearAfterFreeingUp();
	// BW1W120 004d7e20 BW1M119 01257e80
	void FillInAllAttributes(GameThingWithPos* thing, GPlayer* player);
	// BW1W120 004d8300 BW1M119 01257510
	ATTRIBUTE_TEST_RESULT SatisfiesAttributeTest(ATTRIBUTE_TYPE type, unsigned long value);
	// BW1W120 004d8360 BW1M119 01257410
	bool32_t FindAttributeValue(ATTRIBUTE_TYPE type, unsigned long* value);
	// BW1W120 004d8a90 BW1M119 012568e0
	const char* AttributeTypeText(unsigned long index);
	// BW1W120 004d8ab0 BW1M119 01256850
	const char* AttributeValueText(unsigned long index, unsigned long value);
	// BW1W120 004d8ad0 BW1M119 null
	uint32_t AttributeValueRange(unsigned long index);
	// BW1W120 004d8df0 BW1M119 01255ef0
	void SetNavigationBlockedFlag();
	// BW1W120 004d8e10 BW1M119 01255db0
	bool32_t HasNavigationBeenBlockedRecently();
};
static_assert(sizeof(CreatureBelief) == 0x4c, "Data type is of wrong size");

class CreatureBeliefAboutAbode : public CreatureBelief
{
public:
	/* 0x4c */ Attribute* Attributes[CREATURE_BELIEF_ATTRIBUTE_ABODE_LAST];

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	CreatureBeliefAboutAbode()
	{
		CreateAttributes();
		field_0x20 = 0;
	}

	// Override methods

	// BW1W120 004dac70 BW1M119 01259ee0
	virtual ~CreatureBeliefAboutAbode();
	// BW1W120 004d6630 BW1M119 01259fe0
	virtual uint32_t GetNumAttributes() { return ARRAY_SIZE(Attributes); }
	// BW1W120 004d6640 BW1M119 0125cb20
	virtual Attribute* GetNthAttribute(unsigned long index) { return Attributes[index]; }
	// BW1W120 004d6650 BW1M119 0125cb80
	virtual Attribute** GetNthAttributePtr(unsigned long index) { return &Attributes[index]; }
	// BW1W120 004d7f80 BW1M119 01257bc0
	virtual void UpdateAttributes(Creature* creature, GameThingWithPos* thing, GPlayer* player);
	// BW1W120 004db050 BW1M119 01259480
	virtual CreatureBelief* FindBestObjectToActOn(CREATURE_DESIRES desire, CreatureMental* mental,
	                                              CREATURE_ACTION action, float* usefulness);
	// BW1W120 004da720 BW1M119 0125ab70
	virtual CreatureBelief* Copy();
	// BW1W120 004c7ba0 BW1M119 012395b0
	virtual void Dump(FILE* file, unsigned long indent);

	// Non-virtual methods

	// BW1W120 004d9c90 BW1M119 0125bdb0
	void CreateAttributes();
};
static_assert(sizeof(CreatureBeliefAboutAbode) == 0x78, "Data type is of wrong size");

class CreatureBeliefAboutCitadel : public CreatureBelief
{
public:
	/* 0x4c */ Attribute* Attributes[CREATURE_BELIEF_ATTRIBUTE_COMMON_LAST];

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	CreatureBeliefAboutCitadel()
	{
		CreateAttributes();
		field_0x20 = 0;
	}

	// Override methods

	// BW1W120 004dacb0 BW1M119 01259d90
	virtual ~CreatureBeliefAboutCitadel();
	// BW1W120 004d6540 BW1M119 01259e90
	virtual uint32_t GetNumAttributes() { return ARRAY_SIZE(Attributes); }
	// BW1W120 004d6550 BW1M119 0125ca60
	virtual Attribute* GetNthAttribute(unsigned long index) { return Attributes[index]; }
	// BW1W120 004d6560 BW1M119 0125cac0
	virtual Attribute** GetNthAttributePtr(unsigned long index) { return &Attributes[index]; }
	// BW1W120 004daf60 BW1M119 012595a0
	virtual CreatureBelief* FindBestObjectToActOn(CREATURE_DESIRES desire, CreatureMental* mental,
	                                              CREATURE_ACTION action, float* usefulness);
	// BW1W120 004da8b0 BW1M119 0125aa00
	virtual CreatureBelief* Copy();
	// BW1W120 004c7c20 BW1M119 01239430
	virtual void Dump(FILE* file, unsigned long indent);

	// Non-virtual methods

	// BW1W120 004d9d40 BW1M119 0125bd40
	void CreateAttributes();
};
static_assert(sizeof(CreatureBeliefAboutCitadel) == 0x68, "Data type is of wrong size");

class CreatureBeliefAboutContext : public CreatureBelief
{
public:
	// Constructors

	// BW1W120 inlined BW1M119 inlined
	CreatureBeliefAboutContext()
	{
		CreateAttributes();
		field_0x20 = 0;
	}

	// BW1W120 004db200 BW1M119 null
	CreatureBeliefAboutContext(Attribute* allegiance, Attribute* origin, Attribute* animate, Attribute* player_number,
	                           Attribute* harder_than_me, Attribute* creature_type, Attribute* type,
	                           Attribute* attribute8, Attribute* attribute9, Attribute* attribute10);

	// Override methods

	// BW1W120 004dacf0 BW1M119 01259cf0
	virtual ~CreatureBeliefAboutContext();
	// BW1W120 004d6680 BW1M119 01259030
	virtual uint32_t GetNumAttributes() { return 0; }
	// BW1W120 004d6690 BW1M119 01259080
	virtual Attribute* GetNthAttribute(unsigned long index) { return NULL; }
	// BW1W120 004d66a0 BW1M119 012590d0
	virtual Attribute** GetNthAttributePtr(unsigned long index) { return NULL; }
	// BW1W120 004d66b0 BW1M119 01259120
	virtual uint32_t GetType() { return CREATURE_BELIEF_TYPE_CONTEXT; }
	// BW1W120 004db060 BW1M119 012593f0
	virtual CreatureBelief* FindBestObjectToActOn(CREATURE_DESIRES desire, CreatureMental* mental,
	                                              CREATURE_ACTION action, float* usefulness);
	// BW1W120 004da9d0 BW1M119 0125a810
	virtual CreatureBelief* Copy();
	// BW1W120 004c7be0 BW1M119 012394f0
	virtual void Dump(FILE* file, unsigned long indent);

	// Non-virtual methods

	// BW1W120 004d9d50 BW1M119 0125bcf0
	void CreateAttributes();
};
static_assert(sizeof(CreatureBeliefAboutContext) == 0x4c, "Data type is of wrong size");

class CreatureBeliefAboutCreature : public CreatureBelief
{
public:
	/* 0x4c */ Attribute* Attributes[CREATURE_BELIEF_ATTRIBUTE_CREATURE_LAST];
	/* 0x78 */ uint32_t   GameTurnLastReactedTo;

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	CreatureBeliefAboutCreature()
	{
		CreateAttributes();
		GameTurnLastReactedTo = 0;
		field_0x20 = 0;
	}

	// BW1W120 004db180 BW1M119 null
	CreatureBeliefAboutCreature(Attribute* allegiance, Attribute* origin, Attribute* animate, Attribute* player_number,
	                            Attribute* harder_than_me, Attribute* creature_type, Attribute* type,
	                            Attribute* dominant_desire);

	// Override methods

	// BW1W120 004dab70 BW1M119 0125a2d0
	virtual ~CreatureBeliefAboutCreature();
	// BW1W120 004d6590 BW1M119 0125a3d0
	virtual uint32_t GetNumAttributes() { return ARRAY_SIZE(Attributes); }
	// BW1W120 004d65a0 BW1M119 0125cd60
	virtual Attribute* GetNthAttribute(unsigned long index) { return Attributes[index]; }
	// BW1W120 004d65b0 BW1M119 0125cdc0
	virtual Attribute** GetNthAttributePtr(unsigned long index) { return &Attributes[index]; }
	// BW1W120 004d8230 BW1M119 01257710
	virtual void UpdateAttributes(Creature* creature, GameThingWithPos* thing, GPlayer* player);
	// BW1W120 004dae70 BW1M119 012598c0
	virtual CreatureBelief* FindBestObjectToActOn(CREATURE_DESIRES desire, CreatureMental* mental,
	                                              CREATURE_ACTION action, float* usefulness);
	// BW1W120 004da1c0 BW1M119 0125b3e0
	virtual CreatureBelief* Copy();
	// BW1W120 004c7aa0 BW1M119 012397f0
	virtual void Dump(FILE* file, unsigned long indent);

	// Non-virtual methods

	// BW1W120 004d9ab0 BW1M119 0125c0e0
	void CreateAttributes();
};
static_assert(sizeof(CreatureBeliefAboutCreature) == 0x7c, "Data type is of wrong size");

class CreatureBeliefAboutFlock : public CreatureBelief
{
public:
	/* 0x4c */ Attribute* Attributes[CREATURE_BELIEF_ATTRIBUTE_COMMON_LAST];

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	CreatureBeliefAboutFlock()
	{
		CreateAttributes();
		field_0x20 = 0;
	}

	// BW1W120 004db0e0 BW1M119 null
	CreatureBeliefAboutFlock(Attribute* allegiance, Attribute* origin, Attribute* animate, Attribute* player_number);

	// Override methods

	// BW1W120 004dab30 BW1M119 0125a420
	virtual ~CreatureBeliefAboutFlock();
	// BW1W120 004d64f0 BW1M119 0125a520
	virtual uint32_t GetNumAttributes() { return ARRAY_SIZE(Attributes); }
	// BW1W120 004d6500 BW1M119 0125ce20
	virtual Attribute* GetNthAttribute(unsigned long index) { return Attributes[index]; }
	// BW1W120 004d6510 BW1M119 0125ce80
	virtual Attribute** GetNthAttributePtr(unsigned long index) { return &Attributes[index]; }
	// BW1W120 004dadc0 BW1M119 01259990
	virtual CreatureBelief* FindBestObjectToActOn(CREATURE_DESIRES desire, CreatureMental* mental,
	                                              CREATURE_ACTION action, float* usefulness);
	// BW1W120 004da0a0 BW1M119 0125b700
	virtual CreatureBelief* Copy();
	// BW1W120 004c7a60 BW1M119 012398b0
	virtual void Dump(FILE* file, unsigned long indent);

	// Non-virtual methods

	// BW1W120 004d9aa0 BW1M119 0125c220
	void CreateAttributes();
};
static_assert(sizeof(CreatureBeliefAboutFlock) == 0x68, "Data type is of wrong size");

class CreatureBeliefAboutForest : public CreatureBelief
{
public:
	/* 0x4c */ Attribute* Attributes[CREATURE_BELIEF_ATTRIBUTE_FOREST_LAST];

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	CreatureBeliefAboutForest()
	{
		CreateAttributes();
		field_0x20 = 0;
	}

	// Override methods

	// BW1W120 004dabb0 BW1M119 0125a180
	virtual ~CreatureBeliefAboutForest();
	// BW1W120 004d65e0 BW1M119 0125a280
	virtual uint32_t GetNumAttributes() { return ARRAY_SIZE(Attributes); }
	// BW1W120 004d65f0 BW1M119 0125cca0
	virtual Attribute* GetNthAttribute(unsigned long index) { return Attributes[index]; }
	// BW1W120 004d6600 BW1M119 0125cd00
	virtual Attribute** GetNthAttributePtr(unsigned long index) { return &Attributes[index]; }
	// BW1W120 004dae90 BW1M119 01259730
	virtual CreatureBelief* FindBestObjectToActOn(CREATURE_DESIRES desire, CreatureMental* mental,
	                                              CREATURE_ACTION action, float* usefulness);
	// BW1W120 004da360 BW1M119 0125b200
	virtual CreatureBelief* Copy();
	// BW1W120 004c7ae0 BW1M119 01239730
	virtual void Dump(FILE* file, unsigned long indent);

	// Non-virtual methods

	// BW1W120 004d9b60 BW1M119 0125c030
	void CreateAttributes();
};
static_assert(sizeof(CreatureBeliefAboutForest) == 0x6c, "Data type is of wrong size");

class CreatureBeliefAboutMobileObject : public CreatureBelief
{
public:
	/* 0x4c */ Attribute* Attributes[CREATURE_BELIEF_ATTRIBUTE_MOBILE_OBJECT_LAST];

	// Constructors

	// BW1W120 inlined BW1M119 null
	CreatureBeliefAboutMobileObject()
	{
		CreateAttributes();
		field_0x20 = 0;
	}

	// Override methods

	// BW1W120 004dabf0 BW1M119 null
	virtual ~CreatureBeliefAboutMobileObject();
	// BW1W120 004da6d0 BW1M119 null
	virtual uint32_t GetNumAttributes() { return ARRAY_SIZE(Attributes); }
	// BW1W120 004da6e0 BW1M119 null
	virtual Attribute* GetNthAttribute(unsigned long index) { return Attributes[index]; }
	// BW1W120 004da6f0 BW1M119 null
	virtual Attribute** GetNthAttributePtr(unsigned long index) { return &Attributes[index]; }
	// BW1W120 004db040 BW1M119 null
	virtual CreatureBelief* FindBestObjectToActOn(CREATURE_DESIRES desire, CreatureMental* mental,
	                                              CREATURE_ACTION action, float* usefulness);
	// BW1W120 004da5e0 BW1M119 null
	virtual CreatureBelief* Copy();
	// BW1W120 004c7b60 BW1M119 null
	virtual void Dump(FILE* file, unsigned long indent);

	// Non-virtual methods

	// BW1W120 004d9c50 BW1M119 null
	void CreateAttributes();
};
static_assert(sizeof(CreatureBeliefAboutMobileObject) == 0x6c, "Data type is of wrong size");

class CreatureBeliefAboutTown : public CreatureBelief
{
public:
	/* 0x4c */ Attribute* Attributes[CREATURE_BELIEF_ATTRIBUTE_TOWN_LAST];

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	CreatureBeliefAboutTown()
	{
		CreateAttributes();
		field_0x20 = 0;
	}

	// BW1W120 004db070 BW1M119 012592b0
	CreatureBeliefAboutTown(Attribute* allegiance, Attribute* origin, Attribute* animate, Attribute* player_number,
	                        Attribute* harder_than_me, Attribute* creature_type, Attribute* type,
	                        Attribute* religious_belief_in_you, Attribute* needs_most, Attribute* size,
	                        Attribute* tribe);

	// Override methods

	// BW1W120 004daaf0 BW1M119 0125a570
	virtual ~CreatureBeliefAboutTown();
	// BW1W120 004d64a0 BW1M119 0125a670
	virtual uint32_t GetNumAttributes() { return ARRAY_SIZE(Attributes); }
	// BW1W120 004d64b0 BW1M119 0125cee0
	virtual Attribute* GetNthAttribute(unsigned long index) { return Attributes[index]; }
	// BW1W120 004d64c0 BW1M119 0125cf30
	virtual Attribute** GetNthAttributePtr(unsigned long index) { return &Attributes[index]; }
	// BW1W120 004d7fc0 BW1M119 01257a60
	virtual void UpdateAttributes(Creature* creature, GameThingWithPos* thing, GPlayer* player);
	// BW1W120 004dad10 BW1M119 01259b00
	virtual CreatureBelief* FindBestObjectToActOn(CREATURE_DESIRES desire, CreatureMental* mental,
	                                              CREATURE_ACTION action, float* usefulness);
	// BW1W120 004d9e80 BW1M119 0125b870
	virtual CreatureBelief* Copy();
	// BW1W120 004c7a20 BW1M119 01239970
	virtual void Dump(FILE* file, unsigned long indent);

	// Non-virtual methods

	// BW1W120 004d99f0 BW1M119 0125c290
	void CreateAttributes();
};
static_assert(sizeof(CreatureBeliefAboutTown) == 0x78, "Data type is of wrong size");

class CreatureBeliefAboutVillager : public CreatureBelief
{
public:
	/* 0x4c */ Attribute* Attributes[CREATURE_BELIEF_ATTRIBUTE_VILLAGER_LAST];

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	CreatureBeliefAboutVillager()
	{
		CreateAttributes();
		field_0x20 = 0;
	}

	// BW1W120 004db110 BW1M119 01259170
	CreatureBeliefAboutVillager(Attribute* allegiance, Attribute* origin, Attribute* animate, Attribute* player_number,
	                            Attribute* harder_than_me, Attribute* creature_type, Attribute* type, Attribute* sex,
	                            Attribute* job, Attribute* life, Attribute* on_fire);

	// Override methods

	// BW1W120 004dac30 BW1M119 0125a030
	virtual ~CreatureBeliefAboutVillager();
	// BW1W120 004d6450 BW1M119 0125a130
	virtual uint32_t GetNumAttributes() { return ARRAY_SIZE(Attributes); }
	// BW1W120 004d6460 BW1M119 0125cbe0
	virtual Attribute* GetNthAttribute(unsigned long index) { return Attributes[index]; }
	// BW1W120 004d6470 BW1M119 0125cc40
	virtual Attribute** GetNthAttributePtr(unsigned long index) { return &Attributes[index]; }
	// BW1W120 004d8070 BW1M119 01257820
	virtual void UpdateAttributes(Creature* creature, GameThingWithPos* thing, GPlayer* player);
	// BW1W120 004db030 BW1M119 01259510
	virtual CreatureBelief* FindBestObjectToActOn(CREATURE_DESIRES desire, CreatureMental* mental,
	                                              CREATURE_ACTION action, float* usefulness);
	// BW1W120 004da450 BW1M119 0125aef0
	virtual CreatureBelief* Copy();
	// BW1W120 004c7b20 BW1M119 01239670
	virtual void Dump(FILE* file, unsigned long indent);

	// Non-virtual methods

	// BW1W120 004d9ba0 BW1M119 0125bef0
	void CreateAttributes();
};
static_assert(sizeof(CreatureBeliefAboutVillager) == 0x78, "Data type is of wrong size");

class CreatureBeliefSmall : public CreatureBelief
{
public:
	/* 0x4c */ Attribute* Attributes[CREATURE_BELIEF_ATTRIBUTE_COMMON_LAST];

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	CreatureBeliefSmall()
	{
		CreateAttributes();
		field_0x20 = 0;
	}

	// BW1W120 004db1d0 BW1M119 null
	CreatureBeliefSmall(Attribute* allegiance, Attribute* origin, Attribute* animate, Attribute* player_number);

	// Override methods

	// BW1W120 004daab0 BW1M119 0125a6c0
	virtual ~CreatureBeliefSmall();
	// BW1W120 004d6400 BW1M119 0125a7c0
	virtual uint32_t GetNumAttributes() { return ARRAY_SIZE(Attributes); }
	// BW1W120 004d6410 BW1M119 0125cf90
	virtual Attribute* GetNthAttribute(unsigned long index) { return Attributes[index]; }
	// BW1W120 004d6420 BW1M119 0125cfe0
	virtual Attribute** GetNthAttributePtr(unsigned long index) { return &Attributes[index]; }
	// BW1W120 004dad00 BW1M119 01259c70
	virtual CreatureBelief* FindBestObjectToActOn(CREATURE_DESIRES desire, CreatureMental* mental,
	                                              CREATURE_ACTION action, float* usefulness);
	// BW1W120 004d9d60 BW1M119 0125bb80
	virtual CreatureBelief* Copy();
	// BW1W120 004c79e0 BW1M119 01239a30
	virtual void Dump(FILE* file, unsigned long indent);

	// Non-virtual methods

	// BW1W120 004d99e0 BW1M119 0125c3d0
	void CreateAttributes();
};
static_assert(sizeof(CreatureBeliefSmall) == 0x68, "Data type is of wrong size");

#endif /* BW1_DECOMP_CREATURE_MENTAL_BELIEF_INCLUDED_H */
