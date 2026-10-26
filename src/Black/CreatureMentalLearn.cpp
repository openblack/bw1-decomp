#include "MaxFloat.h"
#include "CreatureAttitudeConstants.h"
#include "GameTimeConstants.h"
#include "CreatureMental.h"

#include <math.h>   /* For fabs */
#include <stdio.h>  /* For sprintf */
#include <string.h> /* For strcpy, strlen */

#include <chlasm/HelpTextEnums.h> /* For HELP_TEXT_TOOLTIP_48 */

#include "ColourConstants.h" /* For White */
#include "Creature.h"
#include "CreatureActionInfo.h"
#include "CreatureDesireTableEntry.h"
#include "CreatureInfo.h"
#include "CreatureInitialDesireInfo.h"
#include "CreatureMentalBelief.h"
#include "CreatureMentalLearnAction.h"
#include "CreatureMimicInfo.h"
#include "CreatureMusicFeedback.h"
#include "CreaturePhysical.h"
#include "Game.h"
#include "GameInfo.h"
#include "Global.h"
#include "InterfaceStatus.h"
#include "LeashStatus.h"
#include "MagicEffectInfo.h"
#include "MagicInfo.h"
#include "Object.h"
#include "Rand.h"
#include "SpellSeedInfo.h"
#include "ToolTips.h"
#include "Town.h"

#if defined(VERSION_BW1W100) || defined(VERSION_BW1WCI)
#define FILEPATH "C:\\dev\\black\\CreatureMentalLearn.cpp"
#elif defined(VERSION_BW1W110)
#define FILEPATH "C:\\dev\\Black\\CreatureMentalLearn.cpp"
#elif defined(VERSION_BW1W130)
#define FILEPATH "D:\\Work\\Games\\dd\\Black\\CreatureMentalLearn.cpp"
#else
#define FILEPATH "C:\\dev\\MP\\Black\\CreatureMentalLearn.cpp"
#endif

#if defined(VERSION_BW1W100)
#define LEARN_LINE(line) ((line) - ((line) < 300 ? 0 : (line) < 530 ? 3 : 9))
#elif defined(VERSION_BW1WCI)
#define LEARN_LINE(line) ((line) + 2)
#else
#define LEARN_LINE(line) (line)
#endif

#ifdef VERSION_BW1WCI
#define LOOK_AT_CAMERA_TOOLTIP HELP_TEXT_TOOLTIP_48
#else
#define LOOK_AT_CAMERA_TOOLTIP 3746
#endif

#define NEGLIGIBLE_FEEDBACK              0.01f
#define LOOK_AT_CAMERA_TOOLTIP_DURATION  1.0f
#define EAT_CARRIED_OBJECT_FEEDBACK      1.0f
#define LEAST_DOMINANT_DESIRE_DIVISOR    1.3f
#define RUN_AWAY_THRESHOLD_INCREASE      0.2f
#define FOLLOW_PLAYER_SOURCE_INCREASE    0.3f
#define SADNESS_SUPPRESSION_SECONDS      90.0f
#define NOT_LEARNING_SOURCE_CHANGE_SCALE 0.5f
#define EMOTIONAL_RESPONSE_CHANCE        2
#define LESSON_TEXTS_SIZE                0x400
#define LEASH_LESSON_FEEDBACK            1.0f
#define ATTITUDE_FEEDBACK_DIVISOR        20.0f
#define MUSIC_FEEDBACK_DECAY             0.4f
#define MUSIC_FEEDBACK_WEIGHT            0.6f
#define LESSON_TEXT_SECONDS              120.0f
#define TO_POO_FEEDBACK_LIMIT            0.5f
#define ACTION_OPINION_LEARNING_RATE     0.8f

// clang-format off
static const char LessonOriginNames[][0x100] = {
    "Direct player feedback",
    "Feedback from eating",
    "Indirect feedback from player watching",
};
// clang-format on

CreatureLearning::CreatureLearning(Creature* creature)
	: previous_context_stack(creature, &Creature::LearnFromPlayerWatchingAndNotPunishing)
{
	GameTurnNicenessLastUpdated = 0;
	LessonLearnt = false;
	LessonTextTicks = 0.0f;
	LessonFeedback = 0.0f;
	SelectedContext = 0;
	for (int action = 0; action < NUM_CREATURE_ACTIONS; action++)
	{
		NumTimesActionPerformed[action] = 0;
		GameTurnActionLastPerformed[action] = 0;
	}
	this->creature = creature;
	for (int normal = 0; normal < CREATURE_ACTION_KNOWN_ABOUT_LAST; normal++)
	{
		GameTurnNormalActionFirstSeen[normal] = 0;
		NumTimesNormalActionSeen[normal] = 0;
#ifdef VERSION_BW1WCI
		CanLearn[normal] = true;
#endif
	}
	for (int magic = 0; magic < MAGIC_TYPE_LAST; magic++)
	{
		GameTurnMagicActionLastSeen[magic] = 0;
		NumTimesMagicActionSeen[magic] = 0;
	}
	field_0x1522c = 0.0f;
	for (int type = 0; type < OBJECT_TYPE_LAST; type++)
	{
		HeldObjectActionCounts[type] = 0;
		field_0x15984[type] = 0;
		field_0x15a38[type] = 0;
	}
}

