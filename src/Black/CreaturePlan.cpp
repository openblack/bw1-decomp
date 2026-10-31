#include "CreaturePlanConstants.h"
#include "CreatureAttitudeConstants.h"
#include "GameTimeConstants.h"
#include "CreaturePlan.h"

#include "ColourConstants.h" /* For White */

#include <math.h> /* For pow */

#include "Creature.h"
#include "CreatureActionIndices.h"
#include "CreatureActionInfo.h"
#include "CreatureActionTableEntry.h"
#include "CreatureDesireTableEntry.h"
#include "CreatureInfo.h"
#include "CreatureInitialDesireInfo.h"
#include "CreatureMental.h"
#include "CreatureMentalBelief.h"
#include "CreatureMentalDesireSource.h"
#include "CreatureMentalEditor.h"
#include "CreaturePhysical.h"
#include "CreaturePlanSettings.h"
#include "Game.h"
#include "Global.h"
#include "InterfaceStatus.h"
#include "LeashStatus.h"
#include "Player.h"
#include "Rand.h"
#include "Town.h"
#include "TownDesireFlags.h"
#include "Utils.h"

#if defined(VERSION_BW1W100) || defined(VERSION_BW1WCI)
#define FILEPATH "C:\\dev\\black\\CreaturePlan.cpp"
#elif defined(VERSION_BW1W110)
#define FILEPATH "C:\\dev\\Black\\CreaturePlan.cpp"
#elif defined(VERSION_BW1W130)
#define FILEPATH "D:\\Work\\Games\\dd\\Black\\CreaturePlan.cpp"
#else
#define FILEPATH "C:\\dev\\MP\\Black\\CreaturePlan.cpp"
#endif

#ifdef VERSION_BW1WCI
#define CREATURE_PLAN_LINE(line) ((line) + ((line) < 1000 ? 156 : 150))
#else
#define CREATURE_PLAN_LINE(line) (line)
#endif

#define TURNS_BETWEEN_TOWN_DESIRE_CHANGES       30
#define TOWN_DESIRE_HELP_LEVEL_SCALE            0.85f
#define HEAL_SPELL_NEARLY_LEARNT                0.6f
#define HEAL_SPELL_CHANCE                       2
#define NUM_PRIORITY_FACTORS                    5.0f
#define MAX_TURNS_SINCE_LAST_DONE               120
#define ACTION_NOVELTY_SCALE                    4.0f
#define UNLEARNT_ACTION_NOVELTY_SCALE           0.025f
#define MAX_ACTION_NOVELTY                      0.01f
#define FRIEND_NEEDS_HELP_LEVEL                 0.2f
#define TURNS_BETWEEN_HELPING_CONFINED_CREATURE 300

#ifdef VERSION_BW1WCI
const float ConfinedCreatureNeedsHelpLevel = 0.4f;
#endif

uint32_t CreaturePlanSettings::NumGoalsToPlanPerTurn = 2;

static TOWN_DESIRE_INFO TownDesireOfNthAction = TOWN_DESIRE_INFO_FIRST;
static uint32_t         ContextsPushed = 0;

// BW1W120 004f1e10 BW1M119 inlined
float LimitActionPriority(float priority);

#ifdef VERSION_BW1WCI
// BW1WCI inlined BW1MCI119 null
static inline void MakeConfinedCreatureLookAtMaster(Creature* follower, Creature* master)
{
	follower->ForceActivityAndForceAction(CREATURE_DESIRE_CURIOSITY, NULL, CREATURE_LOOK_FOREVER,
	                                      follower->mind->AddBeliefAboutObject(follower, master), NULL, 1, 1);
	follower->mind->agenda.CommandState.Commanded = true;
}
#endif // VERSION_BW1WCI

