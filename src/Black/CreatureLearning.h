#ifndef BW1_DECOMP_CREATURE_LEARNING_INCLUDED_H
#define BW1_DECOMP_CREATURE_LEARNING_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */
#include <stdio.h>  /* For FILE */

#include <chlasm/CreatureEnum.h> /* For enum CREATURE_ACTION, NUM_CREATURE_ACTIONS */
#include <chlasm/Enum.h>         /* For CREATURE_ACTION_KNOWN_ABOUT_LAST, MAGIC_TYPE_LAST, OBJECT_TYPE_LAST */
#include <Lionhead/LHLib/ver5.0/LHListNode.h> /* For struct LHListNode */
#include <re_common.h>                        /* For bool32_t */

#include "Base.h"                   /* For struct Base */
#include "CreatureAction.h"         /* For struct PreviousActionContextStack */
#include "CreatureContext.h"        /* For struct PreviousContextStack */
#include "CreaturePreviousLesson.h" /* For struct CreaturePreviousLesson */

// Forward Declares

class Creature;
class CreatureBelief;
class CreatureLearningContext;
class CreatureMental;

enum LESSON_TYPE
{
	LESSON_TYPE_DESIRE = 0x0,
	LESSON_TYPE_ACTIVITY_OBJECT = 0x1,
	LESSON_TYPE_ACTION_OBJECT = 0x2,
	LESSON_TYPE_ACTION = 0x3,
	_LESSON_TYPE_COUNT = 0x4
};
static_assert(sizeof(enum LESSON_TYPE) == 0x4, "Data type is of wrong size");

enum LESSON_ORIGIN_TYPE
{
	LESSON_ORIGIN_TYPE_DIRECT_PLAYER_FEEDBACK = 0x0,
	LESSON_ORIGIN_TYPE_FEEDBACK_FROM_EATING = 0x1,
	LESSON_ORIGIN_TYPE_INDIRECT_FEEDBACK_FROM_PLAYER_WATCHING = 0x2
};

struct CreatureDesireFeedback
{
	unsigned long GameTurn;
	float         Feedback;

	// BW1W120 inlined BW1M119 01269400
	CreatureDesireFeedback() : GameTurn(0), Feedback(0.0f) {}
};
static_assert(sizeof(CreatureDesireFeedback) == 0x8, "Data type is of wrong size");

class CreatureLearning : public Base
{
public:
	PreviousContextStack previous_context_stack;
#ifndef VERSION_BW1WCI
	PreviousActionContextStack previous_action_context_stack;
#endif
	CreaturePreviousLesson PreviousLesson;
	float                  field_0x1522c;
	uint32_t               NumTimesNormalActionSeen[CREATURE_ACTION_KNOWN_ABOUT_LAST];
	uint32_t               GameTurnNormalActionFirstSeen[CREATURE_ACTION_KNOWN_ABOUT_LAST];
	uint32_t               NumTimesMagicActionSeen[MAGIC_TYPE_LAST];
	uint32_t               GameTurnMagicActionLastSeen[MAGIC_TYPE_LAST];
	uint32_t               GameTurnActionLastPerformed[NUM_CREATURE_ACTIONS];
	uint32_t               HeldObjectActionCounts[OBJECT_TYPE_LAST];
	uint32_t               field_0x15984[OBJECT_TYPE_LAST];
	uint32_t               field_0x15a38[OBJECT_TYPE_LAST];
#ifdef VERSION_BW1WCI
	bool32_t CanLearn[CREATURE_ACTION_KNOWN_ABOUT_LAST];
#endif
	float                  LessonFeedback;
	bool32_t               LessonLearnt;
	float                  LessonTextTicks;
	CreatureDesireFeedback DesireFeedback[NUM_CREATURE_DESIRES];
	LESSON_TYPE            LessonType;
	uint32_t               SelectedContext;
	uint32_t               NumTimesActionPerformed[NUM_CREATURE_ACTIONS];
	Creature*              creature;
	uint32_t               GameTurnNicenessLastUpdated;