float CreatureMental::GetBestContextToLearnFrom(CreatureContext& best_context)
{
	float           bestPriority = 0.0f;
	unsigned long   bestIndex = 0;
	CreatureContext context;
	for (unsigned long i = 0; i < learning.previous_context_stack.GetSize(); i++)
	{
		context = *learning.previous_context_stack.GetNth(i);
		float priority = context.CalculateLearningPriority();
		if (priority > bestPriority)
		{
			bestPriority = priority;
			bestIndex = i;
		}
	}
	if (bestPriority > 0.0f)
	{
		best_context = *learning.previous_context_stack.GetNth(bestIndex);
	}
	return bestPriority;
}

float CreatureContext::CalculateLearningPriority()
{
	if (CreatureActionInfo::GetInfo()[plan.creature_action].Learnable)
	{
		if (!FinishedSuccessfully)
		{
			return 1.0f;
		}
		if (WasSeen)
		{
			float secondsSinceSeen =
				(GGame::g_game->data.GameTurn - GameTurnWasSeen) / GGameInfo::Info.NumGameTicksPerSecond();
			float learnWindow = CreatureActionInfo::GetInfo()[plan.creature_action].LearnWindow;
			if (secondsSinceSeen < learnWindow)
			{
				return 1.0f - secondsSinceSeen / learnWindow;
			}
		}
	}
	return 0.0f;
}