void Creature::ConsiderDecision()
{
	CreatureAgenda& agenda = mind->agenda;
	bool32_t        actionInProgress;
	if (agenda.CurrentPlan.IsValid() && agenda.SubActionAgenda.IsValid())
	{
		actionInProgress = true;
	}
	else
	{
		actionInProgress = false;
		if (mind->agenda.CommandState.Commanded)
		{
			mind->agenda.CommandState.Commanded = false;
			mind->agenda.CommandState.ForcedByPlayerAction = false;
		}
		if (reaction.Get() != NULL)
		{
			StopReacting();
		}
	}

	if (mind->agenda.MimicState.Mimicking)
	{
		if (!actionInProgress)
		{
			ProcessMimicState();
		}
		if (mind->agenda.MimicState.Stage < MIMIC_STAGE_COPY_DESIRE && actionInProgress)
		{
			return;
		}
	}

#ifdef VERSION_BW1WCI
	GInterfaceStatus* status = GetInterfaceStatusLeashOn();
	if ((status == NULL || status->LeashStatus->ObjectAttachedTo == NULL) && ConfinedCreatures.count > 0 &&
	    !(Flags & GAME_THING_WITH_POS_FLAG_CONTROLLED_BY_SCRIPT) && !IsFighting())
	{
		Creature* follower = ConfinedCreatures.GetHead();
		if (follower != NULL && !NeedsHelp())
		{
			if (follower->GetLife() < ConfinedCreatureNeedsHelpLevel &&
			    (GameTurnLastHealedConfinedCreature == 0 ||
			     GGame::g_game->data.GameTurn - GameTurnLastHealedConfinedCreature >
			         TURNS_BETWEEN_HELPING_CONFINED_CREATURE))
			{
				if (mind->ActionsKnownAbout.KnowsAction(CREATURE_ACTION_LEARNING_TYPE_MAGIC, MAGIC_TYPE_HEAL))
				{
					CreatureBelief* belief = mind->AddBeliefAboutObject(this, follower);
					if (belief != NULL)
					{
						ForceActivityAndForceAction(CREATURE_DESIRE_COMPASSION, belief, CREATURE_CAST_HEAL_SPELL,
						                            belief, NULL, 0, 1);
						mind->agenda.CommandState.Commanded = true;
						GameTurnLastHealedConfinedCreature = GGame::g_game->data.GameTurn;
						return;
					}
				}
			}
			else if (follower->physical->Energy < ConfinedCreatureNeedsHelpLevel &&
			         (GameTurnLastFedConfinedCreature == 0 ||
			          GGame::g_game->data.GameTurn - GameTurnLastFedConfinedCreature >
			              TURNS_BETWEEN_HELPING_CONFINED_CREATURE))
			{
				if (mind->ActionsKnownAbout.KnowsAction(CREATURE_ACTION_LEARNING_TYPE_MAGIC, MAGIC_TYPE_FOOD))
				{
					CreatureBelief* belief = mind->AddBeliefAboutObject(this, follower);
					if (belief != NULL)
					{
						ForceActivityAndForceAction(CREATURE_DESIRE_COMPASSION, belief, CREATURE_CAST_MAGIC_FOOD,
						                            belief, NULL, 0, 1);
						MakeConfinedCreatureLookAtMaster(follower, this);
						mind->agenda.CommandState.Commanded = true;
						GameTurnLastFedConfinedCreature = GGame::g_game->data.GameTurn;
						return;
					}
				}
				else
				{
					CreaturePlan    plan(CREATURE_DESIRE_HUNGER, CREATURE_EAT_ALIVE, NULL, NULL, NULL, 1.0f);
					CreatureBelief* belief = mind->AddBeliefAboutObject(this, follower);
					follower->FindBestObjectToActOnFromAction(plan, CREATURE_BELIEF_TYPE_LAST);
					if (plan.ObjectToActOn != NULL)
					{
						CreatureBelief* food = mind->AddBeliefAboutObject(this, plan.ObjectToActOn->GetPointer());
						if (belief != NULL && food != NULL)
						{
							ForceActivityAndForceAction(CREATURE_DESIRE_COMPASSION, belief,
							                            CREATURE_GIVE_FOOD_TO_CREATURE, belief, food, 0, 1);
							MakeConfinedCreatureLookAtMaster(follower, this);
							mind->agenda.CommandState.Commanded = true;
							GameTurnLastFedConfinedCreature = GGame::g_game->data.GameTurn;
							return;
						}
					}
				}
			}
			else if (follower->physical->GetExhaustion() > 1.0f - ConfinedCreatureNeedsHelpLevel &&
			         (GameTurnLastSleptWithConfinedCreature == 0 ||
			          GGame::g_game->data.GameTurn - GameTurnLastSleptWithConfinedCreature >
			              TURNS_BETWEEN_HELPING_CONFINED_CREATURE))
			{
				CreatureBelief* belief = mind->AddBeliefAboutObject(this, follower);
				if (belief != NULL)
				{
					MakeConfinedCreatureLookAtMaster(follower, this);
					ForceActivityAndForceAction(CREATURE_DESIRE_COMPASSION, belief, CREATURE_SLEEP_WITH_FRIEND, belief,
					                            NULL, 0, 1);
					mind->agenda.CommandState.Commanded = true;
					GameTurnLastSleptWithConfinedCreature = GGame::g_game->data.GameTurn;
					return;
				}
			}

			if (follower->mind->agenda.CommandState.CommandedByMaster && !mind->agenda.MimicState.Mimicking &&
			    !mind->agenda.CommandState.Commanded &&
			    mind->agenda.CurrentPlan.creature_action != CREATURE_NOTICE_HELPFUL_ACTION &&
			    mind->agenda.CurrentPlan.creature_action != CREATURE_SHOW_CREATURE_YOU_HATE_HIM &&
			    mind->agenda.CurrentPlan.CreatureDesire != CREATURE_DESIRE_COMPASSION &&
			    mind->agenda.CurrentPlan.CreatureDesire != CREATURE_DESIRE_ANGER)
			{
				switch (follower->mind->agenda.CurrentPlan.CreatureDesire)
				{
				case CREATURE_DESIRE_COMPASSION:
				case CREATURE_DESIRE_ANGER:
				case CREATURE_DESIRE_TO_PLAY:
				case CREATURE_DESIRE_HUNGER:
				case CREATURE_DESIRE_FEAR:
				case CREATURE_DESIRE_CURIOSITY:
				case CREATURE_DESIRE_TO_POO:
				case CREATURE_DESIRE_TIREDNESS:
				case CREATURE_DESIRE_FOR_WATER:
				case CREATURE_DESIRE_TO_RESTORE_HEALTH: {
					CreatureBelief* belief = mind->AddBeliefAboutObject(this, follower);
					ForceActivityAndForceAction(CREATURE_DESIRE_CURIOSITY, NULL, CREATURE_NOTICE_HELPFUL_ACTION, belief,
					                            NULL, 0, 1);
					mind->agenda.CommandState.Commanded = true;
					return;
				}
				default:
					break;
				}
			}
		}
	}
#endif // VERSION_BW1WCI

	if (!mind->agenda.CommandState.Commanded && reaction.Get() == NULL && !Fainted &&
	    !mind->agenda.CommandState.ProcessStoredCommands(this))
	{
		CreatureAgenda& agenda = mind->agenda;
		if (!(agenda.CurrentPlan.IsValid() && agenda.SubActionAgenda.IsValid()))
		{
			if (mind->agenda.ForcedActionFunction != NULL)
			{
				(this->*mind->agenda.ForcedActionFunction)(mind->agenda.ForcedActionBelief,
				                                           mind->agenda.ForcedActionArgument);
				mind->agenda.CommandState.Commanded = true;
				mind->agenda.ForcedActionFunction = NULL;
				return;
			}
		}
		DecideWhatToDo();
	}
}

bool32_t Creature::ConsiderOverridingCurrentPlan()
{
	CreaturePlan& plan = mind->agenda.PlanState.plans[mind->agenda.PlanState.BestPlan];
	if (plan.AgendaPriority - mind->agenda.CurrentPlan.AgendaPriority > mind->agenda.CurrentPlan.AgendaPriority &&
	    plan.IsValid())
	{
		DecideOnNewPlan(plan);
		return true;
	}
	return false;
}

bool32_t Creature::DecideWhatToDo()
{
	for (uint32_t i = 0; i < CreaturePlanSettings::NumGoalsToPlanPerTurn; i++)
	{
		if (!(mind->agenda.PlanState.RemainingGoals.Size() > 0))
		{
			break;
		}
		FindBestPlanForGoal();
	}

	if (mind->agenda.PlanState.RemainingGoals.Size() == 0)
	{
		mind->agenda.PlanState.FindBestPlan();
		if (mind->agenda.PlanState.BestPlan < NUM_CREATURE_DESIRES && ConsiderOverridingCurrentPlan() == true)
		{
			return true;
		}
		mind->agenda.PlanState.SetupRemainingGoalsToPlanFor(this);
	}
	return true;
}

