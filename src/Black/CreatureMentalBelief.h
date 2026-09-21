#ifndef BW1_DECOMP_CREATURE_MENTAL_BELIEF_INCLUDED_H
#define BW1_DECOMP_CREATURE_MENTAL_BELIEF_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "Base.h" /* For struct Base */

class CreatureBelief : public Base
{
public:
	uint8_t field_0x8[0x44];

	// Override methods

	// BW1W120 004d78d0 BW1M119 01256640
	virtual ~CreatureBelief();
};

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
