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

	// BW1W120 004d78d0 BW1M100 10252070 CreatureBelief::_dt(void)
	virtual ~CreatureBelief();
};

class CreatureBeliefAboutAbode : public CreatureBelief
{
public:
	// Override methods

	// BW1W120 004d6660 BW1M100 10255910 CreatureBeliefAboutAbode::_dt(void)
	virtual ~CreatureBeliefAboutAbode();
};

class CreatureBeliefAboutCitadel : public CreatureBelief
{
public:
	// Override methods

	// BW1W120 004d6570 BW1M100 102557b0 CreatureBeliefAboutCitadel::_dt(void)
	virtual ~CreatureBeliefAboutCitadel();
};

class CreatureBeliefAboutContext : public CreatureBelief
{
public:
	// Override methods

	// BW1W120 004d66c0 BW1M100 10255710 CreatureBeliefAboutContext::_dt(void)
	virtual ~CreatureBeliefAboutContext();
};

class CreatureBeliefAboutCreature : public CreatureBelief
{
public:
	// Override methods

	// BW1W120 004d65c0 BW1M100 10255d30 CreatureBeliefAboutCreature::_dt(void)
	virtual ~CreatureBeliefAboutCreature();
};

class CreatureBeliefAboutFlock : public CreatureBelief
{
public:
	// Override methods

	// BW1W120 004d6520 BW1M100 10255e90 CreatureBeliefAboutFlock::_dt(void)
	virtual ~CreatureBeliefAboutFlock();
};

class CreatureBeliefAboutForest : public CreatureBelief
{
public:
	// Override methods

	// BW1W120 004d6610 BW1M100 10255bd0 CreatureBeliefAboutForest::_dt(void)
	virtual ~CreatureBeliefAboutForest();
};

class CreatureBeliefAboutMobileObject : public CreatureBelief
{
public:
	// Override methods

	// BW1W120 004da700 BW1M100 inlined CreatureBeliefAboutMobileObject::_dt(void)
	virtual ~CreatureBeliefAboutMobileObject();
};

class CreatureBeliefAboutTown : public CreatureBelief
{
public:
	// Override methods

	// BW1W120 004d64d0 BW1M100 10255ff0 CreatureBeliefAboutTown::_dt(void)
	virtual ~CreatureBeliefAboutTown();
};

class CreatureBeliefAboutVillager : public CreatureBelief
{
public:
	// Override methods

	// BW1W120 004d6480 BW1M100 10255a70 CreatureBeliefAboutVillager::_dt(void)
	virtual ~CreatureBeliefAboutVillager();
};

class CreatureBeliefSmall : public CreatureBelief
{
public:
	// Override methods

	// BW1W120 004d6430 BW1M100 10256140 CreatureBeliefSmall::_dt(void)
	virtual ~CreatureBeliefSmall();
};

#endif /* BW1_DECOMP_CREATURE_MENTAL_BELIEF_INCLUDED_H */