void Creature::FindBestPlanForGoal()
{
	FindNextPlannableGoal();
	FindBestPlanForCurrentGoal();
}

void Creature::FindBestPlanForCurrentGoal()
{
	FindBestPlanForParticularGoal(mind->agenda.PlanState.CurrentGoal);
}

void Creature::FindBestPlanForParticularGoal(CREATURE_DESIRES desire)
{
	if (CreatureDesireTableEntry::Table[desire].IsApplicable != NULL &&
	    !(this->*CreatureDesireTableEntry::Table[desire].IsApplicable)())
	{
		mind->agenda.PlanState.plans[desire].AgendaPriority = 0.0f;
		return;
	}

	CreaturePlan& plan = mind->agenda.PlanState.plans[desire];
	SetBeliefsUsedInPlan(plan, false);
	plan.Clear();
	FindBestActivityObjectForPlan(plan);
	if (plan.IsActivityValid())
	{
		if (desire == CREATURE_DESIRE_COMPASSION && mind->agenda.CurrentPlan.CreatureDesire != desire &&
		    mind->desires.GetRankPositionOfDesire(desire) == 0)
		{
			CreatureBelief* activityObject = plan.ActivityObject;
			if (activityObject != NULL && activityObject->GetPointer() != NULL &&
			    activityObject->GetPointer()->IsTown())
			{
				Town* town = dynamic_cast<Town*>(activityObject->GetPointer());
				if (town != NULL && mind->CanChooseTownDesireToHelp &&
				    GGame::g_game->data.GameTurn - mind->agenda.GameTurnLastPlanDecided >
				        TURNS_BETWEEN_TOWN_DESIRE_CHANGES)
				{
					mind->agenda.GameTurnLastPlanDecided = GGame::g_game->data.GameTurn;
					mind->NumTimesTownDesireHelped = 0;
					mind->TownDesireToHelpIndex++;
					LHStack<TOWN_DESIRE_INFO, TOWN_DESIRE_INFO_LAST> desires;
					town->FillListWithMostImportantDesires(desires);
					if (mind->TownDesireToHelpIndex >= desires.Size())
					{
						mind->TownDesireToHelpIndex = 0;
					}
					if (mind->TownDesireToHelpIndex < desires.Size())
					{
						mind->TownDesireToHelp = desires[mind->TownDesireToHelpIndex];
						mind->TownDesireToHelpLevel =
							town->GetRawDesire(mind->TownDesireToHelp) * TOWN_DESIRE_HELP_LEVEL_SCALE;
					}
					else
					{
						mind->TownDesireToHelp = TOWN_DESIRE_INFO_NONE;
						mind->TownDesireToHelpLevel = 0.0f;
					}
				}
			}
		}
		FindBestActionForPlan(plan);
	}
	CalculateOverallPriority(plan);
	SetBeliefsUsedInPlan(plan, true);
}

void Creature::DecideOnNewPlan(CreaturePlan& plan)
{
	int bestPlan = mind->agenda.PlanState.BestPlan;
	FinishActionUnsuccessfully("overriding action with new one", true, true);
	if (plan.IsValid())
	{
		if (plan.CreatureDesire == CREATURE_DESIRE_COMPASSION && plan.ActivityObject != NULL &&
		    plan.ActivityObject->GetPointer() != NULL && plan.ActivityObject->GetPointer()->IsTown())
		{
			mind->agenda.GameTurnLastPlanDecided = GGame::g_game->data.GameTurn;
		}
		mind->agenda.PlanState.BestPlan = bestPlan;
		ConstructCurrentPlanFromBestPlan(false);
		for (LHLinkedNode<CreatureDesireSource*>* node = mind->desires.SourceLists[plan.CreatureDesire].GetStart();
		     node != NULL; node = node->next.Get())
		{
			node->payload->AccumulatedIncrement = 0.0f;
		}
	}
	mind->agenda.PlanState.Initialise(mind);
}

void Creature::FindBestActivityObjectForPlan(CreaturePlan& plan)
{
	if (!CreatureInitialDesireInfo::GetInfo()[plan.CreatureDesire].Social)
	{
		return;
	}
	for (CreatureBelief* belief = mind->beliefs.lists[0].Head; belief != NULL; belief = belief->Next)
	{
		if (!mind->IsObjectSuitableAsActivityObject(plan.CreatureDesire, belief->GetPointer()))
		{
			continue;
		}
		float distancePriority = mind->CalculateDistancePriority(plan.CreatureDesire, belief);
		if (!(belief->GetPointer()->*CreatureDesireTableEntry::Table[plan.CreatureDesire].IsValidActivityObject)(this))
		{
			continue;
		}
		float priority = mind->GetActivityObjectUsefulness(belief, plan.CreatureDesire) * distancePriority;
		if (priority > plan.ActivityPriority)
		{
			plan.ActivityPriority = priority;
			plan.ActivityObject = belief;
		}
	}
}

CREATURE_DESIRES Creature::FindBestDesireForActivityObject(CreatureBelief* belief)
{
	float            bestUsefulness = -0.0001f;
	CREATURE_DESIRES bestDesire = NUM_CREATURE_DESIRES;
	for (int i = NUM_CREATURE_DESIRES - 1; i >= 0; i--)
	{
		CREATURE_DESIRES desire = (CREATURE_DESIRES)i;
		CreatureDesires& desires = mind->desires;
		if (desires.IsActivated(desire) && !desires.IsSuppressed(desire) &&
		    CreatureInitialDesireInfo::GetInfo()[desire].Social &&
		    (CreatureDesireTableEntry::Table[desire].IsApplicable == NULL ||
		     (this->*CreatureDesireTableEntry::Table[desire].IsApplicable)()) &&
		    mind->IsObjectSuitableAsActivityObject(desire, belief->GetPointer()) &&
		    (belief->GetPointer()->*CreatureDesireTableEntry::Table[desire].IsValidActivityObject)(this))
		{
			float usefulness = mind->GetActivityObjectUsefulness(belief, desire);
			if (usefulness > bestUsefulness)
			{
				bestUsefulness = usefulness;
				bestDesire = desire;
			}
		}
	}
	return bestDesire;
}

