#ifndef BW1_DECOMP_CREATURE_MENTAL_BELIEF_INCLUDED_H
#define BW1_DECOMP_CREATURE_MENTAL_BELIEF_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/CreatureEnum.h> /* For enum CREATURE_ACTION */
#include <chlasm/Enum.h>         /* For enum CREATURE_DESIRES */

#include "Base.h"             /* For struct Base */
#include "GameThingWithPos.h" /* For struct GameThingWithPos */
#include "MapCoords.h"        /* For struct MapCoords */

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
	uint8_t           field_0x8[0x1c];
	MapCoords         Pos;     /* 0x24 */
	GameThingWithPos* Pointer; /* 0x30 */
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
	// TODO: The last slot is Dump(std::FILE*, unsigned long) at 004c7920 (Mac 01239af0).

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
	// Override methods

	// BW1W120 004d6660 BW1M119 01259ee0
	virtual ~CreatureBeliefAboutAbode();
};

class CreatureBeliefAboutCitadel : public CreatureBelief
{
public:
	// Override methods

	// BW1W120 004d6570 BW1M119 01259d90
	virtual ~CreatureBeliefAboutCitadel();
};

class CreatureBeliefAboutContext : public CreatureBelief
{
public:
	// Override methods

	// BW1W120 004d66c0 BW1M119 01259cf0
	virtual ~CreatureBeliefAboutContext();
};

class CreatureBeliefAboutCreature : public CreatureBelief
{
public:
	// Override methods

	// BW1W120 004d65c0 BW1M119 0125a2d0
	virtual ~CreatureBeliefAboutCreature();
};

class CreatureBeliefAboutFlock : public CreatureBelief
{
public:
	// Override methods

	// BW1W120 004d6520 BW1M119 0125a420
	virtual ~CreatureBeliefAboutFlock();
};

class CreatureBeliefAboutForest : public CreatureBelief
{
public:
	// Override methods

	// BW1W120 004d6610 BW1M119 0125a180
	virtual ~CreatureBeliefAboutForest();
};

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
	// Override methods

	// BW1W120 004d64d0 BW1M119 0125a570
	virtual ~CreatureBeliefAboutTown();
};

class CreatureBeliefAboutVillager : public CreatureBelief
{
public:
	// Override methods

	// BW1W120 004d6480 BW1M119 0125a030
	virtual ~CreatureBeliefAboutVillager();
};

class CreatureBeliefSmall : public CreatureBelief
{
public:
	// Override methods

	// BW1W120 004d6430 BW1M119 0125a6c0
	virtual ~CreatureBeliefSmall();
};

#endif /* BW1_DECOMP_CREATURE_MENTAL_BELIEF_INCLUDED_H */