void CreatureMental::RespondToPlayerFeedback(float feedback)
{
	bool32_t playerHasBeenTold = agenda.PlayerHasBeenTold;
	creature.Get()->FinishActionUnsuccessfully("player feedback", true, true);
	agenda.PlayerHasBeenTold = playerHasBeenTold;
	if (!creature.Get()->LearningEnabled)
	{
		return;
	}

	if (fabs(feedback) <= NEGLIGIBLE_FEEDBACK)
	{
		CreatureBelief* creatureBelief = GetBeliefAboutObject(creature.Get());
		CreaturePlan    plan(CREATURE_DESIRE_TO_IDLE_AROUND_WITH_PLAYER, CREATURE_LOOK_AT_CAMERA, NULL, creatureBelief,
		                     NULL, 1.0f);
		creature.Get()->ForceActivityAndForceAction(plan, true, true);
		ToolTips::ForceToolTips(LOOK_AT_CAMERA_TOOLTIP, LOOK_AT_CAMERA_TOOLTIP_DURATION);
		return;
	}

	unsigned long    lessonCount = 0;
	CreatureContext* currentContext = learning.GetCurrentContext();
	UpdateAttitudeToPlayerFromFeedback(feedback);
	if (feedback > 0.0f)
	{
		if (creature.Get()->physical->ObjectCarried != NULL &&
		    CreatureActionInfo::GetInfo()[currentContext->plan.creature_action].EatCarriedObjectWhenPraised &&
		    creature.Get()->DevelopmentPhase >= DEVELOPMENT_PHASE_LEARN_TO_TAKE_FROM_PLAYER_AND_EAT)
		{
			desires.MakeDesireFullyDominant(CREATURE_DESIRE_HUNGER, creature.Get()->GetInfo());
			Object*         carriedObject = creature.Get()->physical->ObjectCarried;
			CreatureBelief* food = GetBeliefAboutObject(carriedObject);
			creature.Get()->ForceActivityAndForceAction(CREATURE_DESIRE_HUNGER, NULL, CREATURE_EAT_ALIVE, food, NULL,
			                                            false, true);
#ifdef VERSION_BW1WCI
			agenda.CommandState.Commanded = true;
#endif
			CreaturePlan    plan(CREATURE_DESIRE_HUNGER, CREATURE_EAT_ALIVE, NULL, food, food, 1.0f);
			CreatureContext context(creature.Get(), plan, INVALID_CREATURE_DESIRE_SOURCE, false, ContextBelief);
			unsigned long   eatLessonCount = 0;
			LearnParticularLessonFromFeedback(context, EAT_CARRIED_OBJECT_FEEDBACK, LESSON_TYPE_ACTION_OBJECT, true,
			                                  &eatLessonCount, LESSON_ORIGIN_TYPE_DIRECT_PLAYER_FEEDBACK);
			context.CleanUp();
			agenda.ForcedActionFunction = &Creature::RepeatLastAction;
			return;
		}
		if (learning.GetCurrentContext()->plan.CreatureDesire == CREATURE_DESIRE_TO_RUN_AWAY_FROM_PLAYER)
		{
			creature.Get()->FinishActionUnsuccessfully(NULL, true, true);
			desires.MakeDesireLeastDominant(currentContext->plan.CreatureDesire, creature.Get()->GetInfo(),
			                                LEAST_DOMINANT_DESIRE_DIVISOR);
			desires.SetSource(TO_RUN_AWAY_FROM_PLAYER, 0.0f);
			CreatureDesireSource* source = desires.GetSource(TO_RUN_AWAY_FROM_PLAYER);
			source->Value = 0.0f;
			source->Threshold += RUN_AWAY_THRESHOLD_INCREASE;
			agenda.CurrentPlan.AgendaPriority = 0.0f;
			return;
		}
	}

	if (feedback < 0.0f)
	{
		if (feedback > -creature.Get()->GetInfo()->MinFeedback)
		{
			feedback = -creature.Get()->GetInfo()->MinFeedback;
		}
	}
	else if (feedback < creature.Get()->GetInfo()->MinFeedback)
	{
		feedback = creature.Get()->GetInfo()->MinFeedback;
	}

	if (feedback < 0.0f)
	{
		if (agenda.MimicState.Mimicking)
		{
			agenda.MimicState.Mimicking = false;
		}
		agenda.ForcedActionFunction = &Creature::BeSad;
	}

	CreatureContext bestContext;
	float           bestPriority = GetBestContextToLearnFrom(bestContext);
	if (bestPriority == 0.0f || bestContext.plan.CreatureDesire > INVALID_CREATURE_DESIRE)
	{
		return;
	}

	if (feedback > 0.0f)
	{
		if (agenda.MimicState.Mimicking)
		{
			agenda.MimicState.Stage = MIMIC_STAGE_COPY_ACTION;
			agenda.MimicState.StageProgress = 0;
			uint32_t numActions =
				CreatureMimicInfo::GetInfo()[agenda.MimicState.DetectedPlayerAction].NumActionsPerStage;
			agenda.MimicState.StageLimit = numActions + GRand::GameRand(1, FILEPATH, LEARN_LINE(217));
			desires.ChangeSource(TO_FOLLOW_PLAYER_DESIRE, FOLLOW_PLAYER_SOURCE_INCREASE);
		}
		desires.SuppressDesire(CREATURE_DESIRE_SADNESS, SADNESS_SUPPRESSION_SECONDS);
	}

	if (bestPriority > 0.0f && creature.Get()->DevelopmentPhase >= DEVELOPMENT_PHASE_PUNISHMENT)
	{
		LearnLessonsFromFeedback(bestContext, feedback, true, LESSON_ORIGIN_TYPE_DIRECT_PLAYER_FEEDBACK, &lessonCount);
	}
	else
	{
		float change = fabs(feedback) * NOT_LEARNING_SOURCE_CHANGE_SCALE;
		if (feedback < 0.0f)
		{
			desires.ChangeSource(ANGER_FROM_BEING_DAMAGED, change);
			desires.ChangeSource(FEAR_FROM_BEING_DAMAGED, change);
			creature.Get()->SendCandidateHelpScript(CREATURE_HELP_TYPE_MISCELLANEOUS_STACKED,
			                                        CREATURE_MISCELLANEOUS_HELP_STACKED_PLAYER_SLAP_BUT_NOT_LEARNING,
			                                        NULL, NULL, 0);
			if (GRand::GameRand(EMOTIONAL_RESPONSE_CHANCE, FILEPATH, LEARN_LINE(240)) == 0)
			{
				agenda.ForcedActionFunction = &Creature::BeFrightened;
				agenda.ForcedActionBelief = GetBeliefAboutObject(creature.Get());
			}
		}
		else
		{
			desires.ChangeSource(TO_PLAY_FROM_WATCHING_PLAYER, change);
			desires.ChangeSource(TO_MANIFEST_STATE, change);
			desires.ChangeSource(COMPASSION_FROM_WATCHING_PLAYER, change);
			creature.Get()->SendCandidateHelpScript(CREATURE_HELP_TYPE_MISCELLANEOUS_STACKED,
			                                        CREATURE_MISCELLANEOUS_HELP_STACKED_PLAYER_STROKE_BUT_NOT_LEARNING,
			                                        NULL, NULL, 0);
			if (GRand::GameRand(EMOTIONAL_RESPONSE_CHANCE, FILEPATH, LEARN_LINE(252)) == 0)
			{
				agenda.ForcedActionFunction = &Creature::BeHappy;
				agenda.ForcedActionBelief = GetBeliefAboutObject(creature.Get());
			}
		}
	}

	if (currentContext->plan.IsValid() && feedback <= 0.0f)
	{
		agenda.StartActionAgain = false;
		creature.Get()->FinishActionUnsuccessfully(NULL, true, true);
		desires.MakeDesireLeastDominant(currentContext->plan.CreatureDesire, creature.Get()->GetInfo(),
		                                LEAST_DOMINANT_DESIRE_DIVISOR);
		desires.UnsuppressAllDesires();
		agenda.CurrentPlan.AgendaPriority = 0.0f;
	}

	char lessonTexts[LESSON_TEXTS_SIZE];
	lessonTexts[0] = '\0';
	for (unsigned long i = 0; i < learning.PreviousLesson.NumLessonTexts; i++)
	{
		sprintf(lessonTexts + strlen(lessonTexts), "%s\n", learning.PreviousLesson.LessonTexts[i]);
	}

	creature.Get()->TurnsBeforeConsideringDecision = 0;
	if (feedback > 0.0f && bestContext.plan.ObjectToActOn != NULL && bestContext.plan.ObjectToActOn->Pointer != NULL &&
	    bestContext.plan.ObjectToActOn->Pointer != creature.Get() && !agenda.MimicState.Mimicking)
	{
		CreaturePlan plan(bestContext.plan.CreatureDesire, bestContext.plan.creature_action, NULL, NULL, NULL, 1.0f);
		if (plan.creature_action == CREATURE_EAT_OBJECT_IN_HAND)
		{
			plan.creature_action = CREATURE_EAT_ALIVE;
		}
		CREATURE_BELIEF_TYPE beliefType = (CREATURE_BELIEF_TYPE)bestContext.plan.ObjectToActOn->GetType();
		creature.Get()->FindBestObjectToActOnFromAction(plan, beliefType);
		if (plan.ObjectToActOn != NULL && creature.Get()->CanCreatureCurrentlyPerformAction(plan.creature_action, plan))
		{
			plan.ActivityObject = creature.Get()->AddBeliefAboutAssociatedObject(plan.ObjectToActOn);
			if (plan.ActivityObject == NULL && CreatureInitialDesireInfo::GetInfo()[plan.CreatureDesire].Social)
			{
				Town* town = creature.Get()->Pos.GetNearestTown(MaxFloat);
				if (town != NULL)
				{
					plan.ActivityObject = AddBeliefAboutObject(creature.Get(), town);
				}
			}
			if (creature.Get()->FindBestObjectToUseIfNecessary(plan) && plan.IsValid())
			{
				creature.Get()->ForceActivityAndForceAction(plan, true, true);
				agenda.CommandState.Commanded = true;
			}
		}
	}
}

