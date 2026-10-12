#ifndef BW1_DECOMP_CREATURE_MENTAL_BELIEF_INCLUDED_H
#define BW1_DECOMP_CREATURE_MENTAL_BELIEF_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */
#include <stdio.h>  /* For FILE */

#include <chlasm/CreatureEnum.h> /* For enum CREATURE_ACTION */
#include <chlasm/Enum.h>         /* For enum CREATURE_DESIRES */

#include "Base.h"             /* For struct Base */
#include "GameThingWithPos.h" /* For struct GameThingWithPos */
#include "MapCoords.h"        /* For struct MapCoords */

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
};

// Forward Declares

class Archive;
class Attribute;
class Creature;
class CreatureMental;
class GPlayer;
class Object;

class CreatureBelief : public Base
{
public:
	CreatureBelief*   Next;
	uint8_t           field_0xc[0x18];
	MapCoords         Pos;
	GameThingWithPos* Pointer;
	uint8_t           field_0x34[0x18];

	// Override methods

	// BW1W120 004d78d0 BW1M119 01256640
	virtual ~CreatureBelief();

	// Virtual methods

	// BW1W120 004d7890 BW1M119 01239cc0
	virtual uint32_t GetNumAttributes();
	// BW1W120 004d78a0 BW1M119 011e4be0
	virtual Attribute* GetNthAttribute(unsigned long index);
	// BW1W120 004d78b0 BW1M119 01255170
	virtual Attribute** GetNthAttributePtr(unsigned long index);
	// BW1W120 004d7e80 BW1M119 01257c90
	virtual void UpdateAttributes(Creature* creature, GameThingWithPos* thing, GPlayer* player);
	// BW1W120 004d63f0 BW1M119 011e4b30
	virtual uint32_t GetType();
	// BW1W120 004d78c0 BW1M119 012551c0
	virtual CreatureBelief* FindBestObjectToActOn(CREATURE_DESIRES desire, CreatureMental* mental,
	                                              CREATURE_ACTION action, float* usefulness);
	// BW1W120 004d8b40 BW1M119 01256700
	virtual CreatureBelief* Copy();
	// BW1W120 004e8d90 BW1M119 0126c220
	virtual void Save(Archive& archive);
	// BW1W120 004e8e00 BW1M119 0126c130
	virtual void Load(Archive& archive);
	// BW1W120 004c7920 BW1M119 01239af0
	virtual void Dump(FILE* file, unsigned long indent);

	// Non-virtual methods

	// BW1W120 inlined BW1M119 01203bb0
	MapCoords& GetPos() { return Pos; }
	// BW1W120 inlined BW1M119 01248010
	GameThingWithPos* GetPointer() { return Pointer; }
	// BW1W120 inlined BW1M119 01226670
	Object* GetObjectPointer();
};
static_assert(sizeof(CreatureBelief) == 0x4c, "Data type is of wrong size");

class CreatureBeliefAboutAbode : public CreatureBelief
{
public:
	/* 0x4c */ Attribute* Attributes[CREATURE_BELIEF_ATTRIBUTE_ABODE_LAST];

	// Override methods

	// BW1W120 004d6660 BW1M119 01259ee0
	virtual ~CreatureBeliefAboutAbode();
	// BW1W120 004d6630 BW1M119 01259fe0
	virtual uint32_t GetNumAttributes();
	// BW1W120 004d6640 BW1M119 0125cb20
	virtual Attribute* GetNthAttribute(unsigned long index);
	// BW1W120 004d6650 BW1M119 0125cb80
	virtual Attribute** GetNthAttributePtr(unsigned long index);
	// BW1W120 004d7f80 BW1M119 01257bc0
	virtual void UpdateAttributes(Creature* creature, GameThingWithPos* thing, GPlayer* player);
	// BW1W120 004db050 BW1M119 01259480
	virtual CreatureBelief* FindBestObjectToActOn(CREATURE_DESIRES desire, CreatureMental* mental,
	                                              CREATURE_ACTION action, float* usefulness);
	// BW1W120 004da720 BW1M119 0125ab70
	virtual CreatureBelief* Copy();
	// BW1W120 004c7ba0 BW1M119 012395b0
	virtual void Dump(FILE* file, unsigned long indent);
};
static_assert(sizeof(CreatureBeliefAboutAbode) == 0x78, "Data type is of wrong size");