void Creature::FindBestActionForPlan(CreaturePlan& plan)
{
	if (!CreatureDesireTableEntry::Table[plan.CreatureDesire].NeedsSeparateObjectToActOn)
	{
		if (plan.ActivityObject->GetType() == CREATURE_BELIEF_TYPE_CREATURE)
		{
			plan.ObjectToActOn = plan.ActivityObject;
			plan.ObjectToActOnPriority = plan.ActivityPriority;
		}
		CreatureActionsTried actionsTried;
		while (actionsTried.Size() < MAX_NUM_ACTIONS_FOR_EACH_DESIRE)
		{
			if (!FindBestActionFromActivityObject(plan, &actionsTried))
			{
				plan.creature_action = CREATURE_ERROR;
				plan.ActionPriority = 0.0f;
				return;
			}
			if (FindBestObjectToActOnFromActivityObjectAndAction(plan))
			{
				return;
			}
			mind->ActionsConsidered[plan.CreatureDesire][CreatureActionIndices::Index[plan.creature_action]].Possible =
				0.0f;
			actionsTried.Push(plan.creature_action);
		}
		return;
	}
	else if (plan.ActivityObject != NULL)
	{
		plan.ObjectToActOn = plan.ActivityObject->FindBestObjectToActOn(plan.CreatureDesire, mind, CREATURE_ERROR,
		                                                                &plan.ObjectToActOnPriority);
		if (plan.ObjectToActOn != NULL)
		{
			FindBestActionFromObjectToActOn(plan);
			return;
		}
	}
	else
	{
		CreatureActionsTried actionsTried;
		while (actionsTried.Size() < MAX_NUM_ACTIONS_FOR_EACH_DESIRE)
		{
			if (!FindBestActionFromGoal(plan, &actionsTried))
			{
				plan.creature_action = CREATURE_ERROR;
				plan.ActionPriority = 0.0f;
				return;
			}
			if (FindBestObjectToActOnFromAction(plan, CREATURE_BELIEF_TYPE_LAST) &&
			    FindBestObjectToUseIfNecessary(plan))
			{
				return;
			}
#ifndef VERSION_BW1WCI
			mind->ActionsConsidered[plan.CreatureDesire][CreatureActionIndices::Index[plan.creature_action]].Possible =
				0.0f;
#endif // VERSION_BW1WCI
			plan.ActionPriority = 0.0f;
			actionsTried.Push(plan.creature_action);
		}
		return;
	}
	plan.creature_action = CREATURE_ERROR;
	plan.ActionPriority = 0.0f;
}

bool32_t Creature::FindBestActionFromActivityObject(CreaturePlan& plan, CreatureActionsTried* actions_tried)
{
	return FindBestActionFromObject(plan, actions_tried, plan.ActivityObject, false);
}

bool32_t Creature::FindBestActionFromObjectToActOn(CreaturePlan& plan)
{
	return FindBestActionFromObject(plan, NULL, plan.ObjectToActOn, false);
}

bool32_t Creature::FindBestObjectToActOnFromActivityObjectAndAction(CreaturePlan& plan)
{
	plan.ObjectToActOn = plan.ActivityObject->FindBestObjectToActOn(plan.CreatureDesire, mind, plan.creature_action,
	                                                                &plan.ObjectToActOnPriority);
	plan.ObjectToActOnPriority = MinimumUsefulness;
	if (plan.ObjectToActOn != NULL)
	{
		return true;
	}
	plan.ObjectToActOnPriority = 0.0f;
	return false;
}

float Creature::GetActionPriorityModificationFromWhenLastDone(CREATURE_ACTION action)
{
	int   turnsSinceLastDone = mind->PreviousActions.TurnsSinceLastDone[action];
	int   noveltyTurns = GetInfo()->ActionNoveltyTurns;
	int   turns = min(turnsSinceLastDone, noveltyTurns);
	float modification = turns * ACTION_NOVELTY_SCALE / noveltyTurns;
	if (action < NUM_CREATURE_ACTIONS && CreatureActionInfo::GetInfo()[action].PlanIndex == CREATURE_DESIRE_TO_IMPRESS)
	{
		modification *= UNLEARNT_ACTION_NOVELTY_SCALE;
	}
	CLAMP(modification, 0.0f, MAX_ACTION_NOVELTY);
	return modification;
}

void Creature::FillInActionPriorityAndNoveltyModification(CREATURE_ACTION action, CreaturePlan& plan, float* priority,
                                                          float* novelty_modification)
{
	*priority = GetActionPriority(action, plan);
	*novelty_modification = GetActionPriorityModificationFromWhenLastDone(action);
}

bool32_t Creature::FindBestActionFromGoal(CreaturePlan& plan, CreatureActionsTried* actions_tried)
{
	bool32_t        found = false;
	CREATURE_ACTION action = mind->GetNthActionForPlan(plan, 0);
	unsigned long   index = 0;
	while (index < MAX_NUM_ACTIONS_FOR_EACH_DESIRE)
	{
		if (action == CREATURE_ERROR)
		{
			break;
		}
		if ((CreatureAgenda::ActionTable[action].IsPossible == NULL ||
		     (this->*CreatureAgenda::ActionTable[action].IsPossible)(plan, action)) &&
		    (CreatureActionInfo::GetInfo()[action].KnownAboutCategory == CREATURE_ACTION_KNOWN_ABOUT_NONE ||
		     mind->ActionsKnownAbout.KnowsAction(CREATURE_ACTION_LEARNING_TYPE_NORMAL,
		                                         CreatureActionInfo::GetInfo()[action].KnownAboutCategory)) &&
		    (CreatureActionInfo::GetInfo()[action].KnownAboutCategory2 == CREATURE_ACTION_KNOWN_ABOUT_NONE ||
		     mind->ActionsKnownAbout.KnowsAction(CREATURE_ACTION_LEARNING_TYPE_NORMAL,
		                                         CreatureActionInfo::GetInfo()[action].KnownAboutCategory2)) &&
		    (CreatureActionInfo::GetInfo()[action].MagicType == MAGIC_TYPE_NONE ||
		     mind->ActionsKnownAbout.KnowsAction(CREATURE_ACTION_LEARNING_TYPE_MAGIC,
		                                         CreatureActionInfo::GetInfo()[action].MagicType)))
		{
			if (!actions_tried->IsThisInStack(action))
			{
				float priority;
				float noveltyModification;
				FillInActionPriorityAndNoveltyModification(action, plan, &priority, &noveltyModification);
#ifndef VERSION_BW1WCI
				mind->ActionsConsidered[plan.CreatureDesire][index].Priority = priority;
				mind->ActionsConsidered[plan.CreatureDesire][index].NoveltyModification = noveltyModification;
				mind->ActionsConsidered[plan.CreatureDesire][index].Possible = 1.0f;
#endif // VERSION_BW1WCI
				priority += noveltyModification;
#ifdef VERSION_BW1WCI
				if (priority > plan.ActionPriority)
#else
				if (priority >= plan.ActionPriority)
#endif // VERSION_BW1WCI
				{
					plan.creature_action = action;
					plan.ActionPriority = priority;
					found = true;
				}
			}
		}
#ifndef VERSION_BW1WCI
		else
		{
			mind->ActionsConsidered[plan.CreatureDesire][index].Priority = 0.0f;
			mind->ActionsConsidered[plan.CreatureDesire][index].NoveltyModification = 0.0f;
			mind->ActionsConsidered[plan.CreatureDesire][index].Possible = 0.0f;
		}
#endif // VERSION_BW1WCI
		index++;
		action = mind->GetNthActionForPlan(plan, index);
	}
	return found;
}