	// Constructors

	// BW1W120 004e0290 BW1M119 01268fd0
	CreatureLearning(Creature* creature);

	// Non-virtual methods

	// BW1W120 004e22e0 BW1M119 0126a740
	float GetSkillAtAction(CREATURE_ACTION action);
	// BW1W120 004e2350 BW1M119 0126a680
	void SetSkillAtAction(CREATURE_ACTION action, float skill);
	// BW1W120 inlined BW1M119 inlined
	float GetLessonFeedback() { return LessonFeedback; }
	// BW1W120 inlined BW1M119 inlined
	void SetLessonLearnt(bool32_t learnt, float ticks)
	{
		LessonLearnt = learnt;
		LessonTextTicks = ticks;
	}
	// BW1W120 004e1d70 BW1M119 null
	void DumpContexts();
	// BW1W120 004e1da0 BW1M119 null
	bool32_t GetDesireFeedback(CREATURE_DESIRES desire, float* feedback);
	// BW1W120 004e1dd0 BW1M119 null
	void SetDesireFeedback(CREATURE_DESIRES desire, float feedback);
	// BW1W120 004e1e00 BW1M119 012666f0
	CreatureContext* GetSelectedContext();
	// BW1W120 004e1e20 BW1M119 01266690
	CreatureContext* GetCurrentContext();
#ifndef VERSION_BW1WCI
	// BW1W120 004e1e30 BW1M119 null
	CreatureActionContext* GetPreviousActionContext(CREATURE_ACTION action);
#endif
	// BW1W120 004e1e50 BW1M119 01266600
	CreatureContext* GetOldestContext();
	// BW1W120 004e1e70 BW1M119 null
	CreatureContext* GetContextToLearnFrom(CreatureMental* mind);
};
#ifdef VERSION_BW1WCI
static_assert(sizeof(CreatureLearning) == 0x2428, "Data type is of wrong size");
#else
static_assert(sizeof(CreatureLearning) == 0x16168, "Data type is of wrong size");
#endif

class CreatureLearningEpisode : public Base
{
public:
	CreatureLearningContext*            Context;  /* 0x8 */
	float                               Feedback; /* 0xc */
	LHListNode<CreatureLearningEpisode> next;     /* 0x10 */

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	CreatureLearningEpisode(CreatureLearningContext* context, float feedback)
	{
		Context = context;
		Feedback = feedback;
	}

	// Override methods

	// BW1W120 004d4500 BW1M119 012549f0
	virtual ~CreatureLearningEpisode();

	// Non-virtual methods

	// BW1W120 004c76d0 BW1M119 null
	void Dump(FILE* file, unsigned long indent);
};
static_assert(sizeof(CreatureLearningEpisode) == 0x14, "Data type is of wrong size");

class CreatureLearningContext : public Base
{
public:
	LESSON_TYPE      Type;   /* 0x8 */
	CREATURE_DESIRES Goal;   /* 0xc */
	CREATURE_ACTION  Action; /* 0x10 */
	CreatureBelief*  Belief; /* 0x14 */

	// Constructors

	// BW1W120 004e1cf0 BW1M119 01266820
	CreatureLearningContext(LESSON_TYPE type, CREATURE_DESIRES goal, CreatureBelief* belief, CREATURE_ACTION action);

	// Override methods

	// BW1W120 004e1d50 BW1M119 01266760
	virtual ~CreatureLearningContext();

	// Non-virtual methods

	// BW1W120 004e1c90 BW1M119 null
	bool32_t operator==(const CreatureLearningContext& other);
	// BW1W120 004e1cc0 BW1M119 null
	bool32_t IsValid();
};
static_assert(sizeof(CreatureLearningContext) == 0x18, "Data type is of wrong size");

#endif /* BW1_DECOMP_CREATURE_LEARNING_INCLUDED_H */