class CreatureBeliefAboutCitadel : public CreatureBelief
{
public:
	/* 0x4c */ Attribute* Attributes[CREATURE_BELIEF_ATTRIBUTE_COMMON_LAST];

	// Override methods

	// BW1W120 004d6570 BW1M119 01259d90
	virtual ~CreatureBeliefAboutCitadel();
	// BW1W120 004d6540 BW1M119 01259e90
	virtual uint32_t GetNumAttributes();
	// BW1W120 004d6550 BW1M119 0125ca60
	virtual Attribute* GetNthAttribute(unsigned long index);
	// BW1W120 004d6560 BW1M119 0125cac0
	virtual Attribute** GetNthAttributePtr(unsigned long index);
	// BW1W120 004daf60 BW1M119 012595a0
	virtual CreatureBelief* FindBestObjectToActOn(CREATURE_DESIRES desire, CreatureMental* mental,
	                                              CREATURE_ACTION action, float* usefulness);
	// BW1W120 004da8b0 BW1M119 0125aa00
	virtual CreatureBelief* Copy();
	// BW1W120 004c7c20 BW1M119 01239430
	virtual void Dump(FILE* file, unsigned long indent);
};
static_assert(sizeof(CreatureBeliefAboutCitadel) == 0x68, "Data type is of wrong size");

class CreatureBeliefAboutContext : public CreatureBelief
{
public:
	// Override methods

	// BW1W120 004d66c0 BW1M119 01259cf0
	virtual ~CreatureBeliefAboutContext();
	// BW1W120 004d6680 BW1M119 01259030
	virtual uint32_t GetNumAttributes();
	// BW1W120 004d6690 BW1M119 01259080
	virtual Attribute* GetNthAttribute(unsigned long index);
	// BW1W120 004d66a0 BW1M119 012590d0
	virtual Attribute** GetNthAttributePtr(unsigned long index);
	// BW1W120 004d66b0 BW1M119 01259120
	virtual uint32_t GetType();
	// BW1W120 004db060 BW1M119 012593f0
	virtual CreatureBelief* FindBestObjectToActOn(CREATURE_DESIRES desire, CreatureMental* mental,
	                                              CREATURE_ACTION action, float* usefulness);
	// BW1W120 004da9d0 BW1M119 0125a810
	virtual CreatureBelief* Copy();
	// BW1W120 004c7be0 BW1M119 012394f0
	virtual void Dump(FILE* file, unsigned long indent);
};
static_assert(sizeof(CreatureBeliefAboutContext) == 0x4c, "Data type is of wrong size");

class CreatureBeliefAboutCreature : public CreatureBelief
{
public:
	/* 0x4c */ Attribute* Attributes[CREATURE_BELIEF_ATTRIBUTE_CREATURE_LAST];
	/* 0x78 */ uint32_t   field_0x78;

	// Override methods