bool32_t Creature::FindBestObjectOfSameMimicTypeFromAction(CreaturePlan& plan)
{
	if (CreatureActionInfo::GetInfo()[plan.creature_action].NeedsObjectToActOn)
	{
		float           bestPriority = 0.0f;
		CreatureBelief* bestBelief = NULL;
		for (unsigned long i = 0; i < ARRAY_SIZE(mind->beliefs.lists); i++)
		{
			for (CreatureBelief* belief = mind->beliefs.lists[i].Head; belief != NULL; belief = belief->Next)
			{
				if (mind->IsObjectSuitableForDesire(belief, plan.CreatureDesire) &&
				    mind->IsObjectSuitableForAction(belief->GetPointer(), plan.creature_action) &&
				    belief->GetPointer()->GetCreatureMimicType() == mind->agenda.MimicState.MimicType)
				{
					float priority = mind->CalculateDistancePriority(plan.CreatureDesire, belief);
					if (belief->GetPointer() != this && priority > bestPriority)
					{
						bestPriority = priority;
						bestBelief = belief;
					}
				}
			}
		}
		if (bestBelief != NULL)
		{
			plan.ObjectToActOn = bestBelief;
			plan.ObjectToActOnPriority = bestPriority;
			return true;
		}
		return false;
	}
	plan.ObjectToActOn = mind->GetBeliefAboutObject(this);
	plan.ObjectToActOnPriority = MinimumUsefulness;
	return true;
}

bool32_t Creature::FindBestObjectToActOnFromAction(CreaturePlan& plan, CREATURE_BELIEF_TYPE belief_type)
{
	if (CreatureActionInfo::GetInfo()[plan.creature_action].NeedsObjectToActOn)
	{
		float           bestPriority = 0.0f;
		CreatureBelief* bestBelief = NULL;
		for (unsigned long i = 0; i < ARRAY_SIZE(mind->beliefs.lists); i++)
		{
			for (CreatureBelief* belief = mind->beliefs.lists[i].Head; belief != NULL; belief = belief->Next)
			{
				if (mind->IsObjectSuitableForDesire(belief, plan.CreatureDesire) &&
				    mind->IsObjectSuitableForAction(belief->GetPointer(), plan.creature_action) &&
				    (belief_type == CREATURE_BELIEF_TYPE_LAST || belief->GetType() == belief_type))
				{
					float priority = mind->GetObjectToActOnUsefulness(belief, plan.CreatureDesire);
					if (belief->GetPointer() != this && priority > bestPriority)
					{
						bestPriority = priority;
						bestBelief = belief;
					}
				}
			}
		}
		if (bestBelief != NULL)
		{
			plan.ObjectToActOn = bestBelief;
			plan.ObjectToActOnPriority = bestPriority;
			return true;
		}
		return false;
	}
	plan.ObjectToActOn = mind->GetBeliefAboutObject(this);
	plan.ObjectToActOnPriority = MinimumUsefulness;
	return true;
}

bool32_t Creature::FindBestObjectToUseIfNecessary(CreaturePlan& plan)
{
	if (CreatureAgenda::ActionTable[plan.creature_action].NeedsObjectToUse)
	{
		CreatureBelief* objectToUse =
			mind->FindBestObjectToUseForAction(plan.CreatureDesire, plan.creature_action, plan.ObjectToActOn);
		if (objectToUse == NULL)
		{
			return false;
		}
		plan.ObjectToUse = objectToUse;
		plan.ObjectToUsePriority = mind->GetUsefulnessOfUsingObject(objectToUse, plan.creature_action);
		return true;
	}
	plan.ObjectToUse = NULL;
	plan.ObjectToUsePriority = MinimumUsefulness;
	return true;
}

CreaturePlan::CreaturePlan(CREATURE_DESIRES desire, CREATURE_ACTION action, CreatureBelief* activity_object,
                           CreatureBelief* object_to_act_on, CreatureBelief* object_to_use, float priority)
{
	Force(desire, action, activity_object, object_to_act_on, object_to_use, priority);
}

void CreaturePlan::Force(CREATURE_DESIRES desire, CREATURE_ACTION action, CreatureBelief* activity_object,
                         CreatureBelief* object_to_act_on, CreatureBelief* object_to_use, float priority)
{
	CreatureDesire = desire;
	creature_action = action;
	ActivityObject = activity_object;
	ObjectToActOn = object_to_act_on;
	ObjectToUse = object_to_use;
	ActionPriority = priority;
	ObjectToUsePriority = priority;
	ObjectToActOnPriority = priority;
	ActivityPriority = priority;
	AgendaPriority = priority;
}

void CreaturePlan::Clear()
{
	ObjectToUse = NULL;
	ObjectToActOn = NULL;
	ActivityObject = NULL;
	creature_action = CREATURE_ERROR;
	AgendaPriority = 0.0f;
	ActionPriority = 0.0f;
	ObjectToUsePriority = 0.0f;
	ObjectToActOnPriority = 0.0f;
	ActivityPriority = 0.0f;
}

CreaturePlan::~CreaturePlan() {}

bool32_t CreaturePlan::IsValid()
{
	return CreatureDesire < NUM_CREATURE_DESIRES &&
	       (!CreatureInitialDesireInfo::GetInfo()[CreatureDesire].Social || ActivityObject != NULL) &&
	       ObjectToActOn != NULL && creature_action != CREATURE_ERROR &&
	       (!CreatureAgenda::ActionTable[creature_action].NeedsObjectToUse || ObjectToUse != NULL);
}