void Creature::LearnLessonFromLeashInstruction(Object* object)
{
	if (GetPlayer() == NULL || object == NULL)
	{
		return;
	}
	GInterfaceStatus* status = GetInterfaceStatusLeashOn();
	if (status == NULL)
	{
		return;
	}
	LEASH_TYPE leashType = status->LeashStatus->LeashType;
	if (leashType != LEASH_TYPE_EVIL && leashType != LEASH_TYPE_GOOD)
	{
		return;
	}

	CreatureBelief*  belief = mind->AddBeliefAboutObject(this, object);
	CreatureBelief*  associatedBelief = AddBeliefAboutAssociatedObject(belief);
	unsigned long    lessonCount = 0;
	CREATURE_DESIRES encouragedDesire;
	CREATURE_DESIRES discouragedDesire;
	if (leashType == LEASH_TYPE_EVIL)
	{
		encouragedDesire = CREATURE_DESIRE_ANGER;
		discouragedDesire = object->IsCreature() ? CREATURE_DESIRE_TO_BE_FRIENDS : CREATURE_DESIRE_COMPASSION;
	}
	else
	{
		encouragedDesire = object->IsCreature() ? CREATURE_DESIRE_TO_BE_FRIENDS : CREATURE_DESIRE_COMPASSION;
		discouragedDesire = CREATURE_DESIRE_ANGER;
	}

	CreaturePlan    encouragedPlan(encouragedDesire, CreatureDesireActionEntry::GetInfo()[encouragedDesire].Actions[0],
	                               associatedBelief, belief, belief, 1.0f);
	CreatureContext encouragedContext(this, encouragedPlan, INVALID_CREATURE_DESIRE_SOURCE, false, mind->ContextBelief);
	mind->LearnParticularLessonFromFeedback(encouragedContext, LEASH_LESSON_FEEDBACK, LESSON_TYPE_ACTIVITY_OBJECT, true,
	                                        &lessonCount, LESSON_ORIGIN_TYPE_DIRECT_PLAYER_FEEDBACK);
	encouragedContext.CleanUp();

	CreaturePlan discouragedPlan(discouragedDesire, CreatureDesireActionEntry::GetInfo()[discouragedDesire].Actions[0],
	                             associatedBelief, belief, belief, 1.0f);
	CreatureContext discouragedContext(this, discouragedPlan, INVALID_CREATURE_DESIRE_SOURCE, false,
	                                   mind->ContextBelief);
	mind->LearnParticularLessonFromFeedback(discouragedContext, -LEASH_LESSON_FEEDBACK, LESSON_TYPE_ACTIVITY_OBJECT,
	                                        true, &lessonCount, LESSON_ORIGIN_TYPE_DIRECT_PLAYER_FEEDBACK);
	discouragedContext.CleanUp();
}

void CreatureMental::LearnLessonsFromFeedback(CreatureContext& context, float feedback, bool32_t player_involved,
                                              LESSON_ORIGIN_TYPE origin, unsigned long* lesson_count)
{
	if (CreatureInitialDesireInfo::GetInfo()[context.plan.CreatureDesire].CanLearnFromFeedback)
	{
		bool32_t learnt = false;
		for (int lessonType = LESSON_TYPE_DESIRE; lessonType < _LESSON_TYPE_COUNT; lessonType++)
		{
			if (LearnParticularLessonFromFeedback(context, feedback, (LESSON_TYPE)lessonType, player_involved,
			                                      lesson_count, origin))
			{
				learnt = true;
			}
		}
		if (learnt)
		{
			CREATURE_HELP_TYPE help = feedback > 0.0f ? CREATURE_HELP_TYPE_SHOW_LESSON_INCREASE_OPINION
			                                          : CREATURE_HELP_TYPE_SHOW_LESSON_DECREASE_OPINION;
			creature.Get()->SendCandidateHelpScript(help, context.plan.CreatureDesire, NULL, NULL, 0);
		}
		else
		{
			CREATURE_HELP_TYPE help = feedback > 0.0f ? CREATURE_HELP_TYPE_SHOW_LESSON_INCREASE_SOURCE
			                                          : CREATURE_HELP_TYPE_SHOW_LESSON_DECREASE_SOURCE;
			creature.Get()->SendCandidateHelpScript(help, context.DesireSource, NULL, NULL, 0);
		}
	}
	AttitudeToPlayer.TicksSinceInteraction = 0;
}

