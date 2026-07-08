#ifndef BW1_DECOMP_CREATURE_AGENDA_INCLUDED_H
#define BW1_DECOMP_CREATURE_AGENDA_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For int32_t, uint32_t, uint8_t */

#include "Base.h"                 /* For struct Base */
#include "CreatureCommandState.h" /* For struct CreatureCommandState */
#include "CreatureMimic.h"        /* For struct CreatureMimicState */
#include "CreaturePlan.h"         /* For struct CreaturePlan, struct CreaturePlanState */
#include "CreatureSubAction.h"    /* For struct CreatureSubActionAgenda */

// Forward Declares

class Creature;
class CreatureBelief;
class CreatureInfo;

class CreatureAgenda : public Base
{
public:
	CreaturePlanState       plan_state;        /* 0x8 */
	CreaturePlan            plans[0x2];        /* 0x838 */
	CreatureSubActionAgenda sub_action_agenda; /* 0x898 */
	CreatureCommandState    command_state;     /* 0x14e8 */
	Creature*               creature;          /* 0x1514 */
	uint32_t                field_0x1518;
	uint32_t                field_0x151c;
	CreatureMimicState      mimic_state; /* 0x1520 */
	uint32_t                field_0x155c;
	CreatureBelief*         belief; /* 0x1560 */
	uint32_t                field_0x1564;
	uint32_t                field_0x1568;
	uint32_t                field_0x156c;
	uint32_t                field_0x1570;
	uint32_t                field_0x1574;
	uint32_t                field_0x1578;
	uint32_t                field_0x157c;
	uint32_t                field_0x1580;
	uint32_t                field_0x1584;
	uint32_t                field_0x1588;
	uint8_t                 field_0x158c[0x520];
	uint32_t                field_0x1aac;
	uint32_t                field_0x1ab0;
	uint8_t                 field_0x1ab4[0xc];
	uint32_t                field_0x1ac0;
	uint32_t                field_0x1ac4;
	uint32_t                field_0x1ac8;
	int32_t                 field_0x1acc;
	uint32_t                field_0x1ad0;
	uint32_t                field_0x1ad4;
	uint32_t                field_0x1ad8;
	uint32_t                field_0x1adc;
	uint32_t                field_0x1ae0;
	uint32_t                field_0x1ae4;
	uint32_t                field_0x1ae8;
	uint32_t                field_0x1aec;
	uint32_t                field_0x1af0;
	uint32_t                field_0x1af4;

	// Override methods

	// BW1W120 004d3600 BW1M100 10246c50 CreatureAgenda::_dt(void)
	virtual ~CreatureAgenda();

	// Constructors

	// BW1W120 004d34b0 BW1M100 102471c0 CreatureAgenda::CreatureAgenda(Creature *, CreatureInfo const *)
	CreatureAgenda(CreatureInfo* info);

	// Non-virtual methods

	// BW1W120 004aca70 BW1M100 10217d60 CreatureAgenda::ConstructSubActionsForAttackerThrowBallAtGoal(unsigned long)
	bool ConstructSubActionsForAttackerThrowBallAtGoal(unsigned long param_1);
};

#endif /* BW1_DECOMP_CREATURE_AGENDA_INCLUDED_H */
