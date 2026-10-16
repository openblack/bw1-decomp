#include "CreatureAttitudeConstants.h"
#include "GameTimeConstants.h"
#include "CreatureAttitudeToCreature.h"

#include "ColourConstants.h" /* For White */

#include "Creature.h"
#include "CreatureContext.h"
#include "CreatureMental.h"
#include "CreatureMentalDesire.h"
#include "CreaturePlan.h"

#if defined(VERSION_BW1W100)
#define FILEPATH "C:\\dev\\black\\CreatureAttitudeToCreature.cpp"
#elif defined(VERSION_BW1W110)
#define FILEPATH "C:\\dev\\Black\\CreatureAttitudeToCreature.cpp"
#elif defined(VERSION_BW1W130)
#define FILEPATH "D:\\Work\\Games\\dd\\Black\\CreatureAttitudeToCreature.cpp"
#else
#define FILEPATH "C:\\dev\\MP\\Black\\CreatureAttitudeToCreature.cpp"
#endif

CreatureAttitudeToCreature::CreatureAttitudeToCreature(Creature* creature)
{
	this->creature = creature;
	HowNice = HowImpressive = HowMuchAttentionPaidToMe = 0.0f;
}

CreatureAttitudeToCreature* CreatureMental::GetAttitudeToCreature(Creature* other_creature)
{
	for (LHLinkedNode<CreatureAttitudeToCreature*>* node = AttitudesToCreatures.GetStart(); node != NULL;
	     node = node->next.Get())
	{
		CreatureAttitudeToCreature* attitude = node->payload;
		if (attitude->creature == other_creature)
		{
			return attitude;
		}
	}

	CreatureAttitudeToCreature* attitude = new (FILEPATH, 22) CreatureAttitudeToCreature(other_creature);
	AttitudesToCreatures.AddToEnd(attitude);
	return attitude;
}

void CreatureMental::UpdateAttitudesToCreatures()
{
	for (LHLinkedNode<CreatureAttitudeToCreature*>* node = AttitudesToCreatures.GetStart(); node != NULL;
	     node = node->next.Get())
	{
		CreatureAttitudeToCreature* attitude = node->payload;
		attitude->HowImpressive *= CREATURE_HOW_IMPRESSIVE_DECAY;
		attitude->HowMuchAttentionPaidToMe *= CREATURE_HOW_MUCH_ATTENTION_PAID_TO_ME_DECAY;
	}
}

void CreatureMental::UpdateHowNiceIsCreature(Creature* other_creature, float niceness)
{
	CreatureAttitudeToCreature* attitude = GetAttitudeToCreature(other_creature);
	if (attitude != NULL)
	{
		attitude->HowNice += niceness;
		CLAMP(attitude->HowNice, -1.0f, 1.0f);
	}

	CreatureBelief*  belief = AddBeliefAboutObject(creature, other_creature);
	unsigned long    lessonCount = 0;
	CREATURE_DESIRES desireToEncourage;
	CREATURE_DESIRES desireToDiscourage;
	if (niceness < 0.0)
	{
		desireToEncourage = CREATURE_DESIRE_ANGER;
		desireToDiscourage = CREATURE_DESIRE_TO_BE_FRIENDS;
	}
	else
	{
		desireToEncourage = CREATURE_DESIRE_TO_BE_FRIENDS;
		desireToDiscourage = CREATURE_DESIRE_ANGER;
	}

	CreaturePlan    encouragedPlan(desireToEncourage,
	                               (CREATURE_ACTION)CreatureDesireActionEntry::GetInfo()[desireToEncourage].Actions[0],
	                               belief, belief, belief, 1.0f);
	CreatureContext encouragedContext(creature, encouragedPlan, INVALID_CREATURE_DESIRE_SOURCE, 0, ContextBelief);
	LearnParticularLessonFromFeedback(encouragedContext, 0.5f, LESSON_TYPE_ACTIVITY_OBJECT, 1, &lessonCount,
	                                  LESSON_ORIGIN_TYPE_DIRECT_PLAYER_FEEDBACK);
	encouragedContext.CleanUp();

	CreaturePlan discouragedPlan(desireToDiscourage,
	                             (CREATURE_ACTION)CreatureDesireActionEntry::GetInfo()[desireToDiscourage].Actions[0],
	                             belief, belief, belief, 1.0f);
	CreatureContext discouragedContext(creature, discouragedPlan, INVALID_CREATURE_DESIRE_SOURCE, 0, ContextBelief);
	LearnParticularLessonFromFeedback(discouragedContext, -0.5f, LESSON_TYPE_ACTIVITY_OBJECT, 1, &lessonCount,
	                                  LESSON_ORIGIN_TYPE_DIRECT_PLAYER_FEEDBACK);
	discouragedContext.CleanUp();
}

void CreatureMental::UpdateHowImpressiveIsCreature(Creature* other_creature, float impressiveness)
{
	CreatureAttitudeToCreature* attitude = GetAttitudeToCreature(other_creature);
	if (attitude != NULL)
	{
		attitude->HowImpressive += impressiveness;
		CLAMP(attitude->HowImpressive, 0.0f, 1.0f);
	}
}

void CreatureMental::UpdateHowMuchAttentionPaidToMeByCreature(Creature* other_creature, float attention)
{
	CreatureAttitudeToCreature* attitude = GetAttitudeToCreature(other_creature);
	if (attitude != NULL)
	{
		attitude->HowMuchAttentionPaidToMe += attention;
		CLAMP(attitude->HowMuchAttentionPaidToMe, 0.0f, 1.0f);
	}
}