void CreatureMental::UpdateAttitudeToPlayerFromFeedback(float feedback)
{
	CreatureAttitudeToPlayer& attitude = AttitudeToPlayer;
	attitude.HowNicePlayerHasBeenToMe *= AttitudeFeedbackDecay;
	attitude.HowNicePlayerHasBeenToMe += feedback / ATTITUDE_FEEDBACK_DIVISOR;
	attitude.UpdatePlayerFeedback(feedback);
	if (feedback > 0.0f)
	{
		AttitudeToPlayer.PerceivedPlayerDesires.IncreaseDesire(CREATURE_DESIRE_COMPASSION, fabs(feedback));
	}
	else
	{
		AttitudeToPlayer.PerceivedPlayerDesires.IncreaseDesire(CREATURE_DESIRE_ANGER, fabs(feedback));
	}
#ifndef VERSION_BW1W100
	CreatureMusicFeedback::RecentFeedback =
		CreatureMusicFeedback::RecentFeedback * MUSIC_FEEDBACK_DECAY + feedback * MUSIC_FEEDBACK_WEIGHT;
#endif // VERSION_BW1W100
}

void Creature::LearnFromPlayerWatchingAndNotPunishing()
{
	CreatureContext* context = mind->learning.GetOldestContext();
	if ((context->WasSeen || context->ForcedByPlayer) && !context->HasBeenLearntFrom &&
	    CreatureInitialDesireInfo::GetInfo()[context->plan.CreatureDesire].CanLearnFromPlayerWatching)
	{
		mind->LearnFromPlayerWatchingAndNotPunishing(*context);
	}
}

void CreatureMental::LearnFromPlayerWatchingAndNotPunishing(CreatureContext& context)
{
	if (!context.ForcedByPlayer)
	{
		return;
	}
	float         feedback = creature.Get()->GetInfo()->WatchingFeedback;
	unsigned long lessonCount = 0;
	if (context.plan.ActivityObject != NULL)
	{
		LearnParticularLessonFromFeedback(context, feedback, LESSON_TYPE_ACTIVITY_OBJECT, false, &lessonCount,
		                                  LESSON_ORIGIN_TYPE_INDIRECT_FEEDBACK_FROM_PLAYER_WATCHING);
	}
	LearnParticularLessonFromFeedback(context, feedback, LESSON_TYPE_ACTION_OBJECT, false, &lessonCount,
	                                  LESSON_ORIGIN_TYPE_INDIRECT_FEEDBACK_FROM_PLAYER_WATCHING);
}

bool32_t CreatureMental::LearnParticularLessonFromFeedback(CreatureContext& context, float feedback,
                                                           LESSON_TYPE lesson_type, bool32_t player_involved,
                                                           unsigned long* lesson_count, LESSON_ORIGIN_TYPE origin)
{
	bool32_t treeChanged = false;
	if (!context.plan.IsValid())
	{
		learning.SetLessonLearnt(false, GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(LESSON_TEXT_SECONDS));
		return false;
	}
	learning.SetLessonLearnt(true, GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(LESSON_TEXT_SECONDS));
	learning.LessonFeedback = feedback;

	bool32_t       lessonLearnt = false;
	AttributeTest* test = NULL;
	switch (lesson_type)
	{
	case LESSON_TYPE_DESIRE:
		UpdateDesireFromLesson(context, feedback, player_involved);
		lessonLearnt = true;
		break;
	case LESSON_TYPE_ACTIVITY_OBJECT: {
		CreatureBelief* activityObject = context.plan.ActivityObject;
		if (activityObject != NULL)
		{
			CREATURE_DESIRES goal = context.plan.CreatureDesire;
			test = LearnParticularLesson(new (FILEPATH, LEARN_LINE(510)) CreatureLearningContext(
											 LESSON_TYPE_ACTIVITY_OBJECT, goal, activityObject, NO_ACTION_SPECIFIED),
			                             feedback);
			for (int desire = 0; desire < NUM_CREATURE_DESIRES; desire++)
			{
				if (desire != goal)
				{
					float dependency = CreatureDesireDependency::GetInfo()[goal].Dependencies[desire];
					if (dependency != 0.0f)
					{
						LearnParticularLesson(new (FILEPATH, LEARN_LINE(522)) CreatureLearningContext(
												  LESSON_TYPE_ACTIVITY_OBJECT, (CREATURE_DESIRES)desire, activityObject,
												  NO_ACTION_SPECIFIED),
						                      dependency * feedback);
					}
				}
			}
			lessonLearnt = true;
			if (test->Parent != NULL)
			{
				treeChanged = true;
			}
		}
		break;
	}
	case LESSON_TYPE_ACTION_OBJECT: {
		CreatureBelief* objectToActOn = context.plan.ObjectToActOn;
		if (context.plan.ActivityObject != objectToActOn && objectToActOn->Pointer != creature.Get())
		{
			CREATURE_DESIRES goal = context.plan.CreatureDesire;
#ifndef VERSION_BW1W100
			if (goal == CREATURE_DESIRE_TO_POO)
			{
				CLAMP(feedback, -TO_POO_FEEDBACK_LIMIT, TO_POO_FEEDBACK_LIMIT);
			}
#endif // VERSION_BW1W100
			test = LearnParticularLesson(new (FILEPATH, LEARN_LINE(555)) CreatureLearningContext(
											 LESSON_TYPE_ACTION_OBJECT, goal, objectToActOn, NO_ACTION_SPECIFIED),
			                             feedback);
			for (int desire = 0; desire < NUM_CREATURE_DESIRES; desire++)
			{
				if (desire != goal)
				{
					float dependency = CreatureDesireDependency::GetInfo()[goal].Dependencies[desire];
					if (dependency != 0.0f)
					{
						LearnParticularLesson(new (FILEPATH, LEARN_LINE(567)) CreatureLearningContext(
												  LESSON_TYPE_ACTION_OBJECT, (CREATURE_DESIRES)desire, objectToActOn,
												  NO_ACTION_SPECIFIED),
						                      dependency * feedback);
					}
				}
			}
			lessonLearnt = true;
			if (test->Parent != NULL)
			{
				treeChanged = true;
			}
		}
		break;
	}
	case LESSON_TYPE_ACTION:
		UpdateActionOpinionFromLesson(context, feedback);
		lessonLearnt = true;
		break;
	}

	if (lessonLearnt)
	{
		context.HasBeenLearntFrom = true;
		learning.LessonType = lesson_type;
		UpdateLessonText(context, *lesson_count, test, origin);
		(*lesson_count)++;
	}
	return treeChanged;
}