bool32_t CreaturePlan::IsActivityValid()
{
	return CreatureDesire >= 0 && CreatureDesire < NUM_CREATURE_DESIRES &&
	       (!CreatureInitialDesireInfo::GetInfo()[CreatureDesire].Social || ActivityObject != NULL);
}

CreaturePlanState::CreaturePlanState()
{
	BestPlan = NUM_CREATURE_DESIRES;
	CurrentGoal = NUM_CREATURE_DESIRES;
	for (uint32_t i = 0; i < NUM_CREATURE_DESIRES; i++)
	{
		plans[i].CreatureDesire = (CREATURE_DESIRES)i;
	}
}

void CreaturePlanState::Initialise(CreatureMental* mental)
{
	BestPlan = NUM_CREATURE_DESIRES;
	CurrentGoal = NUM_CREATURE_DESIRES;
	SetupRemainingGoalsToPlanFor(mental->creature.Get());
}

void CreaturePlanState::FindBestPlan()
{
	float    bestPriority = 0.0f;
	uint32_t bestPlan = NUM_CREATURE_DESIRES;
	for (uint32_t i = 0; i < NUM_CREATURE_DESIRES; i++)
	{
		if (plans[i].AgendaPriority > bestPriority)
		{
			bestPriority = plans[i].AgendaPriority;
			bestPlan = i;
		}
	}
	BestPlan = bestPlan;
}

void Creature::FindNextPlannableGoal()
{
	mind->agenda.PlanState.CurrentGoal = mind->agenda.PlanState.RemainingGoals.Pop();
}

void CreaturePlanState::SetupRemainingGoalsToPlanFor(Creature* creature)
{
	RemainingGoals.SetToZero();
	for (int i = NUM_CREATURE_DESIRES - 1; i >= 0; i--)
	{
		CREATURE_DESIRES desire = (CREATURE_DESIRES)i;
		CreatureDesires& desires = creature->mind->desires;
		if (desires.IsActivated(desire) && !desires.IsSuppressed(desire))
		{
			RemainingGoals.Push(desire);
		}
	}
}

void Creature::ConsiderGivingHelpOnCurrentAction()
{
	if (CreatureActionInfo::GetInfo()[mind->agenda.CurrentPlan.creature_action].ShowsCurrentSource)
	{
		CREATURE_DESIRE_SOURCE source = mind->desires.GetDominantSource(mind->agenda.CurrentPlan.CreatureDesire);
		if (source != INVALID_CREATURE_DESIRE_SOURCE)
		{
			SendCandidateHelpScript(CREATURE_HELP_TYPE_SHOW_CURRENT_SOURCE, source, NULL, NULL, 0);
		}
	}
}

void Creature::ConstructCurrentPlanFromBestPlan(bool32_t forced_by_player)
{
	ConstructCurrentPlanFromPlan(mind->agenda.PlanState.plans[mind->agenda.PlanState.BestPlan], forced_by_player);
}

void Creature::ConstructCurrentPlanFromPlan(CreaturePlan& plan, bool32_t forced_by_player)
{
	mind->agenda.CurrentPlan = plan;
	if (mind->agenda.ConstructSubActionsFromActionAgenda(mind->agenda.CurrentPlan.creature_action))
	{
		CopyPlanToPreviousContext(forced_by_player);
		mind->desires.SuppressDesiresAfterDecidingOnActivity(mind->agenda.CurrentPlan.CreatureDesire);
	}
}

void Creature::CopyPlanToPreviousContext(bool32_t forced_by_player)
{
	CREATURE_DESIRES desire = mind->agenda.CurrentPlan.CreatureDesire;
	if (desire >= 0 && desire < NUM_CREATURE_DESIRES)
	{
		CREATURE_DESIRE_SOURCE source = mind->desires.GetDominantSource(desire);
		if (source >= NUM_CREATURE_DESIRE_SOURCES)
		{
			LHLinkedNode<CreatureDesireSource*>* node =
				mind->desires.SourceLists[mind->agenda.CurrentPlan.CreatureDesire].GetStart();
			if (node != NULL)
			{
				source = node->payload->Type;
			}
			if (source >= NUM_CREATURE_DESIRE_SOURCES)
			{
				return;
			}
		}
		CreatureContext context(this, mind->agenda.CurrentPlan, source, forced_by_player, mind->ContextBelief);
		mind->learning.previous_context_stack.Push(context);
		ContextsPushed++;
	}
}

void Creature::SetBeliefsUsedInPlan(CreaturePlan& plan, bool32_t used)
{
	CreatureBelief* objectToActOn = plan.ObjectToActOn;
	CreatureBelief* objectToUse = plan.ObjectToUse;
	CreatureBelief* activityObject = plan.ActivityObject;
	if (activityObject != NULL)
	{
		activityObject->SetUsedInPlan(plan.CreatureDesire, used);
	}
	if (objectToActOn != NULL)
	{
		objectToActOn->SetUsedInPlan(plan.CreatureDesire, used);
	}
	if (objectToUse != NULL)
	{
		objectToUse->SetUsedInPlan(plan.CreatureDesire, used);
	}
}