	// BW1W120 004d65c0 BW1M119 0125a2d0
	virtual ~CreatureBeliefAboutCreature();
	// BW1W120 004d6590 BW1M119 0125a3d0
	virtual uint32_t GetNumAttributes();
	// BW1W120 004d65a0 BW1M119 0125cd60
	virtual Attribute* GetNthAttribute(unsigned long index);
	// BW1W120 004d65b0 BW1M119 0125cdc0
	virtual Attribute** GetNthAttributePtr(unsigned long index);
	// BW1W120 004d8230 BW1M119 01257710
	virtual void UpdateAttributes(Creature* creature, GameThingWithPos* thing, GPlayer* player);
	// BW1W120 004dae70 BW1M119 012598c0
	virtual CreatureBelief* FindBestObjectToActOn(CREATURE_DESIRES desire, CreatureMental* mental,
	                                              CREATURE_ACTION action, float* usefulness);
	// BW1W120 004da1c0 BW1M119 0125b3e0
	virtual CreatureBelief* Copy();
	// BW1W120 004c7aa0 BW1M119 012397f0
	virtual void Dump(FILE* file, unsigned long indent);
};
static_assert(sizeof(CreatureBeliefAboutCreature) == 0x7c, "Data type is of wrong size");

class CreatureBeliefAboutFlock : public CreatureBelief
{
public:
	/* 0x4c */ Attribute* Attributes[CREATURE_BELIEF_ATTRIBUTE_COMMON_LAST];

	// Override methods

	// BW1W120 004d6520 BW1M119 0125a420
	virtual ~CreatureBeliefAboutFlock();
	// BW1W120 004d64f0 BW1M119 0125a520
	virtual uint32_t GetNumAttributes();
	// BW1W120 004d6500 BW1M119 0125ce20
	virtual Attribute* GetNthAttribute(unsigned long index);
	// BW1W120 004d6510 BW1M119 0125ce80
	virtual Attribute** GetNthAttributePtr(unsigned long index);
	// BW1W120 004dadc0 BW1M119 01259990
	virtual CreatureBelief* FindBestObjectToActOn(CREATURE_DESIRES desire, CreatureMental* mental,
	                                              CREATURE_ACTION action, float* usefulness);
	// BW1W120 004da0a0 BW1M119 0125b700
	virtual CreatureBelief* Copy();
	// BW1W120 004c7a60 BW1M119 012398b0
	virtual void Dump(FILE* file, unsigned long indent);
};
static_assert(sizeof(CreatureBeliefAboutFlock) == 0x68, "Data type is of wrong size");

class CreatureBeliefAboutForest : public CreatureBelief
{
public:
	/* 0x4c */ Attribute* Attributes[CREATURE_BELIEF_ATTRIBUTE_FOREST_LAST];

	// Override methods

	// BW1W120 004d6610 BW1M119 0125a180
	virtual ~CreatureBeliefAboutForest();
	// BW1W120 004d65e0 BW1M119 0125a280
	virtual uint32_t GetNumAttributes();
	// BW1W120 004d65f0 BW1M119 0125cca0
	virtual Attribute* GetNthAttribute(unsigned long index);
	// BW1W120 004d6600 BW1M119 0125cd00
	virtual Attribute** GetNthAttributePtr(unsigned long index);
	// BW1W120 004dae90 BW1M119 01259730
	virtual CreatureBelief* FindBestObjectToActOn(CREATURE_DESIRES desire, CreatureMental* mental,
	                                              CREATURE_ACTION action, float* usefulness);
	// BW1W120 004da360 BW1M119 0125b200
	virtual CreatureBelief* Copy();
	// BW1W120 004c7ae0 BW1M119 01239730
	virtual void Dump(FILE* file, unsigned long indent);
};
static_assert(sizeof(CreatureBeliefAboutForest) == 0x6c, "Data type is of wrong size");

class CreatureBeliefAboutMobileObject : public CreatureBelief
{
public:
	// Override methods

	// BW1W120 004da700 BW1M119 inlined
	virtual ~CreatureBeliefAboutMobileObject();
};

class CreatureBeliefAboutTown : public CreatureBelief
{
public:
	/* 0x4c */ Attribute* Attributes[CREATURE_BELIEF_ATTRIBUTE_TOWN_LAST];

	// Override methods