AttributeTest* CreatureMental::LearnParticularLesson(CreatureLearningContext* context, float feedback)
{
	CreatureLearningEpisode* episode = new (FILEPATH, LEARN_LINE(613)) CreatureLearningEpisode(context, feedback);
	DecisionTreeAgenda*      agenda = decision_tree_collection.GetDecisionTreeFromContext(context);
	agenda->AddExample(episode);
	agenda->ConstructBestTreeForExamples();
	CreatureBelief* belief = context->Belief;
	return agenda->trees[0].CalculateTestForBelief(belief);
}

DecisionTreeAgenda* DecisionTreeCollection::GetDecisionTreeFromContext(CreatureLearningContext* context)
{
	switch (context->Type)
	{
	case LESSON_TYPE_DESIRE:
		return NULL;
	case LESSON_TYPE_ACTIVITY_OBJECT:
		return agendas[DECISION_TREE_TYPE_ACTIVITY_OBJECT].contents[context->Goal];
	case LESSON_TYPE_ACTION_OBJECT:
		return agendas[DECISION_TREE_TYPE_ACTION_OBJECT].contents[context->Goal];
	case LESSON_TYPE_ACTION:
		return NULL;
	}
	return NULL;
}

void CreatureMental::ReconsiderDecision()
{
	creature.Get()->FinishActionUnsuccessfully("Object deleted", true, true);
	creature.Get()->DecideWhatToDo();
}

bool32_t CreatureMental::UpdateDesireFromLesson(CreatureContext& context, float feedback, bool32_t player_involved)
{
	if (context.DesireSource >= INVALID_CREATURE_DESIRE_SOURCE)
	{
		return false;
	}
	desires.ModifyDesireAfterFeedback(creature.Get()->GetInfo(), context.plan.CreatureDesire, context.DesireSource,
	                                  feedback);
	return player_involved;
}

void CreatureMental::UpdateActionOpinionFromLesson(CreatureContext& context, float feedback)
{
	CreatureActionContext actionContext(context, feedback);
	CREATURE_ACTION       action = context.plan.creature_action;
#ifndef VERSION_BW1WCI
	learning.previous_action_context_stack.Push(action, actionContext);
#endif
	ActionOpinions.entries[action] += (feedback - ActionOpinions.GetOpinion(action)) * ACTION_OPINION_LEARNING_RATE;
	CLAMP(ActionOpinions.entries[action], -1.0f, 1.0f);
}