CREATURE_ACTION CreatureMental::GetNthActionForPlan(CreaturePlan& plan, unsigned long index)
{
#ifdef VERSION_BW1WCI
	if (plan.CreatureDesire == CREATURE_DESIRE_TO_BE_FRIENDS && plan.ActivityObject != NULL)
	{
		Creature* other = plan.ActivityObject->GetPointer()->CastCreature();
		if (other != NULL)
		{
			if (other->physical->Energy < FRIEND_NEEDS_HELP_LEVEL &&
			    other->mind->agenda.CurrentPlan.CreatureDesire != CREATURE_DESIRE_HUNGER)
			{
				switch (index)
				{
				case 0:
					return CREATURE_GIVE_FOOD_TO_CREATURE;
				case 1:
					return CREATURE_CAST_MAGIC_FOOD;
				}
				return CREATURE_ERROR;
			}
			if (other->GetLife() < FRIEND_NEEDS_HELP_LEVEL)
			{
				return CREATURE_CAST_HEAL_SPELL;
			}
			if (other->IsOnFire() && other->mind->agenda.CurrentPlan.creature_action != CREATURE_PUT_OUT_FIRE_ON_MYSELF)
			{
				return CREATURE_PUT_OUT_FIRE_WITH_MAGIC_WATER;
			}
		}
	}
#endif // VERSION_BW1WCI
	if (plan.CreatureDesire == CREATURE_DESIRE_COMPASSION)
	{
		if (plan.ActivityObject != NULL)
		{
			GameThingWithPos* object = plan.ActivityObject->GetPointer();
			if (object->IsTown())
			{
				Town* town = dynamic_cast<Town*>(object);
				if (town != NULL)
				{
					if (town->stats.NumWounded > 0)
					{
						GInterfaceStatus* status = creature.Get()->GetInterfaceStatusLeashOn();
						TownDesireFlags*  flags = NULL;
						if (status != NULL && status->LeashStatus->ObjectAttachedTo != NULL)
						{
							flags = dynamic_cast<TownDesireFlags*>(status->LeashStatus->ObjectAttachedTo);
						}
						if (flags == NULL)
						{
							if (min(1.0f, learning.NumTimesMagicActionSeen[MAGIC_TYPE_HEAL] /
							                  creature.Get()->NumTimesMagicActionMustBeSeenBeforeItIsLearnt(
												  MAGIC_TYPE_HEAL)) > HEAL_SPELL_NEARLY_LEARNT &&
							    index == 0 &&
							    GRand::GameRand(HEAL_SPELL_CHANCE, FILEPATH, CREATURE_PLAN_LINE(837)) == 0)
							{
								return CREATURE_CAST_HEAL_SPELL;
							}
						}
					}

					LHStack<TOWN_DESIRE_INFO, TOWN_DESIRE_INFO_LAST> desires;
					town->FillListWithMostImportantDesires(desires);
					if (desires.Size() > 0)
					{
						if (!desires.IsThisInStack(TownDesireToHelp))
						{
							TownDesireToHelp = desires[0];
							TownDesireToHelpIndex = 0;
							TownDesireToHelpLevel = town->GetRawDesire(desires[0]) * TOWN_DESIRE_HELP_LEVEL_SCALE;
						}
					}

					TOWN_DESIRE_INFO townDesire = TownDesireToHelp;
					if (townDesire > TOWN_DESIRE_INFO_NONE && townDesire < TOWN_DESIRE_INFO_LAST &&
					    CreatureDesireActionEntry::GetCompassionForTownActionTable()[townDesire].Actions[index] !=
					        CREATURE_ERROR)
					{
						TownDesireOfNthAction = townDesire;
						return CreatureDesireActionEntry::GetCompassionForTownActionTable()[townDesire].Actions[index];
					}
				}
			}
			else if (object->IsCreature())
			{
				Creature* other = dynamic_cast<Creature*>(object);
				other->mind->desires.FindDominantDesireWhichCanBeHelped();
			}
			else
			{
				return CREATURE_ERROR;
			}
		}
		return CREATURE_ERROR;
	}
	return CreatureDesireActionEntry::GetInfo()[plan.CreatureDesire].Actions[index];
}

bool32_t CreatureMental::ConsiderAction(CREATURE_DESIRES desire, CREATURE_ACTION action,
                                        CreatureBelief* object_to_act_on, CreatureActionsTried* actions_tried,
                                        CreaturePlan& plan)
{
	float priority;
	float noveltyModification;
	creature.Get()->FillInActionPriorityAndNoveltyModification(action, plan, &priority, &noveltyModification);
	unsigned long index;
	for (index = 0; index < MAX_NUM_ACTIONS_FOR_EACH_DESIRE; index++)
	{
		if (GetNthActionForPlan(plan, index) == action)
		{
			break;
		}
	}
#ifndef VERSION_BW1WCI
	if (index < MAX_NUM_ACTIONS_FOR_EACH_DESIRE)
	{
		ActionsConsidered[plan.CreatureDesire][index].Priority = priority;
		ActionsConsidered[plan.CreatureDesire][index].NoveltyModification = noveltyModification;
		ActionsConsidered[plan.CreatureDesire][index].Possible = 1.0f;
	}
#endif // VERSION_BW1WCI
	priority += noveltyModification;

	float objectToActOnPriority;
	if (plan.ObjectToActOn != NULL)
	{
		objectToActOnPriority = GetObjectToActOnUsefulness(object_to_act_on, desire);
	}
	else
	{
		objectToActOnPriority = MinimumUsefulness;
	}

	CreatureBelief* objectToUse = NULL;
	float           objectToUsePriority;
	if (CreatureAgenda::ActionTable[action].NeedsObjectToUse)
	{
		objectToUse = FindBestObjectToUseForAction(desire, action, plan.ObjectToActOn);
		if (objectToUse == NULL)
		{
			return false;
		}
		objectToUsePriority = GetUsefulnessOfUsingObject(objectToUse, action);
	}
	else
	{
		objectToUsePriority = MinimumUsefulness;
	}

	float newPriority = objectToUsePriority * objectToActOnPriority * priority;
	float planPriority = plan.ObjectToUsePriority * plan.ObjectToActOnPriority * plan.ActionPriority;
	if (newPriority >= planPriority)
	{
		plan.creature_action = action;
		plan.ActionPriority = priority;
		plan.ObjectToActOnPriority = objectToActOnPriority;
		plan.ObjectToUse = objectToUse;
		plan.ObjectToUsePriority = objectToUsePriority;
		return true;
	}
	return false;
}

bool32_t Creature::CanCreatureCurrentlyPerformAction(CREATURE_ACTION action, CreaturePlan& plan)
{
	return (CreatureAgenda::ActionTable[action].IsPossible == NULL ||
	        (this->*CreatureAgenda::ActionTable[action].IsPossible)(plan, action)) &&
	       (CreatureActionInfo::GetInfo()[action].KnownAboutCategory == CREATURE_ACTION_KNOWN_ABOUT_NONE ||
	        mind->ActionsKnownAbout.KnowsAction(CREATURE_ACTION_LEARNING_TYPE_NORMAL,
	                                            CreatureActionInfo::GetInfo()[action].KnownAboutCategory)) &&
	       (CreatureActionInfo::GetInfo()[action].KnownAboutCategory2 == CREATURE_ACTION_KNOWN_ABOUT_NONE ||
	        mind->ActionsKnownAbout.KnowsAction(CREATURE_ACTION_LEARNING_TYPE_NORMAL,
	                                            CreatureActionInfo::GetInfo()[action].KnownAboutCategory2)) &&
	       (CreatureActionInfo::GetInfo()[action].MagicType == MAGIC_TYPE_NONE ||
	        mind->ActionsKnownAbout.KnowsAction(CREATURE_ACTION_LEARNING_TYPE_MAGIC,
	                                            CreatureActionInfo::GetInfo()[action].MagicType)) &&
	       (!IsConfinedToArea() || !mind->agenda.ActionUnavailableWhenConfined[action]);
}