	// BW1W120 004d64d0 BW1M119 0125a570
	virtual ~CreatureBeliefAboutTown();
	// BW1W120 004d64a0 BW1M119 0125a670
	virtual uint32_t GetNumAttributes();
	// BW1W120 004d64b0 BW1M119 0125cee0
	virtual Attribute* GetNthAttribute(unsigned long index);
	// BW1W120 004d64c0 BW1M119 0125cf30
	virtual Attribute** GetNthAttributePtr(unsigned long index);
	// BW1W120 004d7fc0 BW1M119 01257a60
	virtual void UpdateAttributes(Creature* creature, GameThingWithPos* thing, GPlayer* player);
	// BW1W120 004dad10 BW1M119 01259b00
	virtual CreatureBelief* FindBestObjectToActOn(CREATURE_DESIRES desire, CreatureMental* mental,
	                                              CREATURE_ACTION action, float* usefulness);
	// BW1W120 004d9e80 BW1M119 0125b870
	virtual CreatureBelief* Copy();
	// BW1W120 004c7a20 BW1M119 01239970
	virtual void Dump(FILE* file, unsigned long indent);
};
static_assert(sizeof(CreatureBeliefAboutTown) == 0x78, "Data type is of wrong size");

class CreatureBeliefAboutVillager : public CreatureBelief
{
public:
	/* 0x4c */ Attribute* Attributes[CREATURE_BELIEF_ATTRIBUTE_VILLAGER_LAST];

	// Override methods

	// BW1W120 004d6480 BW1M119 0125a030
	virtual ~CreatureBeliefAboutVillager();
	// BW1W120 004d6450 BW1M119 0125a130
	virtual uint32_t GetNumAttributes();
	// BW1W120 004d6460 BW1M119 0125cbe0
	virtual Attribute* GetNthAttribute(unsigned long index);
	// BW1W120 004d6470 BW1M119 0125cc40
	virtual Attribute** GetNthAttributePtr(unsigned long index);
	// BW1W120 004d8070 BW1M119 01257820
	virtual void UpdateAttributes(Creature* creature, GameThingWithPos* thing, GPlayer* player);
	// BW1W120 004db030 BW1M119 01259510
	virtual CreatureBelief* FindBestObjectToActOn(CREATURE_DESIRES desire, CreatureMental* mental,
	                                              CREATURE_ACTION action, float* usefulness);
	// BW1W120 004da450 BW1M119 0125aef0
	virtual CreatureBelief* Copy();
	// BW1W120 004c7b20 BW1M119 01239670
	virtual void Dump(FILE* file, unsigned long indent);
};
static_assert(sizeof(CreatureBeliefAboutVillager) == 0x78, "Data type is of wrong size");

class CreatureBeliefSmall : public CreatureBelief
{
public:
	/* 0x4c */ Attribute* Attributes[CREATURE_BELIEF_ATTRIBUTE_COMMON_LAST];

	// Override methods

	// BW1W120 004d6430 BW1M119 0125a6c0
	virtual ~CreatureBeliefSmall();
	// BW1W120 004d6400 BW1M119 0125a7c0
	virtual uint32_t GetNumAttributes();
	// BW1W120 004d6410 BW1M119 0125cf90
	virtual Attribute* GetNthAttribute(unsigned long index);
	// BW1W120 004d6420 BW1M119 0125cfe0
	virtual Attribute** GetNthAttributePtr(unsigned long index);
	// BW1W120 004dad00 BW1M119 01259c70
	virtual CreatureBelief* FindBestObjectToActOn(CREATURE_DESIRES desire, CreatureMental* mental,
	                                              CREATURE_ACTION action, float* usefulness);
	// BW1W120 004d9d60 BW1M119 0125bb80
	virtual CreatureBelief* Copy();
	// BW1W120 004c79e0 BW1M119 01239a30
	virtual void Dump(FILE* file, unsigned long indent);
};
static_assert(sizeof(CreatureBeliefSmall) == 0x68, "Data type is of wrong size");

#endif /* BW1_DECOMP_CREATURE_MENTAL_BELIEF_INCLUDED_H */
