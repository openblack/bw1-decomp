#ifndef BW1_DECOMP_CREATURE_ACTIONS_KNOWN_ABOUT_INCLUDED_H
#define BW1_DECOMP_CREATURE_ACTIONS_KNOWN_ABOUT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum CREATURE_ACTION_LEARNING_TYPE */
#include <re_common.h>   /* For bool32_t */

#include <Lionhead/LHLib/ver5.0/LHLinkedList.h> /* For struct LHLinkedList */

#include "Base.h" /* For struct Base */

class CreatureActionKnownAbout;

class CreatureActionsKnownAbout : public Base
{
public:
	LHLinkedList<CreatureActionKnownAbout*> ActionsKnown[CREATURE_ACTION_LEARNING_TYPE_LAST];

	// Override methods

	// BW1W120 004e2230 BW1M119 0126a830
	virtual ~CreatureActionsKnownAbout();

	// Non-virtual methods

	// BW1W120 004e2890 BW1M119 01269ec0
	bool32_t KnowsAction(CREATURE_ACTION_LEARNING_TYPE type, unsigned long action);
};

#endif /* BW1_DECOMP_CREATURE_ACTIONS_KNOWN_ABOUT_INCLUDED_H */