bool32_t Creature::FindBestActionFromObject(CreaturePlan& plan, CreatureActionsTried* actions_tried,
                                            CreatureBelief* belief, bool32_t require_object_to_act_on)
{
	bool32_t         found = false;
	CREATURE_DESIRES desire = plan.CreatureDesire;
	CREATURE_ACTION  action = mind->GetNthActionForPlan(plan, 0);
	unsigned long    index = 0;
	while (index < MAX_NUM_ACTIONS_FOR_EACH_DESIRE)
	{
		if (action == CREATURE_ERROR)
		{
			break;
		}
		if (action < NUM_CREATURE_ACTIONS)
		{
			if (actions_tried == NULL || !actions_tried->IsThisInStack(action))
			{
				if (CanCreatureCurrentlyPerformAction(action, plan) &&
				    (!require_object_to_act_on || CreatureActionInfo::GetInfo()[action].NeedsObjectToActOn) &&
				    (plan.ObjectToActOn == NULL ||
				     mind->IsObjectSuitableForAction(plan.ObjectToActOn->GetPointer(), action)) &&
				    mind->ConsiderAction(desire, action, belief, actions_tried, plan))
				{
					CreatureMentalEditor::TownDesireBeingHelped = TownDesireOfNthAction;
					found = true;
				}
			}
		}
		index++;
		action = mind->GetNthActionForPlan(plan, index);
	}
	return found;
}

void Creature::CalculateOverallPriority(CreaturePlan& plan)
{
	if (plan.IsValid())
	{
		float activityPriority;
		if (plan.ActivityObject != NULL)
		{
			activityPriority = plan.ActivityPriority;
		}
		else
		{
			activityPriority = MinimumUsefulness;
		}
		float objectToUsePriority;
		if (plan.ObjectToUse != NULL)
		{
			objectToUsePriority = plan.ObjectToUsePriority;
		}
		else
		{
			objectToUsePriority = MinimumUsefulness;
		}
		float scale = pow(1.0f / MinimumUsefulness, NUM_PRIORITY_FACTORS);
		float desireLevel = mind->desires.GetDesire(plan.CreatureDesire);
		float desirePriority = desireLevel * activityPriority;
		plan.AgendaPriority = LimitActionPriority(plan.ActionPriority) * plan.ObjectToActOnPriority * desirePriority *
		                      scale * objectToUsePriority;
		return;
	}
	plan.AgendaPriority = 0.0f;
}

float LimitActionPriority(float priority)
{
	return min(priority, MaximumActionPriority);
}

CreatureBelief* CreatureMental::FindBestObjectToUseForAction(CREATURE_DESIRES desire, CREATURE_ACTION action,
                                                             CreatureBelief* object_to_act_on)
{
	float           bestPriority = 0.0f;
	CreatureBelief* bestBelief = NULL;
	for (CreatureBelief* belief = beliefs.lists[CREATURE_BELIEF_LIST_TYPE_OBJECT].Head; belief != NULL;
	     belief = belief->Next)
	{
		if (object_to_act_on != belief && IsObjectSuitableToUse(belief, action))
		{
			float distancePriority = CalculateDistancePriority(desire, belief);
			float priority = GetUsefulnessOfUsingObject(belief, action) * distancePriority;
			CLAMP(priority, 0.0f, 1.0f);
			if (priority > bestPriority)
			{
				bestPriority = priority;
				bestBelief = belief;
			}
		}
	}
	return bestBelief;
}

float CreatureMental::CalculateDistancePriority(CREATURE_DESIRES desire, CreatureBelief* object)
{
	float     range = creature.Get()->GetInfo()->DistancePriorityRange;
	float     carriedPriority = creature.Get()->GetInfo()->CarriedObjectDistancePriority;
	MapCoords pos = creature.Get()->Pos;
	if (creature.Get()->GetPlayer() != NULL)
	{
		GInterfaceStatus* status = creature.Get()->GetPlayer()->GetLeaderInterfaceStatus();
		if (status->LeashStatus != NULL && status->LeashStatus->ObjectAttachedTo != NULL)
		{
			pos = status->LeashStatus->ObjectAttachedTo->Pos;
		}
	}
	float distance = GUtils::GetDistanceInMetres(&object->Pos, &pos);
	float priority = CreatureInitialDesireInfo::GetInfo()[desire].DistancePriorityScale;
	if (creature.Get()->physical->ObjectCarried == object->GetPointer())
	{
		return carriedPriority;
	}
	if (distance <= range)
	{
		priority = priority * distance / range;
	}
	return 1.0f - priority;
}

CreaturePreviousActions::CreaturePreviousActions()
{
	for (int i = 0; i < NUM_CREATURE_ACTIONS; i++)
	{
		TurnsSinceLastDone[i] = GGlobal::Global.RandomiseCreatureMinds
		                            ? GRand::GameRand(MAX_TURNS_SINCE_LAST_DONE, FILEPATH, CREATURE_PLAN_LINE(1126))
		                            : 0;
	}
}

void Town::FillListWithMostImportantDesires(LHStack<TOWN_DESIRE_INFO, TOWN_DESIRE_INFO_LAST>& desires)
{
	float first = 0.0f;
	for (int i = 0; i < TOWN_DESIRE_INFO_LAST; i++)
	{
		DesireSort* sort = &desire.sorts2[i];
		if (sort == NULL)
		{
			continue;
		}
		TOWN_DESIRE_INFO type = sort->Type;
		if (CreatureDesireActionEntry::GetCompassionForTownActionTable()[type].Actions[0] == CREATURE_ERROR)
		{
			continue;
		}
		float level = desire.RawDesire[type] + desire.DesireBoost[type] + desire.DesireCheat[type];
		if (level == 0.0f)
		{
			return;
		}
		desires.Push(type);
		if (first == 0.0f)
		{
			first = level;
		}
	}
}