void CreatureMental::UpdateLessonText(CreatureContext& context, unsigned long lesson_index, AttributeTest* test,
                                      LESSON_ORIGIN_TYPE origin)
{
	if (origin == LESSON_ORIGIN_TYPE_INDIRECT_FEEDBACK_FROM_PLAYER_WATCHING &&
	    !GGlobal::Global.debug.ShowIndirectFeedbackLessons)
	{
		return;
	}

	learning.PreviousLesson.NumLessonTexts = lesson_index + 1;
	strcpy(learning.PreviousLesson.OriginText, LessonOriginNames[origin]);
	sprintf(learning.PreviousLesson.FeedbackText,
	        "Feedback: %.4f on action %s satisfying desire %s (acting on object %s)", learning.GetLessonFeedback(),
	        CreatureAgenda::ActionTable[context.plan.creature_action].Name,
	        CreatureInitialDesireInfo::GetInfo()[context.plan.CreatureDesire].Name,
	        AttributeType::ValueNames[context.plan.ObjectToActOn->GetType()]);

	char increaseText[0x100];
	char chooseText[0x100];
	char toText[0x100];
	char isText[0x100];
	char desireText[0x100];
	char feelingText[0x100];
	char tryingText[0x100];
	char activityObjectText[0x100];
	char objectToActOnText[0x100];
	char actionText[0x100];
	strcpy(increaseText, learning.GetLessonFeedback() > 0.0f ? "increase" : "decrease");
	strcpy(chooseText, learning.GetLessonFeedback() > 0.0f ? "choose" : "avoid");
	strcpy(toText, learning.GetLessonFeedback() > 0.0f ? "to" : "not to");
	strcpy(isText, learning.GetLessonFeedback() > 0.0f ? "is" : "isnt");
	strcpy(desireText, CreatureInitialDesireInfo::GetInfo()[context.plan.CreatureDesire].LessonName);
	strcpy(feelingText, CreatureInitialDesireInfo::GetInfo()[context.plan.CreatureDesire].LessonFeelingText);
	strcpy(tryingText, CreatureInitialDesireInfo::GetInfo()[context.plan.CreatureDesire].LessonTryingText);
	if (context.plan.ActivityObject != NULL && context.plan.ActivityObject->Pointer != creature.Get())
	{
		sprintf(activityObjectText, "%s", test != NULL ? test->CalculateText() : "nothing");
	}
	else
	{
		activityObjectText[0] = '\0';
	}
	if (test != NULL && context.plan.ObjectToActOn->Pointer != creature.Get())
	{
		sprintf(objectToActOnText, "%s", test->CalculateText());
	}
	else
	{
		objectToActOnText[0] = '\0';
	}
	strcpy(actionText, CreatureAgenda::ActionTable[context.plan.creature_action].Name);

	switch (learning.LessonType)
	{
	case LESSON_TYPE_DESIRE:
		sprintf(learning.PreviousLesson.LessonTexts[lesson_index], "I've learnt to %s my %s", increaseText, desireText);
		break;
	case LESSON_TYPE_ACTIVITY_OBJECT:
		sprintf(learning.PreviousLesson.LessonTexts[lesson_index], "I've learnt to %s %s when I %s", chooseText,
		        activityObjectText, feelingText);
		break;
	case LESSON_TYPE_ACTION_OBJECT:
		sprintf(learning.PreviousLesson.LessonTexts[lesson_index], "I've learnt to %s %s when I %s", chooseText,
		        objectToActOnText, feelingText);
		break;
	case LESSON_TYPE_ACTION:
		if (!CreatureDesireTableEntry::Table[context.plan.CreatureDesire].NeedsSeparateObjectToActOn)
		{
			sprintf(learning.PreviousLesson.LessonTexts[lesson_index], "I've learnt to %s %s when I %s %s", chooseText,
			        actionText, tryingText, activityObjectText);
		}
		else
		{
			sprintf(learning.PreviousLesson.LessonTexts[lesson_index], "I've learnt to %s %s when I %s %s", chooseText,
			        actionText, tryingText, objectToActOnText);
		}
		break;
	default:
		sprintf(learning.PreviousLesson.LessonTexts[lesson_index], "Warning: Invalid learning type");
		break;
	}
}

CreatureContext::CreatureContext()
{
	ContextBelief = NULL;
}

CreatureContext::CreatureContext(Creature* creature, CreaturePlan& plan, CREATURE_DESIRE_SOURCE desire_source,
                                 bool32_t forced_by_player, CreatureBelief* context_belief)
{
	this->plan = plan;
	DesireSource = desire_source;
	if (this->plan.ActivityObject != NULL)
	{
		this->plan.ActivityObject = this->plan.ActivityObject->Copy();
	}
	if (this->plan.ObjectToActOn != NULL)
	{
		this->plan.ObjectToActOn = this->plan.ObjectToActOn->Copy();
	}
	if (this->plan.ObjectToUse != NULL)
	{
		this->plan.ObjectToUse = this->plan.ObjectToUse->Copy();
	}
	ContextBelief = context_belief->Copy();
	field_0x38 = 0;
	FinishedSuccessfully = false;
	HasBeenLearntFrom = false;
	WasSeen = false;
	ForcedByPlayer = forced_by_player;
	GameTurnWasSeen = 0;
}

void CreatureContext::CleanUp()
{
	if (ContextBelief != NULL)
	{
		delete ContextBelief;
#ifdef VERSION_BW1WCI
		ContextBelief = NULL;
#endif
	}
	if (plan.ActivityObject != NULL)
	{
		delete plan.ActivityObject;
#ifdef VERSION_BW1WCI
		plan.ActivityObject = NULL;
#endif
	}
	if (plan.ObjectToActOn != NULL)
	{
		delete plan.ObjectToActOn;
#ifdef VERSION_BW1WCI
		plan.ObjectToActOn = NULL;
#endif
	}
	if (plan.ObjectToUse != NULL)
	{
		delete plan.ObjectToUse;
#ifdef VERSION_BW1WCI
		plan.ObjectToUse = NULL;
#endif
	}
}

bool32_t CreatureLearningContext::operator==(const CreatureLearningContext& other)
{
	return Type == other.Type && Goal == other.Goal && Action == other.Action;
}

bool32_t CreatureLearningContext::IsValid()
{
	return Type < _LESSON_TYPE_COUNT && Goal < NUM_CREATURE_DESIRES && Action < NUM_CREATURE_ACTIONS && Belief != NULL;
}

CreatureLearningContext::CreatureLearningContext(LESSON_TYPE type, CREATURE_DESIRES goal, CreatureBelief* belief,
                                                 CREATURE_ACTION action)
{
	Type = type;
	Goal = goal;
	Action = action;
	Belief = belief->Copy();
}

CreatureLearningContext::~CreatureLearningContext()
{
	if (Belief != NULL)
	{
		delete Belief;
	}
}

void CreatureLearning::DumpContexts()
{
	for (unsigned long i = 0; i < previous_context_stack.GetSize(); i++)
	{
		previous_context_stack.GetNth(i);
	}
}

bool32_t CreatureLearning::GetDesireFeedback(CREATURE_DESIRES desire, float* feedback)
{
	if (DesireFeedback[desire].GameTurn == 0)
	{
		return false;
	}
	*feedback = DesireFeedback[desire].Feedback;
	return true;
}

void CreatureLearning::SetDesireFeedback(CREATURE_DESIRES desire, float feedback)
{
	DesireFeedback[desire].GameTurn = GGame::g_game->data.GameTurn;
	DesireFeedback[desire].Feedback = feedback;
}

CreatureContext* CreatureLearning::GetSelectedContext()
{
	CreatureContext* context = previous_context_stack.GetNth(SelectedContext);
	context->Selection = CREATURE_CONTEXT_SELECTION_SELECTED;
	return context;
}

CreatureContext* CreatureLearning::GetCurrentContext()
{
	return previous_context_stack.GetTop();
}

#ifndef VERSION_BW1WCI
CreatureActionContext* CreatureLearning::GetPreviousActionContext(CREATURE_ACTION action)
{
	return previous_action_context_stack.GetTop(action);
}
#endif

CreatureContext* CreatureLearning::GetOldestContext()
{
	CreatureContext* context = previous_context_stack.GetNth(previous_context_stack.GetSize() - 1);
	context->Selection = CREATURE_CONTEXT_SELECTION_OLDEST;
	return context;
}

CreatureContext* CreatureLearning::GetContextToLearnFrom(CreatureMental* mind)
{
	float secondsPerformingAction = mind->agenda.NumTurnsPerformingAction / GGameInfo::Info.NumGameTicksPerSecond();
	if (mind->IsActionSufficientlyCompletedToBePerceived() &&
	    mind->agenda.MinSecondsPerformingActionToLearn < secondsPerformingAction)
	{
		GetCurrentContext()->Selection = CREATURE_CONTEXT_SELECTION_CURRENT;
		return GetCurrentContext();
	}
	CreatureContext* previousContext = previous_context_stack.GetNth(1);
	if (GGame::g_game->data.GameTurn - previousContext->GameTurnWasSeen >
	    GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(
			CreatureActionInfo::GetInfo()[previousContext->plan.creature_action].LearnWindow))
	{
		GetCurrentContext()->Selection = CREATURE_CONTEXT_SELECTION_CURRENT_AS_PREVIOUS_TOO_OLD;
		return GetCurrentContext();
	}
	previousContext->Selection = CREATURE_CONTEXT_SELECTION_PREVIOUS;
	return previousContext;
}

float CreatureMental::HowMuchCreatureKnowsAboutSatisfyingDesire(CREATURE_DESIRES desire)
{
	uint32_t numUnknown = 0;
	uint32_t numSpells = 0;
	switch (desire)
	{
	case CREATURE_DESIRE_TO_IMPRESS: {
		for (unsigned long magic = 0; magic < MAGIC_TYPE_LAST; magic++)
		{
			if (CreatureMagicActionKnownAboutEntry::MagicActionKnownAboutInfo[magic].CanBeTaughtByComputerPlayer)
			{
				GMagicInfo* info = GMagicInfo::Infos[magic];
				if (info->GetSpellSeedInfo() != NULL && info->GetSpellSeedInfo()->Enabled)
				{
					if (!ActionsKnownAbout.KnowsAction(CREATURE_ACTION_LEARNING_TYPE_MAGIC, magic))
					{
						numUnknown++;
					}
					numSpells++;
				}
			}
		}
		break;
	}
	case CREATURE_DESIRE_COMPASSION: {
		for (unsigned long magic = 0; magic < MAGIC_TYPE_LAST; magic++)
		{
			if (CreatureMagicActionKnownAboutEntry::MagicActionKnownAboutInfo[magic].CanBeTaughtByComputerPlayer &&
			    GMagicEffectInfo::GetInfo()[magic].PerceivedPlayerDesire == CREATURE_DESIRE_COMPASSION)
			{
				GMagicInfo* info = GMagicInfo::Infos[magic];
				if (info->GetSpellSeedInfo() != NULL && info->GetSpellSeedInfo()->Enabled)
				{
					if (!ActionsKnownAbout.KnowsAction(CREATURE_ACTION_LEARNING_TYPE_MAGIC, magic))
					{
						numUnknown++;
					}
					numSpells++;
				}
			}
		}
		break;
	}
	case CREATURE_DESIRE_ANGER: {
		for (unsigned long magic = 0; magic < MAGIC_TYPE_LAST; magic++)
		{
			if (CreatureMagicActionKnownAboutEntry::MagicActionKnownAboutInfo[magic].CanBeTaughtByComputerPlayer &&
			    GMagicEffectInfo::GetInfo()[magic].PerceivedPlayerDesire == CREATURE_DESIRE_ANGER)
			{
				GMagicInfo* info = GMagicInfo::Infos[magic];
				if (info->GetSpellSeedInfo() != NULL && info->GetSpellSeedInfo()->Enabled)
				{
					if (!ActionsKnownAbout.KnowsAction(CREATURE_ACTION_LEARNING_TYPE_MAGIC, magic))
					{
						numUnknown++;
					}
					numSpells++;
				}
			}
		}
		break;
	}
	}
	if (numSpells == 0)
	{
		return 1.0f;
	}
	float knowledge = 1.0f - numUnknown / numSpells;
	CLAMP(knowledge, 0.0f, 1.0f);
	return knowledge;
}
